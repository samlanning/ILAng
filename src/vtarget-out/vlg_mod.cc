/// \file Source for Verilog Modifier

#include <algorithm>
#include <fstream>
#include <ilang/util/container_shortcut.h>
#include <ilang/util/log.h>
#include <ilang/util/str_util.h>
#include <ilang/vtarget-out/vlg_mod.h>

namespace ilang {

/// Constructor: do nothing
VerilogModifier::VerilogModifier(VerilogInfo* _vlg_info_ptr,
                                 port_decl_style_t port_decl_style,
                                 bool add_keep_or_not)
    : vlg_info_ptr(_vlg_info_ptr), _port_decl_style(port_decl_style),
      _add_keep_or_not(add_keep_or_not) {}
/// Destructor: do nothing
VerilogModifier::~VerilogModifier() {}

/// do the work : read from fin and append to fout, fout needs to be open with
/// append option
void VerilogModifier::ReadModifyWrite(const std::string& fn, std::istream& fin,
                                      std::ostream& fout) {
  /*
  if (not IN(fn, fn_l_map)) {
    // no need to modify, just copy
    fout << fin.rdbuf();
    return;
  }*/

  // really we need to deal with it
  long lineno = 0;
  std::string line;
  auto& keep_info = fn_l_map[fn];
  auto keep_vec_it = keep_info.begin(); // what if it is end

  auto& mod_decl_info = mod_decl_map[fn];
  auto& mod_inst_info = mod_inst_map[fn];
  auto& assign_info = assign_map[fn];

  auto mod_decl_vec_it = mod_decl_info.begin();
  auto mod_inst_vec_it = mod_inst_info.begin();
  auto assign_vec_it = assign_info.begin();

  while (std::getline(fin, line)) {

    // keeps
    while (keep_vec_it != keep_info.end() and
           lineno == std::get<0>(*keep_vec_it)) {
      // process it
      auto vname = std::get<1>(*keep_vec_it);
      auto is_port = std::get<2>(*keep_vec_it);

      if (_add_keep_or_not) {
        if (!is_port)
          line = add_keep_to_a_line(line, vname);
        else
          line = add_keep_to_port(line, vname);
      }
      // move to the next item on the same line
      keep_vec_it++;
    }
    // todo: check other issues
    while (assign_vec_it != assign_info.end() and
           lineno == std::get<0>(*assign_vec_it)) {
      auto vname = std::get<1>(*assign_vec_it);
      auto width = std::get<2>(*assign_vec_it);
      auto signame = std::get<3>(*assign_vec_it);
      line = add_assign_wire_to_this_line(line, vname, width, signame);
      assign_vec_it++;
    }

    while (mod_decl_vec_it != mod_decl_info.end() and
           lineno >= std::get<0>(*mod_decl_vec_it)) {
      auto vname = std::get<1>(*mod_decl_vec_it);
      auto width = std::get<2>(*mod_decl_vec_it);
      std::string new_line;
      if (add_mod_decl_wire_to_this_line(line, new_line, vname, width)) {
        line = new_line;
        mod_decl_vec_it++;
      } else
        break;
      // else we will stop handle it and carry this to the next line
    }

    while (mod_inst_vec_it != mod_inst_info.end() and
           lineno >= std::get<0>(*mod_inst_vec_it)) {
      auto vname = std::get<1>(*mod_inst_vec_it);
      auto width = std::get<2>(*mod_inst_vec_it);
      std::string new_line;
      if (add_mod_inst_wire_to_this_line(line, new_line, vname, width)) {
        line = new_line;
        mod_inst_vec_it++;
      } else
        break;
      // else we will carry this to the next line
    }

    // check t
    fout << line << std::endl;
    lineno++;
  } // while getline

} // ReadModifyWrite

template <class T> bool compare_tuple(T const& t1, T const& t2) {
  return std::get<0>(t1) < std::get<0>(t2);
}

/// do some work (sorting)
void VerilogModifier::FinishRecording() {

  // sort fn_l_map according to lineno in each file
  for (auto&& fn_tp_pair : fn_l_map) {
    auto& vec = fn_tp_pair.second;
    std::sort(begin(vec), end(vec), compare_tuple<info_t>);
  }
  // same for the other three maps
  for (auto&& fn_tp_pair : mod_decl_map) {
    auto& vec = fn_tp_pair.second;
    std::sort(begin(vec), end(vec), compare_tuple<mod_decl_item_t>);
  }
  for (auto&& fn_tp_pair : mod_inst_map) {
    auto& vec = fn_tp_pair.second;
    std::sort(begin(vec), end(vec), compare_tuple<mod_inst_item_t>);
  }
  for (auto&& fn_tp_pair : assign_map) {
    auto& vec = fn_tp_pair.second;
    std::sort(begin(vec), end(vec), compare_tuple<assign_item_t>);
  }

} // FinishRecording

/// record the name to add a keep there
void VerilogModifier::RecordKeepSignalName(const std::string& vlg_sig_name) {
  auto vlg_sig_info = vlg_info_ptr->get_signal(vlg_sig_name);
  auto loc = vlg_info_ptr->name2loc(vlg_sig_name);

  // check for repetition:
  for (auto&& info_item : fn_l_map[loc.first]) {
    auto lineno = std::get<0>(info_item);
    const auto& vname = std::get<1>(info_item);
    if (lineno == loc.second /*&& vname == vlg_sig_info.get_signal_name()*/)
      return; // we already add it
    // WARNING: we are not adding keep to the same line!
  }

  fn_l_map[loc.first].push_back(
      info_t(loc.second,                     // lineno
             vlg_sig_info.get_signal_name(), // variable name
             vlg_sig_info.no_internal_def()  // is it a port
             ));
} // RecordKeepSignalName

std::string VerilogModifier::add_keep_to_a_line(const std::string& line_in,
                                                const std::string& vname) {
  if (line_in.find(vname) == std::string::npos) {
    ILA_ERROR << "Implementation bug: not able to add keep to line:" << line_in
              << " required varname:" << vname;
    return line_in;
  }
  auto comment_start = line_in.find("//");
  std::string comment;
  if (comment_start != std::string::npos)
    comment = line_in.substr(comment_start);
  auto line = line_in.substr(0, comment_start);
  auto decls = Split(line, ";");
  for (auto&& decl : decls) {
    if (S_IN(vname, decl) && (S_IN("reg", decl) || S_IN("wire", decl))) {
      decl = "(* keep *) " + decl;
      break;
    }
  }
  auto declcomb = decls.size() > 0 ? Join(decls, ";") + ";" : "";
  return (declcomb + comment);
}

std::string VerilogModifier::add_keep_to_port(const std::string& line_in,
                                              const std::string& vname) {
  size_t left = 0;
  if (line_in.find(vname) == std::string::npos) {
    ILA_ERROR << "Implementation bug: not able to add keep to line:" << line_in
              << " required varname:" << vname;
    return line_in;
  }

  if (std::string::npos == line_in.find('(') and
      std::string::npos == line_in.find(')') and
      std::string::npos != line_in.find(';')) {
    // we are dealing with something like output a;
    auto defl = Split(line_in, ";");
    for (auto& def : defl) {
      if (def.find(vname) != std::string::npos) {
        def = "(* keep *)" + def;
        break;
      }
    }
    return Join(defl, ";") + ";";
  }

  size_t left_p = 0;
  size_t right_p = std::string::npos;
  size_t mid_len = std::string::npos;
  if (line_in.find("(") != std::string::npos)
    left_p = line_in.find("(") + 1;
  if (line_in.find(")") != std::string::npos) {
    right_p = line_in.find(")");
    mid_len = right_p - left_p;
  }

  auto left_cut = line_in.substr(0, left_p);
  auto right_cut = right_p != std::string::npos ? line_in.substr(right_p) : "";
  auto middle = line_in.substr(left_p, mid_len);

  ILA_ASSERT(left_cut + middle + right_cut == line_in);

  auto midSplit = Split(middle, ",");

  unsigned foundIdx = -1;
  unsigned idx = 0;
  for (auto&& port_decl : midSplit) {
    auto wordList = SplitSpaceTabEnter(port_decl);
    if (std::find(wordList.begin(), wordList.end(), vname) != wordList.end()) {
      foundIdx = idx;
      break;
    }
    idx++;
  }
  if (foundIdx == -1) {
    ILA_ERROR << "not able to modify line: '" << line_in << "' for :" << vname;
    return line_in;
  }

  midSplit[foundIdx] = "(* keep *)" + midSplit[foundIdx];

  auto midMod = Join(midSplit, ",");

  if ((middle.back()) == ',')
    midMod += ',';

  return left_cut + midMod + right_cut;
} // add_keep_to_port

/// record the name to add a keep there
VerilogModifier::vlg_sig_t
VerilogModifier::RecordConnectSigName(const std::string& vlg_sig_name,
                                      const std::string& suffix) {
  auto vlg_sig_info =
      vlg_info_ptr->get_signal(vlg_sig_name); // will check it exists
  auto width = vlg_sig_info.get_width();
  auto short_name = vlg_sig_info.get_signal_name();

  auto vname =
      ReplaceAll(vlg_sig_name, ".", "__DOT__") +
      ReplaceAll(ReplaceAll(suffix, "[", "_"), "]", "_"); // name for verilog
  auto mod_hier_name = Split(vlg_sig_name, ".");
  auto hier = mod_hier_name.size();
  auto last_level_name = mod_hier_name[hier - 1];

  ILA_ASSERT(hier >= 2);

  // add module decl mod
  std::string inst_name = mod_hier_name[0];
  // add topmodule:
  auto loc = vlg_info_ptr->name2loc(inst_name);
  ILA_ASSERT(loc.first != ""); // should be found
  mod_decl_map[loc.first].push_back(mod_decl_item_t(loc.second, vname, width));

  for (unsigned idx = 1; idx < hier - 1; ++idx) { // exclude the last level name
    inst_name += "." + mod_hier_name[idx];

    auto loc = vlg_info_ptr->name2loc(inst_name);
    ILA_ASSERT(loc.first != ""); // should be found
    mod_decl_map[loc.first].push_back(
        mod_decl_item_t(loc.second, vname, width));
  }

  // add module inst mod: a.b.signal
  inst_name = mod_hier_name[0];
  for (unsigned idx = 1; idx < hier - 1; ++idx) {
    inst_name += "." + mod_hier_name[idx];
    auto loc = vlg_info_ptr->get_module_inst_loc(inst_name);
    ILA_ASSERT(loc.first != ""); // should be found
    mod_inst_map[loc.first].push_back(
        mod_inst_item_t(loc.second, vname, width));
  }

  // use the special location (mod_decl to add wires and ...)
  loc =
      vlg_info_ptr->get_endmodule_loc(inst_name); // this the endmodule location
  assign_map[loc.first].push_back(
      assign_item_t(loc.second, vname, width, short_name + suffix));

  return vlg_sig_t({vname, width});
} // RecordConnectSigName

std::string WidthToRange(unsigned w) {
  if (w > 1)
    return std::string("[") + std::to_string(w - 1) + ":0]";
  return "";
}

std::string VerilogModifier::add_assign_wire_to_this_line(
    const std::string& line_in, const std::string& vname, unsigned width,
    const std::string& short_name) {
  std::string text = " assign " + vname + " = " + short_name + ";\n";
  return text + line_in;
  /*
  auto l = SplitSpaceTabEnter(line_in);
  if (l.size() == 0) return text + line_in;
  auto pos = std::find(l.begin(), l.end(), "endmodule");
  if(pos == l.end()) {
    ILA_ERROR <<"endmodule not found. Insert in place";
    return  text + line_in;
  }
  auto text = l[0];
  for(auto s = l.begin()+1; s != pos; ++s) {

  }*/
}

bool VerilogModifier::add_mod_decl_wire_to_this_line(const std::string& line_in,
                                                     std::string& line_out,
                                                     const std::string& vname,
                                                     unsigned width) {

  auto pos = line_in.find(';'); // the left most ; because we will insert later
  if (pos == std::string::npos)
    return false; // unsuccessful
  auto pos_rp = line_in.rfind(')', pos);
  if (pos_rp == std::string::npos) {
    ILA_ERROR
        << "unable to find the right ) to insert port decl, will continue.";
    line_out = line_in;
    return true;
  }
  auto left = line_in.substr(0, pos_rp);
  auto right = line_in.substr(pos_rp);

  auto wl = SplitSpaceTabEnter(left); // should not go to the right
  bool new_style = false;

  if (_port_decl_style == port_decl_style_t::AUTO) {
    new_style = false;
    if (std::find(wl.begin(), wl.end(), "output") != wl.end())
      new_style = true;
    if (std::find(wl.begin(), wl.end(), "input") != wl.end())
      new_style = true;
  } else {
    new_style = _port_decl_style == port_decl_style_t::NEW ? true : false;
  }

  if (new_style) {
    auto text = ", output wire " + WidthToRange(width) + " " + vname;
    line_out = left + text + right;
    return true;
  }

  // old style
  auto text = ", " + vname;
  auto end_text = "\n output " + WidthToRange(width) + " " + vname + ";";
  line_out = left + text + right + end_text;
  return true;
} // add_mod_decl_wire_to_this_line

bool VerilogModifier::add_mod_inst_wire_to_this_line(const std::string& line_in,
                                                     std::string& line_out,
                                                     const std::string& vname,
                                                     unsigned width) {

  /*  static int left_para_layer = 0;
    if (left_para_layer == 0) {
      // start the find
      for(auto && c : line_in) {
        if ( c == '(') left_para_layer ++;
        else if(c == ')') { left_para_layer --; }
      }
    }*/

  auto pos = line_in.find(';');
  if (pos == std::string::npos)
    return false; // unsuccessful, try next line
  auto pos_rp = line_in.rfind(')', pos);
  if (pos_rp == std::string::npos) {
    ILA_ERROR
        << "unable to find the right ) to insert port decl, will continue.";
    line_out = line_in;
    return true;
  }
  auto left = line_in.substr(0, pos_rp);
  auto right = line_in.substr(pos_rp);
  auto text = " ,." + vname + "(" + vname + ")";
  line_out = left + text + right;
  return true;
} // add_mod_inst_wire_to_this_line

}; // namespace ilang

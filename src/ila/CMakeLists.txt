# ---------------------------------------------------------------------------- #
# source 
# ---------------------------------------------------------------------------- #
target_sources(${ILANG_LIB_NAME} PRIVATE
  ${CMAKE_CURRENT_SOURCE_DIR}/ast/ast.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/ast/expr.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/ast/expr_const.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/ast/expr_op.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/ast/expr_var.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/ast/func.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/ast/sort.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/ast/sort_value.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/comp_ref_rel.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/expr_fuse.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/hash_ast.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/instr.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/instr_lvl_abs.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/object.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/symbol.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/transition.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/z3_expr_adapter.cc
)


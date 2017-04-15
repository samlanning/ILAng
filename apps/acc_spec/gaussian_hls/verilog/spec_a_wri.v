module SPEC_A(
arg_0_TREADY,
arg_1_TDATA,
arg_1_TVALID,
RAM_w,
RAM_x,
RAM_y,
arg_0_TDATA,
arg_0_TVALID,
arg_1_TREADY,
cur_pix,
gbit,
pre_pix,
proc_in,
st_ready,
stencil_0,
stencil_1,
stencil_2,
stencil_3,
stencil_4,
stencil_5,
stencil_6,
stencil_7,
stencil_8,
clk,rst,
step
);
input            arg_0_TREADY;
input      [7:0] arg_1_TDATA;
input            arg_1_TVALID;
input clk;
input rst;
input step;
output      [2:0] RAM_w;
output      [8:0] RAM_x;
output      [9:0] RAM_y;
output      [7:0] arg_0_TDATA;
output            arg_0_TVALID;
output            arg_1_TREADY;
output      [7:0] cur_pix;
output      [3:0] gbit;
output      [7:0] pre_pix;
output    [647:0] proc_in;
output            st_ready;
output     [71:0] stencil_0;
output     [71:0] stencil_1;
output     [71:0] stencil_2;
output     [71:0] stencil_3;
output     [71:0] stencil_4;
output     [71:0] stencil_5;
output     [71:0] stencil_6;
output     [71:0] stencil_7;
output     [71:0] stencil_8;
reg      [2:0] RAM_w;
reg      [8:0] RAM_x;
reg      [9:0] RAM_y;
reg      [7:0] arg_0_TDATA;
reg            arg_0_TVALID;
reg            arg_1_TREADY;
reg      [7:0] cur_pix;
reg      [3:0] gbit;
reg      [7:0] pre_pix;
reg    [647:0] proc_in;
reg            st_ready;
reg     [71:0] stencil_0;
reg     [71:0] stencil_1;
reg     [71:0] stencil_2;
reg     [71:0] stencil_3;
reg     [71:0] stencil_4;
reg     [71:0] stencil_5;
reg     [71:0] stencil_6;
reg     [71:0] stencil_7;
reg     [71:0] stencil_8;
wire            arg_0_TREADY;
wire      [7:0] arg_1_TDATA;
wire            arg_1_TVALID;
wire            n0;
wire            n1;
wire            n2;
wire            n3;
wire            n4;
wire            n5;
wire            n6;
wire            n7;
wire            n8;
wire            n9;
wire            n10;
wire            n11;
wire            n12;
wire            n13;
wire            n14;
wire            n15;
wire      [2:0] n16;
wire      [2:0] n17;
wire      [2:0] n18;
wire            n19;
wire            n20;
wire            n21;
wire            n22;
wire            n23;
wire            n24;
wire      [2:0] n25;
wire      [2:0] n26;
wire      [2:0] n27;
wire      [2:0] n28;
wire      [8:0] n29;
wire      [8:0] n30;
wire      [8:0] n31;
wire      [8:0] n32;
wire      [8:0] n33;
wire      [8:0] n34;
wire            n35;
wire      [9:0] n36;
wire      [9:0] n37;
wire      [9:0] n38;
wire      [9:0] n39;
wire      [9:0] n40;
wire      [9:0] n41;
wire      [9:0] n42;
wire            n43;
wire            n44;
wire            n45;
wire      [7:0] n46;
wire      [7:0] n47;
wire      [7:0] n48;
wire      [7:0] n49;
wire      [7:0] n50;
wire      [7:0] n51;
wire      [7:0] n52;
wire      [7:0] n53;
wire      [7:0] n54;
wire     [15:0] n55;
wire     [23:0] n56;
wire     [31:0] n57;
wire     [39:0] n58;
wire     [47:0] n59;
wire     [55:0] n60;
wire     [63:0] n61;
wire     [71:0] n62;
wire      [7:0] n63;
wire      [7:0] n64;
wire      [7:0] n65;
wire      [7:0] n66;
wire      [7:0] n67;
wire      [7:0] n68;
wire      [7:0] n69;
wire      [7:0] n70;
wire      [7:0] n71;
wire     [15:0] n72;
wire     [23:0] n73;
wire     [31:0] n74;
wire     [39:0] n75;
wire     [47:0] n76;
wire     [55:0] n77;
wire     [63:0] n78;
wire     [71:0] n79;
wire      [7:0] n80;
wire      [7:0] n81;
wire      [7:0] n82;
wire      [7:0] n83;
wire      [7:0] n84;
wire      [7:0] n85;
wire      [7:0] n86;
wire      [7:0] n87;
wire      [7:0] n88;
wire     [15:0] n89;
wire     [23:0] n90;
wire     [31:0] n91;
wire     [39:0] n92;
wire     [47:0] n93;
wire     [55:0] n94;
wire     [63:0] n95;
wire     [71:0] n96;
wire      [7:0] n97;
wire      [7:0] n98;
wire      [7:0] n99;
wire      [7:0] n100;
wire      [7:0] n101;
wire      [7:0] n102;
wire      [7:0] n103;
wire      [7:0] n104;
wire      [7:0] n105;
wire     [15:0] n106;
wire     [23:0] n107;
wire     [31:0] n108;
wire     [39:0] n109;
wire     [47:0] n110;
wire     [55:0] n111;
wire     [63:0] n112;
wire     [71:0] n113;
wire      [7:0] n114;
wire      [7:0] n115;
wire      [7:0] n116;
wire      [7:0] n117;
wire      [7:0] n118;
wire      [7:0] n119;
wire      [7:0] n120;
wire      [7:0] n121;
wire      [7:0] n122;
wire     [15:0] n123;
wire     [23:0] n124;
wire     [31:0] n125;
wire     [39:0] n126;
wire     [47:0] n127;
wire     [55:0] n128;
wire     [63:0] n129;
wire     [71:0] n130;
wire      [7:0] n131;
wire      [7:0] n132;
wire      [7:0] n133;
wire      [7:0] n134;
wire      [7:0] n135;
wire      [7:0] n136;
wire      [7:0] n137;
wire      [7:0] n138;
wire      [7:0] n139;
wire     [15:0] n140;
wire     [23:0] n141;
wire     [31:0] n142;
wire     [39:0] n143;
wire     [47:0] n144;
wire     [55:0] n145;
wire     [63:0] n146;
wire     [71:0] n147;
wire      [7:0] n148;
wire      [7:0] n149;
wire      [7:0] n150;
wire      [7:0] n151;
wire      [7:0] n152;
wire      [7:0] n153;
wire      [7:0] n154;
wire      [7:0] n155;
wire      [7:0] n156;
wire     [15:0] n157;
wire     [23:0] n158;
wire     [31:0] n159;
wire     [39:0] n160;
wire     [47:0] n161;
wire     [55:0] n162;
wire     [63:0] n163;
wire     [71:0] n164;
wire      [7:0] n165;
wire      [7:0] n166;
wire      [7:0] n167;
wire      [7:0] n168;
wire      [7:0] n169;
wire      [7:0] n170;
wire      [7:0] n171;
wire      [7:0] n172;
wire      [7:0] n173;
wire     [15:0] n174;
wire     [23:0] n175;
wire     [31:0] n176;
wire     [39:0] n177;
wire     [47:0] n178;
wire     [55:0] n179;
wire     [63:0] n180;
wire     [71:0] n181;
wire      [7:0] n182;
wire      [7:0] n183;
wire      [7:0] n184;
wire      [7:0] n185;
wire      [7:0] n186;
wire      [7:0] n187;
wire      [7:0] n188;
wire      [7:0] n189;
wire      [7:0] n190;
wire     [15:0] n191;
wire     [23:0] n192;
wire     [31:0] n193;
wire     [39:0] n194;
wire     [47:0] n195;
wire     [55:0] n196;
wire     [63:0] n197;
wire     [71:0] n198;
wire    [143:0] n199;
wire    [215:0] n200;
wire    [287:0] n201;
wire    [359:0] n202;
wire    [431:0] n203;
wire    [503:0] n204;
wire    [575:0] n205;
wire    [647:0] n206;
wire    [647:0] n207;
wire    [647:0] n208;
wire      [7:0] n209;
wire      [7:0] n210;
wire      [7:0] n211;
wire      [7:0] n212;
wire      [7:0] n213;
wire      [7:0] n214;
wire            n215;
wire            n216;
wire            n217;
wire            n218;
wire            n219;
wire            n220;
wire            n221;
wire            n222;
wire      [8:0] n223;
wire            n224;
wire      [9:0] n225;
wire            n226;
wire            n227;
wire            n228;
wire            n229;
wire            n230;
wire            n231;
wire            n232;
wire            n233;
wire            n234;
wire      [7:0] n235;
wire      [7:0] n236;
wire      [7:0] n237;
wire      [7:0] n238;
wire      [7:0] n239;
wire      [7:0] n240;
wire      [7:0] n241;
wire    [647:0] n242;
wire    [647:0] n243;
wire    [647:0] n244;
wire            n245;
wire            n246;
wire            n247;
wire     [71:0] n248;
wire     [71:0] n249;
wire     [71:0] n250;
wire     [71:0] n251;
wire     [71:0] n252;
wire     [71:0] n253;
wire     [71:0] n254;
wire     [71:0] n255;
wire     [71:0] n256;
wire     [71:0] n257;
wire     [71:0] n258;
wire     [71:0] n259;
wire     [71:0] n260;
wire     [71:0] n261;
wire     [71:0] n262;
wire     [71:0] n263;
wire     [71:0] n264;
wire     [71:0] n265;
wire     [71:0] n266;
wire     [71:0] n267;
wire     [71:0] n268;
wire     [71:0] n269;
wire     [71:0] n270;
wire     [71:0] n271;
wire     [71:0] n272;
wire     [71:0] n273;
wire     [71:0] n274;
wire     [71:0] n275;
wire     [71:0] n276;
wire     [71:0] n277;
wire     [71:0] n278;
wire     [71:0] n279;
wire     [71:0] n280;
wire     [71:0] n281;
wire     [71:0] n282;
wire     [71:0] n283;
wire     [71:0] n284;
wire     [71:0] n285;
wire     [71:0] n286;
wire     [71:0] n287;
wire            n288;
wire      [8:0] n289;
wire      [7:0] n290;
wire            n291;
wire      [7:0] n292;
wire            n293;
wire      [7:0] n294;
wire            n295;
wire      [7:0] n296;
wire            n297;
wire      [7:0] n298;
wire            n299;
wire      [7:0] n300;
wire            n301;
wire      [7:0] n302;
wire      [7:0] n303;
wire      [7:0] n304;
wire      [7:0] n305;
wire      [7:0] n306;
wire      [7:0] n307;
wire      [7:0] n308;
wire      [7:0] n309;
wire      [7:0] n310;
wire      [7:0] n311;
wire      [7:0] n312;
wire      [7:0] n313;
wire      [7:0] n314;
wire      [7:0] n315;
wire      [7:0] n316;
wire      [7:0] n317;
wire      [7:0] n318;
wire      [7:0] n319;
wire      [7:0] n320;
wire      [7:0] n321;
wire      [7:0] n322;
wire      [7:0] n323;
wire      [7:0] n324;
wire      [7:0] n325;
wire      [7:0] n326;
wire      [7:0] n327;
wire      [7:0] n328;
wire      [7:0] n329;
wire      [7:0] n330;
wire      [7:0] n331;
wire      [7:0] n332;
wire      [7:0] n333;
wire      [7:0] n334;
wire      [7:0] n335;
wire      [7:0] n336;
wire      [7:0] n337;
wire      [7:0] n338;
wire      [7:0] n339;
wire      [7:0] n340;
wire      [7:0] n341;
wire      [7:0] n342;
wire      [7:0] n343;
wire      [7:0] n344;
wire      [7:0] n345;
wire      [7:0] n346;
wire      [7:0] n347;
wire      [7:0] n348;
wire      [7:0] n349;
wire      [7:0] n350;
wire      [7:0] n351;
wire      [7:0] n352;
wire      [7:0] n353;
wire      [7:0] n354;
wire      [7:0] n355;
wire      [7:0] n356;
wire      [7:0] n357;
wire      [7:0] n358;
wire      [7:0] n359;
wire     [15:0] n360;
wire     [23:0] n361;
wire     [31:0] n362;
wire     [39:0] n363;
wire     [47:0] n364;
wire     [55:0] n365;
wire     [63:0] n366;
wire     [71:0] n367;
wire     [71:0] n368;
wire     [71:0] n369;
wire     [71:0] n370;
wire     [71:0] n371;
wire     [71:0] n372;
wire      [8:0] RAM_0_addr0;
wire      [7:0] RAM_0_data0;
wire            n373;
wire            n374;
wire            n375;
wire            n376;
wire            n377;
wire            n378;
wire            n379;
wire            n380;
wire            n381;
wire            n382;
wire            n383;
wire            n384;
wire            n385;
wire      [8:0] RAM_1_addr0;
wire      [7:0] RAM_1_data0;
wire            n386;
wire            n387;
wire            n388;
wire      [8:0] RAM_2_addr0;
wire      [7:0] RAM_2_data0;
wire            n389;
wire            n390;
wire            n391;
wire      [8:0] RAM_3_addr0;
wire      [7:0] RAM_3_data0;
wire            n392;
wire            n393;
wire            n394;
wire      [8:0] RAM_4_addr0;
wire      [7:0] RAM_4_data0;
wire            n395;
wire            n396;
wire            n397;
wire      [8:0] RAM_5_addr0;
wire      [7:0] RAM_5_data0;
wire            n398;
wire            n399;
wire            n400;
wire      [8:0] RAM_6_addr0;
wire      [7:0] RAM_6_data0;
wire            n401;
wire            n402;
wire            n403;
wire      [8:0] RAM_7_addr0;
wire      [7:0] RAM_7_data0;
wire            n404;
wire            n405;
wire            n406;
reg      [7:0] RAM_0[487:0];
reg      [7:0] RAM_1[487:0];
reg      [7:0] RAM_2[487:0];
reg      [7:0] RAM_3[487:0];
reg      [7:0] RAM_4[487:0];
reg      [7:0] RAM_5[487:0];
reg      [7:0] RAM_6[487:0];
reg      [7:0] RAM_7[487:0];
wire clk;
wire rst;
wire step;
assign n0 =  ( arg_1_TREADY ) == ( 1'd0 )  ;
assign n1 =  ( arg_0_TREADY ) == ( 1'd0 )  ;
assign n2 =  ( n0 ) & ( n1 )  ;
assign n3 =  ( st_ready ) == ( 1'd0 )  ;
assign n4 =  ( n2 ) & ( n3 )  ;
assign n5 =  ( st_ready ) == ( 1'd1 )  ;
assign n6 =  ( n2 ) & ( n5 )  ;
assign n7 =  ( RAM_x ) == ( 9'd0 )  ;
assign n8 =  ( n6 ) & ( n7 )  ;
assign n9 =  ( RAM_y ) == ( 10'd0 )  ;
assign n10 =  ( n8 ) & ( n9 )  ;
assign n11 =  ( n7 ) & ( n9 )  ;
assign n12 = ~ ( n11 ) ;
assign n13 =  ( n6 ) & ( n12 )  ;
assign n14 =  ( RAM_x ) == ( 9'd488 )  ;
assign n15 =  ( RAM_w ) == ( 3'd7 )  ;
assign n16 =  ( RAM_w ) + ( 3'd1 )  ;
assign n17 =  ( n15 ) ? ( 3'd0 ) : ( n16 ) ;
assign n18 =  ( n14 ) ? ( n17 ) : ( RAM_w ) ;
assign n19 =  ( arg_1_TVALID ) == ( 1'd1 )  ;
assign n20 =  ( arg_1_TREADY ) == ( 1'd1 )  ;
assign n21 =  ( n19 ) & ( n20 )  ;
assign n22 =  ( arg_0_TVALID ) == ( 1'd0 )  ;
assign n23 =  ( n21 ) & ( n22 )  ;
assign n24 =  ( n23 ) & ( n1 )  ;
assign n25 =  ( n24 ) ? ( RAM_w ) : ( RAM_w ) ;
assign n26 =  ( n13 ) ? ( n18 ) : ( n25 ) ;
assign n27 =  ( n10 ) ? ( RAM_w ) : ( n26 ) ;
assign n28 =  ( n4 ) ? ( RAM_w ) : ( n27 ) ;
assign n29 =  ( RAM_x ) + ( 9'd1 )  ;
assign n30 =  ( n14 ) ? ( 9'd1 ) : ( n29 ) ;
assign n31 =  ( n24 ) ? ( RAM_x ) : ( RAM_x ) ;
assign n32 =  ( n13 ) ? ( n30 ) : ( n31 ) ;
assign n33 =  ( n10 ) ? ( 9'd1 ) : ( n32 ) ;
assign n34 =  ( n4 ) ? ( RAM_x ) : ( n33 ) ;
assign n35 =  ( RAM_y ) == ( 10'd648 )  ;
assign n36 =  ( RAM_y ) + ( 10'd1 )  ;
assign n37 =  ( n35 ) ? ( 10'd0 ) : ( n36 ) ;
assign n38 =  ( n14 ) ? ( n37 ) : ( RAM_y ) ;
assign n39 =  ( n24 ) ? ( RAM_y ) : ( RAM_y ) ;
assign n40 =  ( n13 ) ? ( n38 ) : ( n39 ) ;
assign n41 =  ( n10 ) ? ( RAM_y ) : ( n40 ) ;
assign n42 =  ( n4 ) ? ( RAM_y ) : ( n41 ) ;
assign n43 =  ( RAM_x ) == ( 9'd1 )  ;
assign n44 =  ( n43 ) & ( n35 )  ;
assign n45 =  ( RAM_x ) > ( 9'd8 )  ;
assign n46 = stencil_8[71:64] ;
assign n47 = stencil_7[71:64] ;
assign n48 = stencil_6[71:64] ;
assign n49 = stencil_5[71:64] ;
assign n50 = stencil_4[71:64] ;
assign n51 = stencil_3[71:64] ;
assign n52 = stencil_2[71:64] ;
assign n53 = stencil_1[71:64] ;
assign n54 = stencil_0[71:64] ;
assign n55 =  { ( n53 ) , ( n54 ) }  ;
assign n56 =  { ( n52 ) , ( n55 ) }  ;
assign n57 =  { ( n51 ) , ( n56 ) }  ;
assign n58 =  { ( n50 ) , ( n57 ) }  ;
assign n59 =  { ( n49 ) , ( n58 ) }  ;
assign n60 =  { ( n48 ) , ( n59 ) }  ;
assign n61 =  { ( n47 ) , ( n60 ) }  ;
assign n62 =  { ( n46 ) , ( n61 ) }  ;
assign n63 = stencil_8[63:56] ;
assign n64 = stencil_7[63:56] ;
assign n65 = stencil_6[63:56] ;
assign n66 = stencil_5[63:56] ;
assign n67 = stencil_4[63:56] ;
assign n68 = stencil_3[63:56] ;
assign n69 = stencil_2[63:56] ;
assign n70 = stencil_1[63:56] ;
assign n71 = stencil_0[63:56] ;
assign n72 =  { ( n70 ) , ( n71 ) }  ;
assign n73 =  { ( n69 ) , ( n72 ) }  ;
assign n74 =  { ( n68 ) , ( n73 ) }  ;
assign n75 =  { ( n67 ) , ( n74 ) }  ;
assign n76 =  { ( n66 ) , ( n75 ) }  ;
assign n77 =  { ( n65 ) , ( n76 ) }  ;
assign n78 =  { ( n64 ) , ( n77 ) }  ;
assign n79 =  { ( n63 ) , ( n78 ) }  ;
assign n80 = stencil_8[55:48] ;
assign n81 = stencil_7[55:48] ;
assign n82 = stencil_6[55:48] ;
assign n83 = stencil_5[55:48] ;
assign n84 = stencil_4[55:48] ;
assign n85 = stencil_3[55:48] ;
assign n86 = stencil_2[55:48] ;
assign n87 = stencil_1[55:48] ;
assign n88 = stencil_0[55:48] ;
assign n89 =  { ( n87 ) , ( n88 ) }  ;
assign n90 =  { ( n86 ) , ( n89 ) }  ;
assign n91 =  { ( n85 ) , ( n90 ) }  ;
assign n92 =  { ( n84 ) , ( n91 ) }  ;
assign n93 =  { ( n83 ) , ( n92 ) }  ;
assign n94 =  { ( n82 ) , ( n93 ) }  ;
assign n95 =  { ( n81 ) , ( n94 ) }  ;
assign n96 =  { ( n80 ) , ( n95 ) }  ;
assign n97 = stencil_8[47:40] ;
assign n98 = stencil_7[47:40] ;
assign n99 = stencil_6[47:40] ;
assign n100 = stencil_5[47:40] ;
assign n101 = stencil_4[47:40] ;
assign n102 = stencil_3[47:40] ;
assign n103 = stencil_2[47:40] ;
assign n104 = stencil_1[47:40] ;
assign n105 = stencil_0[47:40] ;
assign n106 =  { ( n104 ) , ( n105 ) }  ;
assign n107 =  { ( n103 ) , ( n106 ) }  ;
assign n108 =  { ( n102 ) , ( n107 ) }  ;
assign n109 =  { ( n101 ) , ( n108 ) }  ;
assign n110 =  { ( n100 ) , ( n109 ) }  ;
assign n111 =  { ( n99 ) , ( n110 ) }  ;
assign n112 =  { ( n98 ) , ( n111 ) }  ;
assign n113 =  { ( n97 ) , ( n112 ) }  ;
assign n114 = stencil_8[39:32] ;
assign n115 = stencil_7[39:32] ;
assign n116 = stencil_6[39:32] ;
assign n117 = stencil_5[39:32] ;
assign n118 = stencil_4[39:32] ;
assign n119 = stencil_3[39:32] ;
assign n120 = stencil_2[39:32] ;
assign n121 = stencil_1[39:32] ;
assign n122 = stencil_0[39:32] ;
assign n123 =  { ( n121 ) , ( n122 ) }  ;
assign n124 =  { ( n120 ) , ( n123 ) }  ;
assign n125 =  { ( n119 ) , ( n124 ) }  ;
assign n126 =  { ( n118 ) , ( n125 ) }  ;
assign n127 =  { ( n117 ) , ( n126 ) }  ;
assign n128 =  { ( n116 ) , ( n127 ) }  ;
assign n129 =  { ( n115 ) , ( n128 ) }  ;
assign n130 =  { ( n114 ) , ( n129 ) }  ;
assign n131 = stencil_8[31:24] ;
assign n132 = stencil_7[31:24] ;
assign n133 = stencil_6[31:24] ;
assign n134 = stencil_5[31:24] ;
assign n135 = stencil_4[31:24] ;
assign n136 = stencil_3[31:24] ;
assign n137 = stencil_2[31:24] ;
assign n138 = stencil_1[31:24] ;
assign n139 = stencil_0[31:24] ;
assign n140 =  { ( n138 ) , ( n139 ) }  ;
assign n141 =  { ( n137 ) , ( n140 ) }  ;
assign n142 =  { ( n136 ) , ( n141 ) }  ;
assign n143 =  { ( n135 ) , ( n142 ) }  ;
assign n144 =  { ( n134 ) , ( n143 ) }  ;
assign n145 =  { ( n133 ) , ( n144 ) }  ;
assign n146 =  { ( n132 ) , ( n145 ) }  ;
assign n147 =  { ( n131 ) , ( n146 ) }  ;
assign n148 = stencil_8[23:16] ;
assign n149 = stencil_7[23:16] ;
assign n150 = stencil_6[23:16] ;
assign n151 = stencil_5[23:16] ;
assign n152 = stencil_4[23:16] ;
assign n153 = stencil_3[23:16] ;
assign n154 = stencil_2[23:16] ;
assign n155 = stencil_1[23:16] ;
assign n156 = stencil_0[23:16] ;
assign n157 =  { ( n155 ) , ( n156 ) }  ;
assign n158 =  { ( n154 ) , ( n157 ) }  ;
assign n159 =  { ( n153 ) , ( n158 ) }  ;
assign n160 =  { ( n152 ) , ( n159 ) }  ;
assign n161 =  { ( n151 ) , ( n160 ) }  ;
assign n162 =  { ( n150 ) , ( n161 ) }  ;
assign n163 =  { ( n149 ) , ( n162 ) }  ;
assign n164 =  { ( n148 ) , ( n163 ) }  ;
assign n165 = stencil_8[15:8] ;
assign n166 = stencil_7[15:8] ;
assign n167 = stencil_6[15:8] ;
assign n168 = stencil_5[15:8] ;
assign n169 = stencil_4[15:8] ;
assign n170 = stencil_3[15:8] ;
assign n171 = stencil_2[15:8] ;
assign n172 = stencil_1[15:8] ;
assign n173 = stencil_0[15:8] ;
assign n174 =  { ( n172 ) , ( n173 ) }  ;
assign n175 =  { ( n171 ) , ( n174 ) }  ;
assign n176 =  { ( n170 ) , ( n175 ) }  ;
assign n177 =  { ( n169 ) , ( n176 ) }  ;
assign n178 =  { ( n168 ) , ( n177 ) }  ;
assign n179 =  { ( n167 ) , ( n178 ) }  ;
assign n180 =  { ( n166 ) , ( n179 ) }  ;
assign n181 =  { ( n165 ) , ( n180 ) }  ;
assign n182 = stencil_8[7:0] ;
assign n183 = stencil_7[7:0] ;
assign n184 = stencil_6[7:0] ;
assign n185 = stencil_5[7:0] ;
assign n186 = stencil_4[7:0] ;
assign n187 = stencil_3[7:0] ;
assign n188 = stencil_2[7:0] ;
assign n189 = stencil_1[7:0] ;
assign n190 = stencil_0[7:0] ;
assign n191 =  { ( n189 ) , ( n190 ) }  ;
assign n192 =  { ( n188 ) , ( n191 ) }  ;
assign n193 =  { ( n187 ) , ( n192 ) }  ;
assign n194 =  { ( n186 ) , ( n193 ) }  ;
assign n195 =  { ( n185 ) , ( n194 ) }  ;
assign n196 =  { ( n184 ) , ( n195 ) }  ;
assign n197 =  { ( n183 ) , ( n196 ) }  ;
assign n198 =  { ( n182 ) , ( n197 ) }  ;
assign n199 =  { ( n181 ) , ( n198 ) }  ;
assign n200 =  { ( n164 ) , ( n199 ) }  ;
assign n201 =  { ( n147 ) , ( n200 ) }  ;
assign n202 =  { ( n130 ) , ( n201 ) }  ;
assign n203 =  { ( n113 ) , ( n202 ) }  ;
assign n204 =  { ( n96 ) , ( n203 ) }  ;
assign n205 =  { ( n79 ) , ( n204 ) }  ;
assign n206 =  { ( n62 ) , ( n205 ) }  ;
assign n207 =  ( n45 ) ? ( n206 ) : ( proc_in ) ;
assign n208 =  ( n44 ) ? ( proc_in ) : ( n207 ) ;
//assign n209 = gb_fun(n208) ;
gb_fun gb_fun_U (
        .a (n208),
        .b (n209)
        );

assign n210 =  ( n44 ) ? ( arg_0_TDATA ) : ( n209 ) ;
assign n211 =  ( n24 ) ? ( arg_0_TDATA ) : ( arg_0_TDATA ) ;
assign n212 =  ( n13 ) ? ( arg_0_TDATA ) : ( n211 ) ;
assign n213 =  ( n10 ) ? ( arg_0_TDATA ) : ( n212 ) ;
assign n214 =  ( n4 ) ? ( n210 ) : ( n213 ) ;
assign n215 =  ( RAM_y ) >= ( 10'd8 )  ;
assign n216 =  ( n45 ) & ( n215 )  ;
assign n217 =  ( n216 ) ? ( 1'd1 ) : ( 1'd0 ) ;
assign n218 =  ( n44 ) ? ( arg_0_TVALID ) : ( n217 ) ;
assign n219 =  ( n24 ) ? ( 1'd0 ) : ( arg_0_TVALID ) ;
assign n220 =  ( n13 ) ? ( arg_0_TVALID ) : ( n219 ) ;
assign n221 =  ( n10 ) ? ( 1'd0 ) : ( n220 ) ;
assign n222 =  ( n4 ) ? ( n218 ) : ( n221 ) ;
assign n223 =  ( 9'd488 ) - ( 9'd1 )  ;
assign n224 =  ( RAM_x ) == ( n223 )  ;
assign n225 =  ( 10'd648 ) - ( 10'd1 )  ;
assign n226 =  ( RAM_y ) == ( n225 )  ;
assign n227 =  ( n224 ) & ( n226 )  ;
assign n228 =  ( n227 ) ? ( 1'd0 ) : ( 1'd1 ) ;
assign n229 =  ( RAM_y ) < ( 10'd8 )  ;
assign n230 =  ( n229 ) ? ( 1'd1 ) : ( 1'd0 ) ;
assign n231 =  ( n24 ) ? ( 1'd0 ) : ( arg_1_TREADY ) ;
assign n232 =  ( n13 ) ? ( n230 ) : ( n231 ) ;
assign n233 =  ( n10 ) ? ( 1'd1 ) : ( n232 ) ;
assign n234 =  ( n4 ) ? ( n228 ) : ( n233 ) ;
assign n235 =  ( n24 ) ? ( arg_1_TDATA ) : ( cur_pix ) ;
assign n236 =  ( n13 ) ? ( cur_pix ) : ( n235 ) ;
assign n237 =  ( n10 ) ? ( cur_pix ) : ( n236 ) ;
assign n238 =  ( n4 ) ? ( cur_pix ) : ( n237 ) ;
assign n239 =  ( n13 ) ? ( cur_pix ) : ( pre_pix ) ;
assign n240 =  ( n10 ) ? ( cur_pix ) : ( n239 ) ;
assign n241 =  ( n4 ) ? ( pre_pix ) : ( n240 ) ;
assign n242 =  ( n13 ) ? ( proc_in ) : ( proc_in ) ;
assign n243 =  ( n10 ) ? ( proc_in ) : ( n242 ) ;
assign n244 =  ( n4 ) ? ( n208 ) : ( n243 ) ;
assign n245 =  ( n13 ) ? ( n230 ) : ( st_ready ) ;
assign n246 =  ( n10 ) ? ( 1'd1 ) : ( n245 ) ;
assign n247 =  ( n4 ) ? ( 1'd1 ) : ( n246 ) ;
assign n248 =  ( n229 ) ? ( stencil_0 ) : ( stencil_1 ) ;
assign n249 =  ( n24 ) ? ( stencil_0 ) : ( stencil_0 ) ;
assign n250 =  ( n13 ) ? ( stencil_0 ) : ( n249 ) ;
assign n251 =  ( n10 ) ? ( stencil_0 ) : ( n250 ) ;
assign n252 =  ( n4 ) ? ( n248 ) : ( n251 ) ;
assign n253 =  ( n229 ) ? ( stencil_1 ) : ( stencil_2 ) ;
assign n254 =  ( n24 ) ? ( stencil_1 ) : ( stencil_1 ) ;
assign n255 =  ( n13 ) ? ( stencil_1 ) : ( n254 ) ;
assign n256 =  ( n10 ) ? ( stencil_1 ) : ( n255 ) ;
assign n257 =  ( n4 ) ? ( n253 ) : ( n256 ) ;
assign n258 =  ( n229 ) ? ( stencil_2 ) : ( stencil_3 ) ;
assign n259 =  ( n24 ) ? ( stencil_2 ) : ( stencil_2 ) ;
assign n260 =  ( n13 ) ? ( stencil_2 ) : ( n259 ) ;
assign n261 =  ( n10 ) ? ( stencil_2 ) : ( n260 ) ;
assign n262 =  ( n4 ) ? ( n258 ) : ( n261 ) ;
assign n263 =  ( n229 ) ? ( stencil_3 ) : ( stencil_4 ) ;
assign n264 =  ( n24 ) ? ( stencil_3 ) : ( stencil_3 ) ;
assign n265 =  ( n13 ) ? ( stencil_3 ) : ( n264 ) ;
assign n266 =  ( n10 ) ? ( stencil_3 ) : ( n265 ) ;
assign n267 =  ( n4 ) ? ( n263 ) : ( n266 ) ;
assign n268 =  ( n229 ) ? ( stencil_4 ) : ( stencil_5 ) ;
assign n269 =  ( n24 ) ? ( stencil_4 ) : ( stencil_4 ) ;
assign n270 =  ( n13 ) ? ( stencil_4 ) : ( n269 ) ;
assign n271 =  ( n10 ) ? ( stencil_4 ) : ( n270 ) ;
assign n272 =  ( n4 ) ? ( n268 ) : ( n271 ) ;
assign n273 =  ( n229 ) ? ( stencil_5 ) : ( stencil_6 ) ;
assign n274 =  ( n24 ) ? ( stencil_5 ) : ( stencil_5 ) ;
assign n275 =  ( n13 ) ? ( stencil_5 ) : ( n274 ) ;
assign n276 =  ( n10 ) ? ( stencil_5 ) : ( n275 ) ;
assign n277 =  ( n4 ) ? ( n273 ) : ( n276 ) ;
assign n278 =  ( n229 ) ? ( stencil_6 ) : ( stencil_7 ) ;
assign n279 =  ( n24 ) ? ( stencil_6 ) : ( stencil_6 ) ;
assign n280 =  ( n13 ) ? ( stencil_6 ) : ( n279 ) ;
assign n281 =  ( n10 ) ? ( stencil_6 ) : ( n280 ) ;
assign n282 =  ( n4 ) ? ( n278 ) : ( n281 ) ;
assign n283 =  ( n229 ) ? ( stencil_7 ) : ( stencil_8 ) ;
assign n284 =  ( n24 ) ? ( stencil_7 ) : ( stencil_7 ) ;
assign n285 =  ( n13 ) ? ( stencil_7 ) : ( n284 ) ;
assign n286 =  ( n10 ) ? ( stencil_7 ) : ( n285 ) ;
assign n287 =  ( n4 ) ? ( n283 ) : ( n286 ) ;
assign n288 =  ( RAM_w ) == ( 3'd0 )  ;
assign n289 =  ( RAM_x ) - ( 9'd1 )  ;
assign n290 =  (  RAM_7 [ n289 ] )  ;
assign n291 =  ( RAM_w ) == ( 3'd1 )  ;
assign n292 =  (  RAM_0 [ n289 ] )  ;
assign n293 =  ( RAM_w ) == ( 3'd2 )  ;
assign n294 =  (  RAM_1 [ n289 ] )  ;
assign n295 =  ( RAM_w ) == ( 3'd3 )  ;
assign n296 =  (  RAM_2 [ n289 ] )  ;
assign n297 =  ( RAM_w ) == ( 3'd4 )  ;
assign n298 =  (  RAM_3 [ n289 ] )  ;
assign n299 =  ( RAM_w ) == ( 3'd5 )  ;
assign n300 =  (  RAM_4 [ n289 ] )  ;
assign n301 =  ( RAM_w ) == ( 3'd6 )  ;
assign n302 =  (  RAM_5 [ n289 ] )  ;
assign n303 =  (  RAM_6 [ n289 ] )  ;
assign n304 =  ( n301 ) ? ( n302 ) : ( n303 ) ;
assign n305 =  ( n299 ) ? ( n300 ) : ( n304 ) ;
assign n306 =  ( n297 ) ? ( n298 ) : ( n305 ) ;
assign n307 =  ( n295 ) ? ( n296 ) : ( n306 ) ;
assign n308 =  ( n293 ) ? ( n294 ) : ( n307 ) ;
assign n309 =  ( n291 ) ? ( n292 ) : ( n308 ) ;
assign n310 =  ( n288 ) ? ( n290 ) : ( n309 ) ;
assign n311 =  ( n301 ) ? ( n300 ) : ( n302 ) ;
assign n312 =  ( n299 ) ? ( n298 ) : ( n311 ) ;
assign n313 =  ( n297 ) ? ( n296 ) : ( n312 ) ;
assign n314 =  ( n295 ) ? ( n294 ) : ( n313 ) ;
assign n315 =  ( n293 ) ? ( n292 ) : ( n314 ) ;
assign n316 =  ( n291 ) ? ( n290 ) : ( n315 ) ;
assign n317 =  ( n288 ) ? ( n303 ) : ( n316 ) ;
assign n318 =  ( n301 ) ? ( n298 ) : ( n300 ) ;
assign n319 =  ( n299 ) ? ( n296 ) : ( n318 ) ;
assign n320 =  ( n297 ) ? ( n294 ) : ( n319 ) ;
assign n321 =  ( n295 ) ? ( n292 ) : ( n320 ) ;
assign n322 =  ( n293 ) ? ( n290 ) : ( n321 ) ;
assign n323 =  ( n291 ) ? ( n303 ) : ( n322 ) ;
assign n324 =  ( n288 ) ? ( n302 ) : ( n323 ) ;
assign n325 =  ( n301 ) ? ( n296 ) : ( n298 ) ;
assign n326 =  ( n299 ) ? ( n294 ) : ( n325 ) ;
assign n327 =  ( n297 ) ? ( n292 ) : ( n326 ) ;
assign n328 =  ( n295 ) ? ( n290 ) : ( n327 ) ;
assign n329 =  ( n293 ) ? ( n303 ) : ( n328 ) ;
assign n330 =  ( n291 ) ? ( n302 ) : ( n329 ) ;
assign n331 =  ( n288 ) ? ( n300 ) : ( n330 ) ;
assign n332 =  ( n301 ) ? ( n294 ) : ( n296 ) ;
assign n333 =  ( n299 ) ? ( n292 ) : ( n332 ) ;
assign n334 =  ( n297 ) ? ( n290 ) : ( n333 ) ;
assign n335 =  ( n295 ) ? ( n303 ) : ( n334 ) ;
assign n336 =  ( n293 ) ? ( n302 ) : ( n335 ) ;
assign n337 =  ( n291 ) ? ( n300 ) : ( n336 ) ;
assign n338 =  ( n288 ) ? ( n298 ) : ( n337 ) ;
assign n339 =  ( n301 ) ? ( n292 ) : ( n294 ) ;
assign n340 =  ( n299 ) ? ( n290 ) : ( n339 ) ;
assign n341 =  ( n297 ) ? ( n303 ) : ( n340 ) ;
assign n342 =  ( n295 ) ? ( n302 ) : ( n341 ) ;
assign n343 =  ( n293 ) ? ( n300 ) : ( n342 ) ;
assign n344 =  ( n291 ) ? ( n298 ) : ( n343 ) ;
assign n345 =  ( n288 ) ? ( n296 ) : ( n344 ) ;
assign n346 =  ( n301 ) ? ( n290 ) : ( n292 ) ;
assign n347 =  ( n299 ) ? ( n303 ) : ( n346 ) ;
assign n348 =  ( n297 ) ? ( n302 ) : ( n347 ) ;
assign n349 =  ( n295 ) ? ( n300 ) : ( n348 ) ;
assign n350 =  ( n293 ) ? ( n298 ) : ( n349 ) ;
assign n351 =  ( n291 ) ? ( n296 ) : ( n350 ) ;
assign n352 =  ( n288 ) ? ( n294 ) : ( n351 ) ;
assign n353 =  ( n301 ) ? ( n303 ) : ( n290 ) ;
assign n354 =  ( n299 ) ? ( n302 ) : ( n353 ) ;
assign n355 =  ( n297 ) ? ( n300 ) : ( n354 ) ;
assign n356 =  ( n295 ) ? ( n298 ) : ( n355 ) ;
assign n357 =  ( n293 ) ? ( n296 ) : ( n356 ) ;
assign n358 =  ( n291 ) ? ( n294 ) : ( n357 ) ;
assign n359 =  ( n288 ) ? ( n292 ) : ( n358 ) ;
assign n360 =  { ( n352 ) , ( n359 ) }  ;
assign n361 =  { ( n345 ) , ( n360 ) }  ;
assign n362 =  { ( n338 ) , ( n361 ) }  ;
assign n363 =  { ( n331 ) , ( n362 ) }  ;
assign n364 =  { ( n324 ) , ( n363 ) }  ;
assign n365 =  { ( n317 ) , ( n364 ) }  ;
assign n366 =  { ( n310 ) , ( n365 ) }  ;
assign n367 =  { ( pre_pix ) , ( n366 ) }  ;
assign n368 =  ( n229 ) ? ( stencil_8 ) : ( n367 ) ;
assign n369 =  ( n24 ) ? ( stencil_8 ) : ( stencil_8 ) ;
assign n370 =  ( n13 ) ? ( n368 ) : ( n369 ) ;
assign n371 =  ( n10 ) ? ( stencil_8 ) : ( n370 ) ;
assign n372 =  ( n4 ) ? ( stencil_8 ) : ( n371 ) ;
assign n373 = ~ ( n4 ) ;
assign n374 = ~ ( n10 ) ;
assign n375 =  ( n373 ) & ( n374 )  ;
assign n376 = ~ ( n13 ) ;
assign n377 =  ( n375 ) & ( n376 )  ;
assign n378 = ~ ( n24 ) ;
assign n379 =  ( n377 ) & ( n378 )  ;
assign n380 =  ( n377 ) & ( n24 )  ;
assign n381 =  ( n375 ) & ( n13 )  ;
assign n382 = ~ ( n288 ) ;
assign n383 =  ( n381 ) & ( n382 )  ;
assign n384 =  ( n381 ) & ( n288 )  ;
assign n385 =  ( n373 ) & ( n10 )  ;
assign RAM_0_addr0 = n384 ? (n289) : (0);
assign RAM_0_data0 = n384 ? (pre_pix) : (RAM_0[0]);
assign n386 = ~ ( n291 ) ;
assign n387 =  ( n381 ) & ( n386 )  ;
assign n388 =  ( n381 ) & ( n291 )  ;
assign RAM_1_addr0 = n388 ? (n289) : (0);
assign RAM_1_data0 = n388 ? (pre_pix) : (RAM_1[0]);
assign n389 = ~ ( n293 ) ;
assign n390 =  ( n381 ) & ( n389 )  ;
assign n391 =  ( n381 ) & ( n293 )  ;
assign RAM_2_addr0 = n391 ? (n289) : (0);
assign RAM_2_data0 = n391 ? (pre_pix) : (RAM_2[0]);
assign n392 = ~ ( n295 ) ;
assign n393 =  ( n381 ) & ( n392 )  ;
assign n394 =  ( n381 ) & ( n295 )  ;
assign RAM_3_addr0 = n394 ? (n289) : (0);
assign RAM_3_data0 = n394 ? (pre_pix) : (RAM_3[0]);
assign n395 = ~ ( n297 ) ;
assign n396 =  ( n381 ) & ( n395 )  ;
assign n397 =  ( n381 ) & ( n297 )  ;
assign RAM_4_addr0 = n397 ? (n289) : (0);
assign RAM_4_data0 = n397 ? (pre_pix) : (RAM_4[0]);
assign n398 = ~ ( n299 ) ;
assign n399 =  ( n381 ) & ( n398 )  ;
assign n400 =  ( n381 ) & ( n299 )  ;
assign RAM_5_addr0 = n400 ? (n289) : (0);
assign RAM_5_data0 = n400 ? (pre_pix) : (RAM_5[0]);
assign n401 = ~ ( n301 ) ;
assign n402 =  ( n381 ) & ( n401 )  ;
assign n403 =  ( n381 ) & ( n301 )  ;
assign RAM_6_addr0 = n403 ? (n289) : (0);
assign RAM_6_data0 = n403 ? (pre_pix) : (RAM_6[0]);
assign n404 = ~ ( n15 ) ;
assign n405 =  ( n381 ) & ( n404 )  ;
assign n406 =  ( n381 ) & ( n15 )  ;
assign RAM_7_addr0 = n406 ? (n289) : (0);
assign RAM_7_data0 = n406 ? (pre_pix) : (RAM_7[0]);
/*
function [7:0] gb_fun ;
input [647:0] arg0;
    begin
//TODO: Add the specific function HERE.    end
endfunction
*/

always @(posedge clk) begin
   if(rst) begin
       RAM_w <= RAM_w;
       RAM_x <= RAM_x;
       RAM_y <= RAM_y;
       arg_0_TDATA <= arg_0_TDATA;
       arg_0_TVALID <= arg_0_TVALID;
       arg_1_TREADY <= arg_1_TREADY;
       cur_pix <= cur_pix;
       gbit <= gbit;
       pre_pix <= pre_pix;
       proc_in <= proc_in;
       st_ready <= st_ready;
       stencil_0 <= stencil_0;
       stencil_1 <= stencil_1;
       stencil_2 <= stencil_2;
       stencil_3 <= stencil_3;
       stencil_4 <= stencil_4;
       stencil_5 <= stencil_5;
       stencil_6 <= stencil_6;
       stencil_7 <= stencil_7;
       stencil_8 <= stencil_8;
   end
   else if(step) begin
       RAM_w <= n28;
       RAM_x <= n34;
       RAM_y <= n42;
       arg_0_TDATA <= n214;
       arg_0_TVALID <= n222;
       arg_1_TREADY <= n234;
       cur_pix <= n238;
       gbit <= gbit;
       pre_pix <= n241;
       proc_in <= n244;
       st_ready <= n247;
       stencil_0 <= n252;
       stencil_1 <= n257;
       stencil_2 <= n262;
       stencil_3 <= n267;
       stencil_4 <= n272;
       stencil_5 <= n277;
       stencil_6 <= n282;
       stencil_7 <= n287;
       stencil_8 <= n372;
       RAM_0 [ RAM_0_addr0 ] <= RAM_0_data0;
       RAM_1 [ RAM_1_addr0 ] <= RAM_1_data0;
       RAM_2 [ RAM_2_addr0 ] <= RAM_2_data0;
       RAM_3 [ RAM_3_addr0 ] <= RAM_3_data0;
       RAM_4 [ RAM_4_addr0 ] <= RAM_4_data0;
       RAM_5 [ RAM_5_addr0 ] <= RAM_5_data0;
       RAM_6 [ RAM_6_addr0 ] <= RAM_6_data0;
       RAM_7 [ RAM_7_addr0 ] <= RAM_7_data0;
   end
end
endmodule

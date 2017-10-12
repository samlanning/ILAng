#include "fatBinaryCtl.h"
#define __CUDAFATBINSECTION  ".nvFatBinSegment"
#define __CUDAFATBINDATASECTION  ".nv_fatbin"
asm(
".section .nv_fatbin, \"a\"\n"
".align 8\n"
"fatbinData:\n"
".quad 0x00100001ba55ed50,0x0000000000000c08,0x0000004001010002,0x00000000000007f0\n"
".quad 0x0000000000000000,0x0000001400010007,0x0000000000000000,0x0000000000000015\n"
".quad 0x0000000000000000,0x0000000000000000,0x33010102464c457f,0x0000000000000007\n"
".quad 0x0000005000be0002,0x0000000000000000,0x0000000000000748,0x0000000000000448\n"
".quad 0x0038004000140514,0x0001000c00400003,0x7472747368732e00,0x747274732e006261\n"
".quad 0x746d79732e006261,0x746d79732e006261,0x78646e68735f6261,0x666e692e766e2e00\n"
".quad 0x2e747865742e006f,0x6650746f64335a5f,0x766e2e005f535f53,0x5a5f2e6f666e692e\n"
".quad 0x5f536650746f6433,0x732e766e2e005f53,0x5a5f2e6465726168,0x5f536650746f6433\n"
".quad 0x2e6c65722e005f53,0x335a5f2e74786574,0x535f536650746f64,0x6f632e766e2e005f\n"
".quad 0x2e30746e6174736e,0x6650746f64335a5f,0x766e2e005f535f53,0x2e6c61626f6c672e\n"
".quad 0x766e2e0074696e69,0x6e6174736e6f632e,0x6c65722e00343174,0x736e6f632e766e2e\n"
".quad 0x00003431746e6174,0x617472747368732e,0x61747274732e0062,0x61746d79732e0062\n"
".quad 0x61746d79732e0062,0x0078646e68735f62,0x6f666e692e766e2e,0x50746f64335a5f00\n"
".quad 0x742e005f535f5366,0x64335a5f2e747865,0x5f535f536650746f,0x666e692e766e2e00\n"
".quad 0x746f64335a5f2e6f,0x2e005f535f536650,0x65726168732e766e,0x746f64335a5f2e64\n"
".quad 0x76005f535f536650,0x2e0066746e697270,0x747865742e6c6572,0x50746f64335a5f2e\n"
".quad 0x6e2e005f535f5366,0x6174736e6f632e76,0x64335a5f2e30746e,0x5f535f536650746f\n"
".quad 0x006d617261705f00,0x626f6c672e766e2e,0x0074696e692e6c61,0x766e2e0072747324\n"
".quad 0x6e6174736e6f632e,0x4444412400343174,0x7473242453534552,0x6e2e6c65722e0072\n"
".quad 0x6174736e6f632e76,0x000000003431746e,0x0000000000000000,0x0000000000000000\n"
".quad 0x0000000000000000,0x000a00030000003f,0x0000000000000000,0x0000000000000000\n"
".quad 0x000800030000009f,0x0000000000000000,0x0000000000000000,0x000b0003000000c1\n"
".quad 0x0000000000000000,0x0000000000000000,0x000b0001000000d1,0x0000000000000000\n"
".quad 0x0000000000000003,0x00090003000000d6,0x0000000000000000,0x0000000000000000\n"
".quad 0x000a101200000032,0x0000000000000000,0x0000000000000090,0x0000001200000080\n"
".quad 0x0000000000000000,0x0000000000000000,0x0000000600082304,0x0008120400000000\n"
".quad 0x0000000800000006,0x0000000600081104,0x00080a0400000008,0x0018002000000002\n"
".quad 0x000c170400181903,0x0010000200000000,0x000c17040021f000,0x0008000100000000\n"
".quad 0x000c17040021f000,0x0000000000000000,0x00040f040021f000,0x0000000000000007\n"
".quad 0x0000000000000068,0x0000000700000005,0x0000000000000000,0x0000000400000002\n"
".quad 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000\n"
".quad 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000\n"
".quad 0x2800440400005de4,0x4800c00020105d03,0x2c00000084009c04,0x2c00000094001c04\n"
".quad 0x6800400010119c43,0x2800780000011de4,0x2004400020009ca3,0x3803fffffc60dc02\n"
".quad 0x2800780010015de4,0x5800c00078241c23,0xc8000000003fdc85,0x28000000fc01dde4\n"
".quad 0x6000c00008209e03,0x1000000000010007,0x48014000c0209c03,0x48004000d100dc43\n"
".quad 0x94000000002fdc85,0x8000000000001de7,0x0000000000006425,0x0000000000000000\n"
".quad 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000000000000\n"
".quad 0x0000000000000000,0x0000000000000000,0x0000000000000000,0x0000000300000001\n"
".quad 0x0000000000000000,0x0000000000000000,0x0000000000000040,0x00000000000000d7\n"
".quad 0x0000000000000000,0x0000000000000001,0x0000000000000000,0x000000030000000b\n"
".quad 0x0000000000000000,0x0000000000000000,0x0000000000000117,0x0000000000000106\n"
".quad 0x0000000000000000,0x0000000000000001,0x0000000000000000,0x0000000200000013\n"
".quad 0x0000000000000000,0x0000000000000000,0x0000000000000220,0x00000000000000c0\n"
".quad 0x0000000500000002,0x0000000000000008,0x0000000000000018,0x7000000000000029\n"
".quad 0x0000000000000000,0x0000000000000000,0x00000000000002e0,0x0000000000000024\n"
".quad 0x0000000000000003,0x0000000000000004,0x0000000000000000,0x7000000000000045\n"
".quad 0x0000000000000000,0x0000000000000000,0x0000000000000304,0x0000000000000048\n"
".quad 0x0000000a00000003,0x0000000000000004,0x0000000000000000,0x0000000900000073\n"
".quad 0x0000000000000000,0x0000000000000000,0x0000000000000350,0x0000000000000010\n"
".quad 0x0000000a00000003,0x0000000000000008,0x0000000000000010,0x00000009000000c4\n"
".quad 0x0000000000000000,0x0000000000000000,0x0000000000000360,0x0000000000000010\n"
".quad 0x0000000900000003,0x0000000000000008,0x0000000000000010,0x000000010000008a\n"
".quad 0x0000000000000002,0x0000000000000000,0x0000000000000370,0x0000000000000038\n"
".quad 0x0000000a00000000,0x0000000000000004,0x0000000000000000,0x00000001000000b5\n"
".quad 0x0000000000000002,0x0000000000000000,0x00000000000003a8,0x0000000000000008\n"
".quad 0x0000000000000000,0x0000000000000004,0x0000000000000000,0x0000000100000032\n"
".quad 0x0000000000000006,0x0000000000000000,0x00000000000003b0,0x0000000000000090\n"
".quad 0x1100000600000003,0x0000000000000004,0x0000000000000000,0x00000001000000a5\n"
".quad 0x0000000000000003,0x0000000000000000,0x0000000000000440,0x0000000000000003\n"
".quad 0x0000000000000000,0x0000000000000001,0x0000000000000000,0x0000000500000006\n"
".quad 0x0000000000000748,0x0000000000000000,0x0000000000000000,0x00000000000000a8\n"
".quad 0x00000000000000a8,0x0000000000000008,0x0000000500000001,0x0000000000000370\n"
".quad 0x0000000000000000,0x0000000000000000,0x00000000000000d0,0x00000000000000d0\n"
".quad 0x0000000000000008,0x0000000600000001,0x0000000000000440,0x0000000000000000\n"
".quad 0x0000000000000000,0x0000000000000008,0x0000000000000003,0x0000000000000008\n"
".quad 0x0000004801010001,0x0000000000000390,0x000000400000038e,0x0000001400050000\n"
".quad 0x0000000000000000,0x0000000000002015,0x0000000000000000,0x00000000000006cb\n"
".quad 0x0000000000000000,0x762e1cf000010a13,0x35206e6f69737265,0x677261742e0a302e\n"
".quad 0x30325f6d73207465,0x7365726464612e0a,0x3620657a69735f73,0x7478650bf0002e34\n"
".quad 0x6e75662e206e7265,0x617261702e282063,0x12203233622e206d,0x767465725f05f500\n"
".quad 0x7270762029306c61,0x240a280a66746e69,0x5f11001634362400,0x001d2c305f3f0013\n"
".quad 0x3b0a290a3123f008,0x6c61626f6c672e0a,0x206e67696c612e20,0x73242038622e2031\n"
".quad 0x203d205d335b7274,0x303031202c37337b,0xf600cc3b7d30202c,0x20656c626973690b\n"
".quad 0x5f207972746e652e,0x536650746f64335a,0x36753900895f535f,0x220f008e0e001a34\n"
".quad 0xa60e0022311f0400,0x6c2e0a7b0a290a32,0x00b4381100b4636f,0x5f01f200155f5f21\n"
".quad 0x385b30746f706564,0xfa6765722e0a3b5d,0x14000f5053253b00,0x203233669500104c\n"
".quad 0x0000213e343c6625,0x3e30313c72d90011,0x3272202c3172202c,0x313c647200f2003b\n"
".quad 0x6f6d0a0a0a3b3e36,0x35313b0013752e76,0x76630a3b6200812c,0x3200260200a96174\n"
".quad 0x0a3b42002b2c5053,0x3f003f0500e7646c,0x5d1e0101315b202c,0x1f03002b321f002b\n"
".quad 0x002b331f00002b31,0x7423009c5d322303,0x341100310401fd6f,0x1105001f331f00a1\n"
".quad 0x05001f321f001f35,0x610a3b5400df3612,0xf82c372200146464,0x0112070035301600\n"
".quad 0x3722003438647231,0x3198017901014c3b,0x782e64697425202c,0x6325202c327c0015\n"
".quad 0x202c335400176174,0x2e646171002d6e25,0x34230019732e6f6c,0x72c3003a01001e2c\n"
".quad 0x772e6c756d0a3b31,0x3964320021656469,0x1300b0341200272c,0x00cb2c3026018973\n"
".quad 0x0200e50301533911,0x00270101a9000227,0x697a722e40014402,0x250930001e000051\n"
".quad 0x005131662a012172,0x00510f013b2c3126,0x51311f0051321300,0x3266230088000200\n"
".quad 0x01510000b8010051,0x0109357222001701,0x0f203b303600f004,0x0f361a000f351a00\n"
".quad 0x2c3068000f371a00,0x3118001236393034,0x1a002f32722a0021,0x09000f381a000f33\n"
".quad 0x757338004902002d,0x3b16000502019662,0x0a3b44018a020033,0x15323321021c7473\n"
".quad 0x3929001a5d382001,0x049e2c322103693b,0x313202820a025003,0x0a0a3b5700242c33\n"
".quad 0x6d65744303cf7b09,0x1e6765723002fe70,0x11000b0105170800,0x6252034002008130\n"
".quad 0x2b3200165b093436,0x0a3b333d00545d30,0x14020034311f0034,0xbf0a3b3738003431\n"
".quad 0x630a3bc405ba0305,0x20696e752e6c6c61,0x9c0a202c3305cd28,0x7b0a280a202c5205\n"
".quad 0x31370009202c2200,0x0219621103dc290a,0x10003d5b202c3843,0x7d090a0a61028c2b\n"
".quad 0x023c6e100241090a,0x1066250931015b00,0x2c34260291371a01,0x910700c1391103eb\n"
".quad 0x00bf3410028c0102,0x7465720a3b3366d0,0x00000a0a0a7d0a3b\n"
".text\n");
#ifdef __cplusplus
extern "C" {
#endif
extern const unsigned long long fatbinData[387];
#ifdef __cplusplus
}
#endif
#ifdef __cplusplus
extern "C" {
#endif
static const __fatBinC_Wrapper_t __fatDeviceText __attribute__ ((aligned (8))) __attribute__ ((section (__CUDAFATBINSECTION)))= 
	{ 0x466243b1, 1, fatbinData, 0 };
#ifdef __cplusplus
}
#endif
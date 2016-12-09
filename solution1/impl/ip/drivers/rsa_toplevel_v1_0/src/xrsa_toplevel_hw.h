// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// AXILiteS
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x010 : Data signal of inData_V
//         bit 31~0 - inData_V[31:0] (Read/Write)
// 0x014 : Data signal of inData_V
//         bit 31~0 - inData_V[63:32] (Read/Write)
// 0x018 : Data signal of inData_V
//         bit 31~0 - inData_V[95:64] (Read/Write)
// 0x01c : Data signal of inData_V
//         bit 31~0 - inData_V[127:96] (Read/Write)
// 0x020 : Data signal of inData_V
//         bit 31~0 - inData_V[159:128] (Read/Write)
// 0x024 : Data signal of inData_V
//         bit 31~0 - inData_V[191:160] (Read/Write)
// 0x028 : Data signal of inData_V
//         bit 31~0 - inData_V[223:192] (Read/Write)
// 0x02c : Data signal of inData_V
//         bit 31~0 - inData_V[255:224] (Read/Write)
// 0x030 : Data signal of inData_V
//         bit 31~0 - inData_V[287:256] (Read/Write)
// 0x034 : Data signal of inData_V
//         bit 31~0 - inData_V[319:288] (Read/Write)
// 0x038 : Data signal of inData_V
//         bit 31~0 - inData_V[351:320] (Read/Write)
// 0x03c : Data signal of inData_V
//         bit 31~0 - inData_V[383:352] (Read/Write)
// 0x040 : Data signal of inData_V
//         bit 31~0 - inData_V[415:384] (Read/Write)
// 0x044 : Data signal of inData_V
//         bit 31~0 - inData_V[447:416] (Read/Write)
// 0x048 : Data signal of inData_V
//         bit 31~0 - inData_V[479:448] (Read/Write)
// 0x04c : Data signal of inData_V
//         bit 31~0 - inData_V[511:480] (Read/Write)
// 0x050 : Data signal of inData_V
//         bit 31~0 - inData_V[543:512] (Read/Write)
// 0x054 : Data signal of inData_V
//         bit 31~0 - inData_V[575:544] (Read/Write)
// 0x058 : Data signal of inData_V
//         bit 31~0 - inData_V[607:576] (Read/Write)
// 0x05c : Data signal of inData_V
//         bit 31~0 - inData_V[639:608] (Read/Write)
// 0x060 : Data signal of inData_V
//         bit 31~0 - inData_V[671:640] (Read/Write)
// 0x064 : Data signal of inData_V
//         bit 31~0 - inData_V[703:672] (Read/Write)
// 0x068 : Data signal of inData_V
//         bit 31~0 - inData_V[735:704] (Read/Write)
// 0x06c : Data signal of inData_V
//         bit 31~0 - inData_V[767:736] (Read/Write)
// 0x070 : Data signal of inData_V
//         bit 31~0 - inData_V[799:768] (Read/Write)
// 0x074 : Data signal of inData_V
//         bit 31~0 - inData_V[831:800] (Read/Write)
// 0x078 : Data signal of inData_V
//         bit 31~0 - inData_V[863:832] (Read/Write)
// 0x07c : Data signal of inData_V
//         bit 31~0 - inData_V[895:864] (Read/Write)
// 0x080 : Data signal of inData_V
//         bit 31~0 - inData_V[927:896] (Read/Write)
// 0x084 : Data signal of inData_V
//         bit 31~0 - inData_V[959:928] (Read/Write)
// 0x088 : Data signal of inData_V
//         bit 31~0 - inData_V[991:960] (Read/Write)
// 0x08c : Data signal of inData_V
//         bit 31~0 - inData_V[1023:992] (Read/Write)
// 0x090 : reserved
// 0x094 : Data signal of outData_V
//         bit 31~0 - outData_V[31:0] (Read)
// 0x098 : Data signal of outData_V
//         bit 31~0 - outData_V[63:32] (Read)
// 0x09c : Data signal of outData_V
//         bit 31~0 - outData_V[95:64] (Read)
// 0x0a0 : Data signal of outData_V
//         bit 31~0 - outData_V[127:96] (Read)
// 0x0a4 : Data signal of outData_V
//         bit 31~0 - outData_V[159:128] (Read)
// 0x0a8 : Data signal of outData_V
//         bit 31~0 - outData_V[191:160] (Read)
// 0x0ac : Data signal of outData_V
//         bit 31~0 - outData_V[223:192] (Read)
// 0x0b0 : Data signal of outData_V
//         bit 31~0 - outData_V[255:224] (Read)
// 0x0b4 : Data signal of outData_V
//         bit 31~0 - outData_V[287:256] (Read)
// 0x0b8 : Data signal of outData_V
//         bit 31~0 - outData_V[319:288] (Read)
// 0x0bc : Data signal of outData_V
//         bit 31~0 - outData_V[351:320] (Read)
// 0x0c0 : Data signal of outData_V
//         bit 31~0 - outData_V[383:352] (Read)
// 0x0c4 : Data signal of outData_V
//         bit 31~0 - outData_V[415:384] (Read)
// 0x0c8 : Data signal of outData_V
//         bit 31~0 - outData_V[447:416] (Read)
// 0x0cc : Data signal of outData_V
//         bit 31~0 - outData_V[479:448] (Read)
// 0x0d0 : Data signal of outData_V
//         bit 31~0 - outData_V[511:480] (Read)
// 0x0d4 : Data signal of outData_V
//         bit 31~0 - outData_V[543:512] (Read)
// 0x0d8 : Data signal of outData_V
//         bit 31~0 - outData_V[575:544] (Read)
// 0x0dc : Data signal of outData_V
//         bit 31~0 - outData_V[607:576] (Read)
// 0x0e0 : Data signal of outData_V
//         bit 31~0 - outData_V[639:608] (Read)
// 0x0e4 : Data signal of outData_V
//         bit 31~0 - outData_V[671:640] (Read)
// 0x0e8 : Data signal of outData_V
//         bit 31~0 - outData_V[703:672] (Read)
// 0x0ec : Data signal of outData_V
//         bit 31~0 - outData_V[735:704] (Read)
// 0x0f0 : Data signal of outData_V
//         bit 31~0 - outData_V[767:736] (Read)
// 0x0f4 : Data signal of outData_V
//         bit 31~0 - outData_V[799:768] (Read)
// 0x0f8 : Data signal of outData_V
//         bit 31~0 - outData_V[831:800] (Read)
// 0x0fc : Data signal of outData_V
//         bit 31~0 - outData_V[863:832] (Read)
// 0x100 : Data signal of outData_V
//         bit 31~0 - outData_V[895:864] (Read)
// 0x104 : Data signal of outData_V
//         bit 31~0 - outData_V[927:896] (Read)
// 0x108 : Data signal of outData_V
//         bit 31~0 - outData_V[959:928] (Read)
// 0x10c : Data signal of outData_V
//         bit 31~0 - outData_V[991:960] (Read)
// 0x110 : Data signal of outData_V
//         bit 31~0 - outData_V[1023:992] (Read)
// 0x114 : Control signal of outData_V
//         bit 0  - outData_V_ap_vld (Read/COR)
//         others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XRSA_TOPLEVEL_AXILITES_ADDR_AP_CTRL         0x000
#define XRSA_TOPLEVEL_AXILITES_ADDR_GIE             0x004
#define XRSA_TOPLEVEL_AXILITES_ADDR_IER             0x008
#define XRSA_TOPLEVEL_AXILITES_ADDR_ISR             0x00c
#define XRSA_TOPLEVEL_AXILITES_ADDR_INDATA_V_DATA   0x010
#define XRSA_TOPLEVEL_AXILITES_BITS_INDATA_V_DATA   1024
#define XRSA_TOPLEVEL_AXILITES_ADDR_INDATA_V_DATA_  0x038
#define XRSA_TOPLEVEL_AXILITES_BITS_INDATA_V_DATA   1024
#define XRSA_TOPLEVEL_AXILITES_ADDR_OUTDATA_V_DATA  0x094
#define XRSA_TOPLEVEL_AXILITES_BITS_OUTDATA_V_DATA  1024
#define XRSA_TOPLEVEL_AXILITES_ADDR_OUTDATA_V_DATA_ 0x0bc
#define XRSA_TOPLEVEL_AXILITES_BITS_OUTDATA_V_DATA  1024
#define XRSA_TOPLEVEL_AXILITES_ADDR_OUTDATA_V_CTRL  0x114


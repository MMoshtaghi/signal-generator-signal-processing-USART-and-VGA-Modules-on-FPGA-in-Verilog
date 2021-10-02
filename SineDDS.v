////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: SineDDS.v
// /___/   /\     Timestamp: Sat Nov 02 21:38:02 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog E:/Mahdi/Documents/Xilinx/Project_Ph1/ipcore_dir/tmp/_cg/SineDDS.ngc E:/Mahdi/Documents/Xilinx/Project_Ph1/ipcore_dir/tmp/_cg/SineDDS.v 
// Device	: 6slx9tqg144-2
// Input file	: E:/Mahdi/Documents/Xilinx/Project_Ph1/ipcore_dir/tmp/_cg/SineDDS.ngc
// Output file	: E:/Mahdi/Documents/Xilinx/Project_Ph1/ipcore_dir/tmp/_cg/SineDDS.v
// # of Modules	: 1
// Design Name	: SineDDS
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module SineDDS (
  clk, we, data, sine
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input we;
  input [17 : 0] data;
  output [5 : 0] sine;
  
  // synthesis translate_off
  
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire sig00000004;
  wire sig00000005;
  wire sig00000006;
  wire sig00000007;
  wire sig00000008;
  wire sig00000009;
  wire sig0000000a;
  wire sig0000000b;
  wire sig0000000c;
  wire sig0000000d;
  wire sig0000000e;
  wire sig0000000f;
  wire sig00000010;
  wire sig00000011;
  wire sig00000012;
  wire sig00000013;
  wire sig00000014;
  wire sig00000015;
  wire sig00000016;
  wire sig00000017;
  wire sig00000018;
  wire sig00000019;
  wire sig0000001a;
  wire sig0000001b;
  wire sig0000001c;
  wire sig0000001d;
  wire sig0000001e;
  wire sig0000001f;
  wire sig00000020;
  wire sig00000021;
  wire sig00000022;
  wire sig00000023;
  wire sig00000024;
  wire sig00000025;
  wire sig00000026;
  wire sig00000027;
  wire sig00000028;
  wire sig00000029;
  wire sig0000002a;
  wire sig0000002b;
  wire sig0000002c;
  wire sig0000002d;
  wire sig0000002e;
  wire sig0000002f;
  wire sig00000030;
  wire sig00000031;
  wire sig00000032;
  wire sig00000033;
  wire sig00000034;
  wire sig00000035;
  wire sig00000036;
  wire sig00000037;
  wire sig00000038;
  wire sig00000039;
  wire sig0000003a;
  wire \blk00000028/sig00000094 ;
  wire \blk00000028/sig00000093 ;
  wire \blk00000028/sig00000092 ;
  wire \blk00000028/sig00000091 ;
  wire \blk00000028/sig00000090 ;
  wire \blk00000028/sig0000008f ;
  wire \blk00000028/sig0000008e ;
  wire \blk00000028/sig0000008d ;
  wire \blk00000028/sig0000008c ;
  wire \blk00000028/sig0000008b ;
  wire \blk00000028/sig0000008a ;
  wire \blk00000028/sig00000089 ;
  wire \blk00000028/sig00000088 ;
  wire \blk00000028/sig00000087 ;
  wire \blk00000028/sig00000086 ;
  wire \blk00000028/sig00000085 ;
  wire \blk00000028/sig00000084 ;
  wire \blk00000028/sig00000083 ;
  wire \blk00000028/sig00000082 ;
  wire \blk00000028/sig00000081 ;
  wire \blk00000028/sig00000080 ;
  wire \blk00000028/sig0000007f ;
  wire \blk00000028/sig0000007e ;
  wire \blk00000028/sig0000007d ;
  wire \blk00000028/sig0000007c ;
  wire \blk00000028/sig0000007b ;
  wire \blk00000028/sig0000007a ;
  wire \blk00000028/sig00000079 ;
  wire \blk00000028/sig00000078 ;
  wire \blk00000028/sig00000077 ;
  wire \blk00000028/sig00000076 ;
  wire \blk00000028/sig00000075 ;
  wire \blk00000028/sig00000074 ;
  wire \blk00000028/sig00000073 ;
  wire \blk00000028/sig00000072 ;
  wire \blk00000028/sig00000071 ;
  wire \NLW_blk00000060_DOADO<15>_UNCONNECTED ;
  wire \NLW_blk00000060_DOADO<14>_UNCONNECTED ;
  wire \NLW_blk00000060_DOADO<13>_UNCONNECTED ;
  wire \NLW_blk00000060_DOADO<12>_UNCONNECTED ;
  wire \NLW_blk00000060_DOADO<11>_UNCONNECTED ;
  wire \NLW_blk00000060_DOADO<10>_UNCONNECTED ;
  wire \NLW_blk00000060_DOADO<9>_UNCONNECTED ;
  wire \NLW_blk00000060_DOADO<8>_UNCONNECTED ;
  wire \NLW_blk00000060_DOADO<7>_UNCONNECTED ;
  wire \NLW_blk00000060_DOADO<6>_UNCONNECTED ;
  wire \NLW_blk00000060_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_blk00000060_DOPADOP<0>_UNCONNECTED ;
  wire \NLW_blk00000060_DOPBDOP<1>_UNCONNECTED ;
  wire \NLW_blk00000060_DOPBDOP<0>_UNCONNECTED ;
  wire \NLW_blk00000060_ADDRAWRADDR<2>_UNCONNECTED ;
  wire \NLW_blk00000060_ADDRAWRADDR<1>_UNCONNECTED ;
  wire \NLW_blk00000060_ADDRAWRADDR<0>_UNCONNECTED ;
  wire \NLW_blk00000060_DIPBDIP<1>_UNCONNECTED ;
  wire \NLW_blk00000060_DIPBDIP<0>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<15>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<14>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<13>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<12>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<11>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<10>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<9>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<8>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<7>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<6>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<5>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<4>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<3>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<2>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<1>_UNCONNECTED ;
  wire \NLW_blk00000060_DIBDI<0>_UNCONNECTED ;
  wire \NLW_blk00000060_DIADI<15>_UNCONNECTED ;
  wire \NLW_blk00000060_DIADI<14>_UNCONNECTED ;
  wire \NLW_blk00000060_DIADI<13>_UNCONNECTED ;
  wire \NLW_blk00000060_DIADI<12>_UNCONNECTED ;
  wire \NLW_blk00000060_DIADI<11>_UNCONNECTED ;
  wire \NLW_blk00000060_DIADI<10>_UNCONNECTED ;
  wire \NLW_blk00000060_DIADI<9>_UNCONNECTED ;
  wire \NLW_blk00000060_DIADI<8>_UNCONNECTED ;
  wire \NLW_blk00000060_ADDRBRDADDR<2>_UNCONNECTED ;
  wire \NLW_blk00000060_ADDRBRDADDR<1>_UNCONNECTED ;
  wire \NLW_blk00000060_ADDRBRDADDR<0>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<15>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<14>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<13>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<12>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<11>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<10>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<9>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<8>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<7>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<6>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<5>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<4>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<3>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<2>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<1>_UNCONNECTED ;
  wire \NLW_blk00000060_DOBDO<0>_UNCONNECTED ;
  wire \NLW_blk00000060_DIPADIP<1>_UNCONNECTED ;
  VCC   blk00000001 (
    .P(sig00000001)
  );
  GND   blk00000002 (
    .G(sig00000002)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000003 (
    .C(clk),
    .CE(we),
    .D(data[17]),
    .Q(sig00000033)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000004 (
    .C(clk),
    .CE(we),
    .D(data[16]),
    .Q(sig00000032)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000005 (
    .C(clk),
    .CE(we),
    .D(data[15]),
    .Q(sig00000031)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000006 (
    .C(clk),
    .CE(we),
    .D(data[14]),
    .Q(sig00000030)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000007 (
    .C(clk),
    .CE(we),
    .D(data[13]),
    .Q(sig0000002f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000008 (
    .C(clk),
    .CE(we),
    .D(data[12]),
    .Q(sig0000002e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000009 (
    .C(clk),
    .CE(we),
    .D(data[11]),
    .Q(sig0000002d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000a (
    .C(clk),
    .CE(we),
    .D(data[10]),
    .Q(sig0000002c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000b (
    .C(clk),
    .CE(we),
    .D(data[9]),
    .Q(sig0000002b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000c (
    .C(clk),
    .CE(we),
    .D(data[8]),
    .Q(sig0000002a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000d (
    .C(clk),
    .CE(we),
    .D(data[7]),
    .Q(sig00000029)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000e (
    .C(clk),
    .CE(we),
    .D(data[6]),
    .Q(sig00000028)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000f (
    .C(clk),
    .CE(we),
    .D(data[5]),
    .Q(sig00000027)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000010 (
    .C(clk),
    .CE(we),
    .D(data[4]),
    .Q(sig00000026)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000011 (
    .C(clk),
    .CE(we),
    .D(data[3]),
    .Q(sig00000025)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000012 (
    .C(clk),
    .CE(we),
    .D(data[2]),
    .Q(sig00000024)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000013 (
    .C(clk),
    .CE(we),
    .D(data[1]),
    .Q(sig00000023)
  );
  FDE #(
    .INIT ( 1'b1 ))
  blk00000014 (
    .C(clk),
    .CE(we),
    .D(data[0]),
    .Q(sig00000022)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000015 (
    .C(clk),
    .D(sig00000021),
    .Q(sig0000003a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000016 (
    .C(clk),
    .D(sig00000020),
    .Q(sig00000039)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000017 (
    .C(clk),
    .D(sig0000001f),
    .Q(sig00000038)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000018 (
    .C(clk),
    .D(sig0000001e),
    .Q(sig00000037)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000019 (
    .C(clk),
    .D(sig0000001d),
    .Q(sig00000036)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001a (
    .C(clk),
    .D(sig0000001c),
    .Q(sig00000035)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001b (
    .C(clk),
    .D(sig0000001b),
    .Q(sig00000034)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001c (
    .C(clk),
    .D(sig0000001a),
    .Q(sig0000000e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001d (
    .C(clk),
    .D(sig00000019),
    .Q(sig0000000d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001e (
    .C(clk),
    .D(sig00000018),
    .Q(sig0000000c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001f (
    .C(clk),
    .D(sig00000017),
    .Q(sig0000000b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000020 (
    .C(clk),
    .D(sig00000016),
    .Q(sig0000000a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000021 (
    .C(clk),
    .D(sig00000015),
    .Q(sig00000009)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000022 (
    .C(clk),
    .D(sig00000014),
    .Q(sig00000008)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000023 (
    .C(clk),
    .D(sig00000013),
    .Q(sig00000007)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000024 (
    .C(clk),
    .D(sig00000012),
    .Q(sig00000006)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000025 (
    .C(clk),
    .D(sig00000011),
    .Q(sig00000005)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000026 (
    .C(clk),
    .D(sig00000010),
    .Q(sig00000004)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000027 (
    .C(clk),
    .D(sig0000000f),
    .Q(sig00000003)
  );
  RAMB8BWER #(
    .INIT_00 ( 256'h0104070A0D0F121416181A1B1C1D1E1E1E1E1D1C1B1A181614120F0D0A070401 ),
    .INIT_01 ( 256'h3F3C393633312E2C2A28262524232222222223242526282A2C2E313336393C3F ),
    .INIT_02 ( 256'h222223242526282A2C2E313336393C3F0104070A0D0F121416181A1B1C1D1E1E ),
    .INIT_03 ( 256'h1E1E1D1C1B1A181614120F0D0A0704013F3C393633312E2C2A28262524232222 ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 9 ),
    .DATA_WIDTH_B ( 9 ),
    .DOA_REG ( 1 ),
    .DOB_REG ( 1 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .RAM_MODE ( "TDP" ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .INIT_FILE ( "NONE" ),
    .SIM_COLLISION_CHECK ( "ALL" ))
  blk00000060 (
    .RSTBRST(sig00000002),
    .ENBRDEN(sig00000001),
    .REGCEA(sig00000001),
    .ENAWREN(sig00000001),
    .CLKAWRCLK(clk),
    .CLKBRDCLK(clk),
    .REGCEBREGCE(sig00000001),
    .RSTA(sig00000002),
    .WEAWEL({sig00000002, sig00000002}),
    .DOADO({\NLW_blk00000060_DOADO<15>_UNCONNECTED , \NLW_blk00000060_DOADO<14>_UNCONNECTED , \NLW_blk00000060_DOADO<13>_UNCONNECTED , 
\NLW_blk00000060_DOADO<12>_UNCONNECTED , \NLW_blk00000060_DOADO<11>_UNCONNECTED , \NLW_blk00000060_DOADO<10>_UNCONNECTED , 
\NLW_blk00000060_DOADO<9>_UNCONNECTED , \NLW_blk00000060_DOADO<8>_UNCONNECTED , \NLW_blk00000060_DOADO<7>_UNCONNECTED , 
\NLW_blk00000060_DOADO<6>_UNCONNECTED , sine[5], sine[4], sine[3], sine[2], sine[1], sine[0]}),
    .DOPADOP({\NLW_blk00000060_DOPADOP<1>_UNCONNECTED , \NLW_blk00000060_DOPADOP<0>_UNCONNECTED }),
    .DOPBDOP({\NLW_blk00000060_DOPBDOP<1>_UNCONNECTED , \NLW_blk00000060_DOPBDOP<0>_UNCONNECTED }),
    .WEBWEU({sig00000002, sig00000002}),
    .ADDRAWRADDR({sig00000002, sig00000002, sig00000002, sig00000002, sig00000039, sig00000038, sig00000037, sig00000036, sig00000035, sig00000034, 
\NLW_blk00000060_ADDRAWRADDR<2>_UNCONNECTED , \NLW_blk00000060_ADDRAWRADDR<1>_UNCONNECTED , \NLW_blk00000060_ADDRAWRADDR<0>_UNCONNECTED }),
    .DIPBDIP({\NLW_blk00000060_DIPBDIP<1>_UNCONNECTED , \NLW_blk00000060_DIPBDIP<0>_UNCONNECTED }),
    .DIBDI({\NLW_blk00000060_DIBDI<15>_UNCONNECTED , \NLW_blk00000060_DIBDI<14>_UNCONNECTED , \NLW_blk00000060_DIBDI<13>_UNCONNECTED , 
\NLW_blk00000060_DIBDI<12>_UNCONNECTED , \NLW_blk00000060_DIBDI<11>_UNCONNECTED , \NLW_blk00000060_DIBDI<10>_UNCONNECTED , 
\NLW_blk00000060_DIBDI<9>_UNCONNECTED , \NLW_blk00000060_DIBDI<8>_UNCONNECTED , \NLW_blk00000060_DIBDI<7>_UNCONNECTED , 
\NLW_blk00000060_DIBDI<6>_UNCONNECTED , \NLW_blk00000060_DIBDI<5>_UNCONNECTED , \NLW_blk00000060_DIBDI<4>_UNCONNECTED , 
\NLW_blk00000060_DIBDI<3>_UNCONNECTED , \NLW_blk00000060_DIBDI<2>_UNCONNECTED , \NLW_blk00000060_DIBDI<1>_UNCONNECTED , 
\NLW_blk00000060_DIBDI<0>_UNCONNECTED }),
    .DIADI({\NLW_blk00000060_DIADI<15>_UNCONNECTED , \NLW_blk00000060_DIADI<14>_UNCONNECTED , \NLW_blk00000060_DIADI<13>_UNCONNECTED , 
\NLW_blk00000060_DIADI<12>_UNCONNECTED , \NLW_blk00000060_DIADI<11>_UNCONNECTED , \NLW_blk00000060_DIADI<10>_UNCONNECTED , 
\NLW_blk00000060_DIADI<9>_UNCONNECTED , \NLW_blk00000060_DIADI<8>_UNCONNECTED , sig00000002, sig00000002, sig00000002, sig00000002, sig00000002, 
sig00000002, sig00000002, sig00000002}),
    .ADDRBRDADDR({sig00000002, sig00000002, sig00000002, sig00000001, sig00000039, sig00000038, sig00000037, sig00000036, sig00000035, sig00000034, 
\NLW_blk00000060_ADDRBRDADDR<2>_UNCONNECTED , \NLW_blk00000060_ADDRBRDADDR<1>_UNCONNECTED , \NLW_blk00000060_ADDRBRDADDR<0>_UNCONNECTED }),
    .DOBDO({\NLW_blk00000060_DOBDO<15>_UNCONNECTED , \NLW_blk00000060_DOBDO<14>_UNCONNECTED , \NLW_blk00000060_DOBDO<13>_UNCONNECTED , 
\NLW_blk00000060_DOBDO<12>_UNCONNECTED , \NLW_blk00000060_DOBDO<11>_UNCONNECTED , \NLW_blk00000060_DOBDO<10>_UNCONNECTED , 
\NLW_blk00000060_DOBDO<9>_UNCONNECTED , \NLW_blk00000060_DOBDO<8>_UNCONNECTED , \NLW_blk00000060_DOBDO<7>_UNCONNECTED , 
\NLW_blk00000060_DOBDO<6>_UNCONNECTED , \NLW_blk00000060_DOBDO<5>_UNCONNECTED , \NLW_blk00000060_DOBDO<4>_UNCONNECTED , 
\NLW_blk00000060_DOBDO<3>_UNCONNECTED , \NLW_blk00000060_DOBDO<2>_UNCONNECTED , \NLW_blk00000060_DOBDO<1>_UNCONNECTED , 
\NLW_blk00000060_DOBDO<0>_UNCONNECTED }),
    .DIPADIP({\NLW_blk00000060_DIPADIP<1>_UNCONNECTED , sig00000002})
  );
  XORCY   \blk00000028/blk0000005f  (
    .CI(\blk00000028/sig00000093 ),
    .LI(\blk00000028/sig00000094 ),
    .O(sig00000020)
  );
  MUXCY   \blk00000028/blk0000005e  (
    .CI(\blk00000028/sig00000093 ),
    .DI(sig00000039),
    .S(\blk00000028/sig00000094 ),
    .O(sig00000021)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk0000005d  (
    .I0(sig00000033),
    .I1(sig00000039),
    .O(\blk00000028/sig00000094 )
  );
  XORCY   \blk00000028/blk0000005c  (
    .CI(\blk00000028/sig00000091 ),
    .LI(\blk00000028/sig00000092 ),
    .O(sig0000001f)
  );
  MUXCY   \blk00000028/blk0000005b  (
    .CI(\blk00000028/sig00000091 ),
    .DI(sig00000038),
    .S(\blk00000028/sig00000092 ),
    .O(\blk00000028/sig00000093 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk0000005a  (
    .I0(sig00000032),
    .I1(sig00000038),
    .O(\blk00000028/sig00000092 )
  );
  XORCY   \blk00000028/blk00000059  (
    .CI(\blk00000028/sig0000008f ),
    .LI(\blk00000028/sig00000090 ),
    .O(sig0000001e)
  );
  MUXCY   \blk00000028/blk00000058  (
    .CI(\blk00000028/sig0000008f ),
    .DI(sig00000037),
    .S(\blk00000028/sig00000090 ),
    .O(\blk00000028/sig00000091 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk00000057  (
    .I0(sig00000031),
    .I1(sig00000037),
    .O(\blk00000028/sig00000090 )
  );
  XORCY   \blk00000028/blk00000056  (
    .CI(\blk00000028/sig0000008d ),
    .LI(\blk00000028/sig0000008e ),
    .O(sig0000001d)
  );
  MUXCY   \blk00000028/blk00000055  (
    .CI(\blk00000028/sig0000008d ),
    .DI(sig00000036),
    .S(\blk00000028/sig0000008e ),
    .O(\blk00000028/sig0000008f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk00000054  (
    .I0(sig00000030),
    .I1(sig00000036),
    .O(\blk00000028/sig0000008e )
  );
  XORCY   \blk00000028/blk00000053  (
    .CI(\blk00000028/sig0000008b ),
    .LI(\blk00000028/sig0000008c ),
    .O(sig0000001c)
  );
  MUXCY   \blk00000028/blk00000052  (
    .CI(\blk00000028/sig0000008b ),
    .DI(sig00000035),
    .S(\blk00000028/sig0000008c ),
    .O(\blk00000028/sig0000008d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk00000051  (
    .I0(sig0000002f),
    .I1(sig00000035),
    .O(\blk00000028/sig0000008c )
  );
  XORCY   \blk00000028/blk00000050  (
    .CI(\blk00000028/sig00000089 ),
    .LI(\blk00000028/sig0000008a ),
    .O(sig0000001b)
  );
  MUXCY   \blk00000028/blk0000004f  (
    .CI(\blk00000028/sig00000089 ),
    .DI(sig00000034),
    .S(\blk00000028/sig0000008a ),
    .O(\blk00000028/sig0000008b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk0000004e  (
    .I0(sig0000002e),
    .I1(sig00000034),
    .O(\blk00000028/sig0000008a )
  );
  XORCY   \blk00000028/blk0000004d  (
    .CI(\blk00000028/sig00000087 ),
    .LI(\blk00000028/sig00000088 ),
    .O(sig0000001a)
  );
  MUXCY   \blk00000028/blk0000004c  (
    .CI(\blk00000028/sig00000087 ),
    .DI(sig0000000e),
    .S(\blk00000028/sig00000088 ),
    .O(\blk00000028/sig00000089 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk0000004b  (
    .I0(sig0000000e),
    .I1(sig0000002d),
    .O(\blk00000028/sig00000088 )
  );
  XORCY   \blk00000028/blk0000004a  (
    .CI(\blk00000028/sig00000085 ),
    .LI(\blk00000028/sig00000086 ),
    .O(sig00000019)
  );
  MUXCY   \blk00000028/blk00000049  (
    .CI(\blk00000028/sig00000085 ),
    .DI(sig0000000d),
    .S(\blk00000028/sig00000086 ),
    .O(\blk00000028/sig00000087 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk00000048  (
    .I0(sig0000000d),
    .I1(sig0000002c),
    .O(\blk00000028/sig00000086 )
  );
  XORCY   \blk00000028/blk00000047  (
    .CI(\blk00000028/sig00000083 ),
    .LI(\blk00000028/sig00000084 ),
    .O(sig00000018)
  );
  MUXCY   \blk00000028/blk00000046  (
    .CI(\blk00000028/sig00000083 ),
    .DI(sig0000000c),
    .S(\blk00000028/sig00000084 ),
    .O(\blk00000028/sig00000085 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk00000045  (
    .I0(sig0000000c),
    .I1(sig0000002b),
    .O(\blk00000028/sig00000084 )
  );
  XORCY   \blk00000028/blk00000044  (
    .CI(\blk00000028/sig00000081 ),
    .LI(\blk00000028/sig00000082 ),
    .O(sig00000017)
  );
  MUXCY   \blk00000028/blk00000043  (
    .CI(\blk00000028/sig00000081 ),
    .DI(sig0000000b),
    .S(\blk00000028/sig00000082 ),
    .O(\blk00000028/sig00000083 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk00000042  (
    .I0(sig0000000b),
    .I1(sig0000002a),
    .O(\blk00000028/sig00000082 )
  );
  XORCY   \blk00000028/blk00000041  (
    .CI(\blk00000028/sig0000007f ),
    .LI(\blk00000028/sig00000080 ),
    .O(sig00000016)
  );
  MUXCY   \blk00000028/blk00000040  (
    .CI(\blk00000028/sig0000007f ),
    .DI(sig0000000a),
    .S(\blk00000028/sig00000080 ),
    .O(\blk00000028/sig00000081 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk0000003f  (
    .I0(sig0000000a),
    .I1(sig00000029),
    .O(\blk00000028/sig00000080 )
  );
  XORCY   \blk00000028/blk0000003e  (
    .CI(\blk00000028/sig0000007d ),
    .LI(\blk00000028/sig0000007e ),
    .O(sig00000015)
  );
  MUXCY   \blk00000028/blk0000003d  (
    .CI(\blk00000028/sig0000007d ),
    .DI(sig00000009),
    .S(\blk00000028/sig0000007e ),
    .O(\blk00000028/sig0000007f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk0000003c  (
    .I0(sig00000009),
    .I1(sig00000028),
    .O(\blk00000028/sig0000007e )
  );
  XORCY   \blk00000028/blk0000003b  (
    .CI(\blk00000028/sig0000007b ),
    .LI(\blk00000028/sig0000007c ),
    .O(sig00000014)
  );
  MUXCY   \blk00000028/blk0000003a  (
    .CI(\blk00000028/sig0000007b ),
    .DI(sig00000008),
    .S(\blk00000028/sig0000007c ),
    .O(\blk00000028/sig0000007d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk00000039  (
    .I0(sig00000008),
    .I1(sig00000027),
    .O(\blk00000028/sig0000007c )
  );
  XORCY   \blk00000028/blk00000038  (
    .CI(\blk00000028/sig00000079 ),
    .LI(\blk00000028/sig0000007a ),
    .O(sig00000013)
  );
  MUXCY   \blk00000028/blk00000037  (
    .CI(\blk00000028/sig00000079 ),
    .DI(sig00000007),
    .S(\blk00000028/sig0000007a ),
    .O(\blk00000028/sig0000007b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk00000036  (
    .I0(sig00000007),
    .I1(sig00000026),
    .O(\blk00000028/sig0000007a )
  );
  XORCY   \blk00000028/blk00000035  (
    .CI(\blk00000028/sig00000077 ),
    .LI(\blk00000028/sig00000078 ),
    .O(sig00000012)
  );
  MUXCY   \blk00000028/blk00000034  (
    .CI(\blk00000028/sig00000077 ),
    .DI(sig00000006),
    .S(\blk00000028/sig00000078 ),
    .O(\blk00000028/sig00000079 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk00000033  (
    .I0(sig00000006),
    .I1(sig00000025),
    .O(\blk00000028/sig00000078 )
  );
  XORCY   \blk00000028/blk00000032  (
    .CI(\blk00000028/sig00000075 ),
    .LI(\blk00000028/sig00000076 ),
    .O(sig00000011)
  );
  MUXCY   \blk00000028/blk00000031  (
    .CI(\blk00000028/sig00000075 ),
    .DI(sig00000005),
    .S(\blk00000028/sig00000076 ),
    .O(\blk00000028/sig00000077 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk00000030  (
    .I0(sig00000005),
    .I1(sig00000024),
    .O(\blk00000028/sig00000076 )
  );
  XORCY   \blk00000028/blk0000002f  (
    .CI(\blk00000028/sig00000073 ),
    .LI(\blk00000028/sig00000074 ),
    .O(sig00000010)
  );
  MUXCY   \blk00000028/blk0000002e  (
    .CI(\blk00000028/sig00000073 ),
    .DI(sig00000004),
    .S(\blk00000028/sig00000074 ),
    .O(\blk00000028/sig00000075 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk0000002d  (
    .I0(sig00000004),
    .I1(sig00000023),
    .O(\blk00000028/sig00000074 )
  );
  XORCY   \blk00000028/blk0000002c  (
    .CI(\blk00000028/sig00000071 ),
    .LI(\blk00000028/sig00000072 ),
    .O(sig0000000f)
  );
  MUXCY   \blk00000028/blk0000002b  (
    .CI(\blk00000028/sig00000071 ),
    .DI(sig00000003),
    .S(\blk00000028/sig00000072 ),
    .O(\blk00000028/sig00000073 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000028/blk0000002a  (
    .I0(sig00000003),
    .I1(sig00000022),
    .O(\blk00000028/sig00000072 )
  );
  GND   \blk00000028/blk00000029  (
    .G(\blk00000028/sig00000071 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on

// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Jan 12 01:39:27 2018
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/99486/Desktop/architecture/risc-v/risc-v/risc-v.sim/sim_1/synth/timing/xsim/sim_time_synth.v
// Design      : cpu
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD1
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD10
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD11
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD2
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD3
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD4
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD5
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD6
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD7
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD8
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD9
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module cache
   (Tx,
    \ex_reg1_reg[1] ,
    Q,
    \wb_wdata_reg[7] ,
    \wb_wdata_reg[31] ,
    E,
    cache_busy,
    \id_inst_reg[31] ,
    clk_out1,
    rst_BUFG,
    ce,
    mem_data_ce,
    rst,
    \mem_addr_reg[31] ,
    \memfunct_o_reg[0] ,
    pc,
    \mem_addr_reg[1] ,
    mem_data_optype,
    \memop_o_reg[1] ,
    Rx_IBUF,
    p_1_in);
  output Tx;
  output \ex_reg1_reg[1] ;
  output [1:0]Q;
  output \wb_wdata_reg[7] ;
  output [31:0]\wb_wdata_reg[31] ;
  output [0:0]E;
  output cache_busy;
  output [31:0]\id_inst_reg[31] ;
  input clk_out1;
  input rst_BUFG;
  input ce;
  input mem_data_ce;
  input rst;
  input [31:0]\mem_addr_reg[31] ;
  input [0:0]\memfunct_o_reg[0] ;
  input [31:0]pc;
  input [3:0]\mem_addr_reg[1] ;
  input mem_data_optype;
  input [1:0]\memop_o_reg[1] ;
  input Rx_IBUF;
  input [7:0]p_1_in;

  wire [0:0]E;
  wire \FSM_sequential_next_status_reg[1]_i_4_n_1 ;
  wire \FSM_sequential_next_status_reg[2]_i_3_n_1 ;
  wire [1:0]Q;
  wire Rx_IBUF;
  wire Tx;
  wire cache_busy;
  wire ce;
  wire clk_out1;
  wire [2:2]cur_disp;
  wire [31:2]cur_head;
  (* RTL_KEEP = "yes" *) wire [2:0]cur_status;
  wire \ex_reg1_reg[1] ;
  wire [31:0]\id_inst_reg[31] ;
  wire \inst_value_reg[15]_i_2_n_1 ;
  wire \inst_value_reg[23]_i_2_n_1 ;
  wire \inst_value_reg[31]_i_5_n_1 ;
  wire \inst_value_reg[7]_i_2_n_1 ;
  wire [3:0]\mem_addr_reg[1] ;
  wire [31:0]\mem_addr_reg[31] ;
  wire mem_data_ce;
  wire mem_data_optype;
  wire [0:0]\memfunct_o_reg[0] ;
  wire [1:0]\memop_o_reg[1] ;
  wire [2:0]next_disp;
  wire next_status;
  wire [2:0]next_status__0;
  wire [7:0]p_1_in;
  wire [31:0]pc;
  wire rst;
  wire rst_BUFG;
  wire uart0_n_10;
  wire uart0_n_11;
  wire uart0_n_12;
  wire uart0_n_13;
  wire uart0_n_14;
  wire uart0_n_15;
  wire uart0_n_16;
  wire uart0_n_2;
  wire uart0_n_3;
  wire uart0_n_4;
  wire uart0_n_5;
  wire uart0_n_6;
  wire uart0_n_7;
  wire uart0_n_8;
  wire uart0_n_9;
  wire [7:0]uart_recv_data;
  wire [7:0]uart_send_data;
  wire \uart_send_data_reg[0]_i_1_n_1 ;
  wire \uart_send_data_reg[0]_i_2_n_1 ;
  wire \uart_send_data_reg[0]_i_3_n_1 ;
  wire \uart_send_data_reg[0]_i_4_n_1 ;
  wire \uart_send_data_reg[0]_i_7_n_1 ;
  wire \uart_send_data_reg[1]_i_1_n_1 ;
  wire \uart_send_data_reg[1]_i_2_n_1 ;
  wire \uart_send_data_reg[1]_i_3_n_1 ;
  wire \uart_send_data_reg[1]_i_4_n_1 ;
  wire \uart_send_data_reg[1]_i_6_n_1 ;
  wire \uart_send_data_reg[1]_i_8_n_1 ;
  wire \uart_send_data_reg[2]_i_1_n_1 ;
  wire \uart_send_data_reg[2]_i_2_n_1 ;
  wire \uart_send_data_reg[2]_i_3_n_1 ;
  wire \uart_send_data_reg[2]_i_4_n_1 ;
  wire \uart_send_data_reg[3]_i_10_n_1 ;
  wire \uart_send_data_reg[3]_i_11_n_1 ;
  wire \uart_send_data_reg[3]_i_1_n_1 ;
  wire \uart_send_data_reg[3]_i_2_n_1 ;
  wire \uart_send_data_reg[3]_i_3_n_1 ;
  wire \uart_send_data_reg[3]_i_4_n_1 ;
  wire \uart_send_data_reg[3]_i_6_n_1 ;
  wire \uart_send_data_reg[4]_i_1_n_1 ;
  wire \uart_send_data_reg[4]_i_2_n_1 ;
  wire \uart_send_data_reg[4]_i_3_n_1 ;
  wire \uart_send_data_reg[5]_i_1_n_1 ;
  wire \uart_send_data_reg[5]_i_2_n_1 ;
  wire \uart_send_data_reg[5]_i_3_n_1 ;
  wire \uart_send_data_reg[6]_i_1_n_1 ;
  wire \uart_send_data_reg[6]_i_2_n_1 ;
  wire \uart_send_data_reg[6]_i_3_n_1 ;
  wire \uart_send_data_reg[7]_i_13_n_1 ;
  wire \uart_send_data_reg[7]_i_14_n_1 ;
  wire \uart_send_data_reg[7]_i_15_n_1 ;
  wire \uart_send_data_reg[7]_i_16_n_1 ;
  wire \uart_send_data_reg[7]_i_1_n_1 ;
  wire \uart_send_data_reg[7]_i_3_n_1 ;
  wire \uart_send_data_reg[7]_i_4_n_1 ;
  wire \uart_send_data_reg[7]_i_5_n_1 ;
  wire \uart_send_data_reg[7]_i_6_n_1 ;
  wire \wb_wdata[31]_i_7_n_1 ;
  wire [31:0]\wb_wdata_reg[31] ;
  wire \wb_wdata_reg[7] ;

  (* FSM_ENCODED_STATES = "CS_READY:000,CS_DATA_HEAD:001,CS_DATA_VALUE:011,CS_INST_HEAD:010,CS_INST_VALUE:101,CS_OUTPUT:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_status_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(next_status__0[0]),
        .Q(cur_status[0]),
        .R(rst_BUFG));
  (* FSM_ENCODED_STATES = "CS_READY:000,CS_DATA_HEAD:001,CS_DATA_VALUE:011,CS_INST_HEAD:010,CS_INST_VALUE:101,CS_OUTPUT:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_status_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(next_status__0[1]),
        .Q(cur_status[1]),
        .R(rst_BUFG));
  (* FSM_ENCODED_STATES = "CS_READY:000,CS_DATA_HEAD:001,CS_DATA_VALUE:011,CS_INST_HEAD:010,CS_INST_VALUE:101,CS_OUTPUT:100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_status_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(next_status__0[2]),
        .Q(cur_status[2]),
        .R(rst_BUFG));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_status_reg[0] 
       (.CLR(rst_BUFG),
        .D(uart0_n_5),
        .G(next_status),
        .GE(1'b1),
        .Q(next_status__0[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_status_reg[1] 
       (.CLR(rst_BUFG),
        .D(uart0_n_4),
        .G(next_status),
        .GE(1'b1),
        .Q(next_status__0[1]));
  LUT5 #(
    .INIT(32'hABAAABAB)) 
    \FSM_sequential_next_status_reg[1]_i_4 
       (.I0(cur_status[2]),
        .I1(cur_status[1]),
        .I2(ce),
        .I3(Q[0]),
        .I4(cur_status[0]),
        .O(\FSM_sequential_next_status_reg[1]_i_4_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_status_reg[2] 
       (.CLR(rst_BUFG),
        .D(uart0_n_3),
        .G(next_status),
        .GE(1'b1),
        .Q(next_status__0[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_next_status_reg[2]_i_2 
       (.I0(cur_status[1]),
        .I1(cur_status[2]),
        .O(next_status));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \FSM_sequential_next_status_reg[2]_i_3 
       (.I0(ce),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\FSM_sequential_next_status_reg[2]_i_3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \cur_disp_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(next_disp[0]),
        .Q(Q[0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \cur_disp_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(next_disp[1]),
        .Q(Q[1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \cur_disp_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(next_disp[2]),
        .Q(cur_disp),
        .R(rst_BUFG));
  LUT5 #(
    .INIT(32'hF0FF0001)) 
    \ex_aluop[3]_i_1 
       (.I0(mem_data_ce),
        .I1(ce),
        .I2(cur_status[1]),
        .I3(cur_status[0]),
        .I4(cur_status[2]),
        .O(E));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[0] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[0]),
        .G(uart0_n_16),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[10] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[2]),
        .G(uart0_n_15),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[11] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[3]),
        .G(uart0_n_15),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[12] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[4]),
        .G(uart0_n_15),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[13] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[5]),
        .G(uart0_n_15),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [13]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[14] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[6]),
        .G(uart0_n_15),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[15] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[7]),
        .G(uart0_n_15),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [15]));
  LUT2 #(
    .INIT(4'h2)) 
    \inst_value_reg[15]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\inst_value_reg[15]_i_2_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[16] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[0]),
        .G(uart0_n_14),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [16]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[17] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[1]),
        .G(uart0_n_14),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [17]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[18] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[2]),
        .G(uart0_n_14),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [18]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[19] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[3]),
        .G(uart0_n_14),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [19]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[1] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[1]),
        .G(uart0_n_16),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[20] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[4]),
        .G(uart0_n_14),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [20]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[21] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[5]),
        .G(uart0_n_14),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [21]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[22] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[6]),
        .G(uart0_n_14),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [22]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[23] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[7]),
        .G(uart0_n_14),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \inst_value_reg[23]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\inst_value_reg[23]_i_2_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[24] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[0]),
        .G(uart0_n_13),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [24]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[25] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[1]),
        .G(uart0_n_13),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [25]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[26] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[2]),
        .G(uart0_n_13),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [26]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[27] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[3]),
        .G(uart0_n_13),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [27]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[28] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[4]),
        .G(uart0_n_13),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [28]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[29] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[5]),
        .G(uart0_n_13),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [29]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[2] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[2]),
        .G(uart0_n_16),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[30] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[6]),
        .G(uart0_n_13),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [30]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[31] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[7]),
        .G(uart0_n_13),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \inst_value_reg[31]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\inst_value_reg[31]_i_5_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[3] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[3]),
        .G(uart0_n_16),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[4] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[4]),
        .G(uart0_n_16),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[5] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[5]),
        .G(uart0_n_16),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[6] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[6]),
        .G(uart0_n_16),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[7] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[7]),
        .G(uart0_n_16),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \inst_value_reg[7]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\inst_value_reg[7]_i_2_n_1 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[8] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[0]),
        .G(uart0_n_15),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \inst_value_reg[9] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[1]),
        .G(uart0_n_15),
        .GE(1'b1),
        .Q(\id_inst_reg[31] [9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_disp_reg[0] 
       (.CLR(rst_BUFG),
        .D(uart0_n_12),
        .G(next_status),
        .GE(1'b1),
        .Q(next_disp[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_disp_reg[1] 
       (.CLR(rst_BUFG),
        .D(uart0_n_11),
        .G(next_status),
        .GE(1'b1),
        .Q(next_disp[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \next_disp_reg[2] 
       (.CLR(rst_BUFG),
        .D(uart0_n_10),
        .G(next_status),
        .GE(1'b1),
        .Q(next_disp[2]));
  LUT6 #(
    .INIT(64'h000000000F00FFFE)) 
    \pc[31]_i_6 
       (.I0(mem_data_ce),
        .I1(ce),
        .I2(cur_status[1]),
        .I3(cur_status[0]),
        .I4(cur_status[2]),
        .I5(rst),
        .O(cache_busy));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[0] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[0]),
        .G(uart0_n_9),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[10] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[2]),
        .G(uart0_n_8),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[11] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[3]),
        .G(uart0_n_8),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[12] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[4]),
        .G(uart0_n_8),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[13] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[5]),
        .G(uart0_n_8),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [13]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[14] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[6]),
        .G(uart0_n_8),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[15] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[7]),
        .G(uart0_n_8),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [15]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[16] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[0]),
        .G(uart0_n_7),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [16]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[17] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[1]),
        .G(uart0_n_7),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [17]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[18] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[2]),
        .G(uart0_n_7),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [18]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[19] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[3]),
        .G(uart0_n_7),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [19]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[1] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[1]),
        .G(uart0_n_9),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[20] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[4]),
        .G(uart0_n_7),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [20]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[21] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[5]),
        .G(uart0_n_7),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [21]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[22] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[6]),
        .G(uart0_n_7),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [22]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[23] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[7]),
        .G(uart0_n_7),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [23]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[24] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[0]),
        .G(uart0_n_6),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [24]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[25] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[1]),
        .G(uart0_n_6),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [25]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[26] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[2]),
        .G(uart0_n_6),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [26]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[27] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[3]),
        .G(uart0_n_6),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [27]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[28] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[4]),
        .G(uart0_n_6),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [28]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[29] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[5]),
        .G(uart0_n_6),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [29]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[2] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[2]),
        .G(uart0_n_9),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[30] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[6]),
        .G(uart0_n_6),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [30]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[31] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[7]),
        .G(uart0_n_6),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [31]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[3] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[3]),
        .G(uart0_n_9),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[4] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[4]),
        .G(uart0_n_9),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[5] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[5]),
        .G(uart0_n_9),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[6] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[6]),
        .G(uart0_n_9),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[7] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[7]),
        .G(uart0_n_9),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[8] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[0]),
        .G(uart0_n_8),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \read_data_value_reg[9] 
       (.CLR(rst_BUFG),
        .D(uart_recv_data[1]),
        .G(uart0_n_8),
        .GE(1'b1),
        .Q(\wb_wdata_reg[31] [9]));
  LUT6 #(
    .INIT(64'h000000005D5D5D5C)) 
    regs_reg_r1_0_31_0_5_i_8
       (.I0(cur_status[2]),
        .I1(cur_status[0]),
        .I2(cur_status[1]),
        .I3(ce),
        .I4(mem_data_ce),
        .I5(rst),
        .O(\ex_reg1_reg[1] ));
  uart_comm uart0
       (.D({uart0_n_3,uart0_n_4,uart0_n_5}),
        .E(uart0_n_2),
        .\FSM_sequential_cur_status_reg[1] (\uart_send_data_reg[7]_i_6_n_1 ),
        .\FSM_sequential_cur_status_reg[2] (\FSM_sequential_next_status_reg[1]_i_4_n_1 ),
        .\FSM_sequential_cur_status_reg[2]_0 (uart_send_data),
        .Q({cur_disp,Q}),
        .Rx_IBUF(Rx_IBUF),
        .Tx(Tx),
        .ce(ce),
        .ce_reg(\FSM_sequential_next_status_reg[2]_i_3_n_1 ),
        .clk_out1(clk_out1),
        .\cur_disp_reg[0] (\inst_value_reg[31]_i_5_n_1 ),
        .\cur_disp_reg[0]_0 (\inst_value_reg[15]_i_2_n_1 ),
        .\cur_disp_reg[0]_1 (\inst_value_reg[7]_i_2_n_1 ),
        .\cur_disp_reg[1] (\inst_value_reg[23]_i_2_n_1 ),
        .\cur_disp_reg[2] ({uart0_n_10,uart0_n_11,uart0_n_12}),
        .\id_inst_reg[24] ({uart0_n_13,uart0_n_14,uart0_n_15,uart0_n_16}),
        .\id_inst_reg[7] (uart_recv_data),
        .mem_data_ce(mem_data_ce),
        .mem_data_optype(mem_data_optype),
        .\memop_o_reg[1] (\memop_o_reg[1] ),
        .out(cur_status),
        .rst(rst),
        .rst_BUFG(rst_BUFG),
        .\wb_wdata_reg[31] ({uart0_n_6,uart0_n_7,uart0_n_8,uart0_n_9}));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \uart_send_data_reg[0] 
       (.CLR(1'b0),
        .D(\uart_send_data_reg[0]_i_1_n_1 ),
        .G(uart0_n_2),
        .GE(1'b1),
        .Q(uart_send_data[0]));
  LUT6 #(
    .INIT(64'h00000000FFFE00FE)) 
    \uart_send_data_reg[0]_i_1 
       (.I0(\uart_send_data_reg[0]_i_2_n_1 ),
        .I1(\uart_send_data_reg[0]_i_3_n_1 ),
        .I2(\uart_send_data_reg[0]_i_4_n_1 ),
        .I3(\uart_send_data_reg[7]_i_6_n_1 ),
        .I4(p_1_in[0]),
        .I5(cur_status[2]),
        .O(\uart_send_data_reg[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF202020)) 
    \uart_send_data_reg[0]_i_2 
       (.I0(\uart_send_data_reg[7]_i_15_n_1 ),
        .I1(\uart_send_data_reg[7]_i_16_n_1 ),
        .I2(pc[0]),
        .I3(\uart_send_data_reg[1]_i_6_n_1 ),
        .I4(cur_head[16]),
        .I5(\uart_send_data_reg[0]_i_7_n_1 ),
        .O(\uart_send_data_reg[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \uart_send_data_reg[0]_i_3 
       (.I0(rst),
        .I1(\inst_value_reg[7]_i_2_n_1 ),
        .I2(cur_disp),
        .I3(\uart_send_data_reg[7]_i_14_n_1 ),
        .I4(mem_data_optype),
        .I5(\mem_addr_reg[1] [0]),
        .O(\uart_send_data_reg[0]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h08080808AA080808)) 
    \uart_send_data_reg[0]_i_4 
       (.I0(\uart_send_data_reg[3]_i_10_n_1 ),
        .I1(pc[8]),
        .I2(\uart_send_data_reg[7]_i_16_n_1 ),
        .I3(\mem_addr_reg[31] [8]),
        .I4(mem_data_ce),
        .I5(\uart_send_data_reg[7]_i_14_n_1 ),
        .O(\uart_send_data_reg[0]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[0]_i_6 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [16]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[16]),
        .O(cur_head[16]));
  LUT6 #(
    .INIT(64'h08080808AA080808)) 
    \uart_send_data_reg[0]_i_7 
       (.I0(\uart_send_data_reg[3]_i_6_n_1 ),
        .I1(pc[24]),
        .I2(\uart_send_data_reg[7]_i_16_n_1 ),
        .I3(\mem_addr_reg[31] [24]),
        .I4(mem_data_ce),
        .I5(\uart_send_data_reg[7]_i_14_n_1 ),
        .O(\uart_send_data_reg[0]_i_7_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \uart_send_data_reg[1] 
       (.CLR(1'b0),
        .D(\uart_send_data_reg[1]_i_1_n_1 ),
        .G(uart0_n_2),
        .GE(1'b1),
        .Q(uart_send_data[1]));
  LUT6 #(
    .INIT(64'h00000000FFFE00FE)) 
    \uart_send_data_reg[1]_i_1 
       (.I0(\uart_send_data_reg[1]_i_2_n_1 ),
        .I1(\uart_send_data_reg[1]_i_3_n_1 ),
        .I2(\uart_send_data_reg[1]_i_4_n_1 ),
        .I3(\uart_send_data_reg[7]_i_6_n_1 ),
        .I4(p_1_in[1]),
        .I5(cur_status[2]),
        .O(\uart_send_data_reg[1]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF202020)) 
    \uart_send_data_reg[1]_i_2 
       (.I0(\uart_send_data_reg[7]_i_15_n_1 ),
        .I1(\uart_send_data_reg[7]_i_16_n_1 ),
        .I2(pc[1]),
        .I3(\uart_send_data_reg[1]_i_6_n_1 ),
        .I4(cur_head[17]),
        .I5(\uart_send_data_reg[1]_i_8_n_1 ),
        .O(\uart_send_data_reg[1]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \uart_send_data_reg[1]_i_3 
       (.I0(rst),
        .I1(\inst_value_reg[7]_i_2_n_1 ),
        .I2(cur_disp),
        .I3(\uart_send_data_reg[7]_i_14_n_1 ),
        .I4(mem_data_optype),
        .I5(\mem_addr_reg[1] [1]),
        .O(\uart_send_data_reg[1]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h08080808AA080808)) 
    \uart_send_data_reg[1]_i_4 
       (.I0(\uart_send_data_reg[3]_i_10_n_1 ),
        .I1(pc[9]),
        .I2(\uart_send_data_reg[7]_i_16_n_1 ),
        .I3(\mem_addr_reg[31] [9]),
        .I4(mem_data_ce),
        .I5(\uart_send_data_reg[7]_i_14_n_1 ),
        .O(\uart_send_data_reg[1]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \uart_send_data_reg[1]_i_6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(rst),
        .I3(cur_disp),
        .O(\uart_send_data_reg[1]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[1]_i_7 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [17]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[17]),
        .O(cur_head[17]));
  LUT6 #(
    .INIT(64'h08080808AA080808)) 
    \uart_send_data_reg[1]_i_8 
       (.I0(\uart_send_data_reg[3]_i_6_n_1 ),
        .I1(pc[25]),
        .I2(\uart_send_data_reg[7]_i_16_n_1 ),
        .I3(\mem_addr_reg[31] [25]),
        .I4(mem_data_ce),
        .I5(\uart_send_data_reg[7]_i_14_n_1 ),
        .O(\uart_send_data_reg[1]_i_8_n_1 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \uart_send_data_reg[2] 
       (.CLR(1'b0),
        .D(\uart_send_data_reg[2]_i_1_n_1 ),
        .G(uart0_n_2),
        .GE(1'b1),
        .Q(uart_send_data[2]));
  LUT6 #(
    .INIT(64'h00000000FFFE00FE)) 
    \uart_send_data_reg[2]_i_1 
       (.I0(\uart_send_data_reg[2]_i_2_n_1 ),
        .I1(\uart_send_data_reg[2]_i_3_n_1 ),
        .I2(\uart_send_data_reg[2]_i_4_n_1 ),
        .I3(\uart_send_data_reg[7]_i_6_n_1 ),
        .I4(p_1_in[2]),
        .I5(cur_status[2]),
        .O(\uart_send_data_reg[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h08080808AA080808)) 
    \uart_send_data_reg[2]_i_2 
       (.I0(\uart_send_data_reg[3]_i_6_n_1 ),
        .I1(pc[26]),
        .I2(\uart_send_data_reg[7]_i_16_n_1 ),
        .I3(\mem_addr_reg[31] [26]),
        .I4(mem_data_ce),
        .I5(\uart_send_data_reg[7]_i_14_n_1 ),
        .O(\uart_send_data_reg[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000A000C)) 
    \uart_send_data_reg[2]_i_3 
       (.I0(cur_head[18]),
        .I1(cur_head[2]),
        .I2(rst),
        .I3(cur_disp),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\uart_send_data_reg[2]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h8888F88888888888)) 
    \uart_send_data_reg[2]_i_4 
       (.I0(cur_head[10]),
        .I1(\uart_send_data_reg[3]_i_10_n_1 ),
        .I2(\mem_addr_reg[1] [2]),
        .I3(mem_data_optype),
        .I4(\uart_send_data_reg[7]_i_14_n_1 ),
        .I5(\uart_send_data_reg[3]_i_11_n_1 ),
        .O(\uart_send_data_reg[2]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[2]_i_6 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [18]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[18]),
        .O(cur_head[18]));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[2]_i_7 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [2]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[2]),
        .O(cur_head[2]));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[2]_i_8 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [10]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[10]),
        .O(cur_head[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \uart_send_data_reg[3] 
       (.CLR(1'b0),
        .D(\uart_send_data_reg[3]_i_1_n_1 ),
        .G(uart0_n_2),
        .GE(1'b1),
        .Q(uart_send_data[3]));
  LUT6 #(
    .INIT(64'h00000000FFFE00FE)) 
    \uart_send_data_reg[3]_i_1 
       (.I0(\uart_send_data_reg[3]_i_2_n_1 ),
        .I1(\uart_send_data_reg[3]_i_3_n_1 ),
        .I2(\uart_send_data_reg[3]_i_4_n_1 ),
        .I3(\uart_send_data_reg[7]_i_6_n_1 ),
        .I4(p_1_in[3]),
        .I5(cur_status[2]),
        .O(\uart_send_data_reg[3]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \uart_send_data_reg[3]_i_10 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rst),
        .I3(cur_disp),
        .O(\uart_send_data_reg[3]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \uart_send_data_reg[3]_i_11 
       (.I0(cur_disp),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(rst),
        .O(\uart_send_data_reg[3]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h08080808AA080808)) 
    \uart_send_data_reg[3]_i_2 
       (.I0(\uart_send_data_reg[3]_i_6_n_1 ),
        .I1(pc[27]),
        .I2(\uart_send_data_reg[7]_i_16_n_1 ),
        .I3(\mem_addr_reg[31] [27]),
        .I4(mem_data_ce),
        .I5(\uart_send_data_reg[7]_i_14_n_1 ),
        .O(\uart_send_data_reg[3]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00000000000A000C)) 
    \uart_send_data_reg[3]_i_3 
       (.I0(cur_head[19]),
        .I1(cur_head[3]),
        .I2(rst),
        .I3(cur_disp),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\uart_send_data_reg[3]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h8888F88888888888)) 
    \uart_send_data_reg[3]_i_4 
       (.I0(cur_head[11]),
        .I1(\uart_send_data_reg[3]_i_10_n_1 ),
        .I2(\mem_addr_reg[1] [3]),
        .I3(mem_data_optype),
        .I4(\uart_send_data_reg[7]_i_14_n_1 ),
        .I5(\uart_send_data_reg[3]_i_11_n_1 ),
        .O(\uart_send_data_reg[3]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \uart_send_data_reg[3]_i_6 
       (.I0(rst),
        .I1(cur_disp),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\uart_send_data_reg[3]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[3]_i_7 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [19]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[19]),
        .O(cur_head[19]));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[3]_i_8 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [3]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[3]),
        .O(cur_head[3]));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[3]_i_9 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [11]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[11]),
        .O(cur_head[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \uart_send_data_reg[4] 
       (.CLR(1'b0),
        .D(\uart_send_data_reg[4]_i_1_n_1 ),
        .G(uart0_n_2),
        .GE(1'b1),
        .Q(uart_send_data[4]));
  LUT6 #(
    .INIT(64'h00000000FFFE00FE)) 
    \uart_send_data_reg[4]_i_1 
       (.I0(\uart_send_data_reg[4]_i_2_n_1 ),
        .I1(\uart_send_data_reg[7]_i_4_n_1 ),
        .I2(\uart_send_data_reg[4]_i_3_n_1 ),
        .I3(\uart_send_data_reg[7]_i_6_n_1 ),
        .I4(p_1_in[4]),
        .I5(cur_status[2]),
        .O(\uart_send_data_reg[4]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hF000CC00AA000000)) 
    \uart_send_data_reg[4]_i_2 
       (.I0(cur_head[20]),
        .I1(cur_head[12]),
        .I2(cur_head[28]),
        .I3(\uart_send_data_reg[7]_i_13_n_1 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\uart_send_data_reg[4]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08080808AA080808)) 
    \uart_send_data_reg[4]_i_3 
       (.I0(\uart_send_data_reg[7]_i_15_n_1 ),
        .I1(pc[4]),
        .I2(\uart_send_data_reg[7]_i_16_n_1 ),
        .I3(\mem_addr_reg[31] [4]),
        .I4(mem_data_ce),
        .I5(\uart_send_data_reg[7]_i_14_n_1 ),
        .O(\uart_send_data_reg[4]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[4]_i_5 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [20]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[20]),
        .O(cur_head[20]));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[4]_i_6 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [12]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[12]),
        .O(cur_head[12]));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[4]_i_7 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [28]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[28]),
        .O(cur_head[28]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \uart_send_data_reg[5] 
       (.CLR(1'b0),
        .D(\uart_send_data_reg[5]_i_1_n_1 ),
        .G(uart0_n_2),
        .GE(1'b1),
        .Q(uart_send_data[5]));
  LUT6 #(
    .INIT(64'h00000000FFFE00FE)) 
    \uart_send_data_reg[5]_i_1 
       (.I0(\uart_send_data_reg[5]_i_2_n_1 ),
        .I1(\uart_send_data_reg[7]_i_4_n_1 ),
        .I2(\uart_send_data_reg[5]_i_3_n_1 ),
        .I3(\uart_send_data_reg[7]_i_6_n_1 ),
        .I4(p_1_in[5]),
        .I5(cur_status[2]),
        .O(\uart_send_data_reg[5]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hF000CC00AA000000)) 
    \uart_send_data_reg[5]_i_2 
       (.I0(cur_head[21]),
        .I1(cur_head[13]),
        .I2(cur_head[29]),
        .I3(\uart_send_data_reg[7]_i_13_n_1 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\uart_send_data_reg[5]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08080808AA080808)) 
    \uart_send_data_reg[5]_i_3 
       (.I0(\uart_send_data_reg[7]_i_15_n_1 ),
        .I1(pc[5]),
        .I2(\uart_send_data_reg[7]_i_16_n_1 ),
        .I3(\mem_addr_reg[31] [5]),
        .I4(mem_data_ce),
        .I5(\uart_send_data_reg[7]_i_14_n_1 ),
        .O(\uart_send_data_reg[5]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[5]_i_5 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [21]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[21]),
        .O(cur_head[21]));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[5]_i_6 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [13]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[13]),
        .O(cur_head[13]));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[5]_i_7 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [29]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[29]),
        .O(cur_head[29]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \uart_send_data_reg[6] 
       (.CLR(1'b0),
        .D(\uart_send_data_reg[6]_i_1_n_1 ),
        .G(uart0_n_2),
        .GE(1'b1),
        .Q(uart_send_data[6]));
  LUT6 #(
    .INIT(64'h00000000FFFE00FE)) 
    \uart_send_data_reg[6]_i_1 
       (.I0(\uart_send_data_reg[6]_i_2_n_1 ),
        .I1(\uart_send_data_reg[7]_i_4_n_1 ),
        .I2(\uart_send_data_reg[6]_i_3_n_1 ),
        .I3(\uart_send_data_reg[7]_i_6_n_1 ),
        .I4(p_1_in[6]),
        .I5(cur_status[2]),
        .O(\uart_send_data_reg[6]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hF000CC00AA000000)) 
    \uart_send_data_reg[6]_i_2 
       (.I0(cur_head[22]),
        .I1(cur_head[14]),
        .I2(cur_head[30]),
        .I3(\uart_send_data_reg[7]_i_13_n_1 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\uart_send_data_reg[6]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08080808AA080808)) 
    \uart_send_data_reg[6]_i_3 
       (.I0(\uart_send_data_reg[7]_i_15_n_1 ),
        .I1(pc[6]),
        .I2(\uart_send_data_reg[7]_i_16_n_1 ),
        .I3(\mem_addr_reg[31] [6]),
        .I4(mem_data_ce),
        .I5(\uart_send_data_reg[7]_i_14_n_1 ),
        .O(\uart_send_data_reg[6]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[6]_i_5 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [22]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[22]),
        .O(cur_head[22]));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[6]_i_6 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [14]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[14]),
        .O(cur_head[14]));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[6]_i_7 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [30]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[30]),
        .O(cur_head[30]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \uart_send_data_reg[7] 
       (.CLR(1'b0),
        .D(\uart_send_data_reg[7]_i_1_n_1 ),
        .G(uart0_n_2),
        .GE(1'b1),
        .Q(uart_send_data[7]));
  LUT6 #(
    .INIT(64'h00000000FFFE00FE)) 
    \uart_send_data_reg[7]_i_1 
       (.I0(\uart_send_data_reg[7]_i_3_n_1 ),
        .I1(\uart_send_data_reg[7]_i_4_n_1 ),
        .I2(\uart_send_data_reg[7]_i_5_n_1 ),
        .I3(\uart_send_data_reg[7]_i_6_n_1 ),
        .I4(p_1_in[7]),
        .I5(cur_status[2]),
        .O(\uart_send_data_reg[7]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[7]_i_10 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [23]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[23]),
        .O(cur_head[23]));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[7]_i_11 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [15]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[15]),
        .O(cur_head[15]));
  LUT6 #(
    .INIT(64'h00080F0000080000)) 
    \uart_send_data_reg[7]_i_12 
       (.I0(mem_data_ce),
        .I1(\mem_addr_reg[31] [31]),
        .I2(cur_status[2]),
        .I3(cur_status[1]),
        .I4(cur_status[0]),
        .I5(pc[31]),
        .O(cur_head[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \uart_send_data_reg[7]_i_13 
       (.I0(cur_disp),
        .I1(rst),
        .O(\uart_send_data_reg[7]_i_13_n_1 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \uart_send_data_reg[7]_i_14 
       (.I0(cur_status[2]),
        .I1(cur_status[0]),
        .I2(cur_status[1]),
        .O(\uart_send_data_reg[7]_i_14_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \uart_send_data_reg[7]_i_15 
       (.I0(rst),
        .I1(cur_disp),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\uart_send_data_reg[7]_i_15_n_1 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \uart_send_data_reg[7]_i_16 
       (.I0(cur_status[2]),
        .I1(cur_status[1]),
        .I2(cur_status[0]),
        .O(\uart_send_data_reg[7]_i_16_n_1 ));
  LUT6 #(
    .INIT(64'hF000CC00AA000000)) 
    \uart_send_data_reg[7]_i_3 
       (.I0(cur_head[23]),
        .I1(cur_head[15]),
        .I2(cur_head[31]),
        .I3(\uart_send_data_reg[7]_i_13_n_1 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\uart_send_data_reg[7]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \uart_send_data_reg[7]_i_4 
       (.I0(\inst_value_reg[7]_i_2_n_1 ),
        .I1(cur_disp),
        .I2(\uart_send_data_reg[7]_i_14_n_1 ),
        .I3(\memop_o_reg[1] [1]),
        .I4(\memop_o_reg[1] [0]),
        .I5(rst),
        .O(\uart_send_data_reg[7]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h08080808AA080808)) 
    \uart_send_data_reg[7]_i_5 
       (.I0(\uart_send_data_reg[7]_i_15_n_1 ),
        .I1(pc[7]),
        .I2(\uart_send_data_reg[7]_i_16_n_1 ),
        .I3(\mem_addr_reg[31] [7]),
        .I4(mem_data_ce),
        .I5(\uart_send_data_reg[7]_i_14_n_1 ),
        .O(\uart_send_data_reg[7]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \uart_send_data_reg[7]_i_6 
       (.I0(cur_status[1]),
        .I1(cur_status[0]),
        .O(\uart_send_data_reg[7]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FB0BF808)) 
    \wb_wdata[31]_i_6 
       (.I0(\wb_wdata_reg[31] [23]),
        .I1(\mem_addr_reg[31] [1]),
        .I2(\mem_addr_reg[31] [0]),
        .I3(\wb_wdata[31]_i_7_n_1 ),
        .I4(\wb_wdata_reg[31] [7]),
        .I5(\memfunct_o_reg[0] ),
        .O(\wb_wdata_reg[7] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \wb_wdata[31]_i_7 
       (.I0(\wb_wdata_reg[31] [31]),
        .I1(\mem_addr_reg[31] [1]),
        .I2(\wb_wdata_reg[31] [15]),
        .O(\wb_wdata[31]_i_7_n_1 ));
endmodule

module clk_wiz_0
   (clk_out1,
    reset,
    clk_in1);
  output clk_out1;
  input reset;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire reset;

  clk_wiz_0_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_0_clk_wiz" *) 
module clk_wiz_0_clk_wiz_0_clk_wiz
   (clk_out1,
    reset,
    clk_in1);
  output clk_out1;
  input reset;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_clk_wiz_0;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(10.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

(* NotValidForBitStream *)
module cpu
   (EXclk,
    button,
    Tx,
    Rx);
  (* CLOCK_BUFFER_TYPE = "none" *) input EXclk;
  input button;
  output Tx;
  input Rx;

  (* IBUF_LOW_PWR *) wire EXclk;
  wire Rx;
  wire Rx_IBUF;
  wire Tx;
  wire Tx_OBUF;
  wire button;
  wire button_IBUF;
  wire clk;
  wire n_0_948_BUFG;
  wire n_0_948_BUFG_inst_n_1;
  wire rst;
  wire rst_BUFG;
  wire rst_delay;

initial begin
 $sdf_annotate("sim_time_synth.sdf",,,,"tool_control");
end
  IBUF Rx_IBUF_inst
       (.I(Rx),
        .O(Rx_IBUF));
  OBUF Tx_OBUF_inst
       (.I(Tx_OBUF),
        .O(Tx));
  IBUF button_IBUF_inst
       (.I(button),
        .O(button_IBUF));
  clk_wiz_0 clk0
       (.clk_in1(EXclk),
        .clk_out1(clk),
        .reset(1'b0));
  BUFG n_0_948_BUFG_inst
       (.I(n_0_948_BUFG_inst_n_1),
        .O(n_0_948_BUFG));
  risc32i risc32i0
       (.E(n_0_948_BUFG),
        .Rx_IBUF(Rx_IBUF),
        .Tx(Tx_OBUF),
        .clk_out1(clk),
        .n_0_948_BUFG_inst_n_1(n_0_948_BUFG_inst_n_1),
        .rst(rst),
        .rst_BUFG(rst_BUFG));
  BUFG rst_BUFG_inst
       (.I(rst),
        .O(rst_BUFG));
  FDPE #(
    .INIT(1'b1)) 
    rst_delay_reg
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(button_IBUF),
        .Q(rst_delay));
  FDPE #(
    .INIT(1'b1)) 
    rst_reg
       (.C(clk),
        .CE(1'b1),
        .D(rst_delay),
        .PRE(button_IBUF),
        .Q(rst));
endmodule

module ex_mem
   (exmem_wreg,
    \ex_addr_base_reg[8] ,
    \ex_reg2_reg[8] ,
    \ex_addr_base_reg[9] ,
    \ex_reg2_reg[9] ,
    \ex_addr_base_reg[10] ,
    \ex_reg2_reg[10] ,
    \ex_addr_base_reg[11] ,
    \ex_reg2_reg[11] ,
    \ex_addr_base_reg[12] ,
    \ex_reg2_reg[12] ,
    \ex_addr_base_reg[13] ,
    \ex_reg2_reg[13] ,
    \ex_addr_base_reg[14] ,
    \ex_reg2_reg[14] ,
    \ex_reg2_reg[0] ,
    Q,
    \ex_reg1_reg[31] ,
    \ex_reg1_reg[29] ,
    \ex_reg1_reg[28] ,
    \ex_reg1_reg[27] ,
    \ex_reg1_reg[26] ,
    \ex_reg1_reg[25] ,
    \ex_reg1_reg[24] ,
    \ex_reg1_reg[23] ,
    \ex_reg1_reg[22] ,
    \ex_reg1_reg[21] ,
    \ex_reg1_reg[20] ,
    \ex_reg1_reg[19] ,
    \ex_reg1_reg[18] ,
    \ex_reg1_reg[17] ,
    \ex_reg1_reg[16] ,
    D,
    \wb_wdata_reg[0] ,
    \wb_wdata_reg[31] ,
    mem_data_ce,
    mem_data_optype,
    n_0_948_BUFG_inst_n_1,
    \buffer_reg[0][7] ,
    mem_wd,
    \buffer_reg[0][3] ,
    \buffer_reg[0][7]_0 ,
    rst_BUFG,
    E,
    idex_wreg,
    clk_out1,
    \read_ptr_reg[2] ,
    rst_reg,
    \id_inst_reg[18] ,
    \id_inst_reg[4] ,
    \wb_wdata_reg[8] ,
    rst_reg_0,
    \wb_wdata_reg[9] ,
    rst_reg_1,
    \wb_wdata_reg[10] ,
    rst_reg_2,
    \wb_wdata_reg[11] ,
    rst_reg_3,
    \wb_wdata_reg[12] ,
    rst_reg_4,
    \wb_wdata_reg[13] ,
    rst_reg_5,
    \wb_wdata_reg[14] ,
    id_reg2_addr,
    rst,
    id_reg1_addr,
    \mem_addr_reg[1]_0 ,
    \ex_alusel_reg[0] ,
    \ex_wd_reg[4] ,
    \memop_o_reg[1]_0 ,
    \memop_o_reg[1]_1 ,
    \memfunct_o_reg[2]_0 );
  output exmem_wreg;
  output \ex_addr_base_reg[8] ;
  output \ex_reg2_reg[8] ;
  output \ex_addr_base_reg[9] ;
  output \ex_reg2_reg[9] ;
  output \ex_addr_base_reg[10] ;
  output \ex_reg2_reg[10] ;
  output \ex_addr_base_reg[11] ;
  output \ex_reg2_reg[11] ;
  output \ex_addr_base_reg[12] ;
  output \ex_reg2_reg[12] ;
  output \ex_addr_base_reg[13] ;
  output \ex_reg2_reg[13] ;
  output \ex_addr_base_reg[14] ;
  output \ex_reg2_reg[14] ;
  output \ex_reg2_reg[0] ;
  output [4:0]Q;
  output \ex_reg1_reg[31] ;
  output \ex_reg1_reg[29] ;
  output \ex_reg1_reg[28] ;
  output \ex_reg1_reg[27] ;
  output \ex_reg1_reg[26] ;
  output \ex_reg1_reg[25] ;
  output \ex_reg1_reg[24] ;
  output \ex_reg1_reg[23] ;
  output \ex_reg1_reg[22] ;
  output \ex_reg1_reg[21] ;
  output \ex_reg1_reg[20] ;
  output \ex_reg1_reg[19] ;
  output \ex_reg1_reg[18] ;
  output \ex_reg1_reg[17] ;
  output \ex_reg1_reg[16] ;
  output [31:0]D;
  output [1:0]\wb_wdata_reg[0] ;
  output [0:0]\wb_wdata_reg[31] ;
  output mem_data_ce;
  output mem_data_optype;
  output n_0_948_BUFG_inst_n_1;
  output [31:0]\buffer_reg[0][7] ;
  output [2:0]mem_wd;
  output [3:0]\buffer_reg[0][3] ;
  output [31:0]\buffer_reg[0][7]_0 ;
  input rst_BUFG;
  input [0:0]E;
  input idex_wreg;
  input clk_out1;
  input [31:0]\read_ptr_reg[2] ;
  input rst_reg;
  input \id_inst_reg[18] ;
  input \id_inst_reg[4] ;
  input \wb_wdata_reg[8] ;
  input rst_reg_0;
  input \wb_wdata_reg[9] ;
  input rst_reg_1;
  input \wb_wdata_reg[10] ;
  input rst_reg_2;
  input \wb_wdata_reg[11] ;
  input rst_reg_3;
  input \wb_wdata_reg[12] ;
  input rst_reg_4;
  input \wb_wdata_reg[13] ;
  input rst_reg_5;
  input \wb_wdata_reg[14] ;
  input [1:0]id_reg2_addr;
  input rst;
  input [1:0]id_reg1_addr;
  input \mem_addr_reg[1]_0 ;
  input [31:0]\ex_alusel_reg[0] ;
  input [4:0]\ex_wd_reg[4] ;
  input [31:0]\memop_o_reg[1]_0 ;
  input [1:0]\memop_o_reg[1]_1 ;
  input [2:0]\memfunct_o_reg[2]_0 ;

  wire [31:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [3:0]\buffer_reg[0][3] ;
  wire [31:0]\buffer_reg[0][7] ;
  wire [31:0]\buffer_reg[0][7]_0 ;
  wire clk_out1;
  wire \ex_addr_base_reg[10] ;
  wire \ex_addr_base_reg[11] ;
  wire \ex_addr_base_reg[12] ;
  wire \ex_addr_base_reg[13] ;
  wire \ex_addr_base_reg[14] ;
  wire \ex_addr_base_reg[8] ;
  wire \ex_addr_base_reg[9] ;
  wire [31:0]\ex_alusel_reg[0] ;
  wire \ex_reg1_reg[16] ;
  wire \ex_reg1_reg[17] ;
  wire \ex_reg1_reg[18] ;
  wire \ex_reg1_reg[19] ;
  wire \ex_reg1_reg[20] ;
  wire \ex_reg1_reg[21] ;
  wire \ex_reg1_reg[22] ;
  wire \ex_reg1_reg[23] ;
  wire \ex_reg1_reg[24] ;
  wire \ex_reg1_reg[25] ;
  wire \ex_reg1_reg[26] ;
  wire \ex_reg1_reg[27] ;
  wire \ex_reg1_reg[28] ;
  wire \ex_reg1_reg[29] ;
  wire \ex_reg1_reg[31] ;
  wire \ex_reg2_reg[0] ;
  wire \ex_reg2_reg[10] ;
  wire \ex_reg2_reg[11] ;
  wire \ex_reg2_reg[12] ;
  wire \ex_reg2_reg[13] ;
  wire \ex_reg2_reg[14] ;
  wire \ex_reg2_reg[8] ;
  wire \ex_reg2_reg[9] ;
  wire [4:0]\ex_wd_reg[4] ;
  wire [2:1]exmem_memfunct;
  wire [31:0]exmem_wdata;
  wire exmem_wreg;
  wire \id_inst_reg[18] ;
  wire \id_inst_reg[4] ;
  wire [1:0]id_reg1_addr;
  wire [1:0]id_reg2_addr;
  wire idex_wreg;
  wire \mem_addr_reg[1]_0 ;
  wire mem_data_ce;
  wire mem_data_optype;
  wire [2:0]mem_wd;
  wire [2:0]\memfunct_o_reg[2]_0 ;
  wire [31:0]\memop_o_reg[1]_0 ;
  wire [1:0]\memop_o_reg[1]_1 ;
  wire n_0_948_BUFG_inst_n_1;
  wire [31:0]\read_ptr_reg[2] ;
  wire rst;
  wire rst_BUFG;
  wire rst_reg;
  wire rst_reg_0;
  wire rst_reg_1;
  wire rst_reg_2;
  wire rst_reg_3;
  wire rst_reg_4;
  wire rst_reg_5;
  wire \wb_wdata[0]_i_2_n_1 ;
  wire \wb_wdata[0]_i_3_n_1 ;
  wire \wb_wdata[10]_i_2_n_1 ;
  wire \wb_wdata[11]_i_2_n_1 ;
  wire \wb_wdata[12]_i_2_n_1 ;
  wire \wb_wdata[13]_i_2_n_1 ;
  wire \wb_wdata[14]_i_2_n_1 ;
  wire \wb_wdata[14]_i_3_n_1 ;
  wire \wb_wdata[14]_i_4_n_1 ;
  wire \wb_wdata[14]_i_5_n_1 ;
  wire \wb_wdata[15]_i_2_n_1 ;
  wire \wb_wdata[15]_i_3_n_1 ;
  wire \wb_wdata[1]_i_2_n_1 ;
  wire \wb_wdata[1]_i_3_n_1 ;
  wire \wb_wdata[2]_i_2_n_1 ;
  wire \wb_wdata[2]_i_3_n_1 ;
  wire \wb_wdata[31]_i_2_n_1 ;
  wire \wb_wdata[31]_i_3_n_1 ;
  wire \wb_wdata[31]_i_4_n_1 ;
  wire \wb_wdata[31]_i_5_n_1 ;
  wire \wb_wdata[3]_i_2_n_1 ;
  wire \wb_wdata[3]_i_3_n_1 ;
  wire \wb_wdata[4]_i_2_n_1 ;
  wire \wb_wdata[4]_i_3_n_1 ;
  wire \wb_wdata[5]_i_2_n_1 ;
  wire \wb_wdata[5]_i_3_n_1 ;
  wire \wb_wdata[6]_i_2_n_1 ;
  wire \wb_wdata[6]_i_3_n_1 ;
  wire \wb_wdata[6]_i_4_n_1 ;
  wire \wb_wdata[6]_i_5_n_1 ;
  wire \wb_wdata[6]_i_6_n_1 ;
  wire \wb_wdata[6]_i_7_n_1 ;
  wire \wb_wdata[7]_i_2_n_1 ;
  wire \wb_wdata[7]_i_3_n_1 ;
  wire \wb_wdata[8]_i_2_n_1 ;
  wire \wb_wdata[9]_i_2_n_1 ;
  wire [1:0]\wb_wdata_reg[0] ;
  wire \wb_wdata_reg[10] ;
  wire \wb_wdata_reg[11] ;
  wire \wb_wdata_reg[12] ;
  wire \wb_wdata_reg[13] ;
  wire \wb_wdata_reg[14] ;
  wire [0:0]\wb_wdata_reg[31] ;
  wire \wb_wdata_reg[8] ;
  wire \wb_wdata_reg[9] ;
  wire \write_data_value_reg[23]_i_2_n_1 ;
  wire \write_data_value_reg[24]_i_2_n_1 ;
  wire \write_data_value_reg[25]_i_2_n_1 ;
  wire \write_data_value_reg[26]_i_2_n_1 ;
  wire \write_data_value_reg[27]_i_2_n_1 ;
  wire \write_data_value_reg[28]_i_2_n_1 ;
  wire \write_data_value_reg[29]_i_2_n_1 ;
  wire \write_data_value_reg[30]_i_2_n_1 ;
  wire \write_data_value_reg[31]_i_2_n_1 ;
  wire \write_data_value_reg[31]_i_3_n_1 ;

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_next_status_reg[1]_i_2 
       (.I0(\wb_wdata_reg[0] [0]),
        .I1(\wb_wdata_reg[0] [1]),
        .I2(rst),
        .O(mem_data_ce));
  LUT6 #(
    .INIT(64'hFFFF000001110111)) 
    \ex_reg1[10]_i_2 
       (.I0(\wb_wdata[10]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [10]),
        .I4(rst_reg_1),
        .I5(\id_inst_reg[18] ),
        .O(\ex_addr_base_reg[10] ));
  LUT6 #(
    .INIT(64'hFFFF000001110111)) 
    \ex_reg1[11]_i_2 
       (.I0(\wb_wdata[11]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [11]),
        .I4(rst_reg_2),
        .I5(\id_inst_reg[18] ),
        .O(\ex_addr_base_reg[11] ));
  LUT6 #(
    .INIT(64'hFFFF000001110111)) 
    \ex_reg1[12]_i_2 
       (.I0(\wb_wdata[12]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [12]),
        .I4(rst_reg_3),
        .I5(\id_inst_reg[18] ),
        .O(\ex_addr_base_reg[12] ));
  LUT6 #(
    .INIT(64'hFFFF000001110111)) 
    \ex_reg1[13]_i_2 
       (.I0(\wb_wdata[13]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [13]),
        .I4(rst_reg_4),
        .I5(\id_inst_reg[18] ),
        .O(\ex_addr_base_reg[13] ));
  LUT6 #(
    .INIT(64'hFFFF000001110111)) 
    \ex_reg1[14]_i_2 
       (.I0(\wb_wdata[14]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [14]),
        .I4(rst_reg_5),
        .I5(\id_inst_reg[18] ),
        .O(\ex_addr_base_reg[14] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[16]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[16]),
        .I2(\read_ptr_reg[2] [16]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[16] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[17]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[17]),
        .I2(\read_ptr_reg[2] [17]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[17] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[18]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[18]),
        .I2(\read_ptr_reg[2] [18]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[18] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[19]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[19]),
        .I2(\read_ptr_reg[2] [19]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[19] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[20]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[20]),
        .I2(\read_ptr_reg[2] [20]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[20] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[21]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[21]),
        .I2(\read_ptr_reg[2] [21]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[21] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[22]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[22]),
        .I2(\read_ptr_reg[2] [22]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[22] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[23]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[23]),
        .I2(\read_ptr_reg[2] [23]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[23] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[24]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[24]),
        .I2(\read_ptr_reg[2] [24]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[24] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[25]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[25]),
        .I2(\read_ptr_reg[2] [25]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[25] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[26]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[26]),
        .I2(\read_ptr_reg[2] [26]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[26] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[27]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[27]),
        .I2(\read_ptr_reg[2] [27]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[27] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[28]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[28]),
        .I2(\read_ptr_reg[2] [28]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[28] ));
  LUT5 #(
    .INIT(32'h00000777)) 
    \ex_reg1[29]_i_4 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[29]),
        .I2(\read_ptr_reg[2] [29]),
        .I3(\wb_wdata[31]_i_3_n_1 ),
        .I4(\wb_wdata[31]_i_2_n_1 ),
        .O(\ex_reg1_reg[29] ));
  LUT6 #(
    .INIT(64'hFF6FFF6FFFFFFF6F)) 
    \ex_reg1[31]_i_15 
       (.I0(id_reg1_addr[1]),
        .I1(Q[4]),
        .I2(exmem_wreg),
        .I3(rst),
        .I4(id_reg1_addr[0]),
        .I5(Q[2]),
        .O(\ex_reg1_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[31]_i_16 
       (.I0(Q[1]),
        .I1(rst),
        .O(mem_wd[1]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[31]_i_17 
       (.I0(Q[2]),
        .I1(rst),
        .O(mem_wd[2]));
  LUT6 #(
    .INIT(64'hFFFF000001110111)) 
    \ex_reg1[8]_i_2 
       (.I0(\wb_wdata[8]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [8]),
        .I4(rst_reg),
        .I5(\id_inst_reg[18] ),
        .O(\ex_addr_base_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFF000001110111)) 
    \ex_reg1[9]_i_2 
       (.I0(\wb_wdata[9]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [9]),
        .I4(rst_reg_0),
        .I5(\id_inst_reg[18] ),
        .O(\ex_addr_base_reg[9] ));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEE0000)) 
    \ex_reg2[10]_i_3 
       (.I0(\wb_wdata[10]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [10]),
        .I4(\id_inst_reg[4] ),
        .I5(\wb_wdata_reg[10] ),
        .O(\ex_reg2_reg[10] ));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEE0000)) 
    \ex_reg2[11]_i_2 
       (.I0(\wb_wdata[11]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [11]),
        .I4(\id_inst_reg[4] ),
        .I5(\wb_wdata_reg[11] ),
        .O(\ex_reg2_reg[11] ));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEE0000)) 
    \ex_reg2[12]_i_2 
       (.I0(\wb_wdata[12]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [12]),
        .I4(\id_inst_reg[4] ),
        .I5(\wb_wdata_reg[12] ),
        .O(\ex_reg2_reg[12] ));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEE0000)) 
    \ex_reg2[13]_i_3 
       (.I0(\wb_wdata[13]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [13]),
        .I4(\id_inst_reg[4] ),
        .I5(\wb_wdata_reg[13] ),
        .O(\ex_reg2_reg[13] ));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEE0000)) 
    \ex_reg2[14]_i_2 
       (.I0(\wb_wdata[14]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [14]),
        .I4(\id_inst_reg[4] ),
        .I5(\wb_wdata_reg[14] ),
        .O(\ex_reg2_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[31]_i_17 
       (.I0(Q[0]),
        .I1(rst),
        .O(mem_wd[0]));
  LUT6 #(
    .INIT(64'hFF6FFF6FFFFFFF6F)) 
    \ex_reg2[31]_i_19 
       (.I0(id_reg2_addr[1]),
        .I1(Q[4]),
        .I2(exmem_wreg),
        .I3(rst),
        .I4(Q[2]),
        .I5(id_reg2_addr[0]),
        .O(\ex_reg2_reg[0] ));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEE0000)) 
    \ex_reg2[8]_i_2 
       (.I0(\wb_wdata[8]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [8]),
        .I4(\id_inst_reg[4] ),
        .I5(\wb_wdata_reg[8] ),
        .O(\ex_reg2_reg[8] ));
  LUT6 #(
    .INIT(64'hFEEEFFFFFEEE0000)) 
    \ex_reg2[9]_i_2 
       (.I0(\wb_wdata[9]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [9]),
        .I4(\id_inst_reg[4] ),
        .I5(\wb_wdata_reg[9] ),
        .O(\ex_reg2_reg[9] ));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [0]),
        .Q(\buffer_reg[0][7] [0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[10] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [10]),
        .Q(\buffer_reg[0][7] [10]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[11] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [11]),
        .Q(\buffer_reg[0][7] [11]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[12] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [12]),
        .Q(\buffer_reg[0][7] [12]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[13] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [13]),
        .Q(\buffer_reg[0][7] [13]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[14] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [14]),
        .Q(\buffer_reg[0][7] [14]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[15] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [15]),
        .Q(\buffer_reg[0][7] [15]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[16] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [16]),
        .Q(\buffer_reg[0][7] [16]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[17] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [17]),
        .Q(\buffer_reg[0][7] [17]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[18] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [18]),
        .Q(\buffer_reg[0][7] [18]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[19] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [19]),
        .Q(\buffer_reg[0][7] [19]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [1]),
        .Q(\buffer_reg[0][7] [1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[20] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [20]),
        .Q(\buffer_reg[0][7] [20]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[21] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [21]),
        .Q(\buffer_reg[0][7] [21]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[22] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [22]),
        .Q(\buffer_reg[0][7] [22]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[23] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [23]),
        .Q(\buffer_reg[0][7] [23]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[24] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [24]),
        .Q(\buffer_reg[0][7] [24]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[25] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [25]),
        .Q(\buffer_reg[0][7] [25]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[26] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [26]),
        .Q(\buffer_reg[0][7] [26]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[27] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [27]),
        .Q(\buffer_reg[0][7] [27]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[28] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [28]),
        .Q(\buffer_reg[0][7] [28]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[29] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [29]),
        .Q(\buffer_reg[0][7] [29]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [2]),
        .Q(\buffer_reg[0][7] [2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[30] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [30]),
        .Q(\buffer_reg[0][7] [30]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[31] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [31]),
        .Q(\buffer_reg[0][7] [31]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [3]),
        .Q(\buffer_reg[0][7] [3]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [4]),
        .Q(\buffer_reg[0][7] [4]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[5] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [5]),
        .Q(\buffer_reg[0][7] [5]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[6] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [6]),
        .Q(\buffer_reg[0][7] [6]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[7] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [7]),
        .Q(\buffer_reg[0][7] [7]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[8] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [8]),
        .Q(\buffer_reg[0][7] [8]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_addr_reg[9] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_0 [9]),
        .Q(\buffer_reg[0][7] [9]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wd_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_wd_reg[4] [0]),
        .Q(Q[0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wd_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_wd_reg[4] [1]),
        .Q(Q[1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wd_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_wd_reg[4] [2]),
        .Q(Q[2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wd_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_wd_reg[4] [3]),
        .Q(Q[3]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wd_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_wd_reg[4] [4]),
        .Q(Q[4]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [0]),
        .Q(exmem_wdata[0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[10] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [10]),
        .Q(exmem_wdata[10]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[11] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [11]),
        .Q(exmem_wdata[11]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[12] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [12]),
        .Q(exmem_wdata[12]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[13] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [13]),
        .Q(exmem_wdata[13]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[14] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [14]),
        .Q(exmem_wdata[14]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[15] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [15]),
        .Q(exmem_wdata[15]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[16] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [16]),
        .Q(exmem_wdata[16]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[17] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [17]),
        .Q(exmem_wdata[17]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[18] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [18]),
        .Q(exmem_wdata[18]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[19] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [19]),
        .Q(exmem_wdata[19]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [1]),
        .Q(exmem_wdata[1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[20] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [20]),
        .Q(exmem_wdata[20]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[21] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [21]),
        .Q(exmem_wdata[21]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[22] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [22]),
        .Q(exmem_wdata[22]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[23] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [23]),
        .Q(exmem_wdata[23]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[24] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [24]),
        .Q(exmem_wdata[24]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[25] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [25]),
        .Q(exmem_wdata[25]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[26] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [26]),
        .Q(exmem_wdata[26]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[27] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [27]),
        .Q(exmem_wdata[27]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[28] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [28]),
        .Q(exmem_wdata[28]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[29] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [29]),
        .Q(exmem_wdata[29]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [2]),
        .Q(exmem_wdata[2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[30] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [30]),
        .Q(exmem_wdata[30]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[31] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [31]),
        .Q(exmem_wdata[31]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [3]),
        .Q(exmem_wdata[3]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [4]),
        .Q(exmem_wdata[4]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[5] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [5]),
        .Q(exmem_wdata[5]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[6] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [6]),
        .Q(exmem_wdata[6]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[7] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [7]),
        .Q(exmem_wdata[7]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[8] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [8]),
        .Q(exmem_wdata[8]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \mem_wdata_reg[9] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0] [9]),
        .Q(exmem_wdata[9]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    mem_wreg_reg
       (.C(clk_out1),
        .CE(E),
        .D(idex_wreg),
        .Q(exmem_wreg),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \memfunct_o_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\memfunct_o_reg[2]_0 [0]),
        .Q(\wb_wdata_reg[31] ),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \memfunct_o_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\memfunct_o_reg[2]_0 [1]),
        .Q(exmem_memfunct[1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \memfunct_o_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(\memfunct_o_reg[2]_0 [2]),
        .Q(exmem_memfunct[2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \memop_o_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_1 [0]),
        .Q(\wb_wdata_reg[0] [0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \memop_o_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\memop_o_reg[1]_1 [1]),
        .Q(\wb_wdata_reg[0] [1]),
        .R(rst_BUFG));
  LUT5 #(
    .INIT(32'h00040404)) 
    n_0_948_BUFG_inst_i_1
       (.I0(exmem_memfunct[2]),
        .I1(\wb_wdata_reg[0] [0]),
        .I2(\wb_wdata_reg[0] [1]),
        .I3(exmem_memfunct[1]),
        .I4(\wb_wdata_reg[31] ),
        .O(n_0_948_BUFG_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \uart_send_data_reg[7]_i_8 
       (.I0(\wb_wdata_reg[0] [1]),
        .I1(\wb_wdata_reg[0] [0]),
        .I2(rst),
        .O(mem_data_optype));
  LUT6 #(
    .INIT(64'h00000000AAFCAAAA)) 
    \wb_wdata[0]_i_1 
       (.I0(exmem_wdata[0]),
        .I1(\wb_wdata[0]_i_2_n_1 ),
        .I2(\wb_wdata[0]_i_3_n_1 ),
        .I3(\wb_wdata_reg[0] [0]),
        .I4(\wb_wdata_reg[0] [1]),
        .I5(rst),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \wb_wdata[0]_i_2 
       (.I0(\wb_wdata[6]_i_4_n_1 ),
        .I1(\read_ptr_reg[2] [8]),
        .I2(\wb_wdata[6]_i_5_n_1 ),
        .I3(\read_ptr_reg[2] [24]),
        .I4(\read_ptr_reg[2] [16]),
        .I5(\wb_wdata[6]_i_6_n_1 ),
        .O(\wb_wdata[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF888088808880)) 
    \wb_wdata[0]_i_3 
       (.I0(exmem_wdata[0]),
        .I1(exmem_memfunct[1]),
        .I2(\wb_wdata_reg[31] ),
        .I3(exmem_memfunct[2]),
        .I4(\read_ptr_reg[2] [0]),
        .I5(\wb_wdata[6]_i_7_n_1 ),
        .O(\wb_wdata[0]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \wb_wdata[10]_i_1 
       (.I0(\wb_wdata[10]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [10]),
        .O(D[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \wb_wdata[10]_i_2 
       (.I0(\read_ptr_reg[2] [26]),
        .I1(\wb_wdata[7]_i_2_n_1 ),
        .I2(exmem_wdata[10]),
        .I3(\wb_wdata[31]_i_4_n_1 ),
        .O(\wb_wdata[10]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \wb_wdata[11]_i_1 
       (.I0(\wb_wdata[11]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [11]),
        .O(D[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \wb_wdata[11]_i_2 
       (.I0(\read_ptr_reg[2] [27]),
        .I1(\wb_wdata[7]_i_2_n_1 ),
        .I2(exmem_wdata[11]),
        .I3(\wb_wdata[31]_i_4_n_1 ),
        .O(\wb_wdata[11]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \wb_wdata[12]_i_1 
       (.I0(\wb_wdata[12]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [12]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \wb_wdata[12]_i_2 
       (.I0(\read_ptr_reg[2] [28]),
        .I1(\wb_wdata[7]_i_2_n_1 ),
        .I2(exmem_wdata[12]),
        .I3(\wb_wdata[31]_i_4_n_1 ),
        .O(\wb_wdata[12]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \wb_wdata[13]_i_1 
       (.I0(\wb_wdata[13]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [13]),
        .O(D[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \wb_wdata[13]_i_2 
       (.I0(\read_ptr_reg[2] [29]),
        .I1(\wb_wdata[7]_i_2_n_1 ),
        .I2(exmem_wdata[13]),
        .I3(\wb_wdata[31]_i_4_n_1 ),
        .O(\wb_wdata[13]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \wb_wdata[14]_i_1 
       (.I0(\wb_wdata[14]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [14]),
        .O(D[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \wb_wdata[14]_i_2 
       (.I0(\read_ptr_reg[2] [30]),
        .I1(\wb_wdata[7]_i_2_n_1 ),
        .I2(exmem_wdata[14]),
        .I3(\wb_wdata[31]_i_4_n_1 ),
        .O(\wb_wdata[14]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \wb_wdata[14]_i_3 
       (.I0(\mem_addr_reg[1]_0 ),
        .I1(exmem_memfunct[2]),
        .I2(\wb_wdata[14]_i_5_n_1 ),
        .I3(exmem_memfunct[1]),
        .O(\wb_wdata[14]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0008002820082028)) 
    \wb_wdata[14]_i_4 
       (.I0(\wb_wdata[14]_i_5_n_1 ),
        .I1(exmem_memfunct[1]),
        .I2(\wb_wdata_reg[31] ),
        .I3(exmem_memfunct[2]),
        .I4(\buffer_reg[0][7] [0]),
        .I5(\buffer_reg[0][7] [1]),
        .O(\wb_wdata[14]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \wb_wdata[14]_i_5 
       (.I0(\wb_wdata_reg[0] [0]),
        .I1(\wb_wdata_reg[0] [1]),
        .I2(rst),
        .O(\wb_wdata[14]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \wb_wdata[15]_i_1 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[15]),
        .I2(\wb_wdata[15]_i_2_n_1 ),
        .I3(\wb_wdata[31]_i_2_n_1 ),
        .I4(\wb_wdata[31]_i_3_n_1 ),
        .I5(\read_ptr_reg[2] [15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h8A80000000000000)) 
    \wb_wdata[15]_i_2 
       (.I0(exmem_memfunct[2]),
        .I1(\read_ptr_reg[2] [31]),
        .I2(\buffer_reg[0][7] [1]),
        .I3(\read_ptr_reg[2] [15]),
        .I4(\wb_wdata_reg[31] ),
        .I5(\wb_wdata[15]_i_3_n_1 ),
        .O(\wb_wdata[15]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \wb_wdata[15]_i_3 
       (.I0(rst),
        .I1(\wb_wdata_reg[0] [1]),
        .I2(\wb_wdata_reg[0] [0]),
        .I3(exmem_memfunct[1]),
        .O(\wb_wdata[15]_i_3_n_1 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[16]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [16]),
        .I3(exmem_wdata[16]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[17]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [17]),
        .I3(exmem_wdata[17]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[18]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [18]),
        .I3(exmem_wdata[18]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[19]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [19]),
        .I3(exmem_wdata[19]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'h00000000AAFCAAAA)) 
    \wb_wdata[1]_i_1 
       (.I0(exmem_wdata[1]),
        .I1(\wb_wdata[1]_i_2_n_1 ),
        .I2(\wb_wdata[1]_i_3_n_1 ),
        .I3(\wb_wdata_reg[0] [0]),
        .I4(\wb_wdata_reg[0] [1]),
        .I5(rst),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \wb_wdata[1]_i_2 
       (.I0(\wb_wdata[6]_i_4_n_1 ),
        .I1(\read_ptr_reg[2] [9]),
        .I2(\wb_wdata[6]_i_5_n_1 ),
        .I3(\read_ptr_reg[2] [25]),
        .I4(\read_ptr_reg[2] [17]),
        .I5(\wb_wdata[6]_i_6_n_1 ),
        .O(\wb_wdata[1]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF888088808880)) 
    \wb_wdata[1]_i_3 
       (.I0(exmem_wdata[1]),
        .I1(exmem_memfunct[1]),
        .I2(\wb_wdata_reg[31] ),
        .I3(exmem_memfunct[2]),
        .I4(\read_ptr_reg[2] [1]),
        .I5(\wb_wdata[6]_i_7_n_1 ),
        .O(\wb_wdata[1]_i_3_n_1 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[20]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [20]),
        .I3(exmem_wdata[20]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[21]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [21]),
        .I3(exmem_wdata[21]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[22]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [22]),
        .I3(exmem_wdata[22]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[23]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [23]),
        .I3(exmem_wdata[23]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[24]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [24]),
        .I3(exmem_wdata[24]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[25]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [25]),
        .I3(exmem_wdata[25]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[26]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [26]),
        .I3(exmem_wdata[26]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[27]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [27]),
        .I3(exmem_wdata[27]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[28]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [28]),
        .I3(exmem_wdata[28]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[29]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [29]),
        .I3(exmem_wdata[29]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h00000000AAFCAAAA)) 
    \wb_wdata[2]_i_1 
       (.I0(exmem_wdata[2]),
        .I1(\wb_wdata[2]_i_2_n_1 ),
        .I2(\wb_wdata[2]_i_3_n_1 ),
        .I3(\wb_wdata_reg[0] [0]),
        .I4(\wb_wdata_reg[0] [1]),
        .I5(rst),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \wb_wdata[2]_i_2 
       (.I0(\wb_wdata[6]_i_4_n_1 ),
        .I1(\read_ptr_reg[2] [10]),
        .I2(\wb_wdata[6]_i_5_n_1 ),
        .I3(\read_ptr_reg[2] [26]),
        .I4(\read_ptr_reg[2] [18]),
        .I5(\wb_wdata[6]_i_6_n_1 ),
        .O(\wb_wdata[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF888088808880)) 
    \wb_wdata[2]_i_3 
       (.I0(exmem_wdata[2]),
        .I1(exmem_memfunct[1]),
        .I2(\wb_wdata_reg[31] ),
        .I3(exmem_memfunct[2]),
        .I4(\read_ptr_reg[2] [2]),
        .I5(\wb_wdata[6]_i_7_n_1 ),
        .O(\wb_wdata[2]_i_3_n_1 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[30]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [30]),
        .I3(exmem_wdata[30]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \wb_wdata[31]_i_1 
       (.I0(\wb_wdata[31]_i_2_n_1 ),
        .I1(\wb_wdata[31]_i_3_n_1 ),
        .I2(\read_ptr_reg[2] [31]),
        .I3(exmem_wdata[31]),
        .I4(\wb_wdata[31]_i_4_n_1 ),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hAAAAAAAA80A08000)) 
    \wb_wdata[31]_i_2 
       (.I0(\wb_wdata[31]_i_5_n_1 ),
        .I1(\read_ptr_reg[2] [31]),
        .I2(\wb_wdata_reg[31] ),
        .I3(\buffer_reg[0][7] [0]),
        .I4(\read_ptr_reg[2] [15]),
        .I5(\mem_addr_reg[1]_0 ),
        .O(\wb_wdata[31]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \wb_wdata[31]_i_3 
       (.I0(exmem_memfunct[2]),
        .I1(\wb_wdata_reg[31] ),
        .I2(exmem_memfunct[1]),
        .I3(rst),
        .I4(\wb_wdata_reg[0] [1]),
        .I5(\wb_wdata_reg[0] [0]),
        .O(\wb_wdata[31]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FDFDFDDD)) 
    \wb_wdata[31]_i_4 
       (.I0(\wb_wdata_reg[0] [1]),
        .I1(\wb_wdata_reg[0] [0]),
        .I2(exmem_memfunct[1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(exmem_memfunct[2]),
        .I5(rst),
        .O(\wb_wdata[31]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \wb_wdata[31]_i_5 
       (.I0(exmem_memfunct[1]),
        .I1(\wb_wdata_reg[0] [0]),
        .I2(\wb_wdata_reg[0] [1]),
        .I3(rst),
        .I4(exmem_memfunct[2]),
        .O(\wb_wdata[31]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h00000000AAFCAAAA)) 
    \wb_wdata[3]_i_1 
       (.I0(exmem_wdata[3]),
        .I1(\wb_wdata[3]_i_2_n_1 ),
        .I2(\wb_wdata[3]_i_3_n_1 ),
        .I3(\wb_wdata_reg[0] [0]),
        .I4(\wb_wdata_reg[0] [1]),
        .I5(rst),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \wb_wdata[3]_i_2 
       (.I0(\wb_wdata[6]_i_4_n_1 ),
        .I1(\read_ptr_reg[2] [11]),
        .I2(\wb_wdata[6]_i_5_n_1 ),
        .I3(\read_ptr_reg[2] [27]),
        .I4(\read_ptr_reg[2] [19]),
        .I5(\wb_wdata[6]_i_6_n_1 ),
        .O(\wb_wdata[3]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF888088808880)) 
    \wb_wdata[3]_i_3 
       (.I0(exmem_wdata[3]),
        .I1(exmem_memfunct[1]),
        .I2(\wb_wdata_reg[31] ),
        .I3(exmem_memfunct[2]),
        .I4(\read_ptr_reg[2] [3]),
        .I5(\wb_wdata[6]_i_7_n_1 ),
        .O(\wb_wdata[3]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000AAFCAAAA)) 
    \wb_wdata[4]_i_1 
       (.I0(exmem_wdata[4]),
        .I1(\wb_wdata[4]_i_2_n_1 ),
        .I2(\wb_wdata[4]_i_3_n_1 ),
        .I3(\wb_wdata_reg[0] [0]),
        .I4(\wb_wdata_reg[0] [1]),
        .I5(rst),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \wb_wdata[4]_i_2 
       (.I0(\wb_wdata[6]_i_4_n_1 ),
        .I1(\read_ptr_reg[2] [12]),
        .I2(\wb_wdata[6]_i_5_n_1 ),
        .I3(\read_ptr_reg[2] [28]),
        .I4(\read_ptr_reg[2] [20]),
        .I5(\wb_wdata[6]_i_6_n_1 ),
        .O(\wb_wdata[4]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF888088808880)) 
    \wb_wdata[4]_i_3 
       (.I0(exmem_wdata[4]),
        .I1(exmem_memfunct[1]),
        .I2(\wb_wdata_reg[31] ),
        .I3(exmem_memfunct[2]),
        .I4(\read_ptr_reg[2] [4]),
        .I5(\wb_wdata[6]_i_7_n_1 ),
        .O(\wb_wdata[4]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000AAFCAAAA)) 
    \wb_wdata[5]_i_1 
       (.I0(exmem_wdata[5]),
        .I1(\wb_wdata[5]_i_2_n_1 ),
        .I2(\wb_wdata[5]_i_3_n_1 ),
        .I3(\wb_wdata_reg[0] [0]),
        .I4(\wb_wdata_reg[0] [1]),
        .I5(rst),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \wb_wdata[5]_i_2 
       (.I0(\wb_wdata[6]_i_4_n_1 ),
        .I1(\read_ptr_reg[2] [13]),
        .I2(\wb_wdata[6]_i_5_n_1 ),
        .I3(\read_ptr_reg[2] [29]),
        .I4(\read_ptr_reg[2] [21]),
        .I5(\wb_wdata[6]_i_6_n_1 ),
        .O(\wb_wdata[5]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF888088808880)) 
    \wb_wdata[5]_i_3 
       (.I0(exmem_wdata[5]),
        .I1(exmem_memfunct[1]),
        .I2(\wb_wdata_reg[31] ),
        .I3(exmem_memfunct[2]),
        .I4(\read_ptr_reg[2] [5]),
        .I5(\wb_wdata[6]_i_7_n_1 ),
        .O(\wb_wdata[5]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000AAFCAAAA)) 
    \wb_wdata[6]_i_1 
       (.I0(exmem_wdata[6]),
        .I1(\wb_wdata[6]_i_2_n_1 ),
        .I2(\wb_wdata[6]_i_3_n_1 ),
        .I3(\wb_wdata_reg[0] [0]),
        .I4(\wb_wdata_reg[0] [1]),
        .I5(rst),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \wb_wdata[6]_i_2 
       (.I0(\wb_wdata[6]_i_4_n_1 ),
        .I1(\read_ptr_reg[2] [14]),
        .I2(\wb_wdata[6]_i_5_n_1 ),
        .I3(\read_ptr_reg[2] [30]),
        .I4(\read_ptr_reg[2] [22]),
        .I5(\wb_wdata[6]_i_6_n_1 ),
        .O(\wb_wdata[6]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF888088808880)) 
    \wb_wdata[6]_i_3 
       (.I0(exmem_wdata[6]),
        .I1(exmem_memfunct[1]),
        .I2(\wb_wdata_reg[31] ),
        .I3(exmem_memfunct[2]),
        .I4(\read_ptr_reg[2] [6]),
        .I5(\wb_wdata[6]_i_7_n_1 ),
        .O(\wb_wdata[6]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \wb_wdata[6]_i_4 
       (.I0(\wb_wdata_reg[31] ),
        .I1(\buffer_reg[0][7] [0]),
        .I2(exmem_memfunct[1]),
        .I3(\buffer_reg[0][7] [1]),
        .O(\wb_wdata[6]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \wb_wdata[6]_i_5 
       (.I0(\wb_wdata_reg[31] ),
        .I1(\buffer_reg[0][7] [0]),
        .I2(exmem_memfunct[1]),
        .I3(\buffer_reg[0][7] [1]),
        .O(\wb_wdata[6]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h0000CA44)) 
    \wb_wdata[6]_i_6 
       (.I0(\buffer_reg[0][7] [0]),
        .I1(\buffer_reg[0][7] [1]),
        .I2(exmem_memfunct[2]),
        .I3(\wb_wdata_reg[31] ),
        .I4(exmem_memfunct[1]),
        .O(\wb_wdata[6]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h02064257)) 
    \wb_wdata[6]_i_7 
       (.I0(exmem_memfunct[1]),
        .I1(\wb_wdata_reg[31] ),
        .I2(exmem_memfunct[2]),
        .I3(\buffer_reg[0][7] [0]),
        .I4(\buffer_reg[0][7] [1]),
        .O(\wb_wdata[6]_i_7_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \wb_wdata[7]_i_1 
       (.I0(\wb_wdata[31]_i_4_n_1 ),
        .I1(exmem_wdata[7]),
        .I2(\wb_wdata[7]_i_2_n_1 ),
        .I3(\read_ptr_reg[2] [23]),
        .I4(\wb_wdata[7]_i_3_n_1 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0808080000000800)) 
    \wb_wdata[7]_i_2 
       (.I0(\wb_wdata_reg[31] ),
        .I1(\wb_wdata[14]_i_5_n_1 ),
        .I2(exmem_memfunct[1]),
        .I3(\buffer_reg[0][7] [0]),
        .I4(exmem_memfunct[2]),
        .I5(\buffer_reg[0][7] [1]),
        .O(\wb_wdata[7]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \wb_wdata[7]_i_3 
       (.I0(\wb_wdata[15]_i_3_n_1 ),
        .I1(\mem_addr_reg[1]_0 ),
        .I2(\read_ptr_reg[2] [7]),
        .I3(\wb_wdata[14]_i_4_n_1 ),
        .O(\wb_wdata[7]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \wb_wdata[8]_i_1 
       (.I0(\wb_wdata[8]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [8]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \wb_wdata[8]_i_2 
       (.I0(\read_ptr_reg[2] [24]),
        .I1(\wb_wdata[7]_i_2_n_1 ),
        .I2(exmem_wdata[8]),
        .I3(\wb_wdata[31]_i_4_n_1 ),
        .O(\wb_wdata[8]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \wb_wdata[9]_i_1 
       (.I0(\wb_wdata[9]_i_2_n_1 ),
        .I1(\wb_wdata[14]_i_3_n_1 ),
        .I2(\wb_wdata[14]_i_4_n_1 ),
        .I3(\read_ptr_reg[2] [9]),
        .O(D[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    \wb_wdata[9]_i_2 
       (.I0(\read_ptr_reg[2] [25]),
        .I1(\wb_wdata[7]_i_2_n_1 ),
        .I2(exmem_wdata[9]),
        .I3(\wb_wdata[31]_i_4_n_1 ),
        .O(\wb_wdata[9]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFF45)) 
    \write_data_mask_reg[0]_i_1 
       (.I0(\buffer_reg[0][7] [1]),
        .I1(\wb_wdata_reg[31] ),
        .I2(\buffer_reg[0][7] [0]),
        .I3(exmem_memfunct[1]),
        .O(\buffer_reg[0][3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFF54)) 
    \write_data_mask_reg[1]_i_1 
       (.I0(\buffer_reg[0][7] [1]),
        .I1(\buffer_reg[0][7] [0]),
        .I2(\wb_wdata_reg[31] ),
        .I3(exmem_memfunct[1]),
        .O(\buffer_reg[0][3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFF8A)) 
    \write_data_mask_reg[2]_i_1 
       (.I0(\buffer_reg[0][7] [1]),
        .I1(\wb_wdata_reg[31] ),
        .I2(\buffer_reg[0][7] [0]),
        .I3(exmem_memfunct[1]),
        .O(\buffer_reg[0][3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFA8)) 
    \write_data_mask_reg[3]_i_1 
       (.I0(\buffer_reg[0][7] [1]),
        .I1(\buffer_reg[0][7] [0]),
        .I2(\wb_wdata_reg[31] ),
        .I3(exmem_memfunct[1]),
        .O(\buffer_reg[0][3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hAAFB0000)) 
    \write_data_value_reg[0]_i_1 
       (.I0(exmem_memfunct[1]),
        .I1(\buffer_reg[0][7] [0]),
        .I2(\wb_wdata_reg[31] ),
        .I3(\buffer_reg[0][7] [1]),
        .I4(exmem_wdata[0]),
        .O(\buffer_reg[0][7]_0 [0]));
  LUT6 #(
    .INIT(64'hA0A0A0A0AAACAAAA)) 
    \write_data_value_reg[10]_i_1 
       (.I0(exmem_wdata[10]),
        .I1(exmem_wdata[2]),
        .I2(exmem_memfunct[1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(\buffer_reg[0][7] [1]),
        .O(\buffer_reg[0][7]_0 [10]));
  LUT6 #(
    .INIT(64'hA0A0A0A0AAACAAAA)) 
    \write_data_value_reg[11]_i_1 
       (.I0(exmem_wdata[11]),
        .I1(exmem_wdata[3]),
        .I2(exmem_memfunct[1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(\buffer_reg[0][7] [1]),
        .O(\buffer_reg[0][7]_0 [11]));
  LUT6 #(
    .INIT(64'hA0A0A0A0AAACAAAA)) 
    \write_data_value_reg[12]_i_1 
       (.I0(exmem_wdata[12]),
        .I1(exmem_wdata[4]),
        .I2(exmem_memfunct[1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(\buffer_reg[0][7] [1]),
        .O(\buffer_reg[0][7]_0 [12]));
  LUT6 #(
    .INIT(64'hA0A0A0A0AAACAAAA)) 
    \write_data_value_reg[13]_i_1 
       (.I0(exmem_wdata[13]),
        .I1(exmem_wdata[5]),
        .I2(exmem_memfunct[1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(\buffer_reg[0][7] [1]),
        .O(\buffer_reg[0][7]_0 [13]));
  LUT6 #(
    .INIT(64'hA0A0A0A0AAACAAAA)) 
    \write_data_value_reg[14]_i_1 
       (.I0(exmem_wdata[14]),
        .I1(exmem_wdata[6]),
        .I2(exmem_memfunct[1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(\buffer_reg[0][7] [1]),
        .O(\buffer_reg[0][7]_0 [14]));
  LUT6 #(
    .INIT(64'hA0A0A0A0AAACAAAA)) 
    \write_data_value_reg[15]_i_1 
       (.I0(exmem_wdata[15]),
        .I1(exmem_wdata[7]),
        .I2(exmem_memfunct[1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(\buffer_reg[0][7] [1]),
        .O(\buffer_reg[0][7]_0 [15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \write_data_value_reg[16]_i_1 
       (.I0(\write_data_value_reg[31]_i_3_n_1 ),
        .I1(exmem_wdata[8]),
        .I2(\write_data_value_reg[23]_i_2_n_1 ),
        .I3(exmem_wdata[0]),
        .I4(exmem_wdata[16]),
        .I5(\buffer_reg[0][3] [0]),
        .O(\buffer_reg[0][7]_0 [16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \write_data_value_reg[17]_i_1 
       (.I0(\write_data_value_reg[31]_i_3_n_1 ),
        .I1(exmem_wdata[9]),
        .I2(\write_data_value_reg[23]_i_2_n_1 ),
        .I3(exmem_wdata[1]),
        .I4(exmem_wdata[17]),
        .I5(\buffer_reg[0][3] [0]),
        .O(\buffer_reg[0][7]_0 [17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \write_data_value_reg[18]_i_1 
       (.I0(\write_data_value_reg[31]_i_3_n_1 ),
        .I1(exmem_wdata[10]),
        .I2(\write_data_value_reg[23]_i_2_n_1 ),
        .I3(exmem_wdata[2]),
        .I4(exmem_wdata[18]),
        .I5(\buffer_reg[0][3] [0]),
        .O(\buffer_reg[0][7]_0 [18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \write_data_value_reg[19]_i_1 
       (.I0(\write_data_value_reg[31]_i_3_n_1 ),
        .I1(exmem_wdata[11]),
        .I2(\write_data_value_reg[23]_i_2_n_1 ),
        .I3(exmem_wdata[3]),
        .I4(exmem_wdata[19]),
        .I5(\buffer_reg[0][3] [0]),
        .O(\buffer_reg[0][7]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hAAFB0000)) 
    \write_data_value_reg[1]_i_1 
       (.I0(exmem_memfunct[1]),
        .I1(\buffer_reg[0][7] [0]),
        .I2(\wb_wdata_reg[31] ),
        .I3(\buffer_reg[0][7] [1]),
        .I4(exmem_wdata[1]),
        .O(\buffer_reg[0][7]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \write_data_value_reg[20]_i_1 
       (.I0(\write_data_value_reg[31]_i_3_n_1 ),
        .I1(exmem_wdata[12]),
        .I2(\write_data_value_reg[23]_i_2_n_1 ),
        .I3(exmem_wdata[4]),
        .I4(exmem_wdata[20]),
        .I5(\buffer_reg[0][3] [0]),
        .O(\buffer_reg[0][7]_0 [20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \write_data_value_reg[21]_i_1 
       (.I0(\write_data_value_reg[31]_i_3_n_1 ),
        .I1(exmem_wdata[13]),
        .I2(\write_data_value_reg[23]_i_2_n_1 ),
        .I3(exmem_wdata[5]),
        .I4(exmem_wdata[21]),
        .I5(\buffer_reg[0][3] [0]),
        .O(\buffer_reg[0][7]_0 [21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \write_data_value_reg[22]_i_1 
       (.I0(\write_data_value_reg[31]_i_3_n_1 ),
        .I1(exmem_wdata[14]),
        .I2(\write_data_value_reg[23]_i_2_n_1 ),
        .I3(exmem_wdata[6]),
        .I4(exmem_wdata[22]),
        .I5(\buffer_reg[0][3] [0]),
        .O(\buffer_reg[0][7]_0 [22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \write_data_value_reg[23]_i_1 
       (.I0(\write_data_value_reg[31]_i_3_n_1 ),
        .I1(exmem_wdata[15]),
        .I2(\write_data_value_reg[23]_i_2_n_1 ),
        .I3(exmem_wdata[7]),
        .I4(exmem_wdata[23]),
        .I5(\buffer_reg[0][3] [0]),
        .O(\buffer_reg[0][7]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h008A)) 
    \write_data_value_reg[23]_i_2 
       (.I0(\buffer_reg[0][7] [1]),
        .I1(\wb_wdata_reg[31] ),
        .I2(\buffer_reg[0][7] [0]),
        .I3(exmem_memfunct[1]),
        .O(\write_data_value_reg[23]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \write_data_value_reg[24]_i_1 
       (.I0(\write_data_value_reg[24]_i_2_n_1 ),
        .I1(\write_data_value_reg[31]_i_3_n_1 ),
        .I2(exmem_wdata[16]),
        .I3(\buffer_reg[0][3] [0]),
        .I4(exmem_wdata[24]),
        .O(\buffer_reg[0][7]_0 [24]));
  LUT6 #(
    .INIT(64'h00000000C0A0C0C0)) 
    \write_data_value_reg[24]_i_2 
       (.I0(exmem_wdata[0]),
        .I1(exmem_wdata[8]),
        .I2(\buffer_reg[0][7] [1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(exmem_memfunct[1]),
        .O(\write_data_value_reg[24]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \write_data_value_reg[25]_i_1 
       (.I0(\write_data_value_reg[25]_i_2_n_1 ),
        .I1(\write_data_value_reg[31]_i_3_n_1 ),
        .I2(exmem_wdata[17]),
        .I3(\buffer_reg[0][3] [0]),
        .I4(exmem_wdata[25]),
        .O(\buffer_reg[0][7]_0 [25]));
  LUT6 #(
    .INIT(64'h00000000C0A0C0C0)) 
    \write_data_value_reg[25]_i_2 
       (.I0(exmem_wdata[1]),
        .I1(exmem_wdata[9]),
        .I2(\buffer_reg[0][7] [1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(exmem_memfunct[1]),
        .O(\write_data_value_reg[25]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \write_data_value_reg[26]_i_1 
       (.I0(\write_data_value_reg[26]_i_2_n_1 ),
        .I1(\write_data_value_reg[31]_i_3_n_1 ),
        .I2(exmem_wdata[18]),
        .I3(\buffer_reg[0][3] [0]),
        .I4(exmem_wdata[26]),
        .O(\buffer_reg[0][7]_0 [26]));
  LUT6 #(
    .INIT(64'h00000000C0A0C0C0)) 
    \write_data_value_reg[26]_i_2 
       (.I0(exmem_wdata[2]),
        .I1(exmem_wdata[10]),
        .I2(\buffer_reg[0][7] [1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(exmem_memfunct[1]),
        .O(\write_data_value_reg[26]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \write_data_value_reg[27]_i_1 
       (.I0(\write_data_value_reg[27]_i_2_n_1 ),
        .I1(\write_data_value_reg[31]_i_3_n_1 ),
        .I2(exmem_wdata[19]),
        .I3(\buffer_reg[0][3] [0]),
        .I4(exmem_wdata[27]),
        .O(\buffer_reg[0][7]_0 [27]));
  LUT6 #(
    .INIT(64'h00000000C0A0C0C0)) 
    \write_data_value_reg[27]_i_2 
       (.I0(exmem_wdata[3]),
        .I1(exmem_wdata[11]),
        .I2(\buffer_reg[0][7] [1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(exmem_memfunct[1]),
        .O(\write_data_value_reg[27]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \write_data_value_reg[28]_i_1 
       (.I0(\write_data_value_reg[28]_i_2_n_1 ),
        .I1(\write_data_value_reg[31]_i_3_n_1 ),
        .I2(exmem_wdata[20]),
        .I3(\buffer_reg[0][3] [0]),
        .I4(exmem_wdata[28]),
        .O(\buffer_reg[0][7]_0 [28]));
  LUT6 #(
    .INIT(64'h00000000C0A0C0C0)) 
    \write_data_value_reg[28]_i_2 
       (.I0(exmem_wdata[4]),
        .I1(exmem_wdata[12]),
        .I2(\buffer_reg[0][7] [1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(exmem_memfunct[1]),
        .O(\write_data_value_reg[28]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \write_data_value_reg[29]_i_1 
       (.I0(\write_data_value_reg[29]_i_2_n_1 ),
        .I1(\write_data_value_reg[31]_i_3_n_1 ),
        .I2(exmem_wdata[21]),
        .I3(\buffer_reg[0][3] [0]),
        .I4(exmem_wdata[29]),
        .O(\buffer_reg[0][7]_0 [29]));
  LUT6 #(
    .INIT(64'h00000000C0A0C0C0)) 
    \write_data_value_reg[29]_i_2 
       (.I0(exmem_wdata[5]),
        .I1(exmem_wdata[13]),
        .I2(\buffer_reg[0][7] [1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(exmem_memfunct[1]),
        .O(\write_data_value_reg[29]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hAAFB0000)) 
    \write_data_value_reg[2]_i_1 
       (.I0(exmem_memfunct[1]),
        .I1(\buffer_reg[0][7] [0]),
        .I2(\wb_wdata_reg[31] ),
        .I3(\buffer_reg[0][7] [1]),
        .I4(exmem_wdata[2]),
        .O(\buffer_reg[0][7]_0 [2]));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \write_data_value_reg[30]_i_1 
       (.I0(\write_data_value_reg[30]_i_2_n_1 ),
        .I1(\write_data_value_reg[31]_i_3_n_1 ),
        .I2(exmem_wdata[22]),
        .I3(\buffer_reg[0][3] [0]),
        .I4(exmem_wdata[30]),
        .O(\buffer_reg[0][7]_0 [30]));
  LUT6 #(
    .INIT(64'h00000000C0A0C0C0)) 
    \write_data_value_reg[30]_i_2 
       (.I0(exmem_wdata[6]),
        .I1(exmem_wdata[14]),
        .I2(\buffer_reg[0][7] [1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(exmem_memfunct[1]),
        .O(\write_data_value_reg[30]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \write_data_value_reg[31]_i_1 
       (.I0(\write_data_value_reg[31]_i_2_n_1 ),
        .I1(\write_data_value_reg[31]_i_3_n_1 ),
        .I2(exmem_wdata[23]),
        .I3(\buffer_reg[0][3] [0]),
        .I4(exmem_wdata[31]),
        .O(\buffer_reg[0][7]_0 [31]));
  LUT6 #(
    .INIT(64'h00000000C0A0C0C0)) 
    \write_data_value_reg[31]_i_2 
       (.I0(exmem_wdata[7]),
        .I1(exmem_wdata[15]),
        .I2(\buffer_reg[0][7] [1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(exmem_memfunct[1]),
        .O(\write_data_value_reg[31]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \write_data_value_reg[31]_i_3 
       (.I0(exmem_memfunct[1]),
        .I1(\wb_wdata_reg[31] ),
        .I2(\buffer_reg[0][7] [0]),
        .I3(\buffer_reg[0][7] [1]),
        .O(\write_data_value_reg[31]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hAAFB0000)) 
    \write_data_value_reg[3]_i_1 
       (.I0(exmem_memfunct[1]),
        .I1(\buffer_reg[0][7] [0]),
        .I2(\wb_wdata_reg[31] ),
        .I3(\buffer_reg[0][7] [1]),
        .I4(exmem_wdata[3]),
        .O(\buffer_reg[0][7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hAAFB0000)) 
    \write_data_value_reg[4]_i_1 
       (.I0(exmem_memfunct[1]),
        .I1(\buffer_reg[0][7] [0]),
        .I2(\wb_wdata_reg[31] ),
        .I3(\buffer_reg[0][7] [1]),
        .I4(exmem_wdata[4]),
        .O(\buffer_reg[0][7]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hAAFB0000)) 
    \write_data_value_reg[5]_i_1 
       (.I0(exmem_memfunct[1]),
        .I1(\buffer_reg[0][7] [0]),
        .I2(\wb_wdata_reg[31] ),
        .I3(\buffer_reg[0][7] [1]),
        .I4(exmem_wdata[5]),
        .O(\buffer_reg[0][7]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hAAFB0000)) 
    \write_data_value_reg[6]_i_1 
       (.I0(exmem_memfunct[1]),
        .I1(\buffer_reg[0][7] [0]),
        .I2(\wb_wdata_reg[31] ),
        .I3(\buffer_reg[0][7] [1]),
        .I4(exmem_wdata[6]),
        .O(\buffer_reg[0][7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hAAFB0000)) 
    \write_data_value_reg[7]_i_1 
       (.I0(exmem_memfunct[1]),
        .I1(\buffer_reg[0][7] [0]),
        .I2(\wb_wdata_reg[31] ),
        .I3(\buffer_reg[0][7] [1]),
        .I4(exmem_wdata[7]),
        .O(\buffer_reg[0][7]_0 [7]));
  LUT6 #(
    .INIT(64'hA0A0A0A0AAACAAAA)) 
    \write_data_value_reg[8]_i_1 
       (.I0(exmem_wdata[8]),
        .I1(exmem_wdata[0]),
        .I2(exmem_memfunct[1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(\buffer_reg[0][7] [1]),
        .O(\buffer_reg[0][7]_0 [8]));
  LUT6 #(
    .INIT(64'hA0A0A0A0AAACAAAA)) 
    \write_data_value_reg[9]_i_1 
       (.I0(exmem_wdata[9]),
        .I1(exmem_wdata[1]),
        .I2(exmem_memfunct[1]),
        .I3(\wb_wdata_reg[31] ),
        .I4(\buffer_reg[0][7] [0]),
        .I5(\buffer_reg[0][7] [1]),
        .O(\buffer_reg[0][7]_0 [9]));
endmodule

module fifo
   (uart_receivable,
    \wb_wdata_reg[31] ,
    D,
    \id_inst_reg[24] ,
    \cur_disp_reg[2] ,
    \cur_disp_reg[1] ,
    \cur_disp_reg[0] ,
    recv_write_flag,
    \id_inst_reg[7] ,
    recv_write_flag_reg,
    rst,
    mem_data_optype,
    out,
    Q,
    \memop_o_reg[1] ,
    recv_parity_reg,
    Rx_IBUF,
    ce_reg,
    \cur_disp_reg[2]_0 ,
    uart_sendable,
    \cur_disp_reg[0]_0 ,
    \cur_disp_reg[1]_0 ,
    \cur_disp_reg[0]_1 ,
    \cur_disp_reg[0]_2 ,
    CO,
    \FSM_sequential_recv_status_reg[2] ,
    clk_out1,
    rst_BUFG,
    \recv_write_data_reg[7] );
  output uart_receivable;
  output [3:0]\wb_wdata_reg[31] ;
  output [0:0]D;
  output [3:0]\id_inst_reg[24] ;
  output \cur_disp_reg[2] ;
  output \cur_disp_reg[1] ;
  output \cur_disp_reg[0] ;
  output recv_write_flag;
  output [7:0]\id_inst_reg[7] ;
  input recv_write_flag_reg;
  input rst;
  input mem_data_optype;
  input [2:0]out;
  input [2:0]Q;
  input [1:0]\memop_o_reg[1] ;
  input recv_parity_reg;
  input Rx_IBUF;
  input ce_reg;
  input \cur_disp_reg[2]_0 ;
  input uart_sendable;
  input \cur_disp_reg[0]_0 ;
  input \cur_disp_reg[1]_0 ;
  input \cur_disp_reg[0]_1 ;
  input \cur_disp_reg[0]_2 ;
  input [0:0]CO;
  input [2:0]\FSM_sequential_recv_status_reg[2] ;
  input clk_out1;
  input rst_BUFG;
  input [7:0]\recv_write_data_reg[7] ;

  wire [0:0]CO;
  wire [0:0]D;
  wire \FSM_sequential_next_status_reg[2]_i_4_n_1 ;
  wire [2:0]\FSM_sequential_recv_status_reg[2] ;
  wire [2:0]Q;
  wire Rx_IBUF;
  wire \buffer[0][7]_i_1__0_n_1 ;
  wire \buffer[1][7]_i_1__0_n_1 ;
  wire \buffer[2][7]_i_1__0_n_1 ;
  wire \buffer[3][7]_i_1__0_n_1 ;
  wire \buffer[4][7]_i_1__0_n_1 ;
  wire \buffer[5][7]_i_1__0_n_1 ;
  wire \buffer[6][7]_i_1__0_n_1 ;
  wire \buffer[7][7]_i_1__0_n_1 ;
  wire [7:0]\buffer_reg[0]_7 ;
  wire [7:0]\buffer_reg[1]_6 ;
  wire [7:0]\buffer_reg[2]_5 ;
  wire [7:0]\buffer_reg[3]_4 ;
  wire [7:0]\buffer_reg[4]_3 ;
  wire [7:0]\buffer_reg[5]_2 ;
  wire [7:0]\buffer_reg[6]_1 ;
  wire [7:0]\buffer_reg[7]_0 ;
  wire buffer_size;
  wire \buffer_size[0]_i_1_n_1 ;
  wire \buffer_size[1]_i_1_n_1 ;
  wire \buffer_size[2]_i_1_n_1 ;
  wire \buffer_size[3]_i_2_n_1 ;
  wire [3:0]buffer_size_reg__0;
  wire ce_reg;
  wire clk_out1;
  wire \cur_disp_reg[0] ;
  wire \cur_disp_reg[0]_0 ;
  wire \cur_disp_reg[0]_1 ;
  wire \cur_disp_reg[0]_2 ;
  wire \cur_disp_reg[1] ;
  wire \cur_disp_reg[1]_0 ;
  wire \cur_disp_reg[2] ;
  wire \cur_disp_reg[2]_0 ;
  wire [3:0]\id_inst_reg[24] ;
  wire [7:0]\id_inst_reg[7] ;
  wire \inst_value_reg[24]_i_2_n_1 ;
  wire \inst_value_reg[24]_i_3_n_1 ;
  wire \inst_value_reg[25]_i_2_n_1 ;
  wire \inst_value_reg[25]_i_3_n_1 ;
  wire \inst_value_reg[26]_i_2_n_1 ;
  wire \inst_value_reg[26]_i_3_n_1 ;
  wire \inst_value_reg[27]_i_2_n_1 ;
  wire \inst_value_reg[27]_i_3_n_1 ;
  wire \inst_value_reg[28]_i_2_n_1 ;
  wire \inst_value_reg[28]_i_3_n_1 ;
  wire \inst_value_reg[29]_i_2_n_1 ;
  wire \inst_value_reg[29]_i_3_n_1 ;
  wire \inst_value_reg[30]_i_2_n_1 ;
  wire \inst_value_reg[30]_i_3_n_1 ;
  wire \inst_value_reg[31]_i_3_n_1 ;
  wire \inst_value_reg[31]_i_4_n_1 ;
  wire mem_data_optype;
  wire [1:0]\memop_o_reg[1] ;
  wire [2:0]out;
  wire p_1_in;
  wire \read_data_value_reg[31]_i_2_n_1 ;
  wire [2:0]read_ptr;
  wire \read_ptr[0]_i_1_n_1 ;
  wire \read_ptr[1]_i_1_n_1 ;
  wire \read_ptr[2]_i_1_n_1 ;
  wire recv_parity_reg;
  wire [7:0]\recv_write_data_reg[7] ;
  wire recv_write_flag;
  wire recv_write_flag0;
  wire recv_write_flag_reg;
  wire rst;
  wire rst_BUFG;
  wire uart_receivable;
  wire uart_sendable;
  wire [3:0]\wb_wdata_reg[31] ;
  wire \write_ptr[0]_i_1_n_1 ;
  wire \write_ptr[1]_i_1_n_1 ;
  wire \write_ptr[2]_i_1_n_1 ;
  wire \write_ptr[2]_i_2__0_n_1 ;
  wire \write_ptr_reg_n_1_[0] ;
  wire \write_ptr_reg_n_1_[1] ;
  wire \write_ptr_reg_n_1_[2] ;

  LUT6 #(
    .INIT(64'hABAB00FFABAB0000)) 
    \FSM_sequential_next_status_reg[2]_i_1 
       (.I0(out[2]),
        .I1(ce_reg),
        .I2(\FSM_sequential_next_status_reg[2]_i_4_n_1 ),
        .I3(\cur_disp_reg[2]_0 ),
        .I4(out[0]),
        .I5(out[1]),
        .O(D));
  LUT5 #(
    .INIT(32'hDDDFFFDF)) 
    \FSM_sequential_next_status_reg[2]_i_4 
       (.I0(out[1]),
        .I1(Q[2]),
        .I2(uart_receivable),
        .I3(mem_data_optype),
        .I4(uart_sendable),
        .O(\FSM_sequential_next_status_reg[2]_i_4_n_1 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \buffer[0][7]_i_1__0 
       (.I0(\write_ptr_reg_n_1_[2] ),
        .I1(\write_ptr_reg_n_1_[0] ),
        .I2(\write_ptr_reg_n_1_[1] ),
        .I3(\write_ptr[2]_i_2__0_n_1 ),
        .O(\buffer[0][7]_i_1__0_n_1 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \buffer[1][7]_i_1__0 
       (.I0(\write_ptr_reg_n_1_[2] ),
        .I1(\write_ptr_reg_n_1_[0] ),
        .I2(\write_ptr_reg_n_1_[1] ),
        .I3(\write_ptr[2]_i_2__0_n_1 ),
        .O(\buffer[1][7]_i_1__0_n_1 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \buffer[2][7]_i_1__0 
       (.I0(\write_ptr_reg_n_1_[0] ),
        .I1(\write_ptr_reg_n_1_[1] ),
        .I2(\write_ptr_reg_n_1_[2] ),
        .I3(\write_ptr[2]_i_2__0_n_1 ),
        .O(\buffer[2][7]_i_1__0_n_1 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \buffer[3][7]_i_1__0 
       (.I0(\write_ptr_reg_n_1_[2] ),
        .I1(\write_ptr_reg_n_1_[1] ),
        .I2(\write_ptr_reg_n_1_[0] ),
        .I3(\write_ptr[2]_i_2__0_n_1 ),
        .O(\buffer[3][7]_i_1__0_n_1 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \buffer[4][7]_i_1__0 
       (.I0(\write_ptr_reg_n_1_[0] ),
        .I1(\write_ptr_reg_n_1_[2] ),
        .I2(\write_ptr_reg_n_1_[1] ),
        .I3(\write_ptr[2]_i_2__0_n_1 ),
        .O(\buffer[4][7]_i_1__0_n_1 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \buffer[5][7]_i_1__0 
       (.I0(\write_ptr_reg_n_1_[2] ),
        .I1(\write_ptr_reg_n_1_[0] ),
        .I2(\write_ptr_reg_n_1_[1] ),
        .I3(\write_ptr[2]_i_2__0_n_1 ),
        .O(\buffer[5][7]_i_1__0_n_1 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \buffer[6][7]_i_1__0 
       (.I0(\write_ptr_reg_n_1_[0] ),
        .I1(\write_ptr_reg_n_1_[1] ),
        .I2(\write_ptr_reg_n_1_[2] ),
        .I3(\write_ptr[2]_i_2__0_n_1 ),
        .O(\buffer[6][7]_i_1__0_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \buffer[7][7]_i_1__0 
       (.I0(\write_ptr_reg_n_1_[1] ),
        .I1(\write_ptr_reg_n_1_[0] ),
        .I2(\write_ptr_reg_n_1_[2] ),
        .I3(\write_ptr[2]_i_2__0_n_1 ),
        .O(\buffer[7][7]_i_1__0_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][0] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [0]),
        .Q(\buffer_reg[0]_7 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][1] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [1]),
        .Q(\buffer_reg[0]_7 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][2] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [2]),
        .Q(\buffer_reg[0]_7 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][3] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [3]),
        .Q(\buffer_reg[0]_7 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][4] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [4]),
        .Q(\buffer_reg[0]_7 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][5] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [5]),
        .Q(\buffer_reg[0]_7 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][6] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [6]),
        .Q(\buffer_reg[0]_7 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][7] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [7]),
        .Q(\buffer_reg[0]_7 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][0] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [0]),
        .Q(\buffer_reg[1]_6 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][1] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [1]),
        .Q(\buffer_reg[1]_6 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][2] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [2]),
        .Q(\buffer_reg[1]_6 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][3] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [3]),
        .Q(\buffer_reg[1]_6 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][4] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [4]),
        .Q(\buffer_reg[1]_6 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][5] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [5]),
        .Q(\buffer_reg[1]_6 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][6] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [6]),
        .Q(\buffer_reg[1]_6 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][7] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [7]),
        .Q(\buffer_reg[1]_6 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][0] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [0]),
        .Q(\buffer_reg[2]_5 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][1] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [1]),
        .Q(\buffer_reg[2]_5 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][2] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [2]),
        .Q(\buffer_reg[2]_5 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][3] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [3]),
        .Q(\buffer_reg[2]_5 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][4] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [4]),
        .Q(\buffer_reg[2]_5 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][5] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [5]),
        .Q(\buffer_reg[2]_5 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][6] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [6]),
        .Q(\buffer_reg[2]_5 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][7] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [7]),
        .Q(\buffer_reg[2]_5 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][0] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [0]),
        .Q(\buffer_reg[3]_4 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][1] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [1]),
        .Q(\buffer_reg[3]_4 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][2] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [2]),
        .Q(\buffer_reg[3]_4 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][3] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [3]),
        .Q(\buffer_reg[3]_4 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][4] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [4]),
        .Q(\buffer_reg[3]_4 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][5] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [5]),
        .Q(\buffer_reg[3]_4 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][6] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [6]),
        .Q(\buffer_reg[3]_4 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][7] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [7]),
        .Q(\buffer_reg[3]_4 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][0] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [0]),
        .Q(\buffer_reg[4]_3 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][1] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [1]),
        .Q(\buffer_reg[4]_3 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][2] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [2]),
        .Q(\buffer_reg[4]_3 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][3] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [3]),
        .Q(\buffer_reg[4]_3 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][4] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [4]),
        .Q(\buffer_reg[4]_3 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][5] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [5]),
        .Q(\buffer_reg[4]_3 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][6] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [6]),
        .Q(\buffer_reg[4]_3 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][7] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [7]),
        .Q(\buffer_reg[4]_3 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][0] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [0]),
        .Q(\buffer_reg[5]_2 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][1] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [1]),
        .Q(\buffer_reg[5]_2 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][2] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [2]),
        .Q(\buffer_reg[5]_2 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][3] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [3]),
        .Q(\buffer_reg[5]_2 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][4] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [4]),
        .Q(\buffer_reg[5]_2 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][5] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [5]),
        .Q(\buffer_reg[5]_2 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][6] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [6]),
        .Q(\buffer_reg[5]_2 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][7] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [7]),
        .Q(\buffer_reg[5]_2 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][0] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [0]),
        .Q(\buffer_reg[6]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][1] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [1]),
        .Q(\buffer_reg[6]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][2] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [2]),
        .Q(\buffer_reg[6]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][3] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [3]),
        .Q(\buffer_reg[6]_1 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][4] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [4]),
        .Q(\buffer_reg[6]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][5] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [5]),
        .Q(\buffer_reg[6]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][6] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [6]),
        .Q(\buffer_reg[6]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][7] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [7]),
        .Q(\buffer_reg[6]_1 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][0] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [0]),
        .Q(\buffer_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][1] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [1]),
        .Q(\buffer_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][2] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [2]),
        .Q(\buffer_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][3] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [3]),
        .Q(\buffer_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][4] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [4]),
        .Q(\buffer_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][5] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [5]),
        .Q(\buffer_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][6] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [6]),
        .Q(\buffer_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][7] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1__0_n_1 ),
        .CLR(rst_BUFG),
        .D(\recv_write_data_reg[7] [7]),
        .Q(\buffer_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \buffer_size[0]_i_1 
       (.I0(buffer_size_reg__0[0]),
        .O(\buffer_size[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \buffer_size[1]_i_1 
       (.I0(buffer_size_reg__0[1]),
        .I1(buffer_size_reg__0[0]),
        .I2(p_1_in),
        .O(\buffer_size[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA96A)) 
    \buffer_size[2]_i_1 
       (.I0(buffer_size_reg__0[2]),
        .I1(buffer_size_reg__0[1]),
        .I2(buffer_size_reg__0[0]),
        .I3(p_1_in),
        .O(\buffer_size[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h5555555DAAAAAAA2)) 
    \buffer_size[3]_i_1__0 
       (.I0(recv_write_flag_reg),
        .I1(buffer_size_reg__0[3]),
        .I2(buffer_size_reg__0[1]),
        .I3(buffer_size_reg__0[2]),
        .I4(buffer_size_reg__0[0]),
        .I5(p_1_in),
        .O(buffer_size));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAA96AAA)) 
    \buffer_size[3]_i_2 
       (.I0(buffer_size_reg__0[3]),
        .I1(buffer_size_reg__0[2]),
        .I2(buffer_size_reg__0[1]),
        .I3(buffer_size_reg__0[0]),
        .I4(p_1_in),
        .O(\buffer_size[3]_i_2_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_size_reg[0] 
       (.C(clk_out1),
        .CE(buffer_size),
        .CLR(rst_BUFG),
        .D(\buffer_size[0]_i_1_n_1 ),
        .Q(buffer_size_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_size_reg[1] 
       (.C(clk_out1),
        .CE(buffer_size),
        .CLR(rst_BUFG),
        .D(\buffer_size[1]_i_1_n_1 ),
        .Q(buffer_size_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_size_reg[2] 
       (.C(clk_out1),
        .CE(buffer_size),
        .CLR(rst_BUFG),
        .D(\buffer_size[2]_i_1_n_1 ),
        .Q(buffer_size_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_size_reg[3] 
       (.C(clk_out1),
        .CE(buffer_size),
        .CLR(rst_BUFG),
        .D(\buffer_size[3]_i_2_n_1 ),
        .Q(buffer_size_reg__0[3]));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \inst_value_reg[15]_i_1 
       (.I0(\cur_disp_reg[0]_1 ),
        .I1(uart_receivable),
        .I2(Q[2]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(out[0]),
        .O(\id_inst_reg[24] [1]));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \inst_value_reg[23]_i_1 
       (.I0(\cur_disp_reg[1]_0 ),
        .I1(uart_receivable),
        .I2(Q[2]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(out[0]),
        .O(\id_inst_reg[24] [2]));
  MUXF7 \inst_value_reg[24]_i_1 
       (.I0(\inst_value_reg[24]_i_2_n_1 ),
        .I1(\inst_value_reg[24]_i_3_n_1 ),
        .O(\id_inst_reg[7] [0]),
        .S(read_ptr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[24]_i_2 
       (.I0(\buffer_reg[3]_4 [0]),
        .I1(\buffer_reg[2]_5 [0]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[1]_6 [0]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[0]_7 [0]),
        .O(\inst_value_reg[24]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[24]_i_3 
       (.I0(\buffer_reg[7]_0 [0]),
        .I1(\buffer_reg[6]_1 [0]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[5]_2 [0]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[4]_3 [0]),
        .O(\inst_value_reg[24]_i_3_n_1 ));
  MUXF7 \inst_value_reg[25]_i_1 
       (.I0(\inst_value_reg[25]_i_2_n_1 ),
        .I1(\inst_value_reg[25]_i_3_n_1 ),
        .O(\id_inst_reg[7] [1]),
        .S(read_ptr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[25]_i_2 
       (.I0(\buffer_reg[3]_4 [1]),
        .I1(\buffer_reg[2]_5 [1]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[1]_6 [1]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[0]_7 [1]),
        .O(\inst_value_reg[25]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[25]_i_3 
       (.I0(\buffer_reg[7]_0 [1]),
        .I1(\buffer_reg[6]_1 [1]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[5]_2 [1]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[4]_3 [1]),
        .O(\inst_value_reg[25]_i_3_n_1 ));
  MUXF7 \inst_value_reg[26]_i_1 
       (.I0(\inst_value_reg[26]_i_2_n_1 ),
        .I1(\inst_value_reg[26]_i_3_n_1 ),
        .O(\id_inst_reg[7] [2]),
        .S(read_ptr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[26]_i_2 
       (.I0(\buffer_reg[3]_4 [2]),
        .I1(\buffer_reg[2]_5 [2]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[1]_6 [2]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[0]_7 [2]),
        .O(\inst_value_reg[26]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[26]_i_3 
       (.I0(\buffer_reg[7]_0 [2]),
        .I1(\buffer_reg[6]_1 [2]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[5]_2 [2]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[4]_3 [2]),
        .O(\inst_value_reg[26]_i_3_n_1 ));
  MUXF7 \inst_value_reg[27]_i_1 
       (.I0(\inst_value_reg[27]_i_2_n_1 ),
        .I1(\inst_value_reg[27]_i_3_n_1 ),
        .O(\id_inst_reg[7] [3]),
        .S(read_ptr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[27]_i_2 
       (.I0(\buffer_reg[3]_4 [3]),
        .I1(\buffer_reg[2]_5 [3]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[1]_6 [3]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[0]_7 [3]),
        .O(\inst_value_reg[27]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[27]_i_3 
       (.I0(\buffer_reg[7]_0 [3]),
        .I1(\buffer_reg[6]_1 [3]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[5]_2 [3]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[4]_3 [3]),
        .O(\inst_value_reg[27]_i_3_n_1 ));
  MUXF7 \inst_value_reg[28]_i_1 
       (.I0(\inst_value_reg[28]_i_2_n_1 ),
        .I1(\inst_value_reg[28]_i_3_n_1 ),
        .O(\id_inst_reg[7] [4]),
        .S(read_ptr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[28]_i_2 
       (.I0(\buffer_reg[3]_4 [4]),
        .I1(\buffer_reg[2]_5 [4]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[1]_6 [4]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[0]_7 [4]),
        .O(\inst_value_reg[28]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[28]_i_3 
       (.I0(\buffer_reg[7]_0 [4]),
        .I1(\buffer_reg[6]_1 [4]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[5]_2 [4]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[4]_3 [4]),
        .O(\inst_value_reg[28]_i_3_n_1 ));
  MUXF7 \inst_value_reg[29]_i_1 
       (.I0(\inst_value_reg[29]_i_2_n_1 ),
        .I1(\inst_value_reg[29]_i_3_n_1 ),
        .O(\id_inst_reg[7] [5]),
        .S(read_ptr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[29]_i_2 
       (.I0(\buffer_reg[3]_4 [5]),
        .I1(\buffer_reg[2]_5 [5]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[1]_6 [5]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[0]_7 [5]),
        .O(\inst_value_reg[29]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[29]_i_3 
       (.I0(\buffer_reg[7]_0 [5]),
        .I1(\buffer_reg[6]_1 [5]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[5]_2 [5]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[4]_3 [5]),
        .O(\inst_value_reg[29]_i_3_n_1 ));
  MUXF7 \inst_value_reg[30]_i_1 
       (.I0(\inst_value_reg[30]_i_2_n_1 ),
        .I1(\inst_value_reg[30]_i_3_n_1 ),
        .O(\id_inst_reg[7] [6]),
        .S(read_ptr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[30]_i_2 
       (.I0(\buffer_reg[3]_4 [6]),
        .I1(\buffer_reg[2]_5 [6]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[1]_6 [6]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[0]_7 [6]),
        .O(\inst_value_reg[30]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[30]_i_3 
       (.I0(\buffer_reg[7]_0 [6]),
        .I1(\buffer_reg[6]_1 [6]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[5]_2 [6]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[4]_3 [6]),
        .O(\inst_value_reg[30]_i_3_n_1 ));
  MUXF7 \inst_value_reg[31]_i_1 
       (.I0(\inst_value_reg[31]_i_3_n_1 ),
        .I1(\inst_value_reg[31]_i_4_n_1 ),
        .O(\id_inst_reg[7] [7]),
        .S(read_ptr[2]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \inst_value_reg[31]_i_2 
       (.I0(\cur_disp_reg[0]_0 ),
        .I1(uart_receivable),
        .I2(Q[2]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(out[0]),
        .O(\id_inst_reg[24] [3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[31]_i_3 
       (.I0(\buffer_reg[3]_4 [7]),
        .I1(\buffer_reg[2]_5 [7]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[1]_6 [7]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[0]_7 [7]),
        .O(\inst_value_reg[31]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \inst_value_reg[31]_i_4 
       (.I0(\buffer_reg[7]_0 [7]),
        .I1(\buffer_reg[6]_1 [7]),
        .I2(read_ptr[1]),
        .I3(\buffer_reg[5]_2 [7]),
        .I4(read_ptr[0]),
        .I5(\buffer_reg[4]_3 [7]),
        .O(\inst_value_reg[31]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \inst_value_reg[31]_i_6 
       (.I0(buffer_size_reg__0[1]),
        .I1(buffer_size_reg__0[2]),
        .I2(buffer_size_reg__0[3]),
        .I3(buffer_size_reg__0[0]),
        .O(uart_receivable));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \inst_value_reg[7]_i_1 
       (.I0(\cur_disp_reg[0]_2 ),
        .I1(uart_receivable),
        .I2(Q[2]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(out[0]),
        .O(\id_inst_reg[24] [0]));
  LUT3 #(
    .INIT(8'h28)) 
    \next_disp_reg[0]_i_3 
       (.I0(out[0]),
        .I1(Q[0]),
        .I2(uart_receivable),
        .O(\cur_disp_reg[0] ));
  LUT4 #(
    .INIT(16'h2888)) 
    \next_disp_reg[1]_i_3 
       (.I0(out[0]),
        .I1(Q[1]),
        .I2(uart_receivable),
        .I3(Q[0]),
        .O(\cur_disp_reg[1] ));
  LUT5 #(
    .INIT(32'h08888888)) 
    \next_disp_reg[2]_i_3 
       (.I0(out[0]),
        .I1(Q[2]),
        .I2(uart_receivable),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\cur_disp_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \read_data_value_reg[15]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\read_data_value_reg[31]_i_2_n_1 ),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(\wb_wdata_reg[31] [1]));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \read_data_value_reg[23]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\read_data_value_reg[31]_i_2_n_1 ),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(\wb_wdata_reg[31] [2]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \read_data_value_reg[31]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\read_data_value_reg[31]_i_2_n_1 ),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(\wb_wdata_reg[31] [3]));
  LUT5 #(
    .INIT(32'h44444044)) 
    \read_data_value_reg[31]_i_2 
       (.I0(Q[2]),
        .I1(uart_receivable),
        .I2(rst),
        .I3(\memop_o_reg[1] [0]),
        .I4(\memop_o_reg[1] [1]),
        .O(\read_data_value_reg[31]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \read_data_value_reg[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\read_data_value_reg[31]_i_2_n_1 ),
        .I3(out[1]),
        .I4(out[0]),
        .I5(out[2]),
        .O(\wb_wdata_reg[31] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \read_ptr[0]_i_1 
       (.I0(p_1_in),
        .I1(read_ptr[0]),
        .O(\read_ptr[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_ptr[1]_i_1 
       (.I0(p_1_in),
        .I1(read_ptr[0]),
        .I2(read_ptr[1]),
        .O(\read_ptr[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_ptr[2]_i_1 
       (.I0(p_1_in),
        .I1(read_ptr[0]),
        .I2(read_ptr[1]),
        .I3(read_ptr[2]),
        .O(\read_ptr[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h0010500000000000)) 
    \read_ptr[2]_i_2 
       (.I0(rst),
        .I1(mem_data_optype),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(uart_receivable),
        .O(p_1_in));
  FDCE #(
    .INIT(1'b0)) 
    \read_ptr_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\read_ptr[0]_i_1_n_1 ),
        .Q(read_ptr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \read_ptr_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\read_ptr[1]_i_1_n_1 ),
        .Q(read_ptr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \read_ptr_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\read_ptr[2]_i_1_n_1 ),
        .Q(read_ptr[2]));
  LUT5 #(
    .INIT(32'h08000000)) 
    recv_write_flag_i_1
       (.I0(recv_write_flag0),
        .I1(CO),
        .I2(\FSM_sequential_recv_status_reg[2] [2]),
        .I3(\FSM_sequential_recv_status_reg[2] [0]),
        .I4(\FSM_sequential_recv_status_reg[2] [1]),
        .O(recv_write_flag));
  LUT6 #(
    .INIT(64'hFFFD00000000FFFD)) 
    recv_write_flag_i_2
       (.I0(buffer_size_reg__0[3]),
        .I1(buffer_size_reg__0[1]),
        .I2(buffer_size_reg__0[2]),
        .I3(buffer_size_reg__0[0]),
        .I4(recv_parity_reg),
        .I5(Rx_IBUF),
        .O(recv_write_flag0));
  LUT2 #(
    .INIT(4'h6)) 
    \write_ptr[0]_i_1 
       (.I0(\write_ptr[2]_i_2__0_n_1 ),
        .I1(\write_ptr_reg_n_1_[0] ),
        .O(\write_ptr[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_ptr[1]_i_1 
       (.I0(\write_ptr_reg_n_1_[0] ),
        .I1(\write_ptr[2]_i_2__0_n_1 ),
        .I2(\write_ptr_reg_n_1_[1] ),
        .O(\write_ptr[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_ptr[2]_i_1 
       (.I0(\write_ptr_reg_n_1_[0] ),
        .I1(\write_ptr_reg_n_1_[1] ),
        .I2(\write_ptr[2]_i_2__0_n_1 ),
        .I3(\write_ptr_reg_n_1_[2] ),
        .O(\write_ptr[2]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEFF0000)) 
    \write_ptr[2]_i_2__0 
       (.I0(buffer_size_reg__0[0]),
        .I1(buffer_size_reg__0[2]),
        .I2(buffer_size_reg__0[1]),
        .I3(buffer_size_reg__0[3]),
        .I4(recv_write_flag_reg),
        .O(\write_ptr[2]_i_2__0_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \write_ptr_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\write_ptr[0]_i_1_n_1 ),
        .Q(\write_ptr_reg_n_1_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \write_ptr_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\write_ptr[1]_i_1_n_1 ),
        .Q(\write_ptr_reg_n_1_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \write_ptr_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\write_ptr[2]_i_1_n_1 ),
        .Q(\write_ptr_reg_n_1_[2] ));
endmodule

(* ORIG_REF_NAME = "fifo" *) 
module fifo_0
   (uart_sendable,
    \buffer_size_reg[0]_0 ,
    E,
    send_parity_reg,
    D,
    \FSM_sequential_cur_status_reg[1] ,
    \cur_disp_reg[2] ,
    \send_read_data_buf_reg[0] ,
    send_parity_reg_0,
    Tx_1,
    \FSM_sequential_send_status_reg[1] ,
    \FSM_sequential_send_status_reg[0] ,
    send_parity_reg_1,
    \send_read_data_buf_reg[7] ,
    out,
    mem_data_ce,
    Q,
    send_read_flag_reg,
    mem_data_optype,
    rst,
    \memop_o_reg[1] ,
    uart_receivable,
    \FSM_sequential_cur_status_reg[2] ,
    \FSM_sequential_cur_status_reg[0] ,
    \FSM_sequential_cur_status_reg[0]_0 ,
    \FSM_sequential_cur_status_reg[0]_1 ,
    \FSM_sequential_cur_status_reg[1]_0 ,
    ce,
    \counter_reg[0] ,
    \FSM_sequential_send_status_reg[1]_0 ,
    send_status,
    in0,
    send_parity_reg_2,
    send_parity1,
    clk_out1,
    rst_BUFG,
    \FSM_sequential_cur_status_reg[2]_0 );
  output uart_sendable;
  output [3:0]\buffer_size_reg[0]_0 ;
  output [0:0]E;
  output send_parity_reg;
  output [1:0]D;
  output \FSM_sequential_cur_status_reg[1] ;
  output [2:0]\cur_disp_reg[2] ;
  output [0:0]\send_read_data_buf_reg[0] ;
  output [0:0]send_parity_reg_0;
  output Tx_1;
  output \FSM_sequential_send_status_reg[1] ;
  output \FSM_sequential_send_status_reg[0] ;
  output send_parity_reg_1;
  output [7:0]\send_read_data_buf_reg[7] ;
  input [2:0]out;
  input mem_data_ce;
  input [2:0]Q;
  input send_read_flag_reg;
  input mem_data_optype;
  input rst;
  input [1:0]\memop_o_reg[1] ;
  input uart_receivable;
  input \FSM_sequential_cur_status_reg[2] ;
  input \FSM_sequential_cur_status_reg[0] ;
  input \FSM_sequential_cur_status_reg[0]_0 ;
  input \FSM_sequential_cur_status_reg[0]_1 ;
  input \FSM_sequential_cur_status_reg[1]_0 ;
  input ce;
  input \counter_reg[0] ;
  input [1:0]\FSM_sequential_send_status_reg[1]_0 ;
  input send_status;
  input [1:0]in0;
  input send_parity_reg_2;
  input send_parity1;
  input clk_out1;
  input rst_BUFG;
  input [7:0]\FSM_sequential_cur_status_reg[2]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_cur_status_reg[0] ;
  wire \FSM_sequential_cur_status_reg[0]_0 ;
  wire \FSM_sequential_cur_status_reg[0]_1 ;
  wire \FSM_sequential_cur_status_reg[1] ;
  wire \FSM_sequential_cur_status_reg[1]_0 ;
  wire \FSM_sequential_cur_status_reg[2] ;
  wire [7:0]\FSM_sequential_cur_status_reg[2]_0 ;
  wire \FSM_sequential_next_status_reg[0]_i_2_n_1 ;
  wire \FSM_sequential_next_status_reg[0]_i_3_n_1 ;
  wire \FSM_sequential_next_status_reg[1]_i_3_n_1 ;
  wire \FSM_sequential_next_status_reg[1]_i_5_n_1 ;
  wire \FSM_sequential_send_status_reg[0] ;
  wire \FSM_sequential_send_status_reg[1] ;
  wire [1:0]\FSM_sequential_send_status_reg[1]_0 ;
  wire [2:0]Q;
  wire Tx_1;
  wire \buffer[0][7]_i_1_n_1 ;
  wire \buffer[1][7]_i_1_n_1 ;
  wire \buffer[2][7]_i_1_n_1 ;
  wire \buffer[3][7]_i_1_n_1 ;
  wire \buffer[4][7]_i_1_n_1 ;
  wire \buffer[5][7]_i_1_n_1 ;
  wire \buffer[6][7]_i_1_n_1 ;
  wire \buffer[7][7]_i_1_n_1 ;
  wire \buffer_reg_n_1_[0][0] ;
  wire \buffer_reg_n_1_[0][1] ;
  wire \buffer_reg_n_1_[0][2] ;
  wire \buffer_reg_n_1_[0][3] ;
  wire \buffer_reg_n_1_[0][4] ;
  wire \buffer_reg_n_1_[0][5] ;
  wire \buffer_reg_n_1_[0][6] ;
  wire \buffer_reg_n_1_[0][7] ;
  wire \buffer_reg_n_1_[1][0] ;
  wire \buffer_reg_n_1_[1][1] ;
  wire \buffer_reg_n_1_[1][2] ;
  wire \buffer_reg_n_1_[1][3] ;
  wire \buffer_reg_n_1_[1][4] ;
  wire \buffer_reg_n_1_[1][5] ;
  wire \buffer_reg_n_1_[1][6] ;
  wire \buffer_reg_n_1_[1][7] ;
  wire \buffer_reg_n_1_[2][0] ;
  wire \buffer_reg_n_1_[2][1] ;
  wire \buffer_reg_n_1_[2][2] ;
  wire \buffer_reg_n_1_[2][3] ;
  wire \buffer_reg_n_1_[2][4] ;
  wire \buffer_reg_n_1_[2][5] ;
  wire \buffer_reg_n_1_[2][6] ;
  wire \buffer_reg_n_1_[2][7] ;
  wire \buffer_reg_n_1_[3][0] ;
  wire \buffer_reg_n_1_[3][1] ;
  wire \buffer_reg_n_1_[3][2] ;
  wire \buffer_reg_n_1_[3][3] ;
  wire \buffer_reg_n_1_[3][4] ;
  wire \buffer_reg_n_1_[3][5] ;
  wire \buffer_reg_n_1_[3][6] ;
  wire \buffer_reg_n_1_[3][7] ;
  wire \buffer_reg_n_1_[4][0] ;
  wire \buffer_reg_n_1_[4][1] ;
  wire \buffer_reg_n_1_[4][2] ;
  wire \buffer_reg_n_1_[4][3] ;
  wire \buffer_reg_n_1_[4][4] ;
  wire \buffer_reg_n_1_[4][5] ;
  wire \buffer_reg_n_1_[4][6] ;
  wire \buffer_reg_n_1_[4][7] ;
  wire \buffer_reg_n_1_[5][0] ;
  wire \buffer_reg_n_1_[5][1] ;
  wire \buffer_reg_n_1_[5][2] ;
  wire \buffer_reg_n_1_[5][3] ;
  wire \buffer_reg_n_1_[5][4] ;
  wire \buffer_reg_n_1_[5][5] ;
  wire \buffer_reg_n_1_[5][6] ;
  wire \buffer_reg_n_1_[5][7] ;
  wire \buffer_reg_n_1_[6][0] ;
  wire \buffer_reg_n_1_[6][1] ;
  wire \buffer_reg_n_1_[6][2] ;
  wire \buffer_reg_n_1_[6][3] ;
  wire \buffer_reg_n_1_[6][4] ;
  wire \buffer_reg_n_1_[6][5] ;
  wire \buffer_reg_n_1_[6][6] ;
  wire \buffer_reg_n_1_[6][7] ;
  wire \buffer_reg_n_1_[7][0] ;
  wire \buffer_reg_n_1_[7][1] ;
  wire \buffer_reg_n_1_[7][2] ;
  wire \buffer_reg_n_1_[7][3] ;
  wire \buffer_reg_n_1_[7][4] ;
  wire \buffer_reg_n_1_[7][5] ;
  wire \buffer_reg_n_1_[7][6] ;
  wire \buffer_reg_n_1_[7][7] ;
  wire buffer_size;
  wire \buffer_size[0]_i_1__0_n_1 ;
  wire \buffer_size[1]_i_1__0_n_1 ;
  wire \buffer_size[2]_i_1__0_n_1 ;
  wire \buffer_size[3]_i_2__0_n_1 ;
  wire [3:0]\buffer_size_reg[0]_0 ;
  wire ce;
  wire clk_out1;
  wire \counter_reg[0] ;
  wire [2:0]\cur_disp_reg[2] ;
  wire [1:0]in0;
  wire mem_data_ce;
  wire mem_data_optype;
  wire [1:0]\memop_o_reg[1] ;
  wire \next_disp_reg[0]_i_2_n_1 ;
  wire \next_disp_reg[0]_i_4_n_1 ;
  wire \next_disp_reg[1]_i_2_n_1 ;
  wire \next_disp_reg[1]_i_4_n_1 ;
  wire \next_disp_reg[2]_i_2_n_1 ;
  wire \next_disp_reg[2]_i_4_n_1 ;
  wire \next_disp_reg[2]_i_5_n_1 ;
  wire [2:0]out;
  wire p_0_in;
  wire p_1_in;
  wire \read_ptr[0]_i_1_n_1 ;
  wire \read_ptr[1]_i_1_n_1 ;
  wire \read_ptr[2]_i_1_n_1 ;
  wire \read_ptr_reg_n_1_[0] ;
  wire \read_ptr_reg_n_1_[1] ;
  wire \read_ptr_reg_n_1_[2] ;
  wire rst;
  wire rst_BUFG;
  wire send_parity1;
  wire send_parity_reg;
  wire [0:0]send_parity_reg_0;
  wire send_parity_reg_1;
  wire send_parity_reg_2;
  wire \send_read_data_buf[0]_i_2_n_1 ;
  wire \send_read_data_buf[0]_i_3_n_1 ;
  wire \send_read_data_buf[1]_i_2_n_1 ;
  wire \send_read_data_buf[1]_i_3_n_1 ;
  wire \send_read_data_buf[2]_i_2_n_1 ;
  wire \send_read_data_buf[2]_i_3_n_1 ;
  wire \send_read_data_buf[3]_i_2_n_1 ;
  wire \send_read_data_buf[3]_i_3_n_1 ;
  wire \send_read_data_buf[4]_i_2_n_1 ;
  wire \send_read_data_buf[4]_i_3_n_1 ;
  wire \send_read_data_buf[5]_i_2_n_1 ;
  wire \send_read_data_buf[5]_i_3_n_1 ;
  wire \send_read_data_buf[6]_i_2_n_1 ;
  wire \send_read_data_buf[6]_i_3_n_1 ;
  wire \send_read_data_buf[7]_i_3_n_1 ;
  wire \send_read_data_buf[7]_i_4_n_1 ;
  wire [0:0]\send_read_data_buf_reg[0] ;
  wire [7:0]\send_read_data_buf_reg[7] ;
  wire send_read_flag_reg;
  wire send_status;
  wire uart_receivable;
  wire uart_sendable;
  wire \write_ptr[0]_i_1_n_1 ;
  wire \write_ptr[1]_i_1_n_1 ;
  wire \write_ptr[2]_i_1_n_1 ;
  wire \write_ptr_reg_n_1_[0] ;
  wire \write_ptr_reg_n_1_[1] ;
  wire \write_ptr_reg_n_1_[2] ;

  LUT6 #(
    .INIT(64'hFFFFCFFF8A8A8A8A)) 
    \FSM_sequential_next_status_reg[0]_i_1 
       (.I0(\FSM_sequential_next_status_reg[0]_i_2_n_1 ),
        .I1(\FSM_sequential_next_status_reg[0]_i_3_n_1 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(out[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0404040454040404)) 
    \FSM_sequential_next_status_reg[0]_i_2 
       (.I0(out[2]),
        .I1(mem_data_ce),
        .I2(out[1]),
        .I3(uart_sendable),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\FSM_sequential_next_status_reg[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h000033FB37FF37FF)) 
    \FSM_sequential_next_status_reg[0]_i_3 
       (.I0(mem_data_optype),
        .I1(out[1]),
        .I2(Q[2]),
        .I3(uart_sendable),
        .I4(out[2]),
        .I5(uart_receivable),
        .O(\FSM_sequential_next_status_reg[0]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h000000000000B8BD)) 
    \FSM_sequential_next_status_reg[1]_i_1 
       (.I0(out[1]),
        .I1(\FSM_sequential_cur_status_reg[1] ),
        .I2(out[0]),
        .I3(mem_data_ce),
        .I4(\FSM_sequential_next_status_reg[1]_i_3_n_1 ),
        .I5(\FSM_sequential_cur_status_reg[2] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \FSM_sequential_next_status_reg[1]_i_3 
       (.I0(\FSM_sequential_next_status_reg[1]_i_5_n_1 ),
        .I1(Q[2]),
        .I2(out[0]),
        .I3(ce),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\FSM_sequential_next_status_reg[1]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \FSM_sequential_next_status_reg[1]_i_5 
       (.I0(uart_sendable),
        .I1(\memop_o_reg[1] [1]),
        .I2(\memop_o_reg[1] [0]),
        .I3(rst),
        .I4(uart_receivable),
        .O(\FSM_sequential_next_status_reg[1]_i_5_n_1 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \FSM_sequential_next_status_reg[2]_i_5 
       (.I0(Q[2]),
        .I1(uart_sendable),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\FSM_sequential_cur_status_reg[1] ));
  LUT4 #(
    .INIT(16'h7F40)) 
    \FSM_sequential_send_status[0]_i_1 
       (.I0(\FSM_sequential_send_status_reg[1]_0 [0]),
        .I1(\counter_reg[0] ),
        .I2(send_status),
        .I3(in0[0]),
        .O(\FSM_sequential_send_status_reg[0] ));
  LUT5 #(
    .INIT(32'h6FFF6000)) 
    \FSM_sequential_send_status[1]_i_1 
       (.I0(\FSM_sequential_send_status_reg[1]_0 [0]),
        .I1(\FSM_sequential_send_status_reg[1]_0 [1]),
        .I2(\counter_reg[0] ),
        .I3(send_status),
        .I4(in0[1]),
        .O(\FSM_sequential_send_status_reg[1] ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    Tx_i_1
       (.I0(\counter_reg[0] ),
        .I1(send_parity_reg),
        .I2(\FSM_sequential_send_status_reg[1]_0 [0]),
        .I3(\FSM_sequential_send_status_reg[1]_0 [1]),
        .O(Tx_1));
  LUT4 #(
    .INIT(16'h0100)) 
    \buffer[0][7]_i_1 
       (.I0(\write_ptr_reg_n_1_[2] ),
        .I1(\write_ptr_reg_n_1_[0] ),
        .I2(\write_ptr_reg_n_1_[1] ),
        .I3(p_0_in),
        .O(\buffer[0][7]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \buffer[1][7]_i_1 
       (.I0(\write_ptr_reg_n_1_[2] ),
        .I1(\write_ptr_reg_n_1_[0] ),
        .I2(\write_ptr_reg_n_1_[1] ),
        .I3(p_0_in),
        .O(\buffer[1][7]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \buffer[2][7]_i_1 
       (.I0(\write_ptr_reg_n_1_[0] ),
        .I1(\write_ptr_reg_n_1_[1] ),
        .I2(\write_ptr_reg_n_1_[2] ),
        .I3(p_0_in),
        .O(\buffer[2][7]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \buffer[3][7]_i_1 
       (.I0(\write_ptr_reg_n_1_[2] ),
        .I1(\write_ptr_reg_n_1_[1] ),
        .I2(\write_ptr_reg_n_1_[0] ),
        .I3(p_0_in),
        .O(\buffer[3][7]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \buffer[4][7]_i_1 
       (.I0(\write_ptr_reg_n_1_[0] ),
        .I1(\write_ptr_reg_n_1_[2] ),
        .I2(\write_ptr_reg_n_1_[1] ),
        .I3(p_0_in),
        .O(\buffer[4][7]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \buffer[5][7]_i_1 
       (.I0(\write_ptr_reg_n_1_[2] ),
        .I1(\write_ptr_reg_n_1_[0] ),
        .I2(\write_ptr_reg_n_1_[1] ),
        .I3(p_0_in),
        .O(\buffer[5][7]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \buffer[6][7]_i_1 
       (.I0(\write_ptr_reg_n_1_[0] ),
        .I1(\write_ptr_reg_n_1_[1] ),
        .I2(\write_ptr_reg_n_1_[2] ),
        .I3(p_0_in),
        .O(\buffer[6][7]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \buffer[7][7]_i_1 
       (.I0(\write_ptr_reg_n_1_[1] ),
        .I1(\write_ptr_reg_n_1_[0] ),
        .I2(\write_ptr_reg_n_1_[2] ),
        .I3(p_0_in),
        .O(\buffer[7][7]_i_1_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][0] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [0]),
        .Q(\buffer_reg_n_1_[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][1] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [1]),
        .Q(\buffer_reg_n_1_[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][2] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [2]),
        .Q(\buffer_reg_n_1_[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][3] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [3]),
        .Q(\buffer_reg_n_1_[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][4] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [4]),
        .Q(\buffer_reg_n_1_[0][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][5] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [5]),
        .Q(\buffer_reg_n_1_[0][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][6] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [6]),
        .Q(\buffer_reg_n_1_[0][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0][7] 
       (.C(clk_out1),
        .CE(\buffer[0][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [7]),
        .Q(\buffer_reg_n_1_[0][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][0] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [0]),
        .Q(\buffer_reg_n_1_[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][1] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [1]),
        .Q(\buffer_reg_n_1_[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][2] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [2]),
        .Q(\buffer_reg_n_1_[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][3] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [3]),
        .Q(\buffer_reg_n_1_[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][4] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [4]),
        .Q(\buffer_reg_n_1_[1][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][5] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [5]),
        .Q(\buffer_reg_n_1_[1][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][6] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [6]),
        .Q(\buffer_reg_n_1_[1][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1][7] 
       (.C(clk_out1),
        .CE(\buffer[1][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [7]),
        .Q(\buffer_reg_n_1_[1][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][0] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [0]),
        .Q(\buffer_reg_n_1_[2][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][1] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [1]),
        .Q(\buffer_reg_n_1_[2][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][2] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [2]),
        .Q(\buffer_reg_n_1_[2][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][3] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [3]),
        .Q(\buffer_reg_n_1_[2][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][4] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [4]),
        .Q(\buffer_reg_n_1_[2][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][5] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [5]),
        .Q(\buffer_reg_n_1_[2][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][6] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [6]),
        .Q(\buffer_reg_n_1_[2][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2][7] 
       (.C(clk_out1),
        .CE(\buffer[2][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [7]),
        .Q(\buffer_reg_n_1_[2][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][0] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [0]),
        .Q(\buffer_reg_n_1_[3][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][1] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [1]),
        .Q(\buffer_reg_n_1_[3][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][2] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [2]),
        .Q(\buffer_reg_n_1_[3][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][3] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [3]),
        .Q(\buffer_reg_n_1_[3][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][4] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [4]),
        .Q(\buffer_reg_n_1_[3][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][5] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [5]),
        .Q(\buffer_reg_n_1_[3][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][6] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [6]),
        .Q(\buffer_reg_n_1_[3][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3][7] 
       (.C(clk_out1),
        .CE(\buffer[3][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [7]),
        .Q(\buffer_reg_n_1_[3][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][0] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [0]),
        .Q(\buffer_reg_n_1_[4][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][1] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [1]),
        .Q(\buffer_reg_n_1_[4][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][2] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [2]),
        .Q(\buffer_reg_n_1_[4][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][3] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [3]),
        .Q(\buffer_reg_n_1_[4][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][4] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [4]),
        .Q(\buffer_reg_n_1_[4][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][5] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [5]),
        .Q(\buffer_reg_n_1_[4][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][6] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [6]),
        .Q(\buffer_reg_n_1_[4][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4][7] 
       (.C(clk_out1),
        .CE(\buffer[4][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [7]),
        .Q(\buffer_reg_n_1_[4][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][0] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [0]),
        .Q(\buffer_reg_n_1_[5][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][1] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [1]),
        .Q(\buffer_reg_n_1_[5][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][2] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [2]),
        .Q(\buffer_reg_n_1_[5][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][3] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [3]),
        .Q(\buffer_reg_n_1_[5][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][4] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [4]),
        .Q(\buffer_reg_n_1_[5][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][5] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [5]),
        .Q(\buffer_reg_n_1_[5][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][6] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [6]),
        .Q(\buffer_reg_n_1_[5][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5][7] 
       (.C(clk_out1),
        .CE(\buffer[5][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [7]),
        .Q(\buffer_reg_n_1_[5][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][0] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [0]),
        .Q(\buffer_reg_n_1_[6][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][1] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [1]),
        .Q(\buffer_reg_n_1_[6][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][2] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [2]),
        .Q(\buffer_reg_n_1_[6][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][3] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [3]),
        .Q(\buffer_reg_n_1_[6][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][4] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [4]),
        .Q(\buffer_reg_n_1_[6][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][5] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [5]),
        .Q(\buffer_reg_n_1_[6][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][6] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [6]),
        .Q(\buffer_reg_n_1_[6][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6][7] 
       (.C(clk_out1),
        .CE(\buffer[6][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [7]),
        .Q(\buffer_reg_n_1_[6][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][0] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [0]),
        .Q(\buffer_reg_n_1_[7][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][1] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [1]),
        .Q(\buffer_reg_n_1_[7][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][2] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [2]),
        .Q(\buffer_reg_n_1_[7][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][3] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [3]),
        .Q(\buffer_reg_n_1_[7][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][4] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [4]),
        .Q(\buffer_reg_n_1_[7][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][5] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [5]),
        .Q(\buffer_reg_n_1_[7][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][6] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [6]),
        .Q(\buffer_reg_n_1_[7][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7][7] 
       (.C(clk_out1),
        .CE(\buffer[7][7]_i_1_n_1 ),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_cur_status_reg[2]_0 [7]),
        .Q(\buffer_reg_n_1_[7][7] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \buffer_size[0]_i_1__0 
       (.I0(\buffer_size_reg[0]_0 [0]),
        .O(\buffer_size[0]_i_1__0_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h96969694)) 
    \buffer_size[1]_i_1__0 
       (.I0(send_read_flag_reg),
        .I1(\buffer_size_reg[0]_0 [0]),
        .I2(\buffer_size_reg[0]_0 [1]),
        .I3(\buffer_size_reg[0]_0 [2]),
        .I4(\buffer_size_reg[0]_0 [3]),
        .O(\buffer_size[1]_i_1__0_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hBD42BD40)) 
    \buffer_size[2]_i_1__0 
       (.I0(send_read_flag_reg),
        .I1(\buffer_size_reg[0]_0 [0]),
        .I2(\buffer_size_reg[0]_0 [1]),
        .I3(\buffer_size_reg[0]_0 [2]),
        .I4(\buffer_size_reg[0]_0 [3]),
        .O(\buffer_size[2]_i_1__0_n_1 ));
  LUT6 #(
    .INIT(64'h55555557AAAAAAA8)) 
    \buffer_size[3]_i_1 
       (.I0(send_read_flag_reg),
        .I1(\buffer_size_reg[0]_0 [0]),
        .I2(\buffer_size_reg[0]_0 [1]),
        .I3(\buffer_size_reg[0]_0 [2]),
        .I4(\buffer_size_reg[0]_0 [3]),
        .I5(p_0_in),
        .O(buffer_size));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hBFFD4000)) 
    \buffer_size[3]_i_2__0 
       (.I0(send_read_flag_reg),
        .I1(\buffer_size_reg[0]_0 [0]),
        .I2(\buffer_size_reg[0]_0 [1]),
        .I3(\buffer_size_reg[0]_0 [2]),
        .I4(\buffer_size_reg[0]_0 [3]),
        .O(\buffer_size[3]_i_2__0_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_size_reg[0] 
       (.C(clk_out1),
        .CE(buffer_size),
        .CLR(rst_BUFG),
        .D(\buffer_size[0]_i_1__0_n_1 ),
        .Q(\buffer_size_reg[0]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_size_reg[1] 
       (.C(clk_out1),
        .CE(buffer_size),
        .CLR(rst_BUFG),
        .D(\buffer_size[1]_i_1__0_n_1 ),
        .Q(\buffer_size_reg[0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_size_reg[2] 
       (.C(clk_out1),
        .CE(buffer_size),
        .CLR(rst_BUFG),
        .D(\buffer_size[2]_i_1__0_n_1 ),
        .Q(\buffer_size_reg[0]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_size_reg[3] 
       (.C(clk_out1),
        .CE(buffer_size),
        .CLR(rst_BUFG),
        .D(\buffer_size[3]_i_2__0_n_1 ),
        .Q(\buffer_size_reg[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__i_1
       (.I0(\buffer_size_reg[0]_0 [0]),
        .I1(\buffer_size_reg[0]_0 [1]),
        .I2(\buffer_size_reg[0]_0 [2]),
        .I3(\buffer_size_reg[0]_0 [3]),
        .O(send_parity_reg));
  MUXF7 \next_disp_reg[0]_i_1 
       (.I0(\next_disp_reg[0]_i_2_n_1 ),
        .I1(\FSM_sequential_cur_status_reg[0] ),
        .O(\cur_disp_reg[2] [0]),
        .S(out[2]));
  LUT4 #(
    .INIT(16'hEAAE)) 
    \next_disp_reg[0]_i_2 
       (.I0(\next_disp_reg[0]_i_4_n_1 ),
        .I1(\FSM_sequential_cur_status_reg[1]_0 ),
        .I2(\next_disp_reg[2]_i_5_n_1 ),
        .I3(Q[0]),
        .O(\next_disp_reg[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000662666260000)) 
    \next_disp_reg[0]_i_4 
       (.I0(Q[0]),
        .I1(uart_sendable),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(out[0]),
        .I5(out[1]),
        .O(\next_disp_reg[0]_i_4_n_1 ));
  MUXF7 \next_disp_reg[1]_i_1 
       (.I0(\next_disp_reg[1]_i_2_n_1 ),
        .I1(\FSM_sequential_cur_status_reg[0]_0 ),
        .O(\cur_disp_reg[2] [1]),
        .S(out[2]));
  LUT5 #(
    .INIT(32'hEEAAAEEA)) 
    \next_disp_reg[1]_i_2 
       (.I0(\next_disp_reg[1]_i_4_n_1 ),
        .I1(\FSM_sequential_cur_status_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\next_disp_reg[2]_i_5_n_1 ),
        .O(\next_disp_reg[1]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h006C6C00)) 
    \next_disp_reg[1]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(uart_sendable),
        .I3(out[0]),
        .I4(out[1]),
        .O(\next_disp_reg[1]_i_4_n_1 ));
  MUXF7 \next_disp_reg[2]_i_1 
       (.I0(\next_disp_reg[2]_i_2_n_1 ),
        .I1(\FSM_sequential_cur_status_reg[0]_1 ),
        .O(\cur_disp_reg[2] [2]),
        .S(out[2]));
  LUT6 #(
    .INIT(64'hEEEEAAAAAEEEAAAA)) 
    \next_disp_reg[2]_i_2 
       (.I0(\next_disp_reg[2]_i_4_n_1 ),
        .I1(\FSM_sequential_cur_status_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\next_disp_reg[2]_i_5_n_1 ),
        .O(\next_disp_reg[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00006AA26AA20000)) 
    \next_disp_reg[2]_i_4 
       (.I0(Q[2]),
        .I1(uart_sendable),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(out[0]),
        .I5(out[1]),
        .O(\next_disp_reg[2]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0010FFDF)) 
    \next_disp_reg[2]_i_5 
       (.I0(uart_sendable),
        .I1(\memop_o_reg[1] [1]),
        .I2(\memop_o_reg[1] [0]),
        .I3(rst),
        .I4(uart_receivable),
        .O(\next_disp_reg[2]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h55555557AAAAAAA8)) 
    \read_ptr[0]_i_1 
       (.I0(send_read_flag_reg),
        .I1(\buffer_size_reg[0]_0 [0]),
        .I2(\buffer_size_reg[0]_0 [1]),
        .I3(\buffer_size_reg[0]_0 [2]),
        .I4(\buffer_size_reg[0]_0 [3]),
        .I5(\read_ptr_reg_n_1_[0] ),
        .O(\read_ptr[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_ptr[1]_i_1 
       (.I0(\read_ptr_reg_n_1_[0] ),
        .I1(p_1_in),
        .I2(\read_ptr_reg_n_1_[1] ),
        .O(\read_ptr[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_ptr[2]_i_1 
       (.I0(\read_ptr_reg_n_1_[0] ),
        .I1(\read_ptr_reg_n_1_[1] ),
        .I2(p_1_in),
        .I3(\read_ptr_reg_n_1_[2] ),
        .O(\read_ptr[2]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \read_ptr[2]_i_2__0 
       (.I0(\buffer_size_reg[0]_0 [3]),
        .I1(\buffer_size_reg[0]_0 [2]),
        .I2(\buffer_size_reg[0]_0 [1]),
        .I3(\buffer_size_reg[0]_0 [0]),
        .I4(send_read_flag_reg),
        .O(p_1_in));
  FDCE #(
    .INIT(1'b0)) 
    \read_ptr_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\read_ptr[0]_i_1_n_1 ),
        .Q(\read_ptr_reg_n_1_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \read_ptr_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\read_ptr[1]_i_1_n_1 ),
        .Q(\read_ptr_reg_n_1_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \read_ptr_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\read_ptr[2]_i_1_n_1 ),
        .Q(\read_ptr_reg_n_1_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2220)) 
    \send_bit[2]_i_1 
       (.I0(\counter_reg[0] ),
        .I1(\FSM_sequential_send_status_reg[1]_0 [1]),
        .I2(send_parity_reg),
        .I3(\FSM_sequential_send_status_reg[1]_0 [0]),
        .O(send_parity_reg_0));
  LUT4 #(
    .INIT(16'h606F)) 
    send_parity_i_1
       (.I0(send_parity_reg_2),
        .I1(send_parity1),
        .I2(\FSM_sequential_send_status_reg[1]_0 [0]),
        .I3(send_parity_reg),
        .O(send_parity_reg_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[0]_i_2 
       (.I0(\buffer_reg_n_1_[3][0] ),
        .I1(\buffer_reg_n_1_[2][0] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[1][0] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[0][0] ),
        .O(\send_read_data_buf[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[0]_i_3 
       (.I0(\buffer_reg_n_1_[7][0] ),
        .I1(\buffer_reg_n_1_[6][0] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[5][0] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[4][0] ),
        .O(\send_read_data_buf[0]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[1]_i_2 
       (.I0(\buffer_reg_n_1_[3][1] ),
        .I1(\buffer_reg_n_1_[2][1] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[1][1] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[0][1] ),
        .O(\send_read_data_buf[1]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[1]_i_3 
       (.I0(\buffer_reg_n_1_[7][1] ),
        .I1(\buffer_reg_n_1_[6][1] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[5][1] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[4][1] ),
        .O(\send_read_data_buf[1]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[2]_i_2 
       (.I0(\buffer_reg_n_1_[3][2] ),
        .I1(\buffer_reg_n_1_[2][2] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[1][2] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[0][2] ),
        .O(\send_read_data_buf[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[2]_i_3 
       (.I0(\buffer_reg_n_1_[7][2] ),
        .I1(\buffer_reg_n_1_[6][2] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[5][2] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[4][2] ),
        .O(\send_read_data_buf[2]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[3]_i_2 
       (.I0(\buffer_reg_n_1_[3][3] ),
        .I1(\buffer_reg_n_1_[2][3] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[1][3] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[0][3] ),
        .O(\send_read_data_buf[3]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[3]_i_3 
       (.I0(\buffer_reg_n_1_[7][3] ),
        .I1(\buffer_reg_n_1_[6][3] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[5][3] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[4][3] ),
        .O(\send_read_data_buf[3]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[4]_i_2 
       (.I0(\buffer_reg_n_1_[3][4] ),
        .I1(\buffer_reg_n_1_[2][4] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[1][4] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[0][4] ),
        .O(\send_read_data_buf[4]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[4]_i_3 
       (.I0(\buffer_reg_n_1_[7][4] ),
        .I1(\buffer_reg_n_1_[6][4] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[5][4] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[4][4] ),
        .O(\send_read_data_buf[4]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[5]_i_2 
       (.I0(\buffer_reg_n_1_[3][5] ),
        .I1(\buffer_reg_n_1_[2][5] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[1][5] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[0][5] ),
        .O(\send_read_data_buf[5]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[5]_i_3 
       (.I0(\buffer_reg_n_1_[7][5] ),
        .I1(\buffer_reg_n_1_[6][5] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[5][5] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[4][5] ),
        .O(\send_read_data_buf[5]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[6]_i_2 
       (.I0(\buffer_reg_n_1_[3][6] ),
        .I1(\buffer_reg_n_1_[2][6] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[1][6] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[0][6] ),
        .O(\send_read_data_buf[6]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[6]_i_3 
       (.I0(\buffer_reg_n_1_[7][6] ),
        .I1(\buffer_reg_n_1_[6][6] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[5][6] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[4][6] ),
        .O(\send_read_data_buf[6]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \send_read_data_buf[7]_i_1 
       (.I0(\counter_reg[0] ),
        .I1(\FSM_sequential_send_status_reg[1]_0 [1]),
        .I2(\FSM_sequential_send_status_reg[1]_0 [0]),
        .I3(send_parity_reg),
        .O(\send_read_data_buf_reg[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[7]_i_3 
       (.I0(\buffer_reg_n_1_[3][7] ),
        .I1(\buffer_reg_n_1_[2][7] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[1][7] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[0][7] ),
        .O(\send_read_data_buf[7]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \send_read_data_buf[7]_i_4 
       (.I0(\buffer_reg_n_1_[7][7] ),
        .I1(\buffer_reg_n_1_[6][7] ),
        .I2(\read_ptr_reg_n_1_[1] ),
        .I3(\buffer_reg_n_1_[5][7] ),
        .I4(\read_ptr_reg_n_1_[0] ),
        .I5(\buffer_reg_n_1_[4][7] ),
        .O(\send_read_data_buf[7]_i_4_n_1 ));
  MUXF7 \send_read_data_buf_reg[0]_i_1 
       (.I0(\send_read_data_buf[0]_i_2_n_1 ),
        .I1(\send_read_data_buf[0]_i_3_n_1 ),
        .O(\send_read_data_buf_reg[7] [0]),
        .S(\read_ptr_reg_n_1_[2] ));
  MUXF7 \send_read_data_buf_reg[1]_i_1 
       (.I0(\send_read_data_buf[1]_i_2_n_1 ),
        .I1(\send_read_data_buf[1]_i_3_n_1 ),
        .O(\send_read_data_buf_reg[7] [1]),
        .S(\read_ptr_reg_n_1_[2] ));
  MUXF7 \send_read_data_buf_reg[2]_i_1 
       (.I0(\send_read_data_buf[2]_i_2_n_1 ),
        .I1(\send_read_data_buf[2]_i_3_n_1 ),
        .O(\send_read_data_buf_reg[7] [2]),
        .S(\read_ptr_reg_n_1_[2] ));
  MUXF7 \send_read_data_buf_reg[3]_i_1 
       (.I0(\send_read_data_buf[3]_i_2_n_1 ),
        .I1(\send_read_data_buf[3]_i_3_n_1 ),
        .O(\send_read_data_buf_reg[7] [3]),
        .S(\read_ptr_reg_n_1_[2] ));
  MUXF7 \send_read_data_buf_reg[4]_i_1 
       (.I0(\send_read_data_buf[4]_i_2_n_1 ),
        .I1(\send_read_data_buf[4]_i_3_n_1 ),
        .O(\send_read_data_buf_reg[7] [4]),
        .S(\read_ptr_reg_n_1_[2] ));
  MUXF7 \send_read_data_buf_reg[5]_i_1 
       (.I0(\send_read_data_buf[5]_i_2_n_1 ),
        .I1(\send_read_data_buf[5]_i_3_n_1 ),
        .O(\send_read_data_buf_reg[7] [5]),
        .S(\read_ptr_reg_n_1_[2] ));
  MUXF7 \send_read_data_buf_reg[6]_i_1 
       (.I0(\send_read_data_buf[6]_i_2_n_1 ),
        .I1(\send_read_data_buf[6]_i_3_n_1 ),
        .O(\send_read_data_buf_reg[7] [6]),
        .S(\read_ptr_reg_n_1_[2] ));
  MUXF7 \send_read_data_buf_reg[7]_i_2 
       (.I0(\send_read_data_buf[7]_i_3_n_1 ),
        .I1(\send_read_data_buf[7]_i_4_n_1 ),
        .O(\send_read_data_buf_reg[7] [7]),
        .S(\read_ptr_reg_n_1_[2] ));
  LUT6 #(
    .INIT(64'h000000000000BC00)) 
    \uart_send_data_reg[7]_i_2 
       (.I0(mem_data_optype),
        .I1(out[1]),
        .I2(out[0]),
        .I3(uart_sendable),
        .I4(out[2]),
        .I5(rst),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \uart_send_data_reg[7]_i_9 
       (.I0(\buffer_size_reg[0]_0 [0]),
        .I1(\buffer_size_reg[0]_0 [1]),
        .I2(\buffer_size_reg[0]_0 [2]),
        .I3(\buffer_size_reg[0]_0 [3]),
        .O(uart_sendable));
  LUT2 #(
    .INIT(4'h6)) 
    \write_ptr[0]_i_1 
       (.I0(p_0_in),
        .I1(\write_ptr_reg_n_1_[0] ),
        .O(\write_ptr[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_ptr[1]_i_1 
       (.I0(\write_ptr_reg_n_1_[0] ),
        .I1(p_0_in),
        .I2(\write_ptr_reg_n_1_[1] ),
        .O(\write_ptr[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_ptr[2]_i_1 
       (.I0(\write_ptr_reg_n_1_[0] ),
        .I1(\write_ptr_reg_n_1_[1] ),
        .I2(p_0_in),
        .I3(\write_ptr_reg_n_1_[2] ),
        .O(\write_ptr[2]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA2)) 
    \write_ptr[2]_i_2 
       (.I0(E),
        .I1(\buffer_size_reg[0]_0 [3]),
        .I2(\buffer_size_reg[0]_0 [2]),
        .I3(\buffer_size_reg[0]_0 [1]),
        .I4(\buffer_size_reg[0]_0 [0]),
        .O(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    \write_ptr_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\write_ptr[0]_i_1_n_1 ),
        .Q(\write_ptr_reg_n_1_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \write_ptr_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\write_ptr[1]_i_1_n_1 ),
        .Q(\write_ptr_reg_n_1_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \write_ptr_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\write_ptr[2]_i_1_n_1 ),
        .Q(\write_ptr_reg_n_1_[2] ));
endmodule

module id
   (Q,
    rst_BUFG,
    D);
  output [1:0]Q;
  input rst_BUFG;
  input [1:0]D;

  wire [1:0]D;
  wire [1:0]Q;
  wire rst_BUFG;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \jump_type_o_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(rst_BUFG),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0),
    .IS_G_INVERTED(1'b1)) 
    \jump_type_o_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(rst_BUFG),
        .GE(1'b1),
        .Q(Q[1]));
endmodule

module id_ex
   (idex_wreg,
    \id_inst_reg[2] ,
    \mem_wdata_reg[31] ,
    Q,
    \id_inst_reg[3] ,
    \id_inst_reg[5] ,
    \id_inst_reg[6] ,
    \id_inst_reg[7] ,
    \id_inst_reg[8] ,
    \id_inst_reg[9] ,
    \id_inst_reg[10] ,
    \id_inst_reg[11] ,
    \id_inst_reg[12] ,
    \id_inst_reg[15] ,
    \id_inst_reg[16] ,
    \id_inst_reg[17] ,
    \id_inst_reg[18] ,
    \id_inst_reg[19] ,
    \id_inst_reg[20] ,
    \id_inst_reg[21] ,
    \id_inst_reg[22] ,
    \id_inst_reg[23] ,
    \id_inst_reg[24] ,
    \id_inst_reg[25] ,
    \id_inst_reg[26] ,
    \id_inst_reg[27] ,
    \id_inst_reg[28] ,
    \id_inst_reg[29] ,
    \id_inst_reg[30] ,
    \id_inst_reg[31] ,
    \mem_addr_reg[31] ,
    \memop_o_reg[1]_0 ,
    \ex_addr_off_reg[19]_0 ,
    \ex_addr_off_reg[11]_0 ,
    \ex_addr_off_reg[17]_0 ,
    \ex_addr_off_reg[16]_0 ,
    \ex_addr_off_reg[17]_1 ,
    \ex_addr_off_reg[4]_0 ,
    \ex_aluop_reg[2]_0 ,
    \ex_reg2_reg[0]_0 ,
    \ex_addr_base_reg[11]_0 ,
    \ex_reg2_reg[1]_0 ,
    \ex_reg2_reg[2]_0 ,
    \ex_reg2_reg[3]_0 ,
    \ex_reg2_reg[4]_0 ,
    \ex_reg2_reg[5]_0 ,
    \ex_reg2_reg[6]_0 ,
    \ex_reg2_reg[7]_0 ,
    \ex_reg2_reg[8]_0 ,
    \ex_reg2_reg[9]_0 ,
    \ex_reg2_reg[10]_0 ,
    \ex_reg2_reg[11]_0 ,
    \ex_reg2_reg[12]_0 ,
    \ex_reg2_reg[13]_0 ,
    \ex_reg2_reg[14]_0 ,
    \ex_reg2_reg[15]_0 ,
    \ex_reg2_reg[16]_0 ,
    \ex_reg2_reg[17]_0 ,
    \ex_reg2_reg[18]_0 ,
    \ex_reg2_reg[19]_0 ,
    \ex_reg2_reg[20]_0 ,
    \ex_reg2_reg[21]_0 ,
    \ex_reg2_reg[22]_0 ,
    \ex_reg2_reg[23]_0 ,
    \ex_reg2_reg[24]_0 ,
    \ex_reg2_reg[25]_0 ,
    \ex_reg2_reg[26]_0 ,
    \ex_reg2_reg[27]_0 ,
    \ex_reg2_reg[28]_0 ,
    \ex_reg2_reg[29]_0 ,
    \ex_reg2_reg[30]_0 ,
    \ex_reg2_reg[31]_0 ,
    \mem_wd_reg[4] ,
    \memfunct_o_reg[2]_0 ,
    \pc_reg[31] ,
    \id_inst_reg[14] ,
    \id_inst_reg[13] ,
    \id_inst_reg[4] ,
    \id_inst_reg[1] ,
    \id_inst_reg[0] ,
    SR,
    rst_BUFG,
    E,
    id_wreg,
    clk_out1,
    \read_ptr_reg[2] ,
    rst,
    ifid_inst,
    D,
    \id_inst_reg[2]_0 ,
    \ex_alusel_reg[0]_0 ,
    \id_inst_reg[4]_0 ,
    \id_inst_reg[6]_0 ,
    \ex_alusel_reg[0]_1 ,
    \id_inst_reg[31]_0 ,
    \id_inst_reg[5]_0 ,
    \id_inst_reg[14]_0 ,
    \id_inst_reg[3]_0 ,
    \pc_reg[0] ,
    pc0,
    rst_reg);
  output idex_wreg;
  output \id_inst_reg[2] ;
  output [31:0]\mem_wdata_reg[31] ;
  output [1:0]Q;
  output \id_inst_reg[3] ;
  output \id_inst_reg[5] ;
  output \id_inst_reg[6] ;
  output \id_inst_reg[7] ;
  output \id_inst_reg[8] ;
  output \id_inst_reg[9] ;
  output \id_inst_reg[10] ;
  output \id_inst_reg[11] ;
  output \id_inst_reg[12] ;
  output \id_inst_reg[15] ;
  output \id_inst_reg[16] ;
  output \id_inst_reg[17] ;
  output \id_inst_reg[18] ;
  output \id_inst_reg[19] ;
  output \id_inst_reg[20] ;
  output \id_inst_reg[21] ;
  output \id_inst_reg[22] ;
  output \id_inst_reg[23] ;
  output \id_inst_reg[24] ;
  output \id_inst_reg[25] ;
  output \id_inst_reg[26] ;
  output \id_inst_reg[27] ;
  output \id_inst_reg[28] ;
  output \id_inst_reg[29] ;
  output \id_inst_reg[30] ;
  output \id_inst_reg[31] ;
  output [31:0]\mem_addr_reg[31] ;
  output [1:0]\memop_o_reg[1]_0 ;
  output \ex_addr_off_reg[19]_0 ;
  output \ex_addr_off_reg[11]_0 ;
  output \ex_addr_off_reg[17]_0 ;
  output \ex_addr_off_reg[16]_0 ;
  output \ex_addr_off_reg[17]_1 ;
  output \ex_addr_off_reg[4]_0 ;
  output \ex_aluop_reg[2]_0 ;
  output \ex_reg2_reg[0]_0 ;
  output \ex_addr_base_reg[11]_0 ;
  output \ex_reg2_reg[1]_0 ;
  output \ex_reg2_reg[2]_0 ;
  output \ex_reg2_reg[3]_0 ;
  output \ex_reg2_reg[4]_0 ;
  output \ex_reg2_reg[5]_0 ;
  output \ex_reg2_reg[6]_0 ;
  output \ex_reg2_reg[7]_0 ;
  output \ex_reg2_reg[8]_0 ;
  output \ex_reg2_reg[9]_0 ;
  output \ex_reg2_reg[10]_0 ;
  output \ex_reg2_reg[11]_0 ;
  output \ex_reg2_reg[12]_0 ;
  output \ex_reg2_reg[13]_0 ;
  output \ex_reg2_reg[14]_0 ;
  output \ex_reg2_reg[15]_0 ;
  output \ex_reg2_reg[16]_0 ;
  output \ex_reg2_reg[17]_0 ;
  output \ex_reg2_reg[18]_0 ;
  output \ex_reg2_reg[19]_0 ;
  output \ex_reg2_reg[20]_0 ;
  output \ex_reg2_reg[21]_0 ;
  output \ex_reg2_reg[22]_0 ;
  output \ex_reg2_reg[23]_0 ;
  output \ex_reg2_reg[24]_0 ;
  output \ex_reg2_reg[25]_0 ;
  output \ex_reg2_reg[26]_0 ;
  output \ex_reg2_reg[27]_0 ;
  output \ex_reg2_reg[28]_0 ;
  output \ex_reg2_reg[29]_0 ;
  output \ex_reg2_reg[30]_0 ;
  output \ex_reg2_reg[31]_0 ;
  output [4:0]\mem_wd_reg[4] ;
  output [2:0]\memfunct_o_reg[2]_0 ;
  output [31:0]\pc_reg[31] ;
  output \id_inst_reg[14] ;
  output \id_inst_reg[13] ;
  output \id_inst_reg[4] ;
  output \id_inst_reg[1] ;
  output \id_inst_reg[0] ;
  output [0:0]SR;
  input rst_BUFG;
  input [0:0]E;
  input id_wreg;
  input clk_out1;
  input [31:0]\read_ptr_reg[2] ;
  input rst;
  input [5:0]ifid_inst;
  input [3:0]D;
  input [1:0]\id_inst_reg[2]_0 ;
  input [31:0]\ex_alusel_reg[0]_0 ;
  input [31:0]\id_inst_reg[4]_0 ;
  input [4:0]\id_inst_reg[6]_0 ;
  input [31:0]\ex_alusel_reg[0]_1 ;
  input [20:0]\id_inst_reg[31]_0 ;
  input [1:0]\id_inst_reg[5]_0 ;
  input [2:0]\id_inst_reg[14]_0 ;
  input [1:0]\id_inst_reg[3]_0 ;
  input [0:0]\pc_reg[0] ;
  input [30:0]pc0;
  input rst_reg;

  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire clk_out1;
  wire [31:0]\ex0/addr_o0 ;
  wire [31:0]\ex0/data0 ;
  wire [30:0]\ex0/data1 ;
  wire \ex0/data3 ;
  wire \ex0/p_2_in ;
  wire \ex0/reg1_lt_reg2 ;
  wire \ex0/reg1_lt_reg214_out ;
  wire [30:1]\ex0/shiftout0 ;
  wire [0:0]\ex0/shiftout00_out ;
  wire \ex_addr_base_reg[11]_0 ;
  wire \ex_addr_off_reg[11]_0 ;
  wire \ex_addr_off_reg[16]_0 ;
  wire \ex_addr_off_reg[17]_0 ;
  wire \ex_addr_off_reg[17]_1 ;
  wire \ex_addr_off_reg[19]_0 ;
  wire \ex_addr_off_reg[4]_0 ;
  wire \ex_aluop_reg[2]_0 ;
  wire [31:0]\ex_alusel_reg[0]_0 ;
  wire [31:0]\ex_alusel_reg[0]_1 ;
  wire \ex_reg2[0]_i_6_n_1 ;
  wire \ex_reg2[0]_i_8_n_1 ;
  wire \ex_reg2[10]_i_10_n_1 ;
  wire \ex_reg2[10]_i_11_n_1 ;
  wire \ex_reg2[10]_i_12_n_1 ;
  wire \ex_reg2[10]_i_6_n_1 ;
  wire \ex_reg2[10]_i_7_n_1 ;
  wire \ex_reg2[10]_i_8_n_1 ;
  wire \ex_reg2[10]_i_9_n_1 ;
  wire \ex_reg2[11]_i_10_n_1 ;
  wire \ex_reg2[11]_i_11_n_1 ;
  wire \ex_reg2[11]_i_12_n_1 ;
  wire \ex_reg2[11]_i_6_n_1 ;
  wire \ex_reg2[11]_i_7_n_1 ;
  wire \ex_reg2[11]_i_8_n_1 ;
  wire \ex_reg2[11]_i_9_n_1 ;
  wire \ex_reg2[12]_i_10_n_1 ;
  wire \ex_reg2[12]_i_11_n_1 ;
  wire \ex_reg2[12]_i_12_n_1 ;
  wire \ex_reg2[12]_i_6_n_1 ;
  wire \ex_reg2[12]_i_7_n_1 ;
  wire \ex_reg2[12]_i_8_n_1 ;
  wire \ex_reg2[12]_i_9_n_1 ;
  wire \ex_reg2[13]_i_10_n_1 ;
  wire \ex_reg2[13]_i_11_n_1 ;
  wire \ex_reg2[13]_i_12_n_1 ;
  wire \ex_reg2[13]_i_6_n_1 ;
  wire \ex_reg2[13]_i_7_n_1 ;
  wire \ex_reg2[13]_i_8_n_1 ;
  wire \ex_reg2[13]_i_9_n_1 ;
  wire \ex_reg2[14]_i_10_n_1 ;
  wire \ex_reg2[14]_i_11_n_1 ;
  wire \ex_reg2[14]_i_12_n_1 ;
  wire \ex_reg2[14]_i_6_n_1 ;
  wire \ex_reg2[14]_i_7_n_1 ;
  wire \ex_reg2[14]_i_8_n_1 ;
  wire \ex_reg2[14]_i_9_n_1 ;
  wire \ex_reg2[15]_i_10_n_1 ;
  wire \ex_reg2[15]_i_11_n_1 ;
  wire \ex_reg2[15]_i_12_n_1 ;
  wire \ex_reg2[15]_i_13_n_1 ;
  wire \ex_reg2[15]_i_6_n_1 ;
  wire \ex_reg2[15]_i_7_n_1 ;
  wire \ex_reg2[15]_i_8_n_1 ;
  wire \ex_reg2[15]_i_9_n_1 ;
  wire \ex_reg2[16]_i_10_n_1 ;
  wire \ex_reg2[16]_i_11_n_1 ;
  wire \ex_reg2[16]_i_12_n_1 ;
  wire \ex_reg2[16]_i_13_n_1 ;
  wire \ex_reg2[16]_i_14_n_1 ;
  wire \ex_reg2[16]_i_6_n_1 ;
  wire \ex_reg2[16]_i_7_n_1 ;
  wire \ex_reg2[16]_i_8_n_1 ;
  wire \ex_reg2[16]_i_9_n_1 ;
  wire \ex_reg2[17]_i_10_n_1 ;
  wire \ex_reg2[17]_i_11_n_1 ;
  wire \ex_reg2[17]_i_12_n_1 ;
  wire \ex_reg2[17]_i_13_n_1 ;
  wire \ex_reg2[17]_i_14_n_1 ;
  wire \ex_reg2[17]_i_6_n_1 ;
  wire \ex_reg2[17]_i_7_n_1 ;
  wire \ex_reg2[17]_i_8_n_1 ;
  wire \ex_reg2[17]_i_9_n_1 ;
  wire \ex_reg2[18]_i_10_n_1 ;
  wire \ex_reg2[18]_i_11_n_1 ;
  wire \ex_reg2[18]_i_12_n_1 ;
  wire \ex_reg2[18]_i_13_n_1 ;
  wire \ex_reg2[18]_i_14_n_1 ;
  wire \ex_reg2[18]_i_6_n_1 ;
  wire \ex_reg2[18]_i_7_n_1 ;
  wire \ex_reg2[18]_i_8_n_1 ;
  wire \ex_reg2[18]_i_9_n_1 ;
  wire \ex_reg2[19]_i_10_n_1 ;
  wire \ex_reg2[19]_i_11_n_1 ;
  wire \ex_reg2[19]_i_12_n_1 ;
  wire \ex_reg2[19]_i_13_n_1 ;
  wire \ex_reg2[19]_i_14_n_1 ;
  wire \ex_reg2[19]_i_15_n_1 ;
  wire \ex_reg2[19]_i_6_n_1 ;
  wire \ex_reg2[19]_i_7_n_1 ;
  wire \ex_reg2[19]_i_8_n_1 ;
  wire \ex_reg2[19]_i_9_n_1 ;
  wire \ex_reg2[1]_i_6_n_1 ;
  wire \ex_reg2[1]_i_7_n_1 ;
  wire \ex_reg2[1]_i_8_n_1 ;
  wire \ex_reg2[1]_i_9_n_1 ;
  wire \ex_reg2[20]_i_10_n_1 ;
  wire \ex_reg2[20]_i_11_n_1 ;
  wire \ex_reg2[20]_i_6_n_1 ;
  wire \ex_reg2[20]_i_7_n_1 ;
  wire \ex_reg2[20]_i_8_n_1 ;
  wire \ex_reg2[20]_i_9_n_1 ;
  wire \ex_reg2[21]_i_10_n_1 ;
  wire \ex_reg2[21]_i_11_n_1 ;
  wire \ex_reg2[21]_i_6_n_1 ;
  wire \ex_reg2[21]_i_7_n_1 ;
  wire \ex_reg2[21]_i_8_n_1 ;
  wire \ex_reg2[21]_i_9_n_1 ;
  wire \ex_reg2[22]_i_10_n_1 ;
  wire \ex_reg2[22]_i_11_n_1 ;
  wire \ex_reg2[22]_i_6_n_1 ;
  wire \ex_reg2[22]_i_7_n_1 ;
  wire \ex_reg2[22]_i_8_n_1 ;
  wire \ex_reg2[22]_i_9_n_1 ;
  wire \ex_reg2[23]_i_10_n_1 ;
  wire \ex_reg2[23]_i_11_n_1 ;
  wire \ex_reg2[23]_i_6_n_1 ;
  wire \ex_reg2[23]_i_7_n_1 ;
  wire \ex_reg2[23]_i_8_n_1 ;
  wire \ex_reg2[23]_i_9_n_1 ;
  wire \ex_reg2[24]_i_10_n_1 ;
  wire \ex_reg2[24]_i_11_n_1 ;
  wire \ex_reg2[24]_i_6_n_1 ;
  wire \ex_reg2[24]_i_7_n_1 ;
  wire \ex_reg2[24]_i_8_n_1 ;
  wire \ex_reg2[24]_i_9_n_1 ;
  wire \ex_reg2[25]_i_10_n_1 ;
  wire \ex_reg2[25]_i_11_n_1 ;
  wire \ex_reg2[25]_i_6_n_1 ;
  wire \ex_reg2[25]_i_7_n_1 ;
  wire \ex_reg2[25]_i_8_n_1 ;
  wire \ex_reg2[25]_i_9_n_1 ;
  wire \ex_reg2[26]_i_10_n_1 ;
  wire \ex_reg2[26]_i_11_n_1 ;
  wire \ex_reg2[26]_i_6_n_1 ;
  wire \ex_reg2[26]_i_7_n_1 ;
  wire \ex_reg2[26]_i_8_n_1 ;
  wire \ex_reg2[26]_i_9_n_1 ;
  wire \ex_reg2[27]_i_10_n_1 ;
  wire \ex_reg2[27]_i_11_n_1 ;
  wire \ex_reg2[27]_i_6_n_1 ;
  wire \ex_reg2[27]_i_7_n_1 ;
  wire \ex_reg2[27]_i_8_n_1 ;
  wire \ex_reg2[27]_i_9_n_1 ;
  wire \ex_reg2[28]_i_10_n_1 ;
  wire \ex_reg2[28]_i_11_n_1 ;
  wire \ex_reg2[28]_i_6_n_1 ;
  wire \ex_reg2[28]_i_7_n_1 ;
  wire \ex_reg2[28]_i_8_n_1 ;
  wire \ex_reg2[28]_i_9_n_1 ;
  wire \ex_reg2[29]_i_10_n_1 ;
  wire \ex_reg2[29]_i_11_n_1 ;
  wire \ex_reg2[29]_i_12_n_1 ;
  wire \ex_reg2[29]_i_6_n_1 ;
  wire \ex_reg2[29]_i_7_n_1 ;
  wire \ex_reg2[29]_i_8_n_1 ;
  wire \ex_reg2[29]_i_9_n_1 ;
  wire \ex_reg2[2]_i_10_n_1 ;
  wire \ex_reg2[2]_i_11_n_1 ;
  wire \ex_reg2[2]_i_6_n_1 ;
  wire \ex_reg2[2]_i_7_n_1 ;
  wire \ex_reg2[2]_i_8_n_1 ;
  wire \ex_reg2[2]_i_9_n_1 ;
  wire \ex_reg2[30]_i_10_n_1 ;
  wire \ex_reg2[30]_i_11_n_1 ;
  wire \ex_reg2[30]_i_12_n_1 ;
  wire \ex_reg2[30]_i_6_n_1 ;
  wire \ex_reg2[30]_i_7_n_1 ;
  wire \ex_reg2[30]_i_9_n_1 ;
  wire \ex_reg2[31]_i_14_n_1 ;
  wire \ex_reg2[31]_i_15_n_1 ;
  wire \ex_reg2[31]_i_24_n_1 ;
  wire \ex_reg2[31]_i_25_n_1 ;
  wire \ex_reg2[31]_i_29_n_1 ;
  wire \ex_reg2[31]_i_30_n_1 ;
  wire \ex_reg2[31]_i_31_n_1 ;
  wire \ex_reg2[31]_i_32_n_1 ;
  wire \ex_reg2[31]_i_33_n_1 ;
  wire \ex_reg2[31]_i_34_n_1 ;
  wire \ex_reg2[31]_i_35_n_1 ;
  wire \ex_reg2[31]_i_36_n_1 ;
  wire \ex_reg2[31]_i_37_n_1 ;
  wire \ex_reg2[31]_i_38_n_1 ;
  wire \ex_reg2[3]_i_10_n_1 ;
  wire \ex_reg2[3]_i_11_n_1 ;
  wire \ex_reg2[3]_i_6_n_1 ;
  wire \ex_reg2[3]_i_7_n_1 ;
  wire \ex_reg2[3]_i_8_n_1 ;
  wire \ex_reg2[3]_i_9_n_1 ;
  wire \ex_reg2[4]_i_10_n_1 ;
  wire \ex_reg2[4]_i_11_n_1 ;
  wire \ex_reg2[4]_i_6_n_1 ;
  wire \ex_reg2[4]_i_7_n_1 ;
  wire \ex_reg2[4]_i_8_n_1 ;
  wire \ex_reg2[4]_i_9_n_1 ;
  wire \ex_reg2[5]_i_10_n_1 ;
  wire \ex_reg2[5]_i_11_n_1 ;
  wire \ex_reg2[5]_i_6_n_1 ;
  wire \ex_reg2[5]_i_7_n_1 ;
  wire \ex_reg2[5]_i_8_n_1 ;
  wire \ex_reg2[5]_i_9_n_1 ;
  wire \ex_reg2[6]_i_10_n_1 ;
  wire \ex_reg2[6]_i_11_n_1 ;
  wire \ex_reg2[6]_i_6_n_1 ;
  wire \ex_reg2[6]_i_7_n_1 ;
  wire \ex_reg2[6]_i_8_n_1 ;
  wire \ex_reg2[6]_i_9_n_1 ;
  wire \ex_reg2[7]_i_10_n_1 ;
  wire \ex_reg2[7]_i_11_n_1 ;
  wire \ex_reg2[7]_i_6_n_1 ;
  wire \ex_reg2[7]_i_7_n_1 ;
  wire \ex_reg2[7]_i_8_n_1 ;
  wire \ex_reg2[7]_i_9_n_1 ;
  wire \ex_reg2[8]_i_10_n_1 ;
  wire \ex_reg2[8]_i_11_n_1 ;
  wire \ex_reg2[8]_i_12_n_1 ;
  wire \ex_reg2[8]_i_6_n_1 ;
  wire \ex_reg2[8]_i_7_n_1 ;
  wire \ex_reg2[8]_i_8_n_1 ;
  wire \ex_reg2[8]_i_9_n_1 ;
  wire \ex_reg2[9]_i_10_n_1 ;
  wire \ex_reg2[9]_i_11_n_1 ;
  wire \ex_reg2[9]_i_12_n_1 ;
  wire \ex_reg2[9]_i_6_n_1 ;
  wire \ex_reg2[9]_i_7_n_1 ;
  wire \ex_reg2[9]_i_8_n_1 ;
  wire \ex_reg2[9]_i_9_n_1 ;
  wire \ex_reg2_reg[0]_0 ;
  wire \ex_reg2_reg[0]_i_7_n_1 ;
  wire \ex_reg2_reg[10]_0 ;
  wire \ex_reg2_reg[11]_0 ;
  wire \ex_reg2_reg[12]_0 ;
  wire \ex_reg2_reg[13]_0 ;
  wire \ex_reg2_reg[14]_0 ;
  wire \ex_reg2_reg[15]_0 ;
  wire \ex_reg2_reg[16]_0 ;
  wire \ex_reg2_reg[17]_0 ;
  wire \ex_reg2_reg[18]_0 ;
  wire \ex_reg2_reg[19]_0 ;
  wire \ex_reg2_reg[1]_0 ;
  wire \ex_reg2_reg[20]_0 ;
  wire \ex_reg2_reg[21]_0 ;
  wire \ex_reg2_reg[22]_0 ;
  wire \ex_reg2_reg[23]_0 ;
  wire \ex_reg2_reg[24]_0 ;
  wire \ex_reg2_reg[25]_0 ;
  wire \ex_reg2_reg[26]_0 ;
  wire \ex_reg2_reg[27]_0 ;
  wire \ex_reg2_reg[28]_0 ;
  wire \ex_reg2_reg[29]_0 ;
  wire \ex_reg2_reg[2]_0 ;
  wire \ex_reg2_reg[30]_0 ;
  wire \ex_reg2_reg[31]_0 ;
  wire \ex_reg2_reg[3]_0 ;
  wire \ex_reg2_reg[4]_0 ;
  wire \ex_reg2_reg[5]_0 ;
  wire \ex_reg2_reg[6]_0 ;
  wire \ex_reg2_reg[7]_0 ;
  wire \ex_reg2_reg[8]_0 ;
  wire \ex_reg2_reg[9]_0 ;
  wire \id_inst_reg[0] ;
  wire \id_inst_reg[10] ;
  wire \id_inst_reg[11] ;
  wire \id_inst_reg[12] ;
  wire \id_inst_reg[13] ;
  wire \id_inst_reg[14] ;
  wire [2:0]\id_inst_reg[14]_0 ;
  wire \id_inst_reg[15] ;
  wire \id_inst_reg[16] ;
  wire \id_inst_reg[17] ;
  wire \id_inst_reg[18] ;
  wire \id_inst_reg[19] ;
  wire \id_inst_reg[1] ;
  wire \id_inst_reg[20] ;
  wire \id_inst_reg[21] ;
  wire \id_inst_reg[22] ;
  wire \id_inst_reg[23] ;
  wire \id_inst_reg[24] ;
  wire \id_inst_reg[25] ;
  wire \id_inst_reg[26] ;
  wire \id_inst_reg[27] ;
  wire \id_inst_reg[28] ;
  wire \id_inst_reg[29] ;
  wire \id_inst_reg[2] ;
  wire [1:0]\id_inst_reg[2]_0 ;
  wire \id_inst_reg[30] ;
  wire \id_inst_reg[31] ;
  wire [20:0]\id_inst_reg[31]_0 ;
  wire \id_inst_reg[3] ;
  wire [1:0]\id_inst_reg[3]_0 ;
  wire \id_inst_reg[4] ;
  wire [31:0]\id_inst_reg[4]_0 ;
  wire \id_inst_reg[5] ;
  wire [1:0]\id_inst_reg[5]_0 ;
  wire \id_inst_reg[6] ;
  wire [4:0]\id_inst_reg[6]_0 ;
  wire \id_inst_reg[7] ;
  wire \id_inst_reg[8] ;
  wire \id_inst_reg[9] ;
  wire id_wreg;
  wire [31:0]idex_addr_base;
  wire [24:0]idex_addr_off;
  wire [3:0]idex_aluop;
  wire [1:0]idex_alusel;
  wire [31:0]idex_reg1;
  wire [31:0]idex_reg2;
  wire idex_wreg;
  wire [5:0]ifid_inst;
  wire \mem_addr[11]_i_3_n_1 ;
  wire \mem_addr[11]_i_4_n_1 ;
  wire \mem_addr[11]_i_5_n_1 ;
  wire \mem_addr[11]_i_6_n_1 ;
  wire \mem_addr[15]_i_3_n_1 ;
  wire \mem_addr[15]_i_4_n_1 ;
  wire \mem_addr[15]_i_5_n_1 ;
  wire \mem_addr[15]_i_6_n_1 ;
  wire \mem_addr[19]_i_3_n_1 ;
  wire \mem_addr[19]_i_4_n_1 ;
  wire \mem_addr[19]_i_5_n_1 ;
  wire \mem_addr[19]_i_6_n_1 ;
  wire \mem_addr[23]_i_3_n_1 ;
  wire \mem_addr[23]_i_4_n_1 ;
  wire \mem_addr[23]_i_5_n_1 ;
  wire \mem_addr[23]_i_6_n_1 ;
  wire \mem_addr[27]_i_3_n_1 ;
  wire \mem_addr[27]_i_4_n_1 ;
  wire \mem_addr[27]_i_5_n_1 ;
  wire \mem_addr[27]_i_6_n_1 ;
  wire \mem_addr[31]_i_3_n_1 ;
  wire \mem_addr[31]_i_4_n_1 ;
  wire \mem_addr[31]_i_5_n_1 ;
  wire \mem_addr[31]_i_6_n_1 ;
  wire \mem_addr[3]_i_3_n_1 ;
  wire \mem_addr[3]_i_4_n_1 ;
  wire \mem_addr[3]_i_5_n_1 ;
  wire \mem_addr[3]_i_6_n_1 ;
  wire \mem_addr[7]_i_3_n_1 ;
  wire \mem_addr[7]_i_4_n_1 ;
  wire \mem_addr[7]_i_5_n_1 ;
  wire \mem_addr[7]_i_6_n_1 ;
  wire \mem_addr_reg[11]_i_2_n_1 ;
  wire \mem_addr_reg[11]_i_2_n_2 ;
  wire \mem_addr_reg[11]_i_2_n_3 ;
  wire \mem_addr_reg[11]_i_2_n_4 ;
  wire \mem_addr_reg[15]_i_2_n_1 ;
  wire \mem_addr_reg[15]_i_2_n_2 ;
  wire \mem_addr_reg[15]_i_2_n_3 ;
  wire \mem_addr_reg[15]_i_2_n_4 ;
  wire \mem_addr_reg[19]_i_2_n_1 ;
  wire \mem_addr_reg[19]_i_2_n_2 ;
  wire \mem_addr_reg[19]_i_2_n_3 ;
  wire \mem_addr_reg[19]_i_2_n_4 ;
  wire \mem_addr_reg[23]_i_2_n_1 ;
  wire \mem_addr_reg[23]_i_2_n_2 ;
  wire \mem_addr_reg[23]_i_2_n_3 ;
  wire \mem_addr_reg[23]_i_2_n_4 ;
  wire \mem_addr_reg[27]_i_2_n_1 ;
  wire \mem_addr_reg[27]_i_2_n_2 ;
  wire \mem_addr_reg[27]_i_2_n_3 ;
  wire \mem_addr_reg[27]_i_2_n_4 ;
  wire [31:0]\mem_addr_reg[31] ;
  wire \mem_addr_reg[31]_i_2_n_2 ;
  wire \mem_addr_reg[31]_i_2_n_3 ;
  wire \mem_addr_reg[31]_i_2_n_4 ;
  wire \mem_addr_reg[3]_i_2_n_1 ;
  wire \mem_addr_reg[3]_i_2_n_2 ;
  wire \mem_addr_reg[3]_i_2_n_3 ;
  wire \mem_addr_reg[3]_i_2_n_4 ;
  wire \mem_addr_reg[7]_i_2_n_1 ;
  wire \mem_addr_reg[7]_i_2_n_2 ;
  wire \mem_addr_reg[7]_i_2_n_3 ;
  wire \mem_addr_reg[7]_i_2_n_4 ;
  wire [4:0]\mem_wd_reg[4] ;
  wire \mem_wdata[0]_i_10_n_1 ;
  wire \mem_wdata[0]_i_11_n_1 ;
  wire \mem_wdata[0]_i_13_n_1 ;
  wire \mem_wdata[0]_i_15_n_1 ;
  wire \mem_wdata[0]_i_16_n_1 ;
  wire \mem_wdata[0]_i_17_n_1 ;
  wire \mem_wdata[0]_i_18_n_1 ;
  wire \mem_wdata[0]_i_19_n_1 ;
  wire \mem_wdata[0]_i_20_n_1 ;
  wire \mem_wdata[0]_i_21_n_1 ;
  wire \mem_wdata[0]_i_22_n_1 ;
  wire \mem_wdata[0]_i_23_n_1 ;
  wire \mem_wdata[0]_i_27_n_1 ;
  wire \mem_wdata[0]_i_28_n_1 ;
  wire \mem_wdata[0]_i_29_n_1 ;
  wire \mem_wdata[0]_i_2_n_1 ;
  wire \mem_wdata[0]_i_31_n_1 ;
  wire \mem_wdata[0]_i_32_n_1 ;
  wire \mem_wdata[0]_i_33_n_1 ;
  wire \mem_wdata[0]_i_34_n_1 ;
  wire \mem_wdata[0]_i_35_n_1 ;
  wire \mem_wdata[0]_i_36_n_1 ;
  wire \mem_wdata[0]_i_37_n_1 ;
  wire \mem_wdata[0]_i_38_n_1 ;
  wire \mem_wdata[0]_i_3_n_1 ;
  wire \mem_wdata[0]_i_40_n_1 ;
  wire \mem_wdata[0]_i_41_n_1 ;
  wire \mem_wdata[0]_i_42_n_1 ;
  wire \mem_wdata[0]_i_43_n_1 ;
  wire \mem_wdata[0]_i_45_n_1 ;
  wire \mem_wdata[0]_i_46_n_1 ;
  wire \mem_wdata[0]_i_47_n_1 ;
  wire \mem_wdata[0]_i_48_n_1 ;
  wire \mem_wdata[0]_i_49_n_1 ;
  wire \mem_wdata[0]_i_50_n_1 ;
  wire \mem_wdata[0]_i_51_n_1 ;
  wire \mem_wdata[0]_i_52_n_1 ;
  wire \mem_wdata[0]_i_53_n_1 ;
  wire \mem_wdata[0]_i_54_n_1 ;
  wire \mem_wdata[0]_i_55_n_1 ;
  wire \mem_wdata[0]_i_56_n_1 ;
  wire \mem_wdata[0]_i_58_n_1 ;
  wire \mem_wdata[0]_i_59_n_1 ;
  wire \mem_wdata[0]_i_60_n_1 ;
  wire \mem_wdata[0]_i_61_n_1 ;
  wire \mem_wdata[0]_i_62_n_1 ;
  wire \mem_wdata[0]_i_63_n_1 ;
  wire \mem_wdata[0]_i_64_n_1 ;
  wire \mem_wdata[0]_i_65_n_1 ;
  wire \mem_wdata[0]_i_66_n_1 ;
  wire \mem_wdata[0]_i_67_n_1 ;
  wire \mem_wdata[0]_i_68_n_1 ;
  wire \mem_wdata[0]_i_69_n_1 ;
  wire \mem_wdata[0]_i_6_n_1 ;
  wire \mem_wdata[0]_i_70_n_1 ;
  wire \mem_wdata[0]_i_71_n_1 ;
  wire \mem_wdata[0]_i_72_n_1 ;
  wire \mem_wdata[0]_i_73_n_1 ;
  wire \mem_wdata[0]_i_7_n_1 ;
  wire \mem_wdata[0]_i_8_n_1 ;
  wire \mem_wdata[0]_i_9_n_1 ;
  wire \mem_wdata[10]_i_2_n_1 ;
  wire \mem_wdata[10]_i_3_n_1 ;
  wire \mem_wdata[10]_i_4_n_1 ;
  wire \mem_wdata[10]_i_5_n_1 ;
  wire \mem_wdata[10]_i_6_n_1 ;
  wire \mem_wdata[10]_i_8_n_1 ;
  wire \mem_wdata[10]_i_9_n_1 ;
  wire \mem_wdata[11]_i_10_n_1 ;
  wire \mem_wdata[11]_i_11_n_1 ;
  wire \mem_wdata[11]_i_12_n_1 ;
  wire \mem_wdata[11]_i_13_n_1 ;
  wire \mem_wdata[11]_i_14_n_1 ;
  wire \mem_wdata[11]_i_15_n_1 ;
  wire \mem_wdata[11]_i_16_n_1 ;
  wire \mem_wdata[11]_i_18_n_1 ;
  wire \mem_wdata[11]_i_19_n_1 ;
  wire \mem_wdata[11]_i_20_n_1 ;
  wire \mem_wdata[11]_i_21_n_1 ;
  wire \mem_wdata[11]_i_22_n_1 ;
  wire \mem_wdata[11]_i_2_n_1 ;
  wire \mem_wdata[11]_i_3_n_1 ;
  wire \mem_wdata[11]_i_6_n_1 ;
  wire \mem_wdata[11]_i_7_n_1 ;
  wire \mem_wdata[11]_i_8_n_1 ;
  wire \mem_wdata[11]_i_9_n_1 ;
  wire \mem_wdata[12]_i_2_n_1 ;
  wire \mem_wdata[12]_i_3_n_1 ;
  wire \mem_wdata[12]_i_4_n_1 ;
  wire \mem_wdata[12]_i_5_n_1 ;
  wire \mem_wdata[12]_i_6_n_1 ;
  wire \mem_wdata[12]_i_8_n_1 ;
  wire \mem_wdata[13]_i_2_n_1 ;
  wire \mem_wdata[13]_i_3_n_1 ;
  wire \mem_wdata[13]_i_4_n_1 ;
  wire \mem_wdata[13]_i_5_n_1 ;
  wire \mem_wdata[13]_i_6_n_1 ;
  wire \mem_wdata[13]_i_8_n_1 ;
  wire \mem_wdata[14]_i_2_n_1 ;
  wire \mem_wdata[14]_i_3_n_1 ;
  wire \mem_wdata[14]_i_4_n_1 ;
  wire \mem_wdata[14]_i_5_n_1 ;
  wire \mem_wdata[14]_i_6_n_1 ;
  wire \mem_wdata[14]_i_8_n_1 ;
  wire \mem_wdata[15]_i_10_n_1 ;
  wire \mem_wdata[15]_i_11_n_1 ;
  wire \mem_wdata[15]_i_12_n_1 ;
  wire \mem_wdata[15]_i_13_n_1 ;
  wire \mem_wdata[15]_i_14_n_1 ;
  wire \mem_wdata[15]_i_15_n_1 ;
  wire \mem_wdata[15]_i_16_n_1 ;
  wire \mem_wdata[15]_i_18_n_1 ;
  wire \mem_wdata[15]_i_2_n_1 ;
  wire \mem_wdata[15]_i_3_n_1 ;
  wire \mem_wdata[15]_i_6_n_1 ;
  wire \mem_wdata[15]_i_7_n_1 ;
  wire \mem_wdata[15]_i_8_n_1 ;
  wire \mem_wdata[15]_i_9_n_1 ;
  wire \mem_wdata[16]_i_2_n_1 ;
  wire \mem_wdata[16]_i_3_n_1 ;
  wire \mem_wdata[16]_i_4_n_1 ;
  wire \mem_wdata[16]_i_5_n_1 ;
  wire \mem_wdata[16]_i_6_n_1 ;
  wire \mem_wdata[16]_i_8_n_1 ;
  wire \mem_wdata[17]_i_2_n_1 ;
  wire \mem_wdata[17]_i_3_n_1 ;
  wire \mem_wdata[17]_i_4_n_1 ;
  wire \mem_wdata[17]_i_5_n_1 ;
  wire \mem_wdata[17]_i_6_n_1 ;
  wire \mem_wdata[17]_i_8_n_1 ;
  wire \mem_wdata[18]_i_2_n_1 ;
  wire \mem_wdata[18]_i_3_n_1 ;
  wire \mem_wdata[18]_i_4_n_1 ;
  wire \mem_wdata[18]_i_5_n_1 ;
  wire \mem_wdata[18]_i_6_n_1 ;
  wire \mem_wdata[18]_i_8_n_1 ;
  wire \mem_wdata[19]_i_10_n_1 ;
  wire \mem_wdata[19]_i_11_n_1 ;
  wire \mem_wdata[19]_i_12_n_1 ;
  wire \mem_wdata[19]_i_13_n_1 ;
  wire \mem_wdata[19]_i_14_n_1 ;
  wire \mem_wdata[19]_i_15_n_1 ;
  wire \mem_wdata[19]_i_16_n_1 ;
  wire \mem_wdata[19]_i_18_n_1 ;
  wire \mem_wdata[19]_i_2_n_1 ;
  wire \mem_wdata[19]_i_3_n_1 ;
  wire \mem_wdata[19]_i_6_n_1 ;
  wire \mem_wdata[19]_i_7_n_1 ;
  wire \mem_wdata[19]_i_8_n_1 ;
  wire \mem_wdata[19]_i_9_n_1 ;
  wire \mem_wdata[1]_i_2_n_1 ;
  wire \mem_wdata[1]_i_3_n_1 ;
  wire \mem_wdata[1]_i_4_n_1 ;
  wire \mem_wdata[1]_i_5_n_1 ;
  wire \mem_wdata[1]_i_6_n_1 ;
  wire \mem_wdata[1]_i_8_n_1 ;
  wire \mem_wdata[20]_i_2_n_1 ;
  wire \mem_wdata[20]_i_3_n_1 ;
  wire \mem_wdata[20]_i_4_n_1 ;
  wire \mem_wdata[20]_i_5_n_1 ;
  wire \mem_wdata[20]_i_6_n_1 ;
  wire \mem_wdata[20]_i_8_n_1 ;
  wire \mem_wdata[20]_i_9_n_1 ;
  wire \mem_wdata[21]_i_2_n_1 ;
  wire \mem_wdata[21]_i_3_n_1 ;
  wire \mem_wdata[21]_i_4_n_1 ;
  wire \mem_wdata[21]_i_5_n_1 ;
  wire \mem_wdata[21]_i_6_n_1 ;
  wire \mem_wdata[21]_i_8_n_1 ;
  wire \mem_wdata[21]_i_9_n_1 ;
  wire \mem_wdata[22]_i_2_n_1 ;
  wire \mem_wdata[22]_i_3_n_1 ;
  wire \mem_wdata[22]_i_4_n_1 ;
  wire \mem_wdata[22]_i_5_n_1 ;
  wire \mem_wdata[22]_i_6_n_1 ;
  wire \mem_wdata[22]_i_8_n_1 ;
  wire \mem_wdata[22]_i_9_n_1 ;
  wire \mem_wdata[23]_i_10_n_1 ;
  wire \mem_wdata[23]_i_11_n_1 ;
  wire \mem_wdata[23]_i_12_n_1 ;
  wire \mem_wdata[23]_i_13_n_1 ;
  wire \mem_wdata[23]_i_14_n_1 ;
  wire \mem_wdata[23]_i_15_n_1 ;
  wire \mem_wdata[23]_i_16_n_1 ;
  wire \mem_wdata[23]_i_18_n_1 ;
  wire \mem_wdata[23]_i_19_n_1 ;
  wire \mem_wdata[23]_i_2_n_1 ;
  wire \mem_wdata[23]_i_3_n_1 ;
  wire \mem_wdata[23]_i_6_n_1 ;
  wire \mem_wdata[23]_i_7_n_1 ;
  wire \mem_wdata[23]_i_8_n_1 ;
  wire \mem_wdata[23]_i_9_n_1 ;
  wire \mem_wdata[24]_i_2_n_1 ;
  wire \mem_wdata[24]_i_3_n_1 ;
  wire \mem_wdata[24]_i_4_n_1 ;
  wire \mem_wdata[24]_i_5_n_1 ;
  wire \mem_wdata[24]_i_6_n_1 ;
  wire \mem_wdata[24]_i_8_n_1 ;
  wire \mem_wdata[24]_i_9_n_1 ;
  wire \mem_wdata[25]_i_2_n_1 ;
  wire \mem_wdata[25]_i_3_n_1 ;
  wire \mem_wdata[25]_i_4_n_1 ;
  wire \mem_wdata[25]_i_5_n_1 ;
  wire \mem_wdata[25]_i_6_n_1 ;
  wire \mem_wdata[25]_i_8_n_1 ;
  wire \mem_wdata[25]_i_9_n_1 ;
  wire \mem_wdata[26]_i_10_n_1 ;
  wire \mem_wdata[26]_i_2_n_1 ;
  wire \mem_wdata[26]_i_3_n_1 ;
  wire \mem_wdata[26]_i_4_n_1 ;
  wire \mem_wdata[26]_i_5_n_1 ;
  wire \mem_wdata[26]_i_6_n_1 ;
  wire \mem_wdata[26]_i_8_n_1 ;
  wire \mem_wdata[26]_i_9_n_1 ;
  wire \mem_wdata[27]_i_10_n_1 ;
  wire \mem_wdata[27]_i_11_n_1 ;
  wire \mem_wdata[27]_i_12_n_1 ;
  wire \mem_wdata[27]_i_13_n_1 ;
  wire \mem_wdata[27]_i_14_n_1 ;
  wire \mem_wdata[27]_i_15_n_1 ;
  wire \mem_wdata[27]_i_16_n_1 ;
  wire \mem_wdata[27]_i_18_n_1 ;
  wire \mem_wdata[27]_i_19_n_1 ;
  wire \mem_wdata[27]_i_20_n_1 ;
  wire \mem_wdata[27]_i_2_n_1 ;
  wire \mem_wdata[27]_i_3_n_1 ;
  wire \mem_wdata[27]_i_6_n_1 ;
  wire \mem_wdata[27]_i_7_n_1 ;
  wire \mem_wdata[27]_i_8_n_1 ;
  wire \mem_wdata[27]_i_9_n_1 ;
  wire \mem_wdata[28]_i_2_n_1 ;
  wire \mem_wdata[28]_i_3_n_1 ;
  wire \mem_wdata[28]_i_4_n_1 ;
  wire \mem_wdata[28]_i_5_n_1 ;
  wire \mem_wdata[28]_i_6_n_1 ;
  wire \mem_wdata[28]_i_8_n_1 ;
  wire \mem_wdata[28]_i_9_n_1 ;
  wire \mem_wdata[29]_i_2_n_1 ;
  wire \mem_wdata[29]_i_3_n_1 ;
  wire \mem_wdata[29]_i_4_n_1 ;
  wire \mem_wdata[29]_i_5_n_1 ;
  wire \mem_wdata[29]_i_6_n_1 ;
  wire \mem_wdata[29]_i_8_n_1 ;
  wire \mem_wdata[29]_i_9_n_1 ;
  wire \mem_wdata[2]_i_2_n_1 ;
  wire \mem_wdata[2]_i_3_n_1 ;
  wire \mem_wdata[2]_i_4_n_1 ;
  wire \mem_wdata[2]_i_5_n_1 ;
  wire \mem_wdata[2]_i_6_n_1 ;
  wire \mem_wdata[2]_i_8_n_1 ;
  wire \mem_wdata[30]_i_10_n_1 ;
  wire \mem_wdata[30]_i_2_n_1 ;
  wire \mem_wdata[30]_i_3_n_1 ;
  wire \mem_wdata[30]_i_4_n_1 ;
  wire \mem_wdata[30]_i_5_n_1 ;
  wire \mem_wdata[30]_i_6_n_1 ;
  wire \mem_wdata[30]_i_8_n_1 ;
  wire \mem_wdata[30]_i_9_n_1 ;
  wire \mem_wdata[31]_i_10_n_1 ;
  wire \mem_wdata[31]_i_11_n_1 ;
  wire \mem_wdata[31]_i_12_n_1 ;
  wire \mem_wdata[31]_i_13_n_1 ;
  wire \mem_wdata[31]_i_14_n_1 ;
  wire \mem_wdata[31]_i_15_n_1 ;
  wire \mem_wdata[31]_i_16_n_1 ;
  wire \mem_wdata[31]_i_17_n_1 ;
  wire \mem_wdata[31]_i_18_n_1 ;
  wire \mem_wdata[31]_i_19_n_1 ;
  wire \mem_wdata[31]_i_20_n_1 ;
  wire \mem_wdata[31]_i_21_n_1 ;
  wire \mem_wdata[31]_i_22_n_1 ;
  wire \mem_wdata[31]_i_2_n_1 ;
  wire \mem_wdata[31]_i_3_n_1 ;
  wire \mem_wdata[31]_i_5_n_1 ;
  wire \mem_wdata[31]_i_7_n_1 ;
  wire \mem_wdata[31]_i_8_n_1 ;
  wire \mem_wdata[31]_i_9_n_1 ;
  wire \mem_wdata[3]_i_10_n_1 ;
  wire \mem_wdata[3]_i_11_n_1 ;
  wire \mem_wdata[3]_i_12_n_1 ;
  wire \mem_wdata[3]_i_13_n_1 ;
  wire \mem_wdata[3]_i_14_n_1 ;
  wire \mem_wdata[3]_i_15_n_1 ;
  wire \mem_wdata[3]_i_16_n_1 ;
  wire \mem_wdata[3]_i_18_n_1 ;
  wire \mem_wdata[3]_i_2_n_1 ;
  wire \mem_wdata[3]_i_3_n_1 ;
  wire \mem_wdata[3]_i_6_n_1 ;
  wire \mem_wdata[3]_i_7_n_1 ;
  wire \mem_wdata[3]_i_8_n_1 ;
  wire \mem_wdata[3]_i_9_n_1 ;
  wire \mem_wdata[4]_i_2_n_1 ;
  wire \mem_wdata[4]_i_3_n_1 ;
  wire \mem_wdata[4]_i_4_n_1 ;
  wire \mem_wdata[4]_i_5_n_1 ;
  wire \mem_wdata[4]_i_6_n_1 ;
  wire \mem_wdata[4]_i_8_n_1 ;
  wire \mem_wdata[5]_i_2_n_1 ;
  wire \mem_wdata[5]_i_3_n_1 ;
  wire \mem_wdata[5]_i_4_n_1 ;
  wire \mem_wdata[5]_i_5_n_1 ;
  wire \mem_wdata[5]_i_6_n_1 ;
  wire \mem_wdata[5]_i_8_n_1 ;
  wire \mem_wdata[6]_i_2_n_1 ;
  wire \mem_wdata[6]_i_3_n_1 ;
  wire \mem_wdata[6]_i_4_n_1 ;
  wire \mem_wdata[6]_i_5_n_1 ;
  wire \mem_wdata[6]_i_6_n_1 ;
  wire \mem_wdata[6]_i_8_n_1 ;
  wire \mem_wdata[7]_i_10_n_1 ;
  wire \mem_wdata[7]_i_11_n_1 ;
  wire \mem_wdata[7]_i_12_n_1 ;
  wire \mem_wdata[7]_i_13_n_1 ;
  wire \mem_wdata[7]_i_14_n_1 ;
  wire \mem_wdata[7]_i_15_n_1 ;
  wire \mem_wdata[7]_i_16_n_1 ;
  wire \mem_wdata[7]_i_18_n_1 ;
  wire \mem_wdata[7]_i_19_n_1 ;
  wire \mem_wdata[7]_i_2_n_1 ;
  wire \mem_wdata[7]_i_3_n_1 ;
  wire \mem_wdata[7]_i_6_n_1 ;
  wire \mem_wdata[7]_i_7_n_1 ;
  wire \mem_wdata[7]_i_8_n_1 ;
  wire \mem_wdata[7]_i_9_n_1 ;
  wire \mem_wdata[8]_i_2_n_1 ;
  wire \mem_wdata[8]_i_3_n_1 ;
  wire \mem_wdata[8]_i_4_n_1 ;
  wire \mem_wdata[8]_i_5_n_1 ;
  wire \mem_wdata[8]_i_6_n_1 ;
  wire \mem_wdata[8]_i_8_n_1 ;
  wire \mem_wdata[8]_i_9_n_1 ;
  wire \mem_wdata[9]_i_2_n_1 ;
  wire \mem_wdata[9]_i_3_n_1 ;
  wire \mem_wdata[9]_i_4_n_1 ;
  wire \mem_wdata[9]_i_5_n_1 ;
  wire \mem_wdata[9]_i_6_n_1 ;
  wire \mem_wdata[9]_i_8_n_1 ;
  wire \mem_wdata[9]_i_9_n_1 ;
  wire \mem_wdata_reg[0]_i_14_n_3 ;
  wire \mem_wdata_reg[0]_i_14_n_4 ;
  wire \mem_wdata_reg[0]_i_25_n_1 ;
  wire \mem_wdata_reg[0]_i_25_n_2 ;
  wire \mem_wdata_reg[0]_i_25_n_3 ;
  wire \mem_wdata_reg[0]_i_25_n_4 ;
  wire \mem_wdata_reg[0]_i_26_n_1 ;
  wire \mem_wdata_reg[0]_i_26_n_2 ;
  wire \mem_wdata_reg[0]_i_26_n_3 ;
  wire \mem_wdata_reg[0]_i_26_n_4 ;
  wire \mem_wdata_reg[0]_i_30_n_1 ;
  wire \mem_wdata_reg[0]_i_30_n_2 ;
  wire \mem_wdata_reg[0]_i_30_n_3 ;
  wire \mem_wdata_reg[0]_i_30_n_4 ;
  wire \mem_wdata_reg[0]_i_39_n_1 ;
  wire \mem_wdata_reg[0]_i_39_n_2 ;
  wire \mem_wdata_reg[0]_i_39_n_3 ;
  wire \mem_wdata_reg[0]_i_39_n_4 ;
  wire \mem_wdata_reg[0]_i_44_n_1 ;
  wire \mem_wdata_reg[0]_i_44_n_2 ;
  wire \mem_wdata_reg[0]_i_44_n_3 ;
  wire \mem_wdata_reg[0]_i_44_n_4 ;
  wire \mem_wdata_reg[0]_i_4_n_1 ;
  wire \mem_wdata_reg[0]_i_57_n_1 ;
  wire \mem_wdata_reg[0]_i_57_n_2 ;
  wire \mem_wdata_reg[0]_i_57_n_3 ;
  wire \mem_wdata_reg[0]_i_57_n_4 ;
  wire \mem_wdata_reg[11]_i_4_n_1 ;
  wire \mem_wdata_reg[11]_i_4_n_2 ;
  wire \mem_wdata_reg[11]_i_4_n_3 ;
  wire \mem_wdata_reg[11]_i_4_n_4 ;
  wire \mem_wdata_reg[11]_i_5_n_1 ;
  wire \mem_wdata_reg[11]_i_5_n_2 ;
  wire \mem_wdata_reg[11]_i_5_n_3 ;
  wire \mem_wdata_reg[11]_i_5_n_4 ;
  wire \mem_wdata_reg[15]_i_4_n_1 ;
  wire \mem_wdata_reg[15]_i_4_n_2 ;
  wire \mem_wdata_reg[15]_i_4_n_3 ;
  wire \mem_wdata_reg[15]_i_4_n_4 ;
  wire \mem_wdata_reg[15]_i_5_n_1 ;
  wire \mem_wdata_reg[15]_i_5_n_2 ;
  wire \mem_wdata_reg[15]_i_5_n_3 ;
  wire \mem_wdata_reg[15]_i_5_n_4 ;
  wire \mem_wdata_reg[19]_i_4_n_1 ;
  wire \mem_wdata_reg[19]_i_4_n_2 ;
  wire \mem_wdata_reg[19]_i_4_n_3 ;
  wire \mem_wdata_reg[19]_i_4_n_4 ;
  wire \mem_wdata_reg[19]_i_5_n_1 ;
  wire \mem_wdata_reg[19]_i_5_n_2 ;
  wire \mem_wdata_reg[19]_i_5_n_3 ;
  wire \mem_wdata_reg[19]_i_5_n_4 ;
  wire \mem_wdata_reg[23]_i_4_n_1 ;
  wire \mem_wdata_reg[23]_i_4_n_2 ;
  wire \mem_wdata_reg[23]_i_4_n_3 ;
  wire \mem_wdata_reg[23]_i_4_n_4 ;
  wire \mem_wdata_reg[23]_i_5_n_1 ;
  wire \mem_wdata_reg[23]_i_5_n_2 ;
  wire \mem_wdata_reg[23]_i_5_n_3 ;
  wire \mem_wdata_reg[23]_i_5_n_4 ;
  wire \mem_wdata_reg[27]_i_4_n_1 ;
  wire \mem_wdata_reg[27]_i_4_n_2 ;
  wire \mem_wdata_reg[27]_i_4_n_3 ;
  wire \mem_wdata_reg[27]_i_4_n_4 ;
  wire \mem_wdata_reg[27]_i_5_n_1 ;
  wire \mem_wdata_reg[27]_i_5_n_2 ;
  wire \mem_wdata_reg[27]_i_5_n_3 ;
  wire \mem_wdata_reg[27]_i_5_n_4 ;
  wire [31:0]\mem_wdata_reg[31] ;
  wire \mem_wdata_reg[31]_i_4_n_2 ;
  wire \mem_wdata_reg[31]_i_4_n_3 ;
  wire \mem_wdata_reg[31]_i_4_n_4 ;
  wire \mem_wdata_reg[31]_i_6_n_2 ;
  wire \mem_wdata_reg[31]_i_6_n_3 ;
  wire \mem_wdata_reg[31]_i_6_n_4 ;
  wire \mem_wdata_reg[3]_i_4_n_1 ;
  wire \mem_wdata_reg[3]_i_4_n_2 ;
  wire \mem_wdata_reg[3]_i_4_n_3 ;
  wire \mem_wdata_reg[3]_i_4_n_4 ;
  wire \mem_wdata_reg[3]_i_5_n_1 ;
  wire \mem_wdata_reg[3]_i_5_n_2 ;
  wire \mem_wdata_reg[3]_i_5_n_3 ;
  wire \mem_wdata_reg[3]_i_5_n_4 ;
  wire \mem_wdata_reg[7]_i_4_n_1 ;
  wire \mem_wdata_reg[7]_i_4_n_2 ;
  wire \mem_wdata_reg[7]_i_4_n_3 ;
  wire \mem_wdata_reg[7]_i_4_n_4 ;
  wire \mem_wdata_reg[7]_i_5_n_1 ;
  wire \mem_wdata_reg[7]_i_5_n_2 ;
  wire \mem_wdata_reg[7]_i_5_n_3 ;
  wire \mem_wdata_reg[7]_i_5_n_4 ;
  wire [2:0]\memfunct_o_reg[2]_0 ;
  wire [1:0]\memop_o_reg[1]_0 ;
  wire [30:0]pc0;
  wire [0:0]\pc_reg[0] ;
  wire [31:0]\pc_reg[31] ;
  wire [31:0]\read_ptr_reg[2] ;
  wire rst;
  wire rst_BUFG;
  wire rst_reg;
  wire [3:3]\NLW_mem_addr_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem_wdata_reg[0]_i_14_CO_UNCONNECTED ;
  wire [3:0]\NLW_mem_wdata_reg[0]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_wdata_reg[0]_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_wdata_reg[0]_i_26_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_wdata_reg[0]_i_30_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_wdata_reg[0]_i_39_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_wdata_reg[0]_i_44_O_UNCONNECTED ;
  wire [3:0]\NLW_mem_wdata_reg[0]_i_57_O_UNCONNECTED ;
  wire [3:3]\NLW_mem_wdata_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem_wdata_reg[31]_i_6_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[30]_i_3 
       (.I0(\memop_o_reg[1]_0 [1]),
        .I1(\memop_o_reg[1]_0 [0]),
        .O(\ex_addr_base_reg[11]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [0]),
        .Q(idex_addr_base[0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[10] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [10]),
        .Q(idex_addr_base[10]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[11] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [11]),
        .Q(idex_addr_base[11]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[12] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [12]),
        .Q(idex_addr_base[12]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[13] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [13]),
        .Q(idex_addr_base[13]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[14] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [14]),
        .Q(idex_addr_base[14]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[15] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [15]),
        .Q(idex_addr_base[15]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[16] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [16]),
        .Q(idex_addr_base[16]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[17] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [17]),
        .Q(idex_addr_base[17]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[18] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [18]),
        .Q(idex_addr_base[18]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[19] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [19]),
        .Q(idex_addr_base[19]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [1]),
        .Q(idex_addr_base[1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[20] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [20]),
        .Q(idex_addr_base[20]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[21] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [21]),
        .Q(idex_addr_base[21]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[22] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [22]),
        .Q(idex_addr_base[22]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[23] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [23]),
        .Q(idex_addr_base[23]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[24] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [24]),
        .Q(idex_addr_base[24]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[25] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [25]),
        .Q(idex_addr_base[25]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[26] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [26]),
        .Q(idex_addr_base[26]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[27] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [27]),
        .Q(idex_addr_base[27]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[28] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [28]),
        .Q(idex_addr_base[28]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[29] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [29]),
        .Q(idex_addr_base[29]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [2]),
        .Q(idex_addr_base[2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[30] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [30]),
        .Q(idex_addr_base[30]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[31] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [31]),
        .Q(idex_addr_base[31]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [3]),
        .Q(idex_addr_base[3]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [4]),
        .Q(idex_addr_base[4]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[5] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [5]),
        .Q(idex_addr_base[5]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[6] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [6]),
        .Q(idex_addr_base[6]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[7] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [7]),
        .Q(idex_addr_base[7]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[8] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [8]),
        .Q(idex_addr_base[8]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_base_reg[9] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_1 [9]),
        .Q(idex_addr_base[9]),
        .R(rst_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \ex_addr_off[11]_i_3 
       (.I0(ifid_inst[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\ex_addr_off_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \ex_addr_off[16]_i_2 
       (.I0(ifid_inst[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\ex_addr_off_reg[16]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \ex_addr_off[17]_i_2 
       (.I0(ifid_inst[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\ex_addr_off_reg[17]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \ex_addr_off[17]_i_3 
       (.I0(ifid_inst[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\ex_addr_off_reg[17]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \ex_addr_off[19]_i_4 
       (.I0(ifid_inst[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\ex_addr_off_reg[19]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \ex_addr_off[4]_i_2 
       (.I0(ifid_inst[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\ex_addr_off_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [0]),
        .Q(idex_addr_off[0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[10] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [10]),
        .Q(idex_addr_off[10]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[11] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [11]),
        .Q(idex_addr_off[11]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[12] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [12]),
        .Q(idex_addr_off[12]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[13] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [13]),
        .Q(idex_addr_off[13]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[14] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [14]),
        .Q(idex_addr_off[14]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[15] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [15]),
        .Q(idex_addr_off[15]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[16] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [16]),
        .Q(idex_addr_off[16]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[17] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [17]),
        .Q(idex_addr_off[17]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[18] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [18]),
        .Q(idex_addr_off[18]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[19] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [19]),
        .Q(idex_addr_off[19]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [1]),
        .Q(idex_addr_off[1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[24] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [20]),
        .Q(idex_addr_off[24]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [2]),
        .Q(idex_addr_off[2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [3]),
        .Q(idex_addr_off[3]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [4]),
        .Q(idex_addr_off[4]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[5] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [5]),
        .Q(idex_addr_off[5]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[6] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [6]),
        .Q(idex_addr_off[6]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[7] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [7]),
        .Q(idex_addr_off[7]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[8] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [8]),
        .Q(idex_addr_off[8]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_addr_off_reg[9] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[31]_0 [9]),
        .Q(idex_addr_off[9]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_aluop_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(D[0]),
        .Q(idex_aluop[0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_aluop_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(D[1]),
        .Q(idex_aluop[1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_aluop_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(D[2]),
        .Q(idex_aluop[2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_aluop_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(D[3]),
        .Q(idex_aluop[3]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_alusel_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[2]_0 [0]),
        .Q(idex_alusel[0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_alusel_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[2]_0 [1]),
        .Q(idex_alusel[1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [0]),
        .Q(idex_reg1[0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[10] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [10]),
        .Q(idex_reg1[10]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[11] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [11]),
        .Q(idex_reg1[11]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[12] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [12]),
        .Q(idex_reg1[12]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[13] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [13]),
        .Q(idex_reg1[13]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[14] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [14]),
        .Q(idex_reg1[14]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[15] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [15]),
        .Q(idex_reg1[15]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[16] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [16]),
        .Q(idex_reg1[16]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[17] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [17]),
        .Q(idex_reg1[17]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[18] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [18]),
        .Q(idex_reg1[18]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[19] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [19]),
        .Q(idex_reg1[19]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [1]),
        .Q(idex_reg1[1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[20] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [20]),
        .Q(idex_reg1[20]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[21] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [21]),
        .Q(idex_reg1[21]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[22] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [22]),
        .Q(idex_reg1[22]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[23] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [23]),
        .Q(idex_reg1[23]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[24] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [24]),
        .Q(idex_reg1[24]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[25] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [25]),
        .Q(idex_reg1[25]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[26] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [26]),
        .Q(idex_reg1[26]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[27] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [27]),
        .Q(idex_reg1[27]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[28] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [28]),
        .Q(idex_reg1[28]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[29] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [29]),
        .Q(idex_reg1[29]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [2]),
        .Q(idex_reg1[2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[30] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [30]),
        .Q(idex_reg1[30]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[31] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [31]),
        .Q(idex_reg1[31]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [3]),
        .Q(idex_reg1[3]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [4]),
        .Q(idex_reg1[4]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[5] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [5]),
        .Q(idex_reg1[5]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[6] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [6]),
        .Q(idex_reg1[6]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[7] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [7]),
        .Q(idex_reg1[7]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[8] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [8]),
        .Q(idex_reg1[8]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg1_reg[9] 
       (.C(clk_out1),
        .CE(E),
        .D(\ex_alusel_reg[0]_0 [9]),
        .Q(idex_reg1[9]),
        .R(rst_BUFG));
  LUT6 #(
    .INIT(64'h00000000FF200020)) 
    \ex_reg2[0]_i_3 
       (.I0(\mem_wdata_reg[0]_i_4_n_1 ),
        .I1(rst),
        .I2(idex_alusel[1]),
        .I3(idex_alusel[0]),
        .I4(\ex_reg2[0]_i_6_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \ex_reg2[0]_i_6 
       (.I0(\ex_reg2_reg[0]_i_7_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[0]_i_3_n_1 ),
        .I5(rst),
        .O(\ex_reg2[0]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FF55AE04)) 
    \ex_reg2[0]_i_8 
       (.I0(idex_reg2[0]),
        .I1(\mem_wdata[1]_i_6_n_1 ),
        .I2(\mem_wdata[31]_i_18_n_1 ),
        .I3(\mem_wdata[0]_i_10_n_1 ),
        .I4(\mem_wdata[0]_i_9_n_1 ),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[0]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[10]_i_10 
       (.I0(\ex_reg2[16]_i_13_n_1 ),
        .I1(\ex_reg2[12]_i_12_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[14]_i_12_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[10]_i_12_n_1 ),
        .O(\ex_reg2[10]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[10]_i_11 
       (.I0(\mem_wdata[10]_i_9_n_1 ),
        .I1(idex_reg2[1]),
        .I2(\mem_wdata[11]_i_21_n_1 ),
        .O(\ex_reg2[10]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[10]_i_12 
       (.I0(idex_reg1[18]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[26]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[10]),
        .O(\ex_reg2[10]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[10]_i_4 
       (.I0(\mem_wdata[10]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[10]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[10]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[10]_i_6 
       (.I0(\mem_wdata[10]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[10]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[10]_i_7 
       (.I0(\ex_reg2[10]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[10]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[10]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[10]_i_8 
       (.I0(\ex_reg2[11]_i_10_n_1 ),
        .I1(\ex_reg2[10]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[10]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[11]_i_11_n_1 ),
        .O(\ex_reg2[10]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \ex_reg2[10]_i_9 
       (.I0(\mem_wdata[10]_i_8_n_1 ),
        .I1(\ex_reg2[11]_i_10_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\ex_reg2[10]_i_10_n_1 ),
        .I4(idex_aluop[0]),
        .O(\ex_reg2[10]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[11]_i_10 
       (.I0(\ex_reg2[17]_i_13_n_1 ),
        .I1(\ex_reg2[13]_i_12_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[15]_i_12_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[11]_i_12_n_1 ),
        .O(\ex_reg2[11]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[11]_i_11 
       (.I0(\mem_wdata[11]_i_19_n_1 ),
        .I1(idex_reg2[1]),
        .I2(\mem_wdata[11]_i_20_n_1 ),
        .O(\ex_reg2[11]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[11]_i_12 
       (.I0(idex_reg1[19]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[27]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[11]),
        .O(\ex_reg2[11]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[11]_i_3 
       (.I0(\mem_wdata[11]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[11]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[11]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[11]_i_6 
       (.I0(\mem_wdata[11]_i_7_n_1 ),
        .I1(rst),
        .O(\ex_reg2[11]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[11]_i_7 
       (.I0(\ex_reg2[11]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[11]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[11]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[11]_i_8 
       (.I0(\ex_reg2[12]_i_10_n_1 ),
        .I1(\ex_reg2[11]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[11]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[12]_i_11_n_1 ),
        .O(\ex_reg2[11]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000F2FFF222)) 
    \ex_reg2[11]_i_9 
       (.I0(\mem_wdata[11]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex_reg2[12]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[11]_i_10_n_1 ),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[11]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[12]_i_10 
       (.I0(\ex_reg2[18]_i_13_n_1 ),
        .I1(\ex_reg2[14]_i_12_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[16]_i_13_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[12]_i_12_n_1 ),
        .O(\ex_reg2[12]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[12]_i_11 
       (.I0(\mem_wdata[11]_i_21_n_1 ),
        .I1(idex_reg2[1]),
        .I2(\mem_wdata[11]_i_22_n_1 ),
        .O(\ex_reg2[12]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[12]_i_12 
       (.I0(idex_reg1[20]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[28]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[12]),
        .O(\ex_reg2[12]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[12]_i_3 
       (.I0(\mem_wdata[12]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[12]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[12]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[12]_i_6 
       (.I0(\mem_wdata[12]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[12]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[12]_i_7 
       (.I0(\ex_reg2[12]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[12]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[12]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[12]_i_8 
       (.I0(\ex_reg2[13]_i_10_n_1 ),
        .I1(\ex_reg2[12]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[12]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[13]_i_11_n_1 ),
        .O(\ex_reg2[12]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \ex_reg2[12]_i_9 
       (.I0(\mem_wdata[12]_i_8_n_1 ),
        .I1(\ex_reg2[13]_i_10_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\ex_reg2[12]_i_10_n_1 ),
        .I4(idex_aluop[0]),
        .O(\ex_reg2[12]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[13]_i_10 
       (.I0(\ex_reg2[19]_i_14_n_1 ),
        .I1(\ex_reg2[15]_i_12_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[17]_i_13_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[13]_i_12_n_1 ),
        .O(\ex_reg2[13]_i_10_n_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[13]_i_11 
       (.I0(\mem_wdata[11]_i_20_n_1 ),
        .I1(idex_reg2[1]),
        .I2(\ex_reg2[15]_i_13_n_1 ),
        .I3(idex_reg2[2]),
        .I4(\ex_reg2[19]_i_15_n_1 ),
        .O(\ex_reg2[13]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[13]_i_12 
       (.I0(idex_reg1[21]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[29]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[13]),
        .O(\ex_reg2[13]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[13]_i_4 
       (.I0(\mem_wdata[13]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[13]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[13]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[13]_i_6 
       (.I0(\mem_wdata[13]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[13]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[13]_i_7 
       (.I0(\ex_reg2[13]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[13]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[13]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[13]_i_8 
       (.I0(\ex_reg2[14]_i_10_n_1 ),
        .I1(\ex_reg2[13]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[13]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[14]_i_11_n_1 ),
        .O(\ex_reg2[13]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000F2FFF222)) 
    \ex_reg2[13]_i_9 
       (.I0(\mem_wdata[13]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex_reg2[14]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[13]_i_10_n_1 ),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[13]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[14]_i_10 
       (.I0(\ex_reg2[16]_i_12_n_1 ),
        .I1(\ex_reg2[16]_i_13_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[18]_i_13_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[14]_i_12_n_1 ),
        .O(\ex_reg2[14]_i_10_n_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[14]_i_11 
       (.I0(\mem_wdata[11]_i_22_n_1 ),
        .I1(idex_reg2[1]),
        .I2(\ex_reg2[16]_i_14_n_1 ),
        .I3(idex_reg2[2]),
        .I4(\ex_reg2[20]_i_11_n_1 ),
        .O(\ex_reg2[14]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[14]_i_12 
       (.I0(idex_reg1[22]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[30]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[14]),
        .O(\ex_reg2[14]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[14]_i_3 
       (.I0(\mem_wdata[14]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[14]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[14]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[14]_i_6 
       (.I0(\mem_wdata[14]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[14]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[14]_i_7 
       (.I0(\ex_reg2[14]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[14]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[14]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[14]_i_8 
       (.I0(\ex_reg2[15]_i_10_n_1 ),
        .I1(\ex_reg2[14]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[14]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[15]_i_11_n_1 ),
        .O(\ex_reg2[14]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \ex_reg2[14]_i_9 
       (.I0(\mem_wdata[14]_i_8_n_1 ),
        .I1(\ex_reg2[15]_i_10_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\ex_reg2[14]_i_10_n_1 ),
        .I4(idex_aluop[0]),
        .O(\ex_reg2[14]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[15]_i_10 
       (.I0(\ex_reg2[17]_i_12_n_1 ),
        .I1(\ex_reg2[17]_i_13_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[19]_i_14_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[15]_i_12_n_1 ),
        .O(\ex_reg2[15]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[15]_i_11 
       (.I0(\ex_reg2[15]_i_13_n_1 ),
        .I1(\ex_reg2[19]_i_15_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[17]_i_14_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[21]_i_11_n_1 ),
        .O(\ex_reg2[15]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[15]_i_12 
       (.I0(idex_reg1[23]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[31]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[15]),
        .O(\ex_reg2[15]_i_12_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[15]_i_13 
       (.I0(idex_reg1[0]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[8]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[15]_i_13_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[15]_i_3 
       (.I0(\mem_wdata[15]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[15]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[15]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[15]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[15]_i_6 
       (.I0(\mem_wdata[15]_i_7_n_1 ),
        .I1(rst),
        .O(\ex_reg2[15]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[15]_i_7 
       (.I0(\ex_reg2[15]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[15]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[15]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[15]_i_8 
       (.I0(\ex_reg2[16]_i_10_n_1 ),
        .I1(\ex_reg2[15]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[15]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[16]_i_11_n_1 ),
        .O(\ex_reg2[15]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000F2FFF222)) 
    \ex_reg2[15]_i_9 
       (.I0(\mem_wdata[15]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex_reg2[16]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[15]_i_10_n_1 ),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[15]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[16]_i_10 
       (.I0(\ex_reg2[18]_i_12_n_1 ),
        .I1(\ex_reg2[18]_i_13_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[16]_i_12_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[16]_i_13_n_1 ),
        .O(\ex_reg2[16]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[16]_i_11 
       (.I0(\ex_reg2[16]_i_14_n_1 ),
        .I1(\ex_reg2[20]_i_11_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[18]_i_14_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[22]_i_11_n_1 ),
        .O(\ex_reg2[16]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[16]_i_12 
       (.I0(idex_reg1[28]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[20]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[16]_i_12_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[16]_i_13 
       (.I0(idex_reg1[24]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[16]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[16]_i_13_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[16]_i_14 
       (.I0(idex_reg1[1]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[9]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[16]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[16]_i_3 
       (.I0(\mem_wdata[16]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[16]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[16]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[16]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[16]_i_6 
       (.I0(\mem_wdata[16]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[16]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[16]_i_7 
       (.I0(\ex_reg2[16]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[16]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[16]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[16]_i_8 
       (.I0(\ex_reg2[17]_i_10_n_1 ),
        .I1(\ex_reg2[16]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[16]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[17]_i_11_n_1 ),
        .O(\ex_reg2[16]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \ex_reg2[16]_i_9 
       (.I0(\mem_wdata[16]_i_8_n_1 ),
        .I1(\ex_reg2[17]_i_10_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\ex_reg2[16]_i_10_n_1 ),
        .I4(idex_aluop[0]),
        .O(\ex_reg2[16]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[17]_i_10 
       (.I0(\ex_reg2[19]_i_13_n_1 ),
        .I1(\ex_reg2[19]_i_14_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[17]_i_12_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[17]_i_13_n_1 ),
        .O(\ex_reg2[17]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[17]_i_11 
       (.I0(\ex_reg2[17]_i_14_n_1 ),
        .I1(\ex_reg2[21]_i_11_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[19]_i_15_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[23]_i_11_n_1 ),
        .O(\ex_reg2[17]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[17]_i_12 
       (.I0(idex_reg1[29]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[21]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[17]_i_12_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[17]_i_13 
       (.I0(idex_reg1[25]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[17]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[17]_i_13_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[17]_i_14 
       (.I0(idex_reg1[2]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[10]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[17]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[17]_i_4 
       (.I0(\mem_wdata[17]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[17]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[17]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[17]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[17]_i_6 
       (.I0(\mem_wdata[17]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[17]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[17]_i_7 
       (.I0(\ex_reg2[17]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[17]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[17]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[17]_i_8 
       (.I0(\ex_reg2[18]_i_10_n_1 ),
        .I1(\ex_reg2[17]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[17]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[18]_i_11_n_1 ),
        .O(\ex_reg2[17]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000F2FFF222)) 
    \ex_reg2[17]_i_9 
       (.I0(\mem_wdata[17]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex_reg2[18]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[17]_i_10_n_1 ),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[17]_i_9_n_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[18]_i_10 
       (.I0(\mem_wdata[20]_i_9_n_1 ),
        .I1(idex_reg2[1]),
        .I2(\ex_reg2[18]_i_12_n_1 ),
        .I3(idex_reg2[2]),
        .I4(\ex_reg2[18]_i_13_n_1 ),
        .O(\ex_reg2[18]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[18]_i_11 
       (.I0(\ex_reg2[18]_i_14_n_1 ),
        .I1(\ex_reg2[22]_i_11_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[20]_i_11_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[24]_i_11_n_1 ),
        .O(\ex_reg2[18]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[18]_i_12 
       (.I0(idex_reg1[30]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[22]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[18]_i_12_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[18]_i_13 
       (.I0(idex_reg1[26]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[18]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[18]_i_13_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[18]_i_14 
       (.I0(idex_reg1[3]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[11]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[18]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[18]_i_3 
       (.I0(\mem_wdata[18]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[18]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[18]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[18]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[18]_i_6 
       (.I0(\mem_wdata[18]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[18]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[18]_i_7 
       (.I0(\ex_reg2[18]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[18]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[18]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[18]_i_8 
       (.I0(\ex_reg2[19]_i_11_n_1 ),
        .I1(\ex_reg2[18]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[18]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[19]_i_12_n_1 ),
        .O(\ex_reg2[18]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \ex_reg2[18]_i_9 
       (.I0(\mem_wdata[18]_i_8_n_1 ),
        .I1(\ex_reg2[19]_i_11_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\ex_reg2[18]_i_10_n_1 ),
        .I4(idex_aluop[0]),
        .O(\ex_reg2[18]_i_9_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[19]_i_10 
       (.I0(\mem_wdata[22]_i_9_n_1 ),
        .I1(idex_reg2[1]),
        .I2(\mem_wdata[20]_i_9_n_1 ),
        .O(\ex_reg2[19]_i_10_n_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[19]_i_11 
       (.I0(\mem_wdata[21]_i_9_n_1 ),
        .I1(idex_reg2[1]),
        .I2(\ex_reg2[19]_i_13_n_1 ),
        .I3(idex_reg2[2]),
        .I4(\ex_reg2[19]_i_14_n_1 ),
        .O(\ex_reg2[19]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[19]_i_12 
       (.I0(\ex_reg2[19]_i_15_n_1 ),
        .I1(\ex_reg2[23]_i_11_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[21]_i_11_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[25]_i_11_n_1 ),
        .O(\ex_reg2[19]_i_12_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[19]_i_13 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[23]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[19]_i_13_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[19]_i_14 
       (.I0(idex_reg1[27]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[19]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[19]_i_14_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[19]_i_15 
       (.I0(idex_reg1[4]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[12]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[19]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[19]_i_4 
       (.I0(\mem_wdata[19]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[19]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[19]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[19]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[19]_i_6 
       (.I0(\mem_wdata[19]_i_7_n_1 ),
        .I1(rst),
        .O(\ex_reg2[19]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[19]_i_7 
       (.I0(\ex_reg2[19]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[19]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[19]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[19]_i_8 
       (.I0(\ex_reg2[19]_i_10_n_1 ),
        .I1(\ex_reg2[19]_i_11_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[19]_i_12_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[20]_i_10_n_1 ),
        .O(\ex_reg2[19]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000F2FFF222)) 
    \ex_reg2[19]_i_9 
       (.I0(\mem_wdata[19]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex_reg2[19]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[19]_i_11_n_1 ),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[19]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[1]_i_4 
       (.I0(\mem_wdata[1]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[1]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[1]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[1]_i_6 
       (.I0(\mem_wdata[1]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[1]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[1]_i_7 
       (.I0(\ex_reg2[1]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[1]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[1]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[1]_i_8 
       (.I0(\ex_reg2[2]_i_10_n_1 ),
        .I1(\mem_wdata[0]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\mem_wdata[0]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[2]_i_11_n_1 ),
        .O(\ex_reg2[1]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000F2FFF222)) 
    \ex_reg2[1]_i_9 
       (.I0(\mem_wdata[1]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex_reg2[2]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\mem_wdata[0]_i_10_n_1 ),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[1]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[20]_i_10 
       (.I0(\ex_reg2[20]_i_11_n_1 ),
        .I1(\ex_reg2[24]_i_11_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[22]_i_11_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[26]_i_11_n_1 ),
        .O(\ex_reg2[20]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[20]_i_11 
       (.I0(idex_reg1[5]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[13]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[20]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[20]_i_4 
       (.I0(\mem_wdata[20]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[20]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[20]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[20]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[20]_i_6 
       (.I0(\mem_wdata[20]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[20]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[20]_i_7 
       (.I0(\ex_reg2[20]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[20]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[20]_i_7_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[20]_i_8 
       (.I0(\ex0/shiftout0 [20]),
        .I1(idex_aluop[0]),
        .I2(\ex_reg2[20]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[21]_i_10_n_1 ),
        .O(\ex_reg2[20]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00E2)) 
    \ex_reg2[20]_i_9 
       (.I0(\mem_wdata[21]_i_6_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\mem_wdata[19]_i_16_n_1 ),
        .I3(\mem_wdata[31]_i_18_n_1 ),
        .I4(\ex0/shiftout0 [20]),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[20]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[21]_i_10 
       (.I0(\ex_reg2[21]_i_11_n_1 ),
        .I1(\ex_reg2[25]_i_11_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[23]_i_11_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[27]_i_11_n_1 ),
        .O(\ex_reg2[21]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[21]_i_11 
       (.I0(idex_reg1[6]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[14]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[21]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[21]_i_3 
       (.I0(\mem_wdata[21]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[21]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[21]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[21]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[21]_i_6 
       (.I0(\mem_wdata[21]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[21]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[21]_i_7 
       (.I0(\ex_reg2[21]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[21]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[21]_i_7_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[21]_i_8 
       (.I0(\ex0/shiftout0 [21]),
        .I1(idex_aluop[0]),
        .I2(\ex_reg2[21]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[22]_i_10_n_1 ),
        .O(\ex_reg2[21]_i_8_n_1 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \ex_reg2[21]_i_9 
       (.I0(\mem_wdata[21]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex0/shiftout0 [21]),
        .I3(idex_aluop[0]),
        .O(\ex_reg2[21]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[22]_i_10 
       (.I0(\ex_reg2[22]_i_11_n_1 ),
        .I1(\ex_reg2[26]_i_11_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[24]_i_11_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[28]_i_11_n_1 ),
        .O(\ex_reg2[22]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ex_reg2[22]_i_11 
       (.I0(idex_reg1[7]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[15]),
        .I3(idex_reg2[4]),
        .O(\ex_reg2[22]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[22]_i_3 
       (.I0(\mem_wdata[22]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[22]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[22]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[22]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[22]_i_6 
       (.I0(\mem_wdata[22]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[22]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[22]_i_7 
       (.I0(\ex_reg2[22]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[22]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[22]_i_7_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[22]_i_8 
       (.I0(\ex0/shiftout0 [22]),
        .I1(idex_aluop[0]),
        .I2(\ex_reg2[22]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[23]_i_10_n_1 ),
        .O(\ex_reg2[22]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00E2)) 
    \ex_reg2[22]_i_9 
       (.I0(\mem_wdata[23]_i_16_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\mem_wdata[21]_i_6_n_1 ),
        .I3(\mem_wdata[31]_i_18_n_1 ),
        .I4(\ex0/shiftout0 [22]),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[22]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[23]_i_10 
       (.I0(\ex_reg2[23]_i_11_n_1 ),
        .I1(\ex_reg2[27]_i_11_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[25]_i_11_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[29]_i_12_n_1 ),
        .O(\ex_reg2[23]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[23]_i_11 
       (.I0(idex_reg1[8]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[0]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[16]),
        .O(\ex_reg2[23]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[23]_i_4 
       (.I0(\mem_wdata[23]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[23]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[23]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[23]_i_6 
       (.I0(\mem_wdata[23]_i_7_n_1 ),
        .I1(rst),
        .O(\ex_reg2[23]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[23]_i_7 
       (.I0(\ex_reg2[23]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[23]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[23]_i_7_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[23]_i_8 
       (.I0(\ex0/shiftout0 [23]),
        .I1(idex_aluop[0]),
        .I2(\ex_reg2[23]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[24]_i_10_n_1 ),
        .O(\ex_reg2[23]_i_8_n_1 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \ex_reg2[23]_i_9 
       (.I0(\mem_wdata[23]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex0/shiftout0 [23]),
        .I3(idex_aluop[0]),
        .O(\ex_reg2[23]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[24]_i_10 
       (.I0(\ex_reg2[24]_i_11_n_1 ),
        .I1(\ex_reg2[28]_i_11_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[26]_i_11_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[30]_i_12_n_1 ),
        .O(\ex_reg2[24]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[24]_i_11 
       (.I0(idex_reg1[9]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[1]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[17]),
        .O(\ex_reg2[24]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[24]_i_3 
       (.I0(\mem_wdata[24]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[24]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[24]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[24]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[24]_i_6 
       (.I0(\mem_wdata[24]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[24]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[24]_i_7 
       (.I0(\ex_reg2[24]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[24]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[24]_i_7_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[24]_i_8 
       (.I0(\ex0/shiftout0 [24]),
        .I1(idex_aluop[0]),
        .I2(\ex_reg2[24]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[25]_i_10_n_1 ),
        .O(\ex_reg2[24]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00E2)) 
    \ex_reg2[24]_i_9 
       (.I0(\mem_wdata[25]_i_6_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\mem_wdata[23]_i_16_n_1 ),
        .I3(\mem_wdata[31]_i_18_n_1 ),
        .I4(\ex0/shiftout0 [24]),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[24]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[25]_i_10 
       (.I0(\ex_reg2[25]_i_11_n_1 ),
        .I1(\ex_reg2[29]_i_12_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[27]_i_11_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[31]_i_31_n_1 ),
        .O(\ex_reg2[25]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[25]_i_11 
       (.I0(idex_reg1[10]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[2]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[18]),
        .O(\ex_reg2[25]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[25]_i_3 
       (.I0(\mem_wdata[25]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[25]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[25]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[25]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[25]_i_6 
       (.I0(\mem_wdata[25]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[25]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[25]_i_7 
       (.I0(\ex_reg2[25]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[25]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[25]_i_7_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[25]_i_8 
       (.I0(\ex0/shiftout0 [25]),
        .I1(idex_aluop[0]),
        .I2(\ex_reg2[25]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[26]_i_10_n_1 ),
        .O(\ex_reg2[25]_i_8_n_1 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \ex_reg2[25]_i_9 
       (.I0(\mem_wdata[25]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex0/shiftout0 [25]),
        .I3(idex_aluop[0]),
        .O(\ex_reg2[25]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[26]_i_10 
       (.I0(\ex_reg2[26]_i_11_n_1 ),
        .I1(\ex_reg2[30]_i_12_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[28]_i_11_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[31]_i_35_n_1 ),
        .O(\ex_reg2[26]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[26]_i_11 
       (.I0(idex_reg1[11]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[3]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[19]),
        .O(\ex_reg2[26]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[26]_i_3 
       (.I0(\mem_wdata[26]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[26]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[26]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[26]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[26]_i_6 
       (.I0(\mem_wdata[26]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[26]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[26]_i_7 
       (.I0(\ex_reg2[26]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[26]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[26]_i_7_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[26]_i_8 
       (.I0(\ex0/shiftout0 [26]),
        .I1(idex_aluop[0]),
        .I2(\ex_reg2[26]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[27]_i_10_n_1 ),
        .O(\ex_reg2[26]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00E2)) 
    \ex_reg2[26]_i_9 
       (.I0(\mem_wdata[27]_i_16_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\mem_wdata[25]_i_6_n_1 ),
        .I3(\mem_wdata[31]_i_18_n_1 ),
        .I4(\ex0/shiftout0 [26]),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[26]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[27]_i_10 
       (.I0(\ex_reg2[27]_i_11_n_1 ),
        .I1(\ex_reg2[31]_i_31_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[29]_i_12_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[31]_i_33_n_1 ),
        .O(\ex_reg2[27]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[27]_i_11 
       (.I0(idex_reg1[12]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[4]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[20]),
        .O(\ex_reg2[27]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[27]_i_3 
       (.I0(\mem_wdata[27]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[27]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[27]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[27]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[27]_i_6 
       (.I0(\mem_wdata[27]_i_7_n_1 ),
        .I1(rst),
        .O(\ex_reg2[27]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[27]_i_7 
       (.I0(\ex_reg2[27]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[27]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[27]_i_7_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[27]_i_8 
       (.I0(\ex0/shiftout0 [27]),
        .I1(idex_aluop[0]),
        .I2(\ex_reg2[27]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[28]_i_10_n_1 ),
        .O(\ex_reg2[27]_i_8_n_1 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \ex_reg2[27]_i_9 
       (.I0(\mem_wdata[27]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex0/shiftout0 [27]),
        .I3(idex_aluop[0]),
        .O(\ex_reg2[27]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[28]_i_10 
       (.I0(\ex_reg2[28]_i_11_n_1 ),
        .I1(\ex_reg2[31]_i_35_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[30]_i_12_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[31]_i_37_n_1 ),
        .O(\ex_reg2[28]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[28]_i_11 
       (.I0(idex_reg1[13]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[5]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[21]),
        .O(\ex_reg2[28]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[28]_i_3 
       (.I0(\mem_wdata[28]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[28]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[28]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[28]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[28]_i_6 
       (.I0(\mem_wdata[28]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[28]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[28]_i_7 
       (.I0(\ex_reg2[28]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[28]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[28]_i_7_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[28]_i_8 
       (.I0(\ex0/shiftout0 [28]),
        .I1(idex_aluop[0]),
        .I2(\ex_reg2[28]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[29]_i_10_n_1 ),
        .O(\ex_reg2[28]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00E2)) 
    \ex_reg2[28]_i_9 
       (.I0(\mem_wdata[29]_i_6_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\mem_wdata[27]_i_16_n_1 ),
        .I3(\mem_wdata[31]_i_18_n_1 ),
        .I4(\ex0/shiftout0 [28]),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[28]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[29]_i_10 
       (.I0(\ex_reg2[29]_i_12_n_1 ),
        .I1(\ex_reg2[31]_i_33_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[31]_i_31_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[31]_i_32_n_1 ),
        .O(\ex_reg2[29]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ex_reg2[29]_i_11 
       (.I0(idex_reg2[0]),
        .I1(idex_reg2[1]),
        .O(\ex_reg2[29]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[29]_i_12 
       (.I0(idex_reg1[14]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[6]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[22]),
        .O(\ex_reg2[29]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[29]_i_3 
       (.I0(\mem_wdata[29]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[29]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[29]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[29]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[29]_i_6 
       (.I0(\mem_wdata[29]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[29]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[29]_i_7 
       (.I0(\ex_reg2[29]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[29]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[29]_i_7_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[29]_i_8 
       (.I0(\ex0/shiftout0 [29]),
        .I1(idex_aluop[0]),
        .I2(\ex_reg2[29]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[30]_i_11_n_1 ),
        .O(\ex_reg2[29]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00E2)) 
    \ex_reg2[29]_i_9 
       (.I0(idex_reg1[31]),
        .I1(\ex_reg2[29]_i_11_n_1 ),
        .I2(\mem_wdata[27]_i_16_n_1 ),
        .I3(\mem_wdata[31]_i_18_n_1 ),
        .I4(\ex0/shiftout0 [29]),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[29]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[2]_i_10 
       (.I0(\ex_reg2[8]_i_12_n_1 ),
        .I1(\mem_wdata[0]_i_18_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\mem_wdata[0]_i_16_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\mem_wdata[0]_i_17_n_1 ),
        .O(\ex_reg2[2]_i_10_n_1 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ex_reg2[2]_i_11 
       (.I0(idex_reg2[2]),
        .I1(idex_reg2[4]),
        .I2(idex_reg1[1]),
        .I3(idex_reg2[3]),
        .I4(idex_reg2[1]),
        .O(\ex_reg2[2]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[2]_i_4 
       (.I0(\mem_wdata[2]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[2]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[2]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[2]_i_6 
       (.I0(\mem_wdata[2]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[2]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[2]_i_7 
       (.I0(\ex_reg2[2]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[2]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[2]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[2]_i_8 
       (.I0(\ex_reg2[3]_i_10_n_1 ),
        .I1(\ex_reg2[2]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[2]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[3]_i_11_n_1 ),
        .O(\ex_reg2[2]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \ex_reg2[2]_i_9 
       (.I0(\mem_wdata[2]_i_8_n_1 ),
        .I1(\ex_reg2[3]_i_10_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\ex_reg2[2]_i_10_n_1 ),
        .I4(idex_aluop[0]),
        .O(\ex_reg2[2]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00E2)) 
    \ex_reg2[30]_i_10 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[0]),
        .I2(\mem_wdata[29]_i_6_n_1 ),
        .I3(\mem_wdata[31]_i_18_n_1 ),
        .I4(\ex0/shiftout0 [30]),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[30]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[30]_i_11 
       (.I0(\ex_reg2[30]_i_12_n_1 ),
        .I1(\ex_reg2[31]_i_37_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[31]_i_35_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[31]_i_36_n_1 ),
        .O(\ex_reg2[30]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[30]_i_12 
       (.I0(idex_reg1[15]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[7]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[23]),
        .O(\ex_reg2[30]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[30]_i_3 
       (.I0(\mem_wdata[30]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[30]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[30]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[30]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[30]_i_6 
       (.I0(\mem_wdata[30]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[30]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[30]_i_7 
       (.I0(\ex_reg2[30]_i_9_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[30]_i_10_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[30]_i_7_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[30]_i_9 
       (.I0(\ex0/shiftout0 [30]),
        .I1(idex_aluop[0]),
        .I2(\ex_reg2[30]_i_11_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[31]_i_29_n_1 ),
        .O(\ex_reg2[30]_i_9_n_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[31]_i_14 
       (.I0(\mem_wdata[31]_i_9_n_1 ),
        .I1(rst),
        .O(\ex_reg2[31]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[31]_i_15 
       (.I0(\ex_reg2[31]_i_24_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[31]_i_25_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[31]_i_15_n_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ex_reg2[31]_i_24 
       (.I0(\mem_wdata[31]_i_19_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex_reg2[31]_i_29_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[31]_i_30_n_1 ),
        .O(\ex_reg2[31]_i_24_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h00F2)) 
    \ex_reg2[31]_i_25 
       (.I0(idex_reg1[31]),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\mem_wdata[31]_i_19_n_1 ),
        .I3(idex_aluop[0]),
        .O(\ex_reg2[31]_i_25_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[31]_i_29 
       (.I0(\ex_reg2[31]_i_31_n_1 ),
        .I1(\ex_reg2[31]_i_32_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[31]_i_33_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[31]_i_34_n_1 ),
        .O(\ex_reg2[31]_i_29_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[31]_i_30 
       (.I0(\ex_reg2[31]_i_35_n_1 ),
        .I1(\ex_reg2[31]_i_36_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[31]_i_37_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[31]_i_38_n_1 ),
        .O(\ex_reg2[31]_i_30_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[31]_i_31 
       (.I0(idex_reg1[0]),
        .I1(idex_reg1[16]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[8]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[24]),
        .O(\ex_reg2[31]_i_31_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[31]_i_32 
       (.I0(idex_reg1[4]),
        .I1(idex_reg1[20]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[12]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[28]),
        .O(\ex_reg2[31]_i_32_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[31]_i_33 
       (.I0(idex_reg1[2]),
        .I1(idex_reg1[18]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[10]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[26]),
        .O(\ex_reg2[31]_i_33_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[31]_i_34 
       (.I0(idex_reg1[6]),
        .I1(idex_reg1[22]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[14]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[30]),
        .O(\ex_reg2[31]_i_34_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[31]_i_35 
       (.I0(idex_reg1[1]),
        .I1(idex_reg1[17]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[9]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[25]),
        .O(\ex_reg2[31]_i_35_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[31]_i_36 
       (.I0(idex_reg1[5]),
        .I1(idex_reg1[21]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[13]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[29]),
        .O(\ex_reg2[31]_i_36_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[31]_i_37 
       (.I0(idex_reg1[3]),
        .I1(idex_reg1[19]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[11]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[27]),
        .O(\ex_reg2[31]_i_37_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[31]_i_38 
       (.I0(idex_reg1[7]),
        .I1(idex_reg1[23]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[15]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[31]),
        .O(\ex_reg2[31]_i_38_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[31]_i_5 
       (.I0(\mem_wdata[31]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[31]_i_14_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[31]_i_15_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[3]_i_10 
       (.I0(\ex_reg2[9]_i_12_n_1 ),
        .I1(\mem_wdata[0]_i_22_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\mem_wdata[0]_i_20_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\mem_wdata[0]_i_21_n_1 ),
        .O(\ex_reg2[3]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ex_reg2[3]_i_11 
       (.I0(idex_reg1[0]),
        .I1(idex_reg2[1]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[2]),
        .I4(idex_reg2[4]),
        .I5(idex_reg2[2]),
        .O(\ex_reg2[3]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[3]_i_3 
       (.I0(\mem_wdata[3]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[3]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[3]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[3]_i_6 
       (.I0(\mem_wdata[3]_i_7_n_1 ),
        .I1(rst),
        .O(\ex_reg2[3]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[3]_i_7 
       (.I0(\ex_reg2[3]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[3]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[3]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[3]_i_8 
       (.I0(\ex_reg2[4]_i_10_n_1 ),
        .I1(\ex_reg2[3]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[3]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[4]_i_11_n_1 ),
        .O(\ex_reg2[3]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000F2FFF222)) 
    \ex_reg2[3]_i_9 
       (.I0(\mem_wdata[3]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex_reg2[4]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[3]_i_10_n_1 ),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[3]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[4]_i_10 
       (.I0(\ex_reg2[10]_i_12_n_1 ),
        .I1(\mem_wdata[0]_i_16_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[8]_i_12_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\mem_wdata[0]_i_18_n_1 ),
        .O(\ex_reg2[4]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ex_reg2[4]_i_11 
       (.I0(idex_reg1[1]),
        .I1(idex_reg2[1]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[3]),
        .I4(idex_reg2[4]),
        .I5(idex_reg2[2]),
        .O(\ex_reg2[4]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[4]_i_3 
       (.I0(\mem_wdata[4]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[4]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[4]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[4]_i_6 
       (.I0(\mem_wdata[4]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[4]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[4]_i_7 
       (.I0(\ex_reg2[4]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[4]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[4]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[4]_i_8 
       (.I0(\ex_reg2[5]_i_10_n_1 ),
        .I1(\ex_reg2[4]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[4]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[5]_i_11_n_1 ),
        .O(\ex_reg2[4]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \ex_reg2[4]_i_9 
       (.I0(\mem_wdata[4]_i_8_n_1 ),
        .I1(\ex_reg2[5]_i_10_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\ex_reg2[4]_i_10_n_1 ),
        .I4(idex_aluop[0]),
        .O(\ex_reg2[4]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[5]_i_10 
       (.I0(\ex_reg2[11]_i_12_n_1 ),
        .I1(\mem_wdata[0]_i_20_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[9]_i_12_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\mem_wdata[0]_i_22_n_1 ),
        .O(\ex_reg2[5]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ex_reg2[5]_i_11 
       (.I0(idex_reg2[3]),
        .I1(idex_reg1[2]),
        .I2(idex_reg2[4]),
        .I3(idex_reg2[2]),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[7]_i_19_n_1 ),
        .O(\ex_reg2[5]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[5]_i_4 
       (.I0(\mem_wdata[5]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[5]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[5]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[5]_i_6 
       (.I0(\mem_wdata[5]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[5]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[5]_i_7 
       (.I0(\ex_reg2[5]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[5]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[5]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[5]_i_8 
       (.I0(\ex_reg2[6]_i_10_n_1 ),
        .I1(\ex_reg2[5]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[5]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[6]_i_11_n_1 ),
        .O(\ex_reg2[5]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000F2FFF222)) 
    \ex_reg2[5]_i_9 
       (.I0(\mem_wdata[5]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex_reg2[6]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[5]_i_10_n_1 ),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[5]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[6]_i_10 
       (.I0(\ex_reg2[12]_i_12_n_1 ),
        .I1(\ex_reg2[8]_i_12_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[10]_i_12_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\mem_wdata[0]_i_16_n_1 ),
        .O(\ex_reg2[6]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ex_reg2[6]_i_11 
       (.I0(idex_reg2[3]),
        .I1(idex_reg1[3]),
        .I2(idex_reg2[4]),
        .I3(idex_reg2[2]),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[8]_i_9_n_1 ),
        .O(\ex_reg2[6]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[6]_i_3 
       (.I0(\mem_wdata[6]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[6]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[6]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[6]_i_6 
       (.I0(\mem_wdata[6]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[6]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[6]_i_7 
       (.I0(\ex_reg2[6]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[6]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[6]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[6]_i_8 
       (.I0(\ex_reg2[7]_i_10_n_1 ),
        .I1(\ex_reg2[6]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[6]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[7]_i_11_n_1 ),
        .O(\ex_reg2[6]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \ex_reg2[6]_i_9 
       (.I0(\mem_wdata[6]_i_8_n_1 ),
        .I1(\ex_reg2[7]_i_10_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\ex_reg2[6]_i_10_n_1 ),
        .I4(idex_aluop[0]),
        .O(\ex_reg2[6]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[7]_i_10 
       (.I0(\ex_reg2[13]_i_12_n_1 ),
        .I1(\ex_reg2[9]_i_12_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[11]_i_12_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\mem_wdata[0]_i_20_n_1 ),
        .O(\ex_reg2[7]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[7]_i_11 
       (.I0(\mem_wdata[7]_i_19_n_1 ),
        .I1(idex_reg2[1]),
        .I2(\mem_wdata[9]_i_9_n_1 ),
        .O(\ex_reg2[7]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[7]_i_3 
       (.I0(\mem_wdata[7]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[7]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[7]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[7]_i_6 
       (.I0(\mem_wdata[7]_i_7_n_1 ),
        .I1(rst),
        .O(\ex_reg2[7]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[7]_i_7 
       (.I0(\ex_reg2[7]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[7]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[7]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[7]_i_8 
       (.I0(\ex_reg2[8]_i_10_n_1 ),
        .I1(\ex_reg2[7]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[7]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[8]_i_11_n_1 ),
        .O(\ex_reg2[7]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000F2FFF222)) 
    \ex_reg2[7]_i_9 
       (.I0(\mem_wdata[7]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex_reg2[8]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[7]_i_10_n_1 ),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[7]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[8]_i_10 
       (.I0(\ex_reg2[14]_i_12_n_1 ),
        .I1(\ex_reg2[10]_i_12_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[12]_i_12_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[8]_i_12_n_1 ),
        .O(\ex_reg2[8]_i_10_n_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[8]_i_11 
       (.I0(\mem_wdata[8]_i_9_n_1 ),
        .I1(idex_reg2[1]),
        .I2(\mem_wdata[10]_i_9_n_1 ),
        .O(\ex_reg2[8]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[8]_i_12 
       (.I0(idex_reg1[16]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[24]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[8]),
        .O(\ex_reg2[8]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[8]_i_3 
       (.I0(\mem_wdata[8]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[8]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[8]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[8]_i_6 
       (.I0(\mem_wdata[8]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[8]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[8]_i_7 
       (.I0(\ex_reg2[8]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[8]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[8]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[8]_i_8 
       (.I0(\ex_reg2[9]_i_10_n_1 ),
        .I1(\ex_reg2[8]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[8]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[9]_i_11_n_1 ),
        .O(\ex_reg2[8]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h0000EFEA)) 
    \ex_reg2[8]_i_9 
       (.I0(\mem_wdata[8]_i_8_n_1 ),
        .I1(\ex_reg2[9]_i_10_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\ex_reg2[8]_i_10_n_1 ),
        .I4(idex_aluop[0]),
        .O(\ex_reg2[8]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[9]_i_10 
       (.I0(\ex_reg2[15]_i_12_n_1 ),
        .I1(\ex_reg2[11]_i_12_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\ex_reg2[13]_i_12_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\ex_reg2[9]_i_12_n_1 ),
        .O(\ex_reg2[9]_i_10_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[9]_i_11 
       (.I0(\mem_wdata[9]_i_9_n_1 ),
        .I1(idex_reg2[1]),
        .I2(\mem_wdata[11]_i_19_n_1 ),
        .O(\ex_reg2[9]_i_11_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ex_reg2[9]_i_12 
       (.I0(idex_reg1[17]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[25]),
        .I3(idex_reg2[4]),
        .I4(idex_reg1[9]),
        .O(\ex_reg2[9]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \ex_reg2[9]_i_3 
       (.I0(\mem_wdata[9]_i_2_n_1 ),
        .I1(idex_alusel[0]),
        .I2(\ex_reg2[9]_i_6_n_1 ),
        .I3(idex_alusel[1]),
        .I4(\ex_reg2[9]_i_7_n_1 ),
        .I5(\ex_addr_base_reg[11]_0 ),
        .O(\ex_reg2_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg2[9]_i_6 
       (.I0(\mem_wdata[9]_i_5_n_1 ),
        .I1(rst),
        .O(\ex_reg2[9]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000E20000)) 
    \ex_reg2[9]_i_7 
       (.I0(\ex_reg2[9]_i_8_n_1 ),
        .I1(idex_aluop[1]),
        .I2(\ex_reg2[9]_i_9_n_1 ),
        .I3(idex_aluop[2]),
        .I4(idex_aluop[3]),
        .I5(rst),
        .O(\ex_reg2[9]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ex_reg2[9]_i_8 
       (.I0(\ex_reg2[10]_i_10_n_1 ),
        .I1(\ex_reg2[9]_i_10_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\ex_reg2[9]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .I5(\ex_reg2[10]_i_11_n_1 ),
        .O(\ex_reg2[9]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000F2FFF222)) 
    \ex_reg2[9]_i_9 
       (.I0(\mem_wdata[9]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(\ex_reg2[10]_i_10_n_1 ),
        .I3(idex_reg2[0]),
        .I4(\ex_reg2[9]_i_10_n_1 ),
        .I5(idex_aluop[0]),
        .O(\ex_reg2[9]_i_9_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [0]),
        .Q(idex_reg2[0]),
        .R(rst_BUFG));
  MUXF7 \ex_reg2_reg[0]_i_7 
       (.I0(\mem_wdata[0]_i_6_n_1 ),
        .I1(\ex_reg2[0]_i_8_n_1 ),
        .O(\ex_reg2_reg[0]_i_7_n_1 ),
        .S(idex_aluop[1]));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[10] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [10]),
        .Q(idex_reg2[10]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[11] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [11]),
        .Q(idex_reg2[11]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[12] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [12]),
        .Q(idex_reg2[12]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[13] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [13]),
        .Q(idex_reg2[13]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[14] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [14]),
        .Q(idex_reg2[14]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[15] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [15]),
        .Q(idex_reg2[15]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[16] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [16]),
        .Q(idex_reg2[16]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[17] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [17]),
        .Q(idex_reg2[17]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[18] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [18]),
        .Q(idex_reg2[18]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[19] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [19]),
        .Q(idex_reg2[19]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [1]),
        .Q(idex_reg2[1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[20] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [20]),
        .Q(idex_reg2[20]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[21] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [21]),
        .Q(idex_reg2[21]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[22] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [22]),
        .Q(idex_reg2[22]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[23] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [23]),
        .Q(idex_reg2[23]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[24] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [24]),
        .Q(idex_reg2[24]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[25] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [25]),
        .Q(idex_reg2[25]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[26] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [26]),
        .Q(idex_reg2[26]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[27] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [27]),
        .Q(idex_reg2[27]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[28] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [28]),
        .Q(idex_reg2[28]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[29] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [29]),
        .Q(idex_reg2[29]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [2]),
        .Q(idex_reg2[2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[30] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [30]),
        .Q(idex_reg2[30]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[31] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [31]),
        .Q(idex_reg2[31]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [3]),
        .Q(idex_reg2[3]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [4]),
        .Q(idex_reg2[4]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[5] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [5]),
        .Q(idex_reg2[5]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[6] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [6]),
        .Q(idex_reg2[6]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[7] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [7]),
        .Q(idex_reg2[7]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[8] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [8]),
        .Q(idex_reg2[8]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_reg2_reg[9] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[4]_0 [9]),
        .Q(idex_reg2[9]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_wd_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[6]_0 [0]),
        .Q(\mem_wd_reg[4] [0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_wd_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[6]_0 [1]),
        .Q(\mem_wd_reg[4] [1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_wd_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[6]_0 [2]),
        .Q(\mem_wd_reg[4] [2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_wd_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[6]_0 [3]),
        .Q(\mem_wd_reg[4] [3]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \ex_wd_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[6]_0 [4]),
        .Q(\mem_wd_reg[4] [4]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    ex_wreg_reg
       (.C(clk_out1),
        .CE(E),
        .D(id_wreg),
        .Q(idex_wreg),
        .R(rst_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hFF38)) 
    \id_inst[0]_i_1 
       (.I0(\mem_wdata_reg[31] [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\read_ptr_reg[2] [0]),
        .O(\id_inst_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[10]_i_1 
       (.I0(\read_ptr_reg[2] [10]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[10] ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[11]_i_1 
       (.I0(\read_ptr_reg[2] [11]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[11] ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[12]_i_1 
       (.I0(\read_ptr_reg[2] [12]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hFF38)) 
    \id_inst[13]_i_1 
       (.I0(\mem_wdata_reg[31] [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\read_ptr_reg[2] [13]),
        .O(\id_inst_reg[13] ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hFF38)) 
    \id_inst[14]_i_1 
       (.I0(\mem_wdata_reg[31] [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\read_ptr_reg[2] [14]),
        .O(\id_inst_reg[14] ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[15]_i_1 
       (.I0(\read_ptr_reg[2] [15]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[15] ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[16]_i_1 
       (.I0(\read_ptr_reg[2] [16]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[16] ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[17]_i_1 
       (.I0(\read_ptr_reg[2] [17]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[18]_i_1 
       (.I0(\read_ptr_reg[2] [18]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[19]_i_1 
       (.I0(\read_ptr_reg[2] [19]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[19] ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hFF38)) 
    \id_inst[1]_i_1 
       (.I0(\mem_wdata_reg[31] [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\read_ptr_reg[2] [1]),
        .O(\id_inst_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[20]_i_1 
       (.I0(\read_ptr_reg[2] [20]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[20] ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[21]_i_1 
       (.I0(\read_ptr_reg[2] [21]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[21] ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[22]_i_1 
       (.I0(\read_ptr_reg[2] [22]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[22] ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[23]_i_1 
       (.I0(\read_ptr_reg[2] [23]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[23] ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[24]_i_1 
       (.I0(\read_ptr_reg[2] [24]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[24] ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[25]_i_1 
       (.I0(\read_ptr_reg[2] [25]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[25] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[26]_i_1 
       (.I0(\read_ptr_reg[2] [26]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[26] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[27]_i_1 
       (.I0(\read_ptr_reg[2] [27]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[27] ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[28]_i_1 
       (.I0(\read_ptr_reg[2] [28]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[28] ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[29]_i_1 
       (.I0(\read_ptr_reg[2] [29]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[29] ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[2]_i_1 
       (.I0(\read_ptr_reg[2] [2]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[30]_i_1 
       (.I0(\read_ptr_reg[2] [30]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[30] ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[31]_i_1 
       (.I0(\read_ptr_reg[2] [31]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[31] ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[3]_i_1 
       (.I0(\read_ptr_reg[2] [3]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hFF38)) 
    \id_inst[4]_i_1 
       (.I0(\mem_wdata_reg[31] [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\read_ptr_reg[2] [4]),
        .O(\id_inst_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[5]_i_1 
       (.I0(\read_ptr_reg[2] [5]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[6]_i_1 
       (.I0(\read_ptr_reg[2] [6]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[7]_i_1 
       (.I0(\read_ptr_reg[2] [7]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[8]_i_1 
       (.I0(\read_ptr_reg[2] [8]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hA02A)) 
    \id_inst[9]_i_1 
       (.I0(\read_ptr_reg[2] [9]),
        .I1(\mem_wdata_reg[31] [0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\id_inst_reg[9] ));
  LUT5 #(
    .INIT(32'hABBAAABA)) 
    \id_pc[31]_i_1 
       (.I0(rst),
        .I1(rst_reg),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    \jump_type_o_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[3]_0 [0]),
        .Q(Q[0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \jump_type_o_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[3]_0 [1]),
        .Q(Q[1]),
        .R(rst_BUFG));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[0]_i_1 
       (.I0(\ex0/addr_o0 [0]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [0]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[10]_i_1 
       (.I0(\ex0/addr_o0 [10]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [10]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[11]_i_1 
       (.I0(\ex0/addr_o0 [11]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [11]));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[11]_i_3 
       (.I0(idex_addr_base[11]),
        .I1(idex_addr_off[11]),
        .O(\mem_addr[11]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[11]_i_4 
       (.I0(idex_addr_base[10]),
        .I1(idex_addr_off[10]),
        .O(\mem_addr[11]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[11]_i_5 
       (.I0(idex_addr_base[9]),
        .I1(idex_addr_off[9]),
        .O(\mem_addr[11]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[11]_i_6 
       (.I0(idex_addr_base[8]),
        .I1(idex_addr_off[8]),
        .O(\mem_addr[11]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[12]_i_1 
       (.I0(\ex0/addr_o0 [12]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [12]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[13]_i_1 
       (.I0(\ex0/addr_o0 [13]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [13]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[14]_i_1 
       (.I0(\ex0/addr_o0 [14]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [14]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[15]_i_1 
       (.I0(\ex0/addr_o0 [15]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [15]));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[15]_i_3 
       (.I0(idex_addr_base[15]),
        .I1(idex_addr_off[15]),
        .O(\mem_addr[15]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[15]_i_4 
       (.I0(idex_addr_base[14]),
        .I1(idex_addr_off[14]),
        .O(\mem_addr[15]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[15]_i_5 
       (.I0(idex_addr_base[13]),
        .I1(idex_addr_off[13]),
        .O(\mem_addr[15]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[15]_i_6 
       (.I0(idex_addr_base[12]),
        .I1(idex_addr_off[12]),
        .O(\mem_addr[15]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[16]_i_1 
       (.I0(\ex0/addr_o0 [16]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [16]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[17]_i_1 
       (.I0(\ex0/addr_o0 [17]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [17]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[18]_i_1 
       (.I0(\ex0/addr_o0 [18]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [18]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[19]_i_1 
       (.I0(\ex0/addr_o0 [19]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [19]));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[19]_i_3 
       (.I0(idex_addr_base[19]),
        .I1(idex_addr_off[19]),
        .O(\mem_addr[19]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[19]_i_4 
       (.I0(idex_addr_base[18]),
        .I1(idex_addr_off[18]),
        .O(\mem_addr[19]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[19]_i_5 
       (.I0(idex_addr_base[17]),
        .I1(idex_addr_off[17]),
        .O(\mem_addr[19]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[19]_i_6 
       (.I0(idex_addr_base[16]),
        .I1(idex_addr_off[16]),
        .O(\mem_addr[19]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[1]_i_1 
       (.I0(\ex0/addr_o0 [1]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [1]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[20]_i_1 
       (.I0(\ex0/addr_o0 [20]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [20]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[21]_i_1 
       (.I0(\ex0/addr_o0 [21]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [21]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[22]_i_1 
       (.I0(\ex0/addr_o0 [22]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [22]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[23]_i_1 
       (.I0(\ex0/addr_o0 [23]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [23]));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[23]_i_3 
       (.I0(idex_addr_base[23]),
        .I1(idex_addr_off[24]),
        .O(\mem_addr[23]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[23]_i_4 
       (.I0(idex_addr_base[22]),
        .I1(idex_addr_off[24]),
        .O(\mem_addr[23]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[23]_i_5 
       (.I0(idex_addr_base[21]),
        .I1(idex_addr_off[24]),
        .O(\mem_addr[23]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[23]_i_6 
       (.I0(idex_addr_base[20]),
        .I1(idex_addr_off[24]),
        .O(\mem_addr[23]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[24]_i_1 
       (.I0(\ex0/addr_o0 [24]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [24]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[25]_i_1 
       (.I0(\ex0/addr_o0 [25]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [25]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[26]_i_1 
       (.I0(\ex0/addr_o0 [26]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [26]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[27]_i_1 
       (.I0(\ex0/addr_o0 [27]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [27]));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[27]_i_3 
       (.I0(idex_addr_base[27]),
        .I1(idex_addr_off[24]),
        .O(\mem_addr[27]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[27]_i_4 
       (.I0(idex_addr_base[26]),
        .I1(idex_addr_off[24]),
        .O(\mem_addr[27]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[27]_i_5 
       (.I0(idex_addr_base[25]),
        .I1(idex_addr_off[24]),
        .O(\mem_addr[27]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[27]_i_6 
       (.I0(idex_addr_base[24]),
        .I1(idex_addr_off[24]),
        .O(\mem_addr[27]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[28]_i_1 
       (.I0(\ex0/addr_o0 [28]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [28]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[29]_i_1 
       (.I0(\ex0/addr_o0 [29]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [29]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[2]_i_1 
       (.I0(\ex0/addr_o0 [2]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [2]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[30]_i_1 
       (.I0(\ex0/addr_o0 [30]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [30]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[31]_i_1 
       (.I0(\ex0/addr_o0 [31]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [31]));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[31]_i_3 
       (.I0(idex_addr_base[31]),
        .I1(idex_addr_off[24]),
        .O(\mem_addr[31]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[31]_i_4 
       (.I0(idex_addr_base[30]),
        .I1(idex_addr_off[24]),
        .O(\mem_addr[31]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[31]_i_5 
       (.I0(idex_addr_base[29]),
        .I1(idex_addr_off[24]),
        .O(\mem_addr[31]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[31]_i_6 
       (.I0(idex_addr_base[28]),
        .I1(idex_addr_off[24]),
        .O(\mem_addr[31]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[3]_i_1 
       (.I0(\ex0/addr_o0 [3]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[3]_i_3 
       (.I0(idex_addr_base[3]),
        .I1(idex_addr_off[3]),
        .O(\mem_addr[3]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[3]_i_4 
       (.I0(idex_addr_base[2]),
        .I1(idex_addr_off[2]),
        .O(\mem_addr[3]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[3]_i_5 
       (.I0(idex_addr_base[1]),
        .I1(idex_addr_off[1]),
        .O(\mem_addr[3]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[3]_i_6 
       (.I0(idex_addr_base[0]),
        .I1(idex_addr_off[0]),
        .O(\mem_addr[3]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[4]_i_1 
       (.I0(\ex0/addr_o0 [4]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [4]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[5]_i_1 
       (.I0(\ex0/addr_o0 [5]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [5]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[6]_i_1 
       (.I0(\ex0/addr_o0 [6]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [6]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[7]_i_1 
       (.I0(\ex0/addr_o0 [7]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[7]_i_3 
       (.I0(idex_addr_base[7]),
        .I1(idex_addr_off[7]),
        .O(\mem_addr[7]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[7]_i_4 
       (.I0(idex_addr_base[6]),
        .I1(idex_addr_off[6]),
        .O(\mem_addr[7]_i_4_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[7]_i_5 
       (.I0(idex_addr_base[5]),
        .I1(idex_addr_off[5]),
        .O(\mem_addr[7]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_addr[7]_i_6 
       (.I0(idex_addr_base[4]),
        .I1(idex_addr_off[4]),
        .O(\mem_addr[7]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[8]_i_1 
       (.I0(\ex0/addr_o0 [8]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [8]));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \mem_addr[9]_i_1 
       (.I0(\ex0/addr_o0 [9]),
        .I1(\memop_o_reg[1]_0 [1]),
        .I2(\memop_o_reg[1]_0 [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(rst),
        .O(\mem_addr_reg[31] [9]));
  CARRY4 \mem_addr_reg[11]_i_2 
       (.CI(\mem_addr_reg[7]_i_2_n_1 ),
        .CO({\mem_addr_reg[11]_i_2_n_1 ,\mem_addr_reg[11]_i_2_n_2 ,\mem_addr_reg[11]_i_2_n_3 ,\mem_addr_reg[11]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_addr_base[11:8]),
        .O(\ex0/addr_o0 [11:8]),
        .S({\mem_addr[11]_i_3_n_1 ,\mem_addr[11]_i_4_n_1 ,\mem_addr[11]_i_5_n_1 ,\mem_addr[11]_i_6_n_1 }));
  CARRY4 \mem_addr_reg[15]_i_2 
       (.CI(\mem_addr_reg[11]_i_2_n_1 ),
        .CO({\mem_addr_reg[15]_i_2_n_1 ,\mem_addr_reg[15]_i_2_n_2 ,\mem_addr_reg[15]_i_2_n_3 ,\mem_addr_reg[15]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_addr_base[15:12]),
        .O(\ex0/addr_o0 [15:12]),
        .S({\mem_addr[15]_i_3_n_1 ,\mem_addr[15]_i_4_n_1 ,\mem_addr[15]_i_5_n_1 ,\mem_addr[15]_i_6_n_1 }));
  CARRY4 \mem_addr_reg[19]_i_2 
       (.CI(\mem_addr_reg[15]_i_2_n_1 ),
        .CO({\mem_addr_reg[19]_i_2_n_1 ,\mem_addr_reg[19]_i_2_n_2 ,\mem_addr_reg[19]_i_2_n_3 ,\mem_addr_reg[19]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_addr_base[19:16]),
        .O(\ex0/addr_o0 [19:16]),
        .S({\mem_addr[19]_i_3_n_1 ,\mem_addr[19]_i_4_n_1 ,\mem_addr[19]_i_5_n_1 ,\mem_addr[19]_i_6_n_1 }));
  CARRY4 \mem_addr_reg[23]_i_2 
       (.CI(\mem_addr_reg[19]_i_2_n_1 ),
        .CO({\mem_addr_reg[23]_i_2_n_1 ,\mem_addr_reg[23]_i_2_n_2 ,\mem_addr_reg[23]_i_2_n_3 ,\mem_addr_reg[23]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_addr_base[23:20]),
        .O(\ex0/addr_o0 [23:20]),
        .S({\mem_addr[23]_i_3_n_1 ,\mem_addr[23]_i_4_n_1 ,\mem_addr[23]_i_5_n_1 ,\mem_addr[23]_i_6_n_1 }));
  CARRY4 \mem_addr_reg[27]_i_2 
       (.CI(\mem_addr_reg[23]_i_2_n_1 ),
        .CO({\mem_addr_reg[27]_i_2_n_1 ,\mem_addr_reg[27]_i_2_n_2 ,\mem_addr_reg[27]_i_2_n_3 ,\mem_addr_reg[27]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_addr_base[27:24]),
        .O(\ex0/addr_o0 [27:24]),
        .S({\mem_addr[27]_i_3_n_1 ,\mem_addr[27]_i_4_n_1 ,\mem_addr[27]_i_5_n_1 ,\mem_addr[27]_i_6_n_1 }));
  CARRY4 \mem_addr_reg[31]_i_2 
       (.CI(\mem_addr_reg[27]_i_2_n_1 ),
        .CO({\NLW_mem_addr_reg[31]_i_2_CO_UNCONNECTED [3],\mem_addr_reg[31]_i_2_n_2 ,\mem_addr_reg[31]_i_2_n_3 ,\mem_addr_reg[31]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,idex_addr_base[30:28]}),
        .O(\ex0/addr_o0 [31:28]),
        .S({\mem_addr[31]_i_3_n_1 ,\mem_addr[31]_i_4_n_1 ,\mem_addr[31]_i_5_n_1 ,\mem_addr[31]_i_6_n_1 }));
  CARRY4 \mem_addr_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\mem_addr_reg[3]_i_2_n_1 ,\mem_addr_reg[3]_i_2_n_2 ,\mem_addr_reg[3]_i_2_n_3 ,\mem_addr_reg[3]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_addr_base[3:0]),
        .O(\ex0/addr_o0 [3:0]),
        .S({\mem_addr[3]_i_3_n_1 ,\mem_addr[3]_i_4_n_1 ,\mem_addr[3]_i_5_n_1 ,\mem_addr[3]_i_6_n_1 }));
  CARRY4 \mem_addr_reg[7]_i_2 
       (.CI(\mem_addr_reg[3]_i_2_n_1 ),
        .CO({\mem_addr_reg[7]_i_2_n_1 ,\mem_addr_reg[7]_i_2_n_2 ,\mem_addr_reg[7]_i_2_n_3 ,\mem_addr_reg[7]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_addr_base[7:4]),
        .O(\ex0/addr_o0 [7:4]),
        .S({\mem_addr[7]_i_3_n_1 ,\mem_addr[7]_i_4_n_1 ,\mem_addr[7]_i_5_n_1 ,\mem_addr[7]_i_6_n_1 }));
  LUT6 #(
    .INIT(64'h0000AFC00000A0C0)) 
    \mem_wdata[0]_i_1 
       (.I0(\mem_wdata[0]_i_2_n_1 ),
        .I1(\mem_wdata[0]_i_3_n_1 ),
        .I2(idex_alusel[0]),
        .I3(idex_alusel[1]),
        .I4(rst),
        .I5(\mem_wdata_reg[0]_i_4_n_1 ),
        .O(\mem_wdata_reg[31] [0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[0]_i_10 
       (.I0(\mem_wdata[0]_i_20_n_1 ),
        .I1(\mem_wdata[0]_i_21_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\mem_wdata[0]_i_22_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\mem_wdata[0]_i_23_n_1 ),
        .O(\mem_wdata[0]_i_10_n_1 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \mem_wdata[0]_i_11 
       (.I0(idex_reg2[2]),
        .I1(idex_reg2[4]),
        .I2(idex_reg1[0]),
        .I3(idex_reg2[3]),
        .I4(idex_reg2[1]),
        .O(\mem_wdata[0]_i_11_n_1 ));
  LUT5 #(
    .INIT(32'hB2FFB200)) 
    \mem_wdata[0]_i_12 
       (.I0(\ex0/p_2_in ),
        .I1(idex_reg2[31]),
        .I2(idex_reg1[31]),
        .I3(\ex0/reg1_lt_reg214_out ),
        .I4(\mem_wdata_reg[0]_i_25_n_1 ),
        .O(\ex0/reg1_lt_reg2 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h4C34)) 
    \mem_wdata[0]_i_13 
       (.I0(idex_aluop[0]),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[1]),
        .I3(idex_aluop[3]),
        .O(\mem_wdata[0]_i_13_n_1 ));
  LUT4 #(
    .INIT(16'hB65D)) 
    \mem_wdata[0]_i_15 
       (.I0(idex_aluop[0]),
        .I1(idex_aluop[3]),
        .I2(idex_aluop[1]),
        .I3(idex_aluop[2]),
        .O(\mem_wdata[0]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[0]_i_16 
       (.I0(idex_reg1[30]),
        .I1(idex_reg1[14]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[22]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[6]),
        .O(\mem_wdata[0]_i_16_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[0]_i_17 
       (.I0(idex_reg1[26]),
        .I1(idex_reg1[10]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[18]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[2]),
        .O(\mem_wdata[0]_i_17_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[0]_i_18 
       (.I0(idex_reg1[28]),
        .I1(idex_reg1[12]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[20]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[4]),
        .O(\mem_wdata[0]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[0]_i_19 
       (.I0(idex_reg1[24]),
        .I1(idex_reg1[8]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[16]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[0]),
        .O(\mem_wdata[0]_i_19_n_1 ));
  LUT6 #(
    .INIT(64'h0020222200200000)) 
    \mem_wdata[0]_i_2 
       (.I0(idex_aluop[3]),
        .I1(idex_aluop[2]),
        .I2(\ex0/shiftout00_out ),
        .I3(idex_aluop[0]),
        .I4(idex_aluop[1]),
        .I5(\mem_wdata[0]_i_6_n_1 ),
        .O(\mem_wdata[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[0]_i_20 
       (.I0(idex_reg1[31]),
        .I1(idex_reg1[15]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[23]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[7]),
        .O(\mem_wdata[0]_i_20_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[0]_i_21 
       (.I0(idex_reg1[27]),
        .I1(idex_reg1[11]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[19]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[3]),
        .O(\mem_wdata[0]_i_21_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[0]_i_22 
       (.I0(idex_reg1[29]),
        .I1(idex_reg1[13]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[21]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[5]),
        .O(\mem_wdata[0]_i_22_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[0]_i_23 
       (.I0(idex_reg1[25]),
        .I1(idex_reg1[9]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[17]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[1]),
        .O(\mem_wdata[0]_i_23_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h0280)) 
    \mem_wdata[0]_i_24 
       (.I0(idex_aluop[0]),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_aluop[1]),
        .O(\ex0/reg1_lt_reg214_out ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_27 
       (.I0(idex_reg1[30]),
        .I1(idex_reg2[30]),
        .I2(idex_reg1[31]),
        .I3(idex_reg2[31]),
        .O(\mem_wdata[0]_i_27_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_wdata[0]_i_28 
       (.I0(idex_reg1[27]),
        .I1(idex_reg2[27]),
        .I2(idex_reg2[29]),
        .I3(idex_reg1[29]),
        .I4(idex_reg2[28]),
        .I5(idex_reg1[28]),
        .O(\mem_wdata[0]_i_28_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_wdata[0]_i_29 
       (.I0(idex_reg1[24]),
        .I1(idex_reg2[24]),
        .I2(idex_reg2[26]),
        .I3(idex_reg1[26]),
        .I4(idex_reg2[25]),
        .I5(idex_reg1[25]),
        .O(\mem_wdata[0]_i_29_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[0]_i_3 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[0]),
        .I3(idex_reg1[0]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[0]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_31 
       (.I0(idex_reg2[30]),
        .I1(idex_reg1[30]),
        .I2(idex_reg1[31]),
        .I3(idex_reg2[31]),
        .O(\mem_wdata[0]_i_31_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_32 
       (.I0(idex_reg2[28]),
        .I1(idex_reg1[28]),
        .I2(idex_reg1[29]),
        .I3(idex_reg2[29]),
        .O(\mem_wdata[0]_i_32_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_33 
       (.I0(idex_reg2[26]),
        .I1(idex_reg1[26]),
        .I2(idex_reg1[27]),
        .I3(idex_reg2[27]),
        .O(\mem_wdata[0]_i_33_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_34 
       (.I0(idex_reg2[24]),
        .I1(idex_reg1[24]),
        .I2(idex_reg1[25]),
        .I3(idex_reg2[25]),
        .O(\mem_wdata[0]_i_34_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_35 
       (.I0(idex_reg2[30]),
        .I1(idex_reg1[30]),
        .I2(idex_reg2[31]),
        .I3(idex_reg1[31]),
        .O(\mem_wdata[0]_i_35_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_36 
       (.I0(idex_reg2[28]),
        .I1(idex_reg1[28]),
        .I2(idex_reg2[29]),
        .I3(idex_reg1[29]),
        .O(\mem_wdata[0]_i_36_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_37 
       (.I0(idex_reg2[26]),
        .I1(idex_reg1[26]),
        .I2(idex_reg2[27]),
        .I3(idex_reg1[27]),
        .O(\mem_wdata[0]_i_37_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_38 
       (.I0(idex_reg2[24]),
        .I1(idex_reg1[24]),
        .I2(idex_reg2[25]),
        .I3(idex_reg1[25]),
        .O(\mem_wdata[0]_i_38_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_wdata[0]_i_40 
       (.I0(idex_reg1[21]),
        .I1(idex_reg2[21]),
        .I2(idex_reg2[23]),
        .I3(idex_reg1[23]),
        .I4(idex_reg2[22]),
        .I5(idex_reg1[22]),
        .O(\mem_wdata[0]_i_40_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_wdata[0]_i_41 
       (.I0(idex_reg1[18]),
        .I1(idex_reg2[18]),
        .I2(idex_reg2[20]),
        .I3(idex_reg1[20]),
        .I4(idex_reg2[19]),
        .I5(idex_reg1[19]),
        .O(\mem_wdata[0]_i_41_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_wdata[0]_i_42 
       (.I0(idex_reg1[15]),
        .I1(idex_reg2[15]),
        .I2(idex_reg2[17]),
        .I3(idex_reg1[17]),
        .I4(idex_reg2[16]),
        .I5(idex_reg1[16]),
        .O(\mem_wdata[0]_i_42_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_wdata[0]_i_43 
       (.I0(idex_reg1[12]),
        .I1(idex_reg2[12]),
        .I2(idex_reg2[14]),
        .I3(idex_reg1[14]),
        .I4(idex_reg2[13]),
        .I5(idex_reg1[13]),
        .O(\mem_wdata[0]_i_43_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_45 
       (.I0(idex_reg2[22]),
        .I1(idex_reg1[22]),
        .I2(idex_reg1[23]),
        .I3(idex_reg2[23]),
        .O(\mem_wdata[0]_i_45_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_46 
       (.I0(idex_reg2[20]),
        .I1(idex_reg1[20]),
        .I2(idex_reg1[21]),
        .I3(idex_reg2[21]),
        .O(\mem_wdata[0]_i_46_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_47 
       (.I0(idex_reg2[18]),
        .I1(idex_reg1[18]),
        .I2(idex_reg1[19]),
        .I3(idex_reg2[19]),
        .O(\mem_wdata[0]_i_47_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_48 
       (.I0(idex_reg2[16]),
        .I1(idex_reg1[16]),
        .I2(idex_reg1[17]),
        .I3(idex_reg2[17]),
        .O(\mem_wdata[0]_i_48_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_49 
       (.I0(idex_reg2[22]),
        .I1(idex_reg1[22]),
        .I2(idex_reg2[23]),
        .I3(idex_reg1[23]),
        .O(\mem_wdata[0]_i_49_n_1 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCAAAFAAAA)) 
    \mem_wdata[0]_i_5 
       (.I0(\mem_wdata[0]_i_9_n_1 ),
        .I1(\mem_wdata[0]_i_10_n_1 ),
        .I2(\mem_wdata[31]_i_18_n_1 ),
        .I3(idex_reg2[1]),
        .I4(\mem_wdata[3]_i_16_n_1 ),
        .I5(idex_reg2[0]),
        .O(\ex0/shiftout00_out ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_50 
       (.I0(idex_reg2[20]),
        .I1(idex_reg1[20]),
        .I2(idex_reg2[21]),
        .I3(idex_reg1[21]),
        .O(\mem_wdata[0]_i_50_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_51 
       (.I0(idex_reg2[18]),
        .I1(idex_reg1[18]),
        .I2(idex_reg2[19]),
        .I3(idex_reg1[19]),
        .O(\mem_wdata[0]_i_51_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_52 
       (.I0(idex_reg2[16]),
        .I1(idex_reg1[16]),
        .I2(idex_reg2[17]),
        .I3(idex_reg1[17]),
        .O(\mem_wdata[0]_i_52_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_wdata[0]_i_53 
       (.I0(idex_reg1[9]),
        .I1(idex_reg2[9]),
        .I2(idex_reg2[11]),
        .I3(idex_reg1[11]),
        .I4(idex_reg2[10]),
        .I5(idex_reg1[10]),
        .O(\mem_wdata[0]_i_53_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_wdata[0]_i_54 
       (.I0(idex_reg1[6]),
        .I1(idex_reg2[6]),
        .I2(idex_reg2[8]),
        .I3(idex_reg1[8]),
        .I4(idex_reg2[7]),
        .I5(idex_reg1[7]),
        .O(\mem_wdata[0]_i_54_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_wdata[0]_i_55 
       (.I0(idex_reg1[3]),
        .I1(idex_reg2[3]),
        .I2(idex_reg2[5]),
        .I3(idex_reg1[5]),
        .I4(idex_reg2[4]),
        .I5(idex_reg1[4]),
        .O(\mem_wdata[0]_i_55_n_1 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \mem_wdata[0]_i_56 
       (.I0(idex_reg1[0]),
        .I1(idex_reg2[0]),
        .I2(idex_reg2[2]),
        .I3(idex_reg1[2]),
        .I4(idex_reg2[1]),
        .I5(idex_reg1[1]),
        .O(\mem_wdata[0]_i_56_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_58 
       (.I0(idex_reg2[14]),
        .I1(idex_reg1[14]),
        .I2(idex_reg1[15]),
        .I3(idex_reg2[15]),
        .O(\mem_wdata[0]_i_58_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_59 
       (.I0(idex_reg2[12]),
        .I1(idex_reg1[12]),
        .I2(idex_reg1[13]),
        .I3(idex_reg2[13]),
        .O(\mem_wdata[0]_i_59_n_1 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \mem_wdata[0]_i_6 
       (.I0(\mem_wdata[0]_i_10_n_1 ),
        .I1(\mem_wdata[0]_i_9_n_1 ),
        .I2(idex_aluop[0]),
        .I3(\mem_wdata[0]_i_11_n_1 ),
        .I4(idex_reg2[0]),
        .O(\mem_wdata[0]_i_6_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_60 
       (.I0(idex_reg2[10]),
        .I1(idex_reg1[10]),
        .I2(idex_reg1[11]),
        .I3(idex_reg2[11]),
        .O(\mem_wdata[0]_i_60_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_61 
       (.I0(idex_reg2[8]),
        .I1(idex_reg1[8]),
        .I2(idex_reg1[9]),
        .I3(idex_reg2[9]),
        .O(\mem_wdata[0]_i_61_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_62 
       (.I0(idex_reg2[14]),
        .I1(idex_reg1[14]),
        .I2(idex_reg2[15]),
        .I3(idex_reg1[15]),
        .O(\mem_wdata[0]_i_62_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_63 
       (.I0(idex_reg2[12]),
        .I1(idex_reg1[12]),
        .I2(idex_reg2[13]),
        .I3(idex_reg1[13]),
        .O(\mem_wdata[0]_i_63_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_64 
       (.I0(idex_reg2[10]),
        .I1(idex_reg1[10]),
        .I2(idex_reg2[11]),
        .I3(idex_reg1[11]),
        .O(\mem_wdata[0]_i_64_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_65 
       (.I0(idex_reg2[8]),
        .I1(idex_reg1[8]),
        .I2(idex_reg2[9]),
        .I3(idex_reg1[9]),
        .O(\mem_wdata[0]_i_65_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_66 
       (.I0(idex_reg2[6]),
        .I1(idex_reg1[6]),
        .I2(idex_reg1[7]),
        .I3(idex_reg2[7]),
        .O(\mem_wdata[0]_i_66_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_67 
       (.I0(idex_reg2[4]),
        .I1(idex_reg1[4]),
        .I2(idex_reg1[5]),
        .I3(idex_reg2[5]),
        .O(\mem_wdata[0]_i_67_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_68 
       (.I0(idex_reg2[2]),
        .I1(idex_reg1[2]),
        .I2(idex_reg1[3]),
        .I3(idex_reg2[3]),
        .O(\mem_wdata[0]_i_68_n_1 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \mem_wdata[0]_i_69 
       (.I0(idex_reg2[0]),
        .I1(idex_reg1[0]),
        .I2(idex_reg1[1]),
        .I3(idex_reg2[1]),
        .O(\mem_wdata[0]_i_69_n_1 ));
  LUT6 #(
    .INIT(64'hAAAAABAEAAAAA8A2)) 
    \mem_wdata[0]_i_7 
       (.I0(\ex0/reg1_lt_reg2 ),
        .I1(idex_aluop[0]),
        .I2(idex_aluop[3]),
        .I3(idex_aluop[1]),
        .I4(idex_aluop[2]),
        .I5(\ex0/data1 [0]),
        .O(\mem_wdata[0]_i_7_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_70 
       (.I0(idex_reg2[6]),
        .I1(idex_reg1[6]),
        .I2(idex_reg2[7]),
        .I3(idex_reg1[7]),
        .O(\mem_wdata[0]_i_70_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_71 
       (.I0(idex_reg2[4]),
        .I1(idex_reg1[4]),
        .I2(idex_reg2[5]),
        .I3(idex_reg1[5]),
        .O(\mem_wdata[0]_i_71_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_72 
       (.I0(idex_reg2[2]),
        .I1(idex_reg1[2]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[3]),
        .O(\mem_wdata[0]_i_72_n_1 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \mem_wdata[0]_i_73 
       (.I0(idex_reg2[0]),
        .I1(idex_reg1[0]),
        .I2(idex_reg2[1]),
        .I3(idex_reg1[1]),
        .O(\mem_wdata[0]_i_73_n_1 ));
  LUT6 #(
    .INIT(64'h0C74FFFF0C740000)) 
    \mem_wdata[0]_i_8 
       (.I0(\ex0/reg1_lt_reg2 ),
        .I1(\mem_wdata[0]_i_13_n_1 ),
        .I2(\ex0/data3 ),
        .I3(\mem_wdata[0]_i_15_n_1 ),
        .I4(\mem_wdata[31]_i_7_n_1 ),
        .I5(\ex0/data0 [0]),
        .O(\mem_wdata[0]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[0]_i_9 
       (.I0(\mem_wdata[0]_i_16_n_1 ),
        .I1(\mem_wdata[0]_i_17_n_1 ),
        .I2(idex_reg2[1]),
        .I3(\mem_wdata[0]_i_18_n_1 ),
        .I4(idex_reg2[2]),
        .I5(\mem_wdata[0]_i_19_n_1 ),
        .O(\mem_wdata[0]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[10]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [10]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [10]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[10]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[10]_i_3 
       (.I0(\mem_wdata[10]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[10]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[10]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[10]_i_4 
       (.I0(\mem_wdata[10]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [10]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[10]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[10]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[10]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[10]),
        .I3(idex_reg1[10]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[10]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[10]_i_6 
       (.I0(\mem_wdata[10]_i_9_n_1 ),
        .I1(\mem_wdata[11]_i_21_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\mem_wdata[11]_i_19_n_1 ),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[11]_i_20_n_1 ),
        .O(\mem_wdata[10]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[10]_i_7 
       (.I0(\ex_reg2[11]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[10]_i_10_n_1 ),
        .O(\ex0/shiftout0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h88888000)) 
    \mem_wdata[10]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[1]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[10]_i_8_n_1 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \mem_wdata[10]_i_9 
       (.I0(idex_reg1[3]),
        .I1(idex_reg2[2]),
        .I2(idex_reg2[4]),
        .I3(idex_reg1[7]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[10]_i_9_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[11]_i_10 
       (.I0(idex_reg2[9]),
        .I1(idex_reg1[9]),
        .O(\mem_wdata[11]_i_10_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[11]_i_11 
       (.I0(idex_reg2[8]),
        .I1(idex_reg1[8]),
        .O(\mem_wdata[11]_i_11_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[11]_i_12 
       (.I0(idex_reg1[11]),
        .I1(idex_reg2[11]),
        .O(\mem_wdata[11]_i_12_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[11]_i_13 
       (.I0(idex_reg1[10]),
        .I1(idex_reg2[10]),
        .O(\mem_wdata[11]_i_13_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[11]_i_14 
       (.I0(idex_reg1[9]),
        .I1(idex_reg2[9]),
        .O(\mem_wdata[11]_i_14_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[11]_i_15 
       (.I0(idex_reg1[8]),
        .I1(idex_reg2[8]),
        .O(\mem_wdata[11]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'hFF000000E0000100)) 
    \mem_wdata[11]_i_16 
       (.I0(idex_reg2[0]),
        .I1(idex_reg2[1]),
        .I2(idex_reg2[2]),
        .I3(idex_reg1[31]),
        .I4(idex_reg2[4]),
        .I5(idex_reg2[3]),
        .O(\mem_wdata[11]_i_16_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[11]_i_17 
       (.I0(\ex_reg2[12]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[11]_i_10_n_1 ),
        .O(\ex0/shiftout0 [11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[11]_i_18 
       (.I0(\mem_wdata[11]_i_19_n_1 ),
        .I1(\mem_wdata[11]_i_20_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\mem_wdata[11]_i_21_n_1 ),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[11]_i_22_n_1 ),
        .O(\mem_wdata[11]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \mem_wdata[11]_i_19 
       (.I0(idex_reg1[4]),
        .I1(idex_reg2[2]),
        .I2(idex_reg1[0]),
        .I3(idex_reg2[3]),
        .I4(idex_reg1[8]),
        .I5(idex_reg2[4]),
        .O(\mem_wdata[11]_i_19_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[11]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [11]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [11]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[11]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \mem_wdata[11]_i_20 
       (.I0(idex_reg1[6]),
        .I1(idex_reg2[2]),
        .I2(idex_reg1[2]),
        .I3(idex_reg2[3]),
        .I4(idex_reg1[10]),
        .I5(idex_reg2[4]),
        .O(\mem_wdata[11]_i_20_n_1 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \mem_wdata[11]_i_21 
       (.I0(idex_reg1[5]),
        .I1(idex_reg2[2]),
        .I2(idex_reg1[1]),
        .I3(idex_reg2[3]),
        .I4(idex_reg1[9]),
        .I5(idex_reg2[4]),
        .O(\mem_wdata[11]_i_21_n_1 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \mem_wdata[11]_i_22 
       (.I0(idex_reg1[7]),
        .I1(idex_reg2[2]),
        .I2(idex_reg1[3]),
        .I3(idex_reg2[3]),
        .I4(idex_reg1[11]),
        .I5(idex_reg2[4]),
        .O(\mem_wdata[11]_i_22_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[11]_i_3 
       (.I0(\mem_wdata[11]_i_6_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[11]_i_7_n_1 ),
        .I5(rst),
        .O(\mem_wdata[11]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[11]_i_6 
       (.I0(\mem_wdata[11]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [11]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[11]_i_18_n_1 ),
        .O(\mem_wdata[11]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[11]_i_7 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[11]),
        .I3(idex_reg1[11]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[11]_i_7_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[11]_i_8 
       (.I0(idex_reg2[11]),
        .I1(idex_reg1[11]),
        .O(\mem_wdata[11]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[11]_i_9 
       (.I0(idex_reg2[10]),
        .I1(idex_reg1[10]),
        .O(\mem_wdata[11]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[12]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [12]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [12]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[12]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[12]_i_3 
       (.I0(\mem_wdata[12]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[12]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[12]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[12]_i_4 
       (.I0(\mem_wdata[12]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [12]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[12]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[12]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[12]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[12]),
        .I3(idex_reg1[12]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[12]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[12]_i_6 
       (.I0(\ex_reg2[12]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[13]_i_11_n_1 ),
        .O(\mem_wdata[12]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[12]_i_7 
       (.I0(\ex_reg2[13]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[12]_i_10_n_1 ),
        .O(\ex0/shiftout0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \mem_wdata[12]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[3]),
        .O(\mem_wdata[12]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[13]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [13]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [13]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[13]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[13]_i_3 
       (.I0(\mem_wdata[13]_i_4_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[13]_i_5_n_1 ),
        .I5(rst),
        .O(\mem_wdata[13]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[13]_i_4 
       (.I0(\mem_wdata[13]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [13]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[13]_i_8_n_1 ),
        .O(\mem_wdata[13]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[13]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[13]),
        .I3(idex_reg1[13]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[13]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hF000F000F0008010)) 
    \mem_wdata[13]_i_6 
       (.I0(idex_reg2[0]),
        .I1(idex_reg2[1]),
        .I2(idex_reg1[31]),
        .I3(idex_reg2[4]),
        .I4(idex_reg2[2]),
        .I5(idex_reg2[3]),
        .O(\mem_wdata[13]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[13]_i_7 
       (.I0(\ex_reg2[14]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[13]_i_10_n_1 ),
        .O(\ex0/shiftout0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[13]_i_8 
       (.I0(\ex_reg2[13]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[14]_i_11_n_1 ),
        .O(\mem_wdata[13]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[14]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [14]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [14]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[14]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[14]_i_3 
       (.I0(\mem_wdata[14]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[14]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[14]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[14]_i_4 
       (.I0(\mem_wdata[14]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [14]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[14]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[14]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[14]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[14]),
        .I3(idex_reg1[14]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[14]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[14]_i_6 
       (.I0(\ex_reg2[14]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[15]_i_11_n_1 ),
        .O(\mem_wdata[14]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[14]_i_7 
       (.I0(\ex_reg2[15]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[14]_i_10_n_1 ),
        .O(\ex0/shiftout0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    \mem_wdata[14]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[1]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[14]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[15]_i_10 
       (.I0(idex_reg2[13]),
        .I1(idex_reg1[13]),
        .O(\mem_wdata[15]_i_10_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[15]_i_11 
       (.I0(idex_reg2[12]),
        .I1(idex_reg1[12]),
        .O(\mem_wdata[15]_i_11_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[15]_i_12 
       (.I0(idex_reg1[15]),
        .I1(idex_reg2[15]),
        .O(\mem_wdata[15]_i_12_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[15]_i_13 
       (.I0(idex_reg1[14]),
        .I1(idex_reg2[14]),
        .O(\mem_wdata[15]_i_13_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[15]_i_14 
       (.I0(idex_reg1[13]),
        .I1(idex_reg2[13]),
        .O(\mem_wdata[15]_i_14_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[15]_i_15 
       (.I0(idex_reg1[12]),
        .I1(idex_reg2[12]),
        .O(\mem_wdata[15]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'h8888888888888882)) 
    \mem_wdata[15]_i_16 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[1]),
        .I4(idex_reg2[0]),
        .I5(idex_reg2[3]),
        .O(\mem_wdata[15]_i_16_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[15]_i_17 
       (.I0(\ex_reg2[16]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[15]_i_10_n_1 ),
        .O(\ex0/shiftout0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[15]_i_18 
       (.I0(\ex_reg2[15]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[16]_i_11_n_1 ),
        .O(\mem_wdata[15]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[15]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [15]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [15]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[15]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[15]_i_3 
       (.I0(\mem_wdata[15]_i_6_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[15]_i_7_n_1 ),
        .I5(rst),
        .O(\mem_wdata[15]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[15]_i_6 
       (.I0(\mem_wdata[15]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [15]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[15]_i_18_n_1 ),
        .O(\mem_wdata[15]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[15]_i_7 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[15]),
        .I3(idex_reg1[15]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[15]_i_7_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[15]_i_8 
       (.I0(idex_reg2[15]),
        .I1(idex_reg1[15]),
        .O(\mem_wdata[15]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[15]_i_9 
       (.I0(idex_reg2[14]),
        .I1(idex_reg1[14]),
        .O(\mem_wdata[15]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[16]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [16]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [16]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[16]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[16]_i_3 
       (.I0(\mem_wdata[16]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[16]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[16]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[16]_i_4 
       (.I0(\mem_wdata[16]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [16]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[16]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[16]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[16]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[16]),
        .I3(idex_reg1[16]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[16]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[16]_i_6 
       (.I0(\ex_reg2[16]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[17]_i_11_n_1 ),
        .O(\mem_wdata[16]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[16]_i_7 
       (.I0(\ex_reg2[17]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[16]_i_10_n_1 ),
        .O(\ex0/shiftout0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mem_wdata[16]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .O(\mem_wdata[16]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[17]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [17]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [17]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[17]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[17]_i_3 
       (.I0(\mem_wdata[17]_i_4_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[17]_i_5_n_1 ),
        .I5(rst),
        .O(\mem_wdata[17]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[17]_i_4 
       (.I0(\mem_wdata[17]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [17]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[17]_i_8_n_1 ),
        .O(\mem_wdata[17]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[17]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[17]),
        .I3(idex_reg1[17]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[17]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hFF80FF0100000000)) 
    \mem_wdata[17]_i_6 
       (.I0(idex_reg2[0]),
        .I1(idex_reg2[1]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[4]),
        .I4(idex_reg2[3]),
        .I5(idex_reg1[31]),
        .O(\mem_wdata[17]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[17]_i_7 
       (.I0(\ex_reg2[18]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[17]_i_10_n_1 ),
        .O(\ex0/shiftout0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[17]_i_8 
       (.I0(\ex_reg2[17]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[18]_i_11_n_1 ),
        .O(\mem_wdata[17]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[18]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [18]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [18]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[18]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[18]_i_3 
       (.I0(\mem_wdata[18]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[18]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[18]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[18]_i_4 
       (.I0(\mem_wdata[18]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [18]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[18]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[18]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[18]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[18]),
        .I3(idex_reg1[18]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[18]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[18]_i_6 
       (.I0(\ex_reg2[18]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[19]_i_12_n_1 ),
        .O(\mem_wdata[18]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[18]_i_7 
       (.I0(\ex_reg2[19]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[18]_i_10_n_1 ),
        .O(\ex0/shiftout0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hA8888888)) 
    \mem_wdata[18]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[1]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[18]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[19]_i_10 
       (.I0(idex_reg2[17]),
        .I1(idex_reg1[17]),
        .O(\mem_wdata[19]_i_10_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[19]_i_11 
       (.I0(idex_reg2[16]),
        .I1(idex_reg1[16]),
        .O(\mem_wdata[19]_i_11_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[19]_i_12 
       (.I0(idex_reg1[19]),
        .I1(idex_reg2[19]),
        .O(\mem_wdata[19]_i_12_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[19]_i_13 
       (.I0(idex_reg1[18]),
        .I1(idex_reg2[18]),
        .O(\mem_wdata[19]_i_13_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[19]_i_14 
       (.I0(idex_reg1[17]),
        .I1(idex_reg2[17]),
        .O(\mem_wdata[19]_i_14_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[19]_i_15 
       (.I0(idex_reg1[16]),
        .I1(idex_reg2[16]),
        .O(\mem_wdata[19]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'hFFE0FF0100000000)) 
    \mem_wdata[19]_i_16 
       (.I0(idex_reg2[0]),
        .I1(idex_reg2[1]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[4]),
        .I4(idex_reg2[3]),
        .I5(idex_reg1[31]),
        .O(\mem_wdata[19]_i_16_n_1 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[19]_i_17 
       (.I0(\ex_reg2[19]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[19]_i_11_n_1 ),
        .O(\ex0/shiftout0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[19]_i_18 
       (.I0(\ex_reg2[19]_i_12_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[20]_i_10_n_1 ),
        .O(\mem_wdata[19]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[19]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [19]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [19]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[19]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[19]_i_3 
       (.I0(\mem_wdata[19]_i_6_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[19]_i_7_n_1 ),
        .I5(rst),
        .O(\mem_wdata[19]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[19]_i_6 
       (.I0(\mem_wdata[19]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [19]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[19]_i_18_n_1 ),
        .O(\mem_wdata[19]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[19]_i_7 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[19]),
        .I3(idex_reg1[19]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[19]_i_7_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[19]_i_8 
       (.I0(idex_reg2[19]),
        .I1(idex_reg1[19]),
        .O(\mem_wdata[19]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[19]_i_9 
       (.I0(idex_reg2[18]),
        .I1(idex_reg1[18]),
        .O(\mem_wdata[19]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[1]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [1]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [1]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[1]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[1]_i_3 
       (.I0(\mem_wdata[1]_i_4_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[1]_i_5_n_1 ),
        .I5(rst),
        .O(\mem_wdata[1]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[1]_i_4 
       (.I0(\mem_wdata[1]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [1]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[1]_i_8_n_1 ),
        .O(\mem_wdata[1]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[1]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[1]),
        .I3(idex_reg1[1]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[1]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h8000000000000010)) 
    \mem_wdata[1]_i_6 
       (.I0(idex_reg2[2]),
        .I1(idex_reg2[4]),
        .I2(idex_reg1[31]),
        .I3(idex_reg2[3]),
        .I4(idex_reg2[1]),
        .I5(idex_reg2[0]),
        .O(\mem_wdata[1]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[1]_i_7 
       (.I0(\ex_reg2[2]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\mem_wdata[0]_i_10_n_1 ),
        .O(\ex0/shiftout0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[1]_i_8 
       (.I0(\mem_wdata[0]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[2]_i_11_n_1 ),
        .O(\mem_wdata[1]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[20]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [20]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [20]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[20]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[20]_i_3 
       (.I0(\mem_wdata[20]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[20]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[20]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[20]_i_4 
       (.I0(\mem_wdata[20]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [20]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[20]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[20]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[20]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[20]),
        .I3(idex_reg1[20]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[20]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[20]_i_6 
       (.I0(\ex_reg2[20]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[21]_i_10_n_1 ),
        .O(\mem_wdata[20]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[20]_i_7 
       (.I0(\mem_wdata[23]_i_19_n_1 ),
        .I1(\mem_wdata[21]_i_9_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\mem_wdata[22]_i_9_n_1 ),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[20]_i_9_n_1 ),
        .O(\ex0/shiftout0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \mem_wdata[20]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[3]),
        .O(\mem_wdata[20]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \mem_wdata[20]_i_9 
       (.I0(idex_reg1[24]),
        .I1(idex_reg2[2]),
        .I2(idex_reg1[28]),
        .I3(idex_reg2[3]),
        .I4(idex_reg1[20]),
        .I5(idex_reg2[4]),
        .O(\mem_wdata[20]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[21]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [21]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [21]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[21]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[21]_i_3 
       (.I0(\mem_wdata[21]_i_4_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[21]_i_5_n_1 ),
        .I5(rst),
        .O(\mem_wdata[21]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[21]_i_4 
       (.I0(\mem_wdata[21]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [21]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[21]_i_8_n_1 ),
        .O(\mem_wdata[21]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[21]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[21]),
        .I3(idex_reg1[21]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[21]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hFFF8F0F100000000)) 
    \mem_wdata[21]_i_6 
       (.I0(idex_reg2[0]),
        .I1(idex_reg2[1]),
        .I2(idex_reg2[4]),
        .I3(idex_reg2[2]),
        .I4(idex_reg2[3]),
        .I5(idex_reg1[31]),
        .O(\mem_wdata[21]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[21]_i_7 
       (.I0(\mem_wdata[24]_i_9_n_1 ),
        .I1(\mem_wdata[22]_i_9_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\mem_wdata[23]_i_19_n_1 ),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[21]_i_9_n_1 ),
        .O(\ex0/shiftout0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[21]_i_8 
       (.I0(\ex_reg2[21]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[22]_i_10_n_1 ),
        .O(\mem_wdata[21]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \mem_wdata[21]_i_9 
       (.I0(idex_reg1[25]),
        .I1(idex_reg2[2]),
        .I2(idex_reg1[29]),
        .I3(idex_reg2[3]),
        .I4(idex_reg1[21]),
        .I5(idex_reg2[4]),
        .O(\mem_wdata[21]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[22]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [22]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [22]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[22]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[22]_i_3 
       (.I0(\mem_wdata[22]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[22]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[22]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[22]_i_4 
       (.I0(\mem_wdata[22]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [22]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[22]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[22]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[22]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[22]),
        .I3(idex_reg1[22]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[22]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[22]_i_6 
       (.I0(\ex_reg2[22]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[23]_i_10_n_1 ),
        .O(\mem_wdata[22]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[22]_i_7 
       (.I0(\mem_wdata[25]_i_9_n_1 ),
        .I1(\mem_wdata[23]_i_19_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\mem_wdata[24]_i_9_n_1 ),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[22]_i_9_n_1 ),
        .O(\ex0/shiftout0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hAAA88888)) 
    \mem_wdata[22]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[1]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[22]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \mem_wdata[22]_i_9 
       (.I0(idex_reg1[26]),
        .I1(idex_reg2[2]),
        .I2(idex_reg1[30]),
        .I3(idex_reg2[3]),
        .I4(idex_reg1[22]),
        .I5(idex_reg2[4]),
        .O(\mem_wdata[22]_i_9_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[23]_i_10 
       (.I0(idex_reg2[21]),
        .I1(idex_reg1[21]),
        .O(\mem_wdata[23]_i_10_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[23]_i_11 
       (.I0(idex_reg2[20]),
        .I1(idex_reg1[20]),
        .O(\mem_wdata[23]_i_11_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[23]_i_12 
       (.I0(idex_reg1[23]),
        .I1(idex_reg2[23]),
        .O(\mem_wdata[23]_i_12_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[23]_i_13 
       (.I0(idex_reg1[22]),
        .I1(idex_reg2[22]),
        .O(\mem_wdata[23]_i_13_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[23]_i_14 
       (.I0(idex_reg1[21]),
        .I1(idex_reg2[21]),
        .O(\mem_wdata[23]_i_14_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[23]_i_15 
       (.I0(idex_reg1[20]),
        .I1(idex_reg2[20]),
        .O(\mem_wdata[23]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'hFFFEAAAB00000000)) 
    \mem_wdata[23]_i_16 
       (.I0(idex_reg2[4]),
        .I1(idex_reg2[2]),
        .I2(idex_reg2[1]),
        .I3(idex_reg2[0]),
        .I4(idex_reg2[3]),
        .I5(idex_reg1[31]),
        .O(\mem_wdata[23]_i_16_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[23]_i_17 
       (.I0(\mem_wdata[26]_i_10_n_1 ),
        .I1(\mem_wdata[24]_i_9_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\mem_wdata[25]_i_9_n_1 ),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[23]_i_19_n_1 ),
        .O(\ex0/shiftout0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[23]_i_18 
       (.I0(\ex_reg2[23]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[24]_i_10_n_1 ),
        .O(\mem_wdata[23]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \mem_wdata[23]_i_19 
       (.I0(idex_reg1[27]),
        .I1(idex_reg2[2]),
        .I2(idex_reg1[31]),
        .I3(idex_reg2[3]),
        .I4(idex_reg1[23]),
        .I5(idex_reg2[4]),
        .O(\mem_wdata[23]_i_19_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[23]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [23]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [23]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[23]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[23]_i_3 
       (.I0(\mem_wdata[23]_i_6_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[23]_i_7_n_1 ),
        .I5(rst),
        .O(\mem_wdata[23]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[23]_i_6 
       (.I0(\mem_wdata[23]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [23]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[23]_i_18_n_1 ),
        .O(\mem_wdata[23]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[23]_i_7 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[23]),
        .I3(idex_reg1[23]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[23]_i_7_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[23]_i_8 
       (.I0(idex_reg2[23]),
        .I1(idex_reg1[23]),
        .O(\mem_wdata[23]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[23]_i_9 
       (.I0(idex_reg2[22]),
        .I1(idex_reg1[22]),
        .O(\mem_wdata[23]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[24]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [24]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [24]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[24]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[24]_i_3 
       (.I0(\mem_wdata[24]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[24]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[24]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[24]_i_4 
       (.I0(\mem_wdata[24]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [24]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[24]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[24]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[24]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[24]),
        .I3(idex_reg1[24]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[24]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[24]_i_6 
       (.I0(\ex_reg2[24]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[25]_i_10_n_1 ),
        .O(\mem_wdata[24]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[24]_i_7 
       (.I0(\mem_wdata[27]_i_20_n_1 ),
        .I1(\mem_wdata[25]_i_9_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\mem_wdata[26]_i_10_n_1 ),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[24]_i_9_n_1 ),
        .O(\ex0/shiftout0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \mem_wdata[24]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[3]),
        .O(\mem_wdata[24]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \mem_wdata[24]_i_9 
       (.I0(idex_reg1[28]),
        .I1(idex_reg2[2]),
        .I2(idex_reg2[4]),
        .I3(idex_reg1[24]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[24]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[25]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [25]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [25]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[25]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[25]_i_3 
       (.I0(\mem_wdata[25]_i_4_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[25]_i_5_n_1 ),
        .I5(rst),
        .O(\mem_wdata[25]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[25]_i_4 
       (.I0(\mem_wdata[25]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [25]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[25]_i_8_n_1 ),
        .O(\mem_wdata[25]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[25]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[25]),
        .I3(idex_reg1[25]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[25]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hFFF8FFF100000000)) 
    \mem_wdata[25]_i_6 
       (.I0(idex_reg2[0]),
        .I1(idex_reg2[1]),
        .I2(idex_reg2[4]),
        .I3(idex_reg2[3]),
        .I4(idex_reg2[2]),
        .I5(idex_reg1[31]),
        .O(\mem_wdata[25]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[25]_i_7 
       (.I0(\mem_wdata[26]_i_9_n_1 ),
        .I1(\mem_wdata[26]_i_10_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\mem_wdata[27]_i_20_n_1 ),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[25]_i_9_n_1 ),
        .O(\ex0/shiftout0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[25]_i_8 
       (.I0(\ex_reg2[25]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[26]_i_10_n_1 ),
        .O(\mem_wdata[25]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \mem_wdata[25]_i_9 
       (.I0(idex_reg1[29]),
        .I1(idex_reg2[2]),
        .I2(idex_reg2[4]),
        .I3(idex_reg1[25]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[25]_i_9_n_1 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \mem_wdata[26]_i_10 
       (.I0(idex_reg1[30]),
        .I1(idex_reg2[2]),
        .I2(idex_reg2[4]),
        .I3(idex_reg1[26]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[26]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[26]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [26]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [26]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[26]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[26]_i_3 
       (.I0(\mem_wdata[26]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[26]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[26]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[26]_i_4 
       (.I0(\mem_wdata[26]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [26]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[26]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[26]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[26]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[26]),
        .I3(idex_reg1[26]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[26]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[26]_i_6 
       (.I0(\ex_reg2[26]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[27]_i_10_n_1 ),
        .O(\mem_wdata[26]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[26]_i_7 
       (.I0(\mem_wdata[27]_i_19_n_1 ),
        .I1(\mem_wdata[27]_i_20_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\mem_wdata[26]_i_9_n_1 ),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[26]_i_10_n_1 ),
        .O(\ex0/shiftout0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hAAAAA888)) 
    \mem_wdata[26]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[1]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[26]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \mem_wdata[26]_i_9 
       (.I0(idex_reg2[3]),
        .I1(idex_reg1[28]),
        .I2(idex_reg2[4]),
        .I3(idex_reg2[2]),
        .O(\mem_wdata[26]_i_9_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[27]_i_10 
       (.I0(idex_reg2[25]),
        .I1(idex_reg1[25]),
        .O(\mem_wdata[27]_i_10_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[27]_i_11 
       (.I0(idex_reg2[24]),
        .I1(idex_reg1[24]),
        .O(\mem_wdata[27]_i_11_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[27]_i_12 
       (.I0(idex_reg1[27]),
        .I1(idex_reg2[27]),
        .O(\mem_wdata[27]_i_12_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[27]_i_13 
       (.I0(idex_reg1[26]),
        .I1(idex_reg2[26]),
        .O(\mem_wdata[27]_i_13_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[27]_i_14 
       (.I0(idex_reg1[25]),
        .I1(idex_reg2[25]),
        .O(\mem_wdata[27]_i_14_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[27]_i_15 
       (.I0(idex_reg1[24]),
        .I1(idex_reg2[24]),
        .O(\mem_wdata[27]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'hFFFEEEEF00000000)) 
    \mem_wdata[27]_i_16 
       (.I0(idex_reg2[4]),
        .I1(idex_reg2[3]),
        .I2(idex_reg2[0]),
        .I3(idex_reg2[1]),
        .I4(idex_reg2[2]),
        .I5(idex_reg1[31]),
        .O(\mem_wdata[27]_i_16_n_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mem_wdata[27]_i_17 
       (.I0(\mem_wdata[28]_i_9_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\mem_wdata[27]_i_19_n_1 ),
        .I3(idex_reg2[1]),
        .I4(\mem_wdata[27]_i_20_n_1 ),
        .O(\ex0/shiftout0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[27]_i_18 
       (.I0(\ex_reg2[27]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[28]_i_10_n_1 ),
        .O(\mem_wdata[27]_i_18_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \mem_wdata[27]_i_19 
       (.I0(idex_reg2[3]),
        .I1(idex_reg1[29]),
        .I2(idex_reg2[4]),
        .I3(idex_reg2[2]),
        .O(\mem_wdata[27]_i_19_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[27]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [27]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [27]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[27]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \mem_wdata[27]_i_20 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[2]),
        .I2(idex_reg2[4]),
        .I3(idex_reg1[27]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[27]_i_20_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[27]_i_3 
       (.I0(\mem_wdata[27]_i_6_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[27]_i_7_n_1 ),
        .I5(rst),
        .O(\mem_wdata[27]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[27]_i_6 
       (.I0(\mem_wdata[27]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [27]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[27]_i_18_n_1 ),
        .O(\mem_wdata[27]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[27]_i_7 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[27]),
        .I3(idex_reg1[27]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[27]_i_7_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[27]_i_8 
       (.I0(idex_reg2[27]),
        .I1(idex_reg1[27]),
        .O(\mem_wdata[27]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[27]_i_9 
       (.I0(idex_reg2[26]),
        .I1(idex_reg1[26]),
        .O(\mem_wdata[27]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[28]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [28]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [28]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[28]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[28]_i_3 
       (.I0(\mem_wdata[28]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[28]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[28]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[28]_i_4 
       (.I0(\mem_wdata[28]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [28]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[28]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[28]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[28]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[28]),
        .I3(idex_reg1[28]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[28]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[28]_i_6 
       (.I0(\ex_reg2[28]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[29]_i_10_n_1 ),
        .O(\mem_wdata[28]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[28]_i_7 
       (.I0(\mem_wdata[29]_i_9_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\mem_wdata[28]_i_9_n_1 ),
        .O(\ex0/shiftout0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \mem_wdata[28]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[3]),
        .O(\mem_wdata[28]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \mem_wdata[28]_i_9 
       (.I0(idex_reg1[30]),
        .I1(idex_reg2[1]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[28]),
        .I4(idex_reg2[4]),
        .I5(idex_reg2[2]),
        .O(\mem_wdata[28]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[29]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [29]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [29]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[29]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[29]_i_3 
       (.I0(\mem_wdata[29]_i_4_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[29]_i_5_n_1 ),
        .I5(rst),
        .O(\mem_wdata[29]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[29]_i_4 
       (.I0(\mem_wdata[29]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [29]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[29]_i_8_n_1 ),
        .O(\mem_wdata[29]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[29]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[29]),
        .I3(idex_reg1[29]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[29]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hFFFEFEFF00000000)) 
    \mem_wdata[29]_i_6 
       (.I0(idex_reg2[4]),
        .I1(idex_reg2[3]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[0]),
        .I4(idex_reg2[1]),
        .I5(idex_reg1[31]),
        .O(\mem_wdata[29]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[29]_i_7 
       (.I0(\mem_wdata[30]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\mem_wdata[29]_i_9_n_1 ),
        .O(\ex0/shiftout0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[29]_i_8 
       (.I0(\ex_reg2[29]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[30]_i_11_n_1 ),
        .O(\mem_wdata[29]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \mem_wdata[29]_i_9 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[1]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[29]),
        .I4(idex_reg2[4]),
        .I5(idex_reg2[2]),
        .O(\mem_wdata[29]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[2]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [2]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [2]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[2]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[2]_i_3 
       (.I0(\mem_wdata[2]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[2]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[2]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[2]_i_4 
       (.I0(\mem_wdata[2]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [2]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[2]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[2]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[2]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[2]),
        .I3(idex_reg1[2]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[2]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[2]_i_6 
       (.I0(\ex_reg2[2]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[3]_i_11_n_1 ),
        .O(\mem_wdata[2]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[2]_i_7 
       (.I0(\ex_reg2[3]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[2]_i_10_n_1 ),
        .O(\ex0/shiftout0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \mem_wdata[2]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[1]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[2]_i_8_n_1 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \mem_wdata[30]_i_10 
       (.I0(idex_reg2[2]),
        .I1(idex_reg2[4]),
        .I2(idex_reg1[30]),
        .I3(idex_reg2[3]),
        .I4(idex_reg2[1]),
        .O(\mem_wdata[30]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[30]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [30]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [30]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[30]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[30]_i_3 
       (.I0(\mem_wdata[30]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[30]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[30]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[30]_i_4 
       (.I0(\mem_wdata[30]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [30]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[30]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[30]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[30]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[30]),
        .I3(idex_reg1[30]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[30]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[30]_i_6 
       (.I0(\ex_reg2[30]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[31]_i_29_n_1 ),
        .O(\mem_wdata[30]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[30]_i_7 
       (.I0(\mem_wdata[30]_i_9_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\mem_wdata[30]_i_10_n_1 ),
        .O(\ex0/shiftout0 [30]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \mem_wdata[30]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[1]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[30]_i_8_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \mem_wdata[30]_i_9 
       (.I0(idex_reg2[2]),
        .I1(idex_reg2[4]),
        .I2(idex_reg1[31]),
        .I3(idex_reg2[3]),
        .I4(idex_reg2[1]),
        .O(\mem_wdata[30]_i_9_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[31]_i_10 
       (.I0(idex_reg2[31]),
        .I1(idex_reg1[31]),
        .O(\mem_wdata[31]_i_10_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[31]_i_11 
       (.I0(idex_reg2[30]),
        .I1(idex_reg1[30]),
        .O(\mem_wdata[31]_i_11_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[31]_i_12 
       (.I0(idex_reg2[29]),
        .I1(idex_reg1[29]),
        .O(\mem_wdata[31]_i_12_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[31]_i_13 
       (.I0(idex_reg2[28]),
        .I1(idex_reg1[28]),
        .O(\mem_wdata[31]_i_13_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[31]_i_14 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[31]),
        .O(\mem_wdata[31]_i_14_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[31]_i_15 
       (.I0(idex_reg1[30]),
        .I1(idex_reg2[30]),
        .O(\mem_wdata[31]_i_15_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[31]_i_16 
       (.I0(idex_reg1[29]),
        .I1(idex_reg2[29]),
        .O(\mem_wdata[31]_i_16_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[31]_i_17 
       (.I0(idex_reg1[28]),
        .I1(idex_reg2[28]),
        .O(\mem_wdata[31]_i_17_n_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \mem_wdata[31]_i_18 
       (.I0(idex_reg2[3]),
        .I1(idex_reg2[0]),
        .I2(idex_reg2[1]),
        .I3(idex_reg2[2]),
        .I4(idex_reg2[4]),
        .O(\mem_wdata[31]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \mem_wdata[31]_i_19 
       (.I0(idex_reg2[1]),
        .I1(idex_reg2[3]),
        .I2(idex_reg1[31]),
        .I3(idex_reg2[4]),
        .I4(idex_reg2[2]),
        .I5(idex_reg2[0]),
        .O(\mem_wdata[31]_i_19_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[31]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [31]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/p_2_in ),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[31]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mem_wdata[31]_i_20 
       (.I0(\ex_reg2[31]_i_29_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\mem_wdata[31]_i_21_n_1 ),
        .I3(idex_reg2[1]),
        .I4(\mem_wdata[31]_i_22_n_1 ),
        .O(\mem_wdata[31]_i_20_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[31]_i_21 
       (.I0(\ex_reg2[31]_i_35_n_1 ),
        .I1(idex_reg2[2]),
        .I2(\ex_reg2[31]_i_36_n_1 ),
        .O(\mem_wdata[31]_i_21_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[31]_i_22 
       (.I0(\ex_reg2[31]_i_37_n_1 ),
        .I1(idex_reg2[2]),
        .I2(\ex_reg2[31]_i_38_n_1 ),
        .O(\mem_wdata[31]_i_22_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[31]_i_3 
       (.I0(\mem_wdata[31]_i_8_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[31]_i_9_n_1 ),
        .I5(rst),
        .O(\mem_wdata[31]_i_3_n_1 ));
  LUT4 #(
    .INIT(16'hFBEB)) 
    \mem_wdata[31]_i_5 
       (.I0(idex_aluop[3]),
        .I1(idex_aluop[1]),
        .I2(idex_aluop[2]),
        .I3(idex_aluop[0]),
        .O(\mem_wdata[31]_i_5_n_1 ));
  LUT4 #(
    .INIT(16'hFFED)) 
    \mem_wdata[31]_i_7 
       (.I0(idex_aluop[0]),
        .I1(idex_aluop[3]),
        .I2(idex_aluop[1]),
        .I3(idex_aluop[2]),
        .O(\mem_wdata[31]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[31]_i_8 
       (.I0(idex_reg1[31]),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\mem_wdata[31]_i_19_n_1 ),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[31]_i_20_n_1 ),
        .O(\mem_wdata[31]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[31]_i_9 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[31]),
        .I3(idex_reg1[31]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[31]_i_9_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[3]_i_10 
       (.I0(idex_reg2[1]),
        .I1(idex_reg1[1]),
        .O(\mem_wdata[3]_i_10_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[3]_i_11 
       (.I0(idex_reg2[0]),
        .I1(idex_reg1[0]),
        .O(\mem_wdata[3]_i_11_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[3]_i_12 
       (.I0(idex_reg1[3]),
        .I1(idex_reg2[3]),
        .O(\mem_wdata[3]_i_12_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[3]_i_13 
       (.I0(idex_reg1[2]),
        .I1(idex_reg2[2]),
        .O(\mem_wdata[3]_i_13_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[3]_i_14 
       (.I0(idex_reg1[1]),
        .I1(idex_reg2[1]),
        .O(\mem_wdata[3]_i_14_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[3]_i_15 
       (.I0(idex_reg1[0]),
        .I1(idex_reg2[0]),
        .O(\mem_wdata[3]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'h8000800080000004)) 
    \mem_wdata[3]_i_16 
       (.I0(idex_reg2[3]),
        .I1(idex_reg1[31]),
        .I2(idex_reg2[4]),
        .I3(idex_reg2[2]),
        .I4(idex_reg2[1]),
        .I5(idex_reg2[0]),
        .O(\mem_wdata[3]_i_16_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[3]_i_17 
       (.I0(\ex_reg2[4]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[3]_i_10_n_1 ),
        .O(\ex0/shiftout0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[3]_i_18 
       (.I0(\ex_reg2[3]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[4]_i_11_n_1 ),
        .O(\mem_wdata[3]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[3]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [3]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [3]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[3]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[3]_i_3 
       (.I0(\mem_wdata[3]_i_6_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[3]_i_7_n_1 ),
        .I5(rst),
        .O(\mem_wdata[3]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[3]_i_6 
       (.I0(\mem_wdata[3]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [3]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[3]_i_18_n_1 ),
        .O(\mem_wdata[3]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[3]_i_7 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[3]),
        .I3(idex_reg1[3]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[3]_i_7_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[3]_i_8 
       (.I0(idex_reg2[3]),
        .I1(idex_reg1[3]),
        .O(\mem_wdata[3]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[3]_i_9 
       (.I0(idex_reg2[2]),
        .I1(idex_reg1[2]),
        .O(\mem_wdata[3]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[4]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [4]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [4]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[4]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[4]_i_3 
       (.I0(\mem_wdata[4]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[4]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[4]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[4]_i_4 
       (.I0(\mem_wdata[4]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [4]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[4]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[4]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[4]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[4]),
        .I3(idex_reg1[4]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[4]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[4]_i_6 
       (.I0(\ex_reg2[4]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[5]_i_11_n_1 ),
        .O(\mem_wdata[4]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[4]_i_7 
       (.I0(\ex_reg2[5]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[4]_i_10_n_1 ),
        .O(\ex0/shiftout0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mem_wdata[4]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[3]),
        .O(\mem_wdata[4]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[5]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [5]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [5]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[5]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[5]_i_3 
       (.I0(\mem_wdata[5]_i_4_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[5]_i_5_n_1 ),
        .I5(rst),
        .O(\mem_wdata[5]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[5]_i_4 
       (.I0(\mem_wdata[5]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [5]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[5]_i_8_n_1 ),
        .O(\mem_wdata[5]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[5]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[5]),
        .I3(idex_reg1[5]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[5]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hF000000080000100)) 
    \mem_wdata[5]_i_6 
       (.I0(idex_reg2[0]),
        .I1(idex_reg2[1]),
        .I2(idex_reg2[4]),
        .I3(idex_reg1[31]),
        .I4(idex_reg2[3]),
        .I5(idex_reg2[2]),
        .O(\mem_wdata[5]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[5]_i_7 
       (.I0(\ex_reg2[6]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[5]_i_10_n_1 ),
        .O(\ex0/shiftout0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[5]_i_8 
       (.I0(\ex_reg2[5]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[6]_i_11_n_1 ),
        .O(\mem_wdata[5]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[6]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [6]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [6]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[6]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[6]_i_3 
       (.I0(\mem_wdata[6]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[6]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[6]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[6]_i_4 
       (.I0(\mem_wdata[6]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [6]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[6]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[6]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[6]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[6]),
        .I3(idex_reg1[6]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[6]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[6]_i_6 
       (.I0(\ex_reg2[6]_i_11_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[7]_i_11_n_1 ),
        .O(\mem_wdata[6]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[6]_i_7 
       (.I0(\ex_reg2[7]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[6]_i_10_n_1 ),
        .O(\ex0/shiftout0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h88800000)) 
    \mem_wdata[6]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[2]),
        .I3(idex_reg2[1]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[6]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[7]_i_10 
       (.I0(idex_reg2[5]),
        .I1(idex_reg1[5]),
        .O(\mem_wdata[7]_i_10_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[7]_i_11 
       (.I0(idex_reg2[4]),
        .I1(idex_reg1[4]),
        .O(\mem_wdata[7]_i_11_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[7]_i_12 
       (.I0(idex_reg1[7]),
        .I1(idex_reg2[7]),
        .O(\mem_wdata[7]_i_12_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[7]_i_13 
       (.I0(idex_reg1[6]),
        .I1(idex_reg2[6]),
        .O(\mem_wdata[7]_i_13_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[7]_i_14 
       (.I0(idex_reg1[5]),
        .I1(idex_reg2[5]),
        .O(\mem_wdata[7]_i_14_n_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    \mem_wdata[7]_i_15 
       (.I0(idex_reg1[4]),
        .I1(idex_reg2[4]),
        .O(\mem_wdata[7]_i_15_n_1 ));
  LUT6 #(
    .INIT(64'h8080808080808004)) 
    \mem_wdata[7]_i_16 
       (.I0(idex_reg2[4]),
        .I1(idex_reg1[31]),
        .I2(idex_reg2[3]),
        .I3(idex_reg2[0]),
        .I4(idex_reg2[1]),
        .I5(idex_reg2[2]),
        .O(\mem_wdata[7]_i_16_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[7]_i_17 
       (.I0(\ex_reg2[8]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[7]_i_10_n_1 ),
        .O(\ex0/shiftout0 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[7]_i_18 
       (.I0(\mem_wdata[7]_i_19_n_1 ),
        .I1(\mem_wdata[9]_i_9_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\mem_wdata[8]_i_9_n_1 ),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[10]_i_9_n_1 ),
        .O(\mem_wdata[7]_i_18_n_1 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \mem_wdata[7]_i_19 
       (.I0(idex_reg1[0]),
        .I1(idex_reg2[2]),
        .I2(idex_reg2[4]),
        .I3(idex_reg1[4]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[7]_i_19_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[7]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [7]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [7]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[7]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[7]_i_3 
       (.I0(\mem_wdata[7]_i_6_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[7]_i_7_n_1 ),
        .I5(rst),
        .O(\mem_wdata[7]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[7]_i_6 
       (.I0(\mem_wdata[7]_i_16_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [7]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[7]_i_18_n_1 ),
        .O(\mem_wdata[7]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[7]_i_7 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[7]),
        .I3(idex_reg1[7]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[7]_i_7_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[7]_i_8 
       (.I0(idex_reg2[7]),
        .I1(idex_reg1[7]),
        .O(\mem_wdata[7]_i_8_n_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mem_wdata[7]_i_9 
       (.I0(idex_reg2[6]),
        .I1(idex_reg1[6]),
        .O(\mem_wdata[7]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[8]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [8]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [8]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[8]_i_2_n_1 ));
  LUT5 #(
    .INIT(32'h00008F80)) 
    \mem_wdata[8]_i_3 
       (.I0(\mem_wdata[8]_i_4_n_1 ),
        .I1(idex_aluop[3]),
        .I2(idex_alusel[1]),
        .I3(\mem_wdata[8]_i_5_n_1 ),
        .I4(rst),
        .O(\mem_wdata[8]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000033E230E2)) 
    \mem_wdata[8]_i_4 
       (.I0(\mem_wdata[8]_i_6_n_1 ),
        .I1(idex_aluop[0]),
        .I2(\ex0/shiftout0 [8]),
        .I3(idex_aluop[1]),
        .I4(\mem_wdata[8]_i_8_n_1 ),
        .I5(idex_aluop[2]),
        .O(\mem_wdata[8]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[8]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[8]),
        .I3(idex_reg1[8]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[8]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[8]_i_6 
       (.I0(\mem_wdata[8]_i_9_n_1 ),
        .I1(\mem_wdata[10]_i_9_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\mem_wdata[9]_i_9_n_1 ),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[11]_i_19_n_1 ),
        .O(\mem_wdata[8]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[8]_i_7 
       (.I0(\ex_reg2[9]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[8]_i_10_n_1 ),
        .O(\ex0/shiftout0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mem_wdata[8]_i_8 
       (.I0(idex_reg1[31]),
        .I1(idex_reg2[4]),
        .I2(idex_reg2[3]),
        .O(\mem_wdata[8]_i_8_n_1 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \mem_wdata[8]_i_9 
       (.I0(idex_reg1[1]),
        .I1(idex_reg2[2]),
        .I2(idex_reg2[4]),
        .I3(idex_reg1[5]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[8]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020222000)) 
    \mem_wdata[9]_i_2 
       (.I0(idex_alusel[1]),
        .I1(rst),
        .I2(\ex0/data0 [9]),
        .I3(\mem_wdata[31]_i_5_n_1 ),
        .I4(\ex0/data1 [9]),
        .I5(\mem_wdata[31]_i_7_n_1 ),
        .O(\mem_wdata[9]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000020FF2000)) 
    \mem_wdata[9]_i_3 
       (.I0(\mem_wdata[9]_i_4_n_1 ),
        .I1(idex_aluop[2]),
        .I2(idex_aluop[3]),
        .I3(idex_alusel[1]),
        .I4(\mem_wdata[9]_i_5_n_1 ),
        .I5(rst),
        .O(\mem_wdata[9]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0F00FF2F0F00F020)) 
    \mem_wdata[9]_i_4 
       (.I0(\mem_wdata[9]_i_6_n_1 ),
        .I1(\mem_wdata[31]_i_18_n_1 ),
        .I2(idex_aluop[1]),
        .I3(\ex0/shiftout0 [9]),
        .I4(idex_aluop[0]),
        .I5(\mem_wdata[9]_i_8_n_1 ),
        .O(\mem_wdata[9]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000A6600000)) 
    \mem_wdata[9]_i_5 
       (.I0(idex_aluop[1]),
        .I1(idex_aluop[0]),
        .I2(idex_reg2[9]),
        .I3(idex_reg1[9]),
        .I4(idex_aluop[2]),
        .I5(idex_aluop[3]),
        .O(\mem_wdata[9]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hFF00000080000100)) 
    \mem_wdata[9]_i_6 
       (.I0(idex_reg2[0]),
        .I1(idex_reg2[1]),
        .I2(idex_reg2[2]),
        .I3(idex_reg1[31]),
        .I4(idex_reg2[4]),
        .I5(idex_reg2[3]),
        .O(\mem_wdata[9]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem_wdata[9]_i_7 
       (.I0(\ex_reg2[10]_i_10_n_1 ),
        .I1(idex_reg2[0]),
        .I2(\ex_reg2[9]_i_10_n_1 ),
        .O(\ex0/shiftout0 [9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mem_wdata[9]_i_8 
       (.I0(\mem_wdata[9]_i_9_n_1 ),
        .I1(\mem_wdata[11]_i_19_n_1 ),
        .I2(idex_reg2[0]),
        .I3(\mem_wdata[10]_i_9_n_1 ),
        .I4(idex_reg2[1]),
        .I5(\mem_wdata[11]_i_21_n_1 ),
        .O(\mem_wdata[9]_i_8_n_1 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \mem_wdata[9]_i_9 
       (.I0(idex_reg1[2]),
        .I1(idex_reg2[2]),
        .I2(idex_reg2[4]),
        .I3(idex_reg1[6]),
        .I4(idex_reg2[3]),
        .O(\mem_wdata[9]_i_9_n_1 ));
  CARRY4 \mem_wdata_reg[0]_i_14 
       (.CI(\mem_wdata_reg[0]_i_26_n_1 ),
        .CO({\NLW_mem_wdata_reg[0]_i_14_CO_UNCONNECTED [3],\ex0/data3 ,\mem_wdata_reg[0]_i_14_n_3 ,\mem_wdata_reg[0]_i_14_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_mem_wdata_reg[0]_i_14_O_UNCONNECTED [3:0]),
        .S({1'b0,\mem_wdata[0]_i_27_n_1 ,\mem_wdata[0]_i_28_n_1 ,\mem_wdata[0]_i_29_n_1 }));
  CARRY4 \mem_wdata_reg[0]_i_25 
       (.CI(\mem_wdata_reg[0]_i_30_n_1 ),
        .CO({\mem_wdata_reg[0]_i_25_n_1 ,\mem_wdata_reg[0]_i_25_n_2 ,\mem_wdata_reg[0]_i_25_n_3 ,\mem_wdata_reg[0]_i_25_n_4 }),
        .CYINIT(1'b0),
        .DI({\mem_wdata[0]_i_31_n_1 ,\mem_wdata[0]_i_32_n_1 ,\mem_wdata[0]_i_33_n_1 ,\mem_wdata[0]_i_34_n_1 }),
        .O(\NLW_mem_wdata_reg[0]_i_25_O_UNCONNECTED [3:0]),
        .S({\mem_wdata[0]_i_35_n_1 ,\mem_wdata[0]_i_36_n_1 ,\mem_wdata[0]_i_37_n_1 ,\mem_wdata[0]_i_38_n_1 }));
  CARRY4 \mem_wdata_reg[0]_i_26 
       (.CI(\mem_wdata_reg[0]_i_39_n_1 ),
        .CO({\mem_wdata_reg[0]_i_26_n_1 ,\mem_wdata_reg[0]_i_26_n_2 ,\mem_wdata_reg[0]_i_26_n_3 ,\mem_wdata_reg[0]_i_26_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_mem_wdata_reg[0]_i_26_O_UNCONNECTED [3:0]),
        .S({\mem_wdata[0]_i_40_n_1 ,\mem_wdata[0]_i_41_n_1 ,\mem_wdata[0]_i_42_n_1 ,\mem_wdata[0]_i_43_n_1 }));
  CARRY4 \mem_wdata_reg[0]_i_30 
       (.CI(\mem_wdata_reg[0]_i_44_n_1 ),
        .CO({\mem_wdata_reg[0]_i_30_n_1 ,\mem_wdata_reg[0]_i_30_n_2 ,\mem_wdata_reg[0]_i_30_n_3 ,\mem_wdata_reg[0]_i_30_n_4 }),
        .CYINIT(1'b0),
        .DI({\mem_wdata[0]_i_45_n_1 ,\mem_wdata[0]_i_46_n_1 ,\mem_wdata[0]_i_47_n_1 ,\mem_wdata[0]_i_48_n_1 }),
        .O(\NLW_mem_wdata_reg[0]_i_30_O_UNCONNECTED [3:0]),
        .S({\mem_wdata[0]_i_49_n_1 ,\mem_wdata[0]_i_50_n_1 ,\mem_wdata[0]_i_51_n_1 ,\mem_wdata[0]_i_52_n_1 }));
  CARRY4 \mem_wdata_reg[0]_i_39 
       (.CI(1'b0),
        .CO({\mem_wdata_reg[0]_i_39_n_1 ,\mem_wdata_reg[0]_i_39_n_2 ,\mem_wdata_reg[0]_i_39_n_3 ,\mem_wdata_reg[0]_i_39_n_4 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_mem_wdata_reg[0]_i_39_O_UNCONNECTED [3:0]),
        .S({\mem_wdata[0]_i_53_n_1 ,\mem_wdata[0]_i_54_n_1 ,\mem_wdata[0]_i_55_n_1 ,\mem_wdata[0]_i_56_n_1 }));
  MUXF7 \mem_wdata_reg[0]_i_4 
       (.I0(\mem_wdata[0]_i_7_n_1 ),
        .I1(\mem_wdata[0]_i_8_n_1 ),
        .O(\mem_wdata_reg[0]_i_4_n_1 ),
        .S(\mem_wdata[31]_i_5_n_1 ));
  CARRY4 \mem_wdata_reg[0]_i_44 
       (.CI(\mem_wdata_reg[0]_i_57_n_1 ),
        .CO({\mem_wdata_reg[0]_i_44_n_1 ,\mem_wdata_reg[0]_i_44_n_2 ,\mem_wdata_reg[0]_i_44_n_3 ,\mem_wdata_reg[0]_i_44_n_4 }),
        .CYINIT(1'b0),
        .DI({\mem_wdata[0]_i_58_n_1 ,\mem_wdata[0]_i_59_n_1 ,\mem_wdata[0]_i_60_n_1 ,\mem_wdata[0]_i_61_n_1 }),
        .O(\NLW_mem_wdata_reg[0]_i_44_O_UNCONNECTED [3:0]),
        .S({\mem_wdata[0]_i_62_n_1 ,\mem_wdata[0]_i_63_n_1 ,\mem_wdata[0]_i_64_n_1 ,\mem_wdata[0]_i_65_n_1 }));
  CARRY4 \mem_wdata_reg[0]_i_57 
       (.CI(1'b0),
        .CO({\mem_wdata_reg[0]_i_57_n_1 ,\mem_wdata_reg[0]_i_57_n_2 ,\mem_wdata_reg[0]_i_57_n_3 ,\mem_wdata_reg[0]_i_57_n_4 }),
        .CYINIT(1'b0),
        .DI({\mem_wdata[0]_i_66_n_1 ,\mem_wdata[0]_i_67_n_1 ,\mem_wdata[0]_i_68_n_1 ,\mem_wdata[0]_i_69_n_1 }),
        .O(\NLW_mem_wdata_reg[0]_i_57_O_UNCONNECTED [3:0]),
        .S({\mem_wdata[0]_i_70_n_1 ,\mem_wdata[0]_i_71_n_1 ,\mem_wdata[0]_i_72_n_1 ,\mem_wdata[0]_i_73_n_1 }));
  MUXF7 \mem_wdata_reg[10]_i_1 
       (.I0(\mem_wdata[10]_i_2_n_1 ),
        .I1(\mem_wdata[10]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [10]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[11]_i_1 
       (.I0(\mem_wdata[11]_i_2_n_1 ),
        .I1(\mem_wdata[11]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [11]),
        .S(idex_alusel[0]));
  CARRY4 \mem_wdata_reg[11]_i_4 
       (.CI(\mem_wdata_reg[7]_i_4_n_1 ),
        .CO({\mem_wdata_reg[11]_i_4_n_1 ,\mem_wdata_reg[11]_i_4_n_2 ,\mem_wdata_reg[11]_i_4_n_3 ,\mem_wdata_reg[11]_i_4_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_reg1[11:8]),
        .O(\ex0/data0 [11:8]),
        .S({\mem_wdata[11]_i_8_n_1 ,\mem_wdata[11]_i_9_n_1 ,\mem_wdata[11]_i_10_n_1 ,\mem_wdata[11]_i_11_n_1 }));
  CARRY4 \mem_wdata_reg[11]_i_5 
       (.CI(\mem_wdata_reg[7]_i_5_n_1 ),
        .CO({\mem_wdata_reg[11]_i_5_n_1 ,\mem_wdata_reg[11]_i_5_n_2 ,\mem_wdata_reg[11]_i_5_n_3 ,\mem_wdata_reg[11]_i_5_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_reg1[11:8]),
        .O(\ex0/data1 [11:8]),
        .S({\mem_wdata[11]_i_12_n_1 ,\mem_wdata[11]_i_13_n_1 ,\mem_wdata[11]_i_14_n_1 ,\mem_wdata[11]_i_15_n_1 }));
  MUXF7 \mem_wdata_reg[12]_i_1 
       (.I0(\mem_wdata[12]_i_2_n_1 ),
        .I1(\mem_wdata[12]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [12]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[13]_i_1 
       (.I0(\mem_wdata[13]_i_2_n_1 ),
        .I1(\mem_wdata[13]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [13]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[14]_i_1 
       (.I0(\mem_wdata[14]_i_2_n_1 ),
        .I1(\mem_wdata[14]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [14]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[15]_i_1 
       (.I0(\mem_wdata[15]_i_2_n_1 ),
        .I1(\mem_wdata[15]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [15]),
        .S(idex_alusel[0]));
  CARRY4 \mem_wdata_reg[15]_i_4 
       (.CI(\mem_wdata_reg[11]_i_4_n_1 ),
        .CO({\mem_wdata_reg[15]_i_4_n_1 ,\mem_wdata_reg[15]_i_4_n_2 ,\mem_wdata_reg[15]_i_4_n_3 ,\mem_wdata_reg[15]_i_4_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_reg1[15:12]),
        .O(\ex0/data0 [15:12]),
        .S({\mem_wdata[15]_i_8_n_1 ,\mem_wdata[15]_i_9_n_1 ,\mem_wdata[15]_i_10_n_1 ,\mem_wdata[15]_i_11_n_1 }));
  CARRY4 \mem_wdata_reg[15]_i_5 
       (.CI(\mem_wdata_reg[11]_i_5_n_1 ),
        .CO({\mem_wdata_reg[15]_i_5_n_1 ,\mem_wdata_reg[15]_i_5_n_2 ,\mem_wdata_reg[15]_i_5_n_3 ,\mem_wdata_reg[15]_i_5_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_reg1[15:12]),
        .O(\ex0/data1 [15:12]),
        .S({\mem_wdata[15]_i_12_n_1 ,\mem_wdata[15]_i_13_n_1 ,\mem_wdata[15]_i_14_n_1 ,\mem_wdata[15]_i_15_n_1 }));
  MUXF7 \mem_wdata_reg[16]_i_1 
       (.I0(\mem_wdata[16]_i_2_n_1 ),
        .I1(\mem_wdata[16]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [16]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[17]_i_1 
       (.I0(\mem_wdata[17]_i_2_n_1 ),
        .I1(\mem_wdata[17]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [17]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[18]_i_1 
       (.I0(\mem_wdata[18]_i_2_n_1 ),
        .I1(\mem_wdata[18]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [18]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[19]_i_1 
       (.I0(\mem_wdata[19]_i_2_n_1 ),
        .I1(\mem_wdata[19]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [19]),
        .S(idex_alusel[0]));
  CARRY4 \mem_wdata_reg[19]_i_4 
       (.CI(\mem_wdata_reg[15]_i_4_n_1 ),
        .CO({\mem_wdata_reg[19]_i_4_n_1 ,\mem_wdata_reg[19]_i_4_n_2 ,\mem_wdata_reg[19]_i_4_n_3 ,\mem_wdata_reg[19]_i_4_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_reg1[19:16]),
        .O(\ex0/data0 [19:16]),
        .S({\mem_wdata[19]_i_8_n_1 ,\mem_wdata[19]_i_9_n_1 ,\mem_wdata[19]_i_10_n_1 ,\mem_wdata[19]_i_11_n_1 }));
  CARRY4 \mem_wdata_reg[19]_i_5 
       (.CI(\mem_wdata_reg[15]_i_5_n_1 ),
        .CO({\mem_wdata_reg[19]_i_5_n_1 ,\mem_wdata_reg[19]_i_5_n_2 ,\mem_wdata_reg[19]_i_5_n_3 ,\mem_wdata_reg[19]_i_5_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_reg1[19:16]),
        .O(\ex0/data1 [19:16]),
        .S({\mem_wdata[19]_i_12_n_1 ,\mem_wdata[19]_i_13_n_1 ,\mem_wdata[19]_i_14_n_1 ,\mem_wdata[19]_i_15_n_1 }));
  MUXF7 \mem_wdata_reg[1]_i_1 
       (.I0(\mem_wdata[1]_i_2_n_1 ),
        .I1(\mem_wdata[1]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [1]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[20]_i_1 
       (.I0(\mem_wdata[20]_i_2_n_1 ),
        .I1(\mem_wdata[20]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [20]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[21]_i_1 
       (.I0(\mem_wdata[21]_i_2_n_1 ),
        .I1(\mem_wdata[21]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [21]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[22]_i_1 
       (.I0(\mem_wdata[22]_i_2_n_1 ),
        .I1(\mem_wdata[22]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [22]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[23]_i_1 
       (.I0(\mem_wdata[23]_i_2_n_1 ),
        .I1(\mem_wdata[23]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [23]),
        .S(idex_alusel[0]));
  CARRY4 \mem_wdata_reg[23]_i_4 
       (.CI(\mem_wdata_reg[19]_i_4_n_1 ),
        .CO({\mem_wdata_reg[23]_i_4_n_1 ,\mem_wdata_reg[23]_i_4_n_2 ,\mem_wdata_reg[23]_i_4_n_3 ,\mem_wdata_reg[23]_i_4_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_reg1[23:20]),
        .O(\ex0/data0 [23:20]),
        .S({\mem_wdata[23]_i_8_n_1 ,\mem_wdata[23]_i_9_n_1 ,\mem_wdata[23]_i_10_n_1 ,\mem_wdata[23]_i_11_n_1 }));
  CARRY4 \mem_wdata_reg[23]_i_5 
       (.CI(\mem_wdata_reg[19]_i_5_n_1 ),
        .CO({\mem_wdata_reg[23]_i_5_n_1 ,\mem_wdata_reg[23]_i_5_n_2 ,\mem_wdata_reg[23]_i_5_n_3 ,\mem_wdata_reg[23]_i_5_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_reg1[23:20]),
        .O(\ex0/data1 [23:20]),
        .S({\mem_wdata[23]_i_12_n_1 ,\mem_wdata[23]_i_13_n_1 ,\mem_wdata[23]_i_14_n_1 ,\mem_wdata[23]_i_15_n_1 }));
  MUXF7 \mem_wdata_reg[24]_i_1 
       (.I0(\mem_wdata[24]_i_2_n_1 ),
        .I1(\mem_wdata[24]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [24]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[25]_i_1 
       (.I0(\mem_wdata[25]_i_2_n_1 ),
        .I1(\mem_wdata[25]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [25]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[26]_i_1 
       (.I0(\mem_wdata[26]_i_2_n_1 ),
        .I1(\mem_wdata[26]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [26]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[27]_i_1 
       (.I0(\mem_wdata[27]_i_2_n_1 ),
        .I1(\mem_wdata[27]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [27]),
        .S(idex_alusel[0]));
  CARRY4 \mem_wdata_reg[27]_i_4 
       (.CI(\mem_wdata_reg[23]_i_4_n_1 ),
        .CO({\mem_wdata_reg[27]_i_4_n_1 ,\mem_wdata_reg[27]_i_4_n_2 ,\mem_wdata_reg[27]_i_4_n_3 ,\mem_wdata_reg[27]_i_4_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_reg1[27:24]),
        .O(\ex0/data0 [27:24]),
        .S({\mem_wdata[27]_i_8_n_1 ,\mem_wdata[27]_i_9_n_1 ,\mem_wdata[27]_i_10_n_1 ,\mem_wdata[27]_i_11_n_1 }));
  CARRY4 \mem_wdata_reg[27]_i_5 
       (.CI(\mem_wdata_reg[23]_i_5_n_1 ),
        .CO({\mem_wdata_reg[27]_i_5_n_1 ,\mem_wdata_reg[27]_i_5_n_2 ,\mem_wdata_reg[27]_i_5_n_3 ,\mem_wdata_reg[27]_i_5_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_reg1[27:24]),
        .O(\ex0/data1 [27:24]),
        .S({\mem_wdata[27]_i_12_n_1 ,\mem_wdata[27]_i_13_n_1 ,\mem_wdata[27]_i_14_n_1 ,\mem_wdata[27]_i_15_n_1 }));
  MUXF7 \mem_wdata_reg[28]_i_1 
       (.I0(\mem_wdata[28]_i_2_n_1 ),
        .I1(\mem_wdata[28]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [28]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[29]_i_1 
       (.I0(\mem_wdata[29]_i_2_n_1 ),
        .I1(\mem_wdata[29]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [29]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[2]_i_1 
       (.I0(\mem_wdata[2]_i_2_n_1 ),
        .I1(\mem_wdata[2]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [2]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[30]_i_1 
       (.I0(\mem_wdata[30]_i_2_n_1 ),
        .I1(\mem_wdata[30]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [30]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[31]_i_1 
       (.I0(\mem_wdata[31]_i_2_n_1 ),
        .I1(\mem_wdata[31]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [31]),
        .S(idex_alusel[0]));
  CARRY4 \mem_wdata_reg[31]_i_4 
       (.CI(\mem_wdata_reg[27]_i_4_n_1 ),
        .CO({\NLW_mem_wdata_reg[31]_i_4_CO_UNCONNECTED [3],\mem_wdata_reg[31]_i_4_n_2 ,\mem_wdata_reg[31]_i_4_n_3 ,\mem_wdata_reg[31]_i_4_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,idex_reg1[30:28]}),
        .O(\ex0/data0 [31:28]),
        .S({\mem_wdata[31]_i_10_n_1 ,\mem_wdata[31]_i_11_n_1 ,\mem_wdata[31]_i_12_n_1 ,\mem_wdata[31]_i_13_n_1 }));
  CARRY4 \mem_wdata_reg[31]_i_6 
       (.CI(\mem_wdata_reg[27]_i_5_n_1 ),
        .CO({\NLW_mem_wdata_reg[31]_i_6_CO_UNCONNECTED [3],\mem_wdata_reg[31]_i_6_n_2 ,\mem_wdata_reg[31]_i_6_n_3 ,\mem_wdata_reg[31]_i_6_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,idex_reg1[30:28]}),
        .O({\ex0/p_2_in ,\ex0/data1 [30:28]}),
        .S({\mem_wdata[31]_i_14_n_1 ,\mem_wdata[31]_i_15_n_1 ,\mem_wdata[31]_i_16_n_1 ,\mem_wdata[31]_i_17_n_1 }));
  MUXF7 \mem_wdata_reg[3]_i_1 
       (.I0(\mem_wdata[3]_i_2_n_1 ),
        .I1(\mem_wdata[3]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [3]),
        .S(idex_alusel[0]));
  CARRY4 \mem_wdata_reg[3]_i_4 
       (.CI(1'b0),
        .CO({\mem_wdata_reg[3]_i_4_n_1 ,\mem_wdata_reg[3]_i_4_n_2 ,\mem_wdata_reg[3]_i_4_n_3 ,\mem_wdata_reg[3]_i_4_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_reg1[3:0]),
        .O(\ex0/data0 [3:0]),
        .S({\mem_wdata[3]_i_8_n_1 ,\mem_wdata[3]_i_9_n_1 ,\mem_wdata[3]_i_10_n_1 ,\mem_wdata[3]_i_11_n_1 }));
  CARRY4 \mem_wdata_reg[3]_i_5 
       (.CI(1'b0),
        .CO({\mem_wdata_reg[3]_i_5_n_1 ,\mem_wdata_reg[3]_i_5_n_2 ,\mem_wdata_reg[3]_i_5_n_3 ,\mem_wdata_reg[3]_i_5_n_4 }),
        .CYINIT(1'b1),
        .DI(idex_reg1[3:0]),
        .O(\ex0/data1 [3:0]),
        .S({\mem_wdata[3]_i_12_n_1 ,\mem_wdata[3]_i_13_n_1 ,\mem_wdata[3]_i_14_n_1 ,\mem_wdata[3]_i_15_n_1 }));
  MUXF7 \mem_wdata_reg[4]_i_1 
       (.I0(\mem_wdata[4]_i_2_n_1 ),
        .I1(\mem_wdata[4]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [4]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[5]_i_1 
       (.I0(\mem_wdata[5]_i_2_n_1 ),
        .I1(\mem_wdata[5]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [5]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[6]_i_1 
       (.I0(\mem_wdata[6]_i_2_n_1 ),
        .I1(\mem_wdata[6]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [6]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[7]_i_1 
       (.I0(\mem_wdata[7]_i_2_n_1 ),
        .I1(\mem_wdata[7]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [7]),
        .S(idex_alusel[0]));
  CARRY4 \mem_wdata_reg[7]_i_4 
       (.CI(\mem_wdata_reg[3]_i_4_n_1 ),
        .CO({\mem_wdata_reg[7]_i_4_n_1 ,\mem_wdata_reg[7]_i_4_n_2 ,\mem_wdata_reg[7]_i_4_n_3 ,\mem_wdata_reg[7]_i_4_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_reg1[7:4]),
        .O(\ex0/data0 [7:4]),
        .S({\mem_wdata[7]_i_8_n_1 ,\mem_wdata[7]_i_9_n_1 ,\mem_wdata[7]_i_10_n_1 ,\mem_wdata[7]_i_11_n_1 }));
  CARRY4 \mem_wdata_reg[7]_i_5 
       (.CI(\mem_wdata_reg[3]_i_5_n_1 ),
        .CO({\mem_wdata_reg[7]_i_5_n_1 ,\mem_wdata_reg[7]_i_5_n_2 ,\mem_wdata_reg[7]_i_5_n_3 ,\mem_wdata_reg[7]_i_5_n_4 }),
        .CYINIT(1'b0),
        .DI(idex_reg1[7:4]),
        .O(\ex0/data1 [7:4]),
        .S({\mem_wdata[7]_i_12_n_1 ,\mem_wdata[7]_i_13_n_1 ,\mem_wdata[7]_i_14_n_1 ,\mem_wdata[7]_i_15_n_1 }));
  MUXF7 \mem_wdata_reg[8]_i_1 
       (.I0(\mem_wdata[8]_i_2_n_1 ),
        .I1(\mem_wdata[8]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [8]),
        .S(idex_alusel[0]));
  MUXF7 \mem_wdata_reg[9]_i_1 
       (.I0(\mem_wdata[9]_i_2_n_1 ),
        .I1(\mem_wdata[9]_i_3_n_1 ),
        .O(\mem_wdata_reg[31] [9]),
        .S(idex_alusel[0]));
  FDRE #(
    .INIT(1'b0)) 
    \memfunct_o_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[14]_0 [0]),
        .Q(\memfunct_o_reg[2]_0 [0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \memfunct_o_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[14]_0 [1]),
        .Q(\memfunct_o_reg[2]_0 [1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \memfunct_o_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[14]_0 [2]),
        .Q(\memfunct_o_reg[2]_0 [2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \memop_o_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[5]_0 [0]),
        .Q(\memop_o_reg[1]_0 [0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \memop_o_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\id_inst_reg[5]_0 [1]),
        .Q(\memop_o_reg[1]_0 [1]),
        .R(rst_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[0]_i_1 
       (.I0(\mem_addr_reg[31] [0]),
        .I1(\pc_reg[0] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [0]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[10]_i_1 
       (.I0(\mem_addr_reg[31] [10]),
        .I1(pc0[9]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [10]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[11]_i_1 
       (.I0(\mem_addr_reg[31] [11]),
        .I1(pc0[10]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [11]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[12]_i_1 
       (.I0(\mem_addr_reg[31] [12]),
        .I1(pc0[11]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [12]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[13]_i_1 
       (.I0(\mem_addr_reg[31] [13]),
        .I1(pc0[12]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [13]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[14]_i_1 
       (.I0(\mem_addr_reg[31] [14]),
        .I1(pc0[13]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [14]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[15]_i_1 
       (.I0(\mem_addr_reg[31] [15]),
        .I1(pc0[14]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [15]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[16]_i_1 
       (.I0(\mem_addr_reg[31] [16]),
        .I1(pc0[15]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [16]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[17]_i_1 
       (.I0(\mem_addr_reg[31] [17]),
        .I1(pc0[16]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [17]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[18]_i_1 
       (.I0(\mem_addr_reg[31] [18]),
        .I1(pc0[17]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [18]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[19]_i_1 
       (.I0(\mem_addr_reg[31] [19]),
        .I1(pc0[18]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [19]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[1]_i_1 
       (.I0(\mem_addr_reg[31] [1]),
        .I1(pc0[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [1]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[20]_i_1 
       (.I0(\mem_addr_reg[31] [20]),
        .I1(pc0[19]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [20]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[21]_i_1 
       (.I0(\mem_addr_reg[31] [21]),
        .I1(pc0[20]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [21]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[22]_i_1 
       (.I0(\mem_addr_reg[31] [22]),
        .I1(pc0[21]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [22]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[23]_i_1 
       (.I0(\mem_addr_reg[31] [23]),
        .I1(pc0[22]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [23]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[24]_i_1 
       (.I0(\mem_addr_reg[31] [24]),
        .I1(pc0[23]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [24]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[25]_i_1 
       (.I0(\mem_addr_reg[31] [25]),
        .I1(pc0[24]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [25]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[26]_i_1 
       (.I0(\mem_addr_reg[31] [26]),
        .I1(pc0[25]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [26]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[27]_i_1 
       (.I0(\mem_addr_reg[31] [27]),
        .I1(pc0[26]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [27]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[28]_i_1 
       (.I0(\mem_addr_reg[31] [28]),
        .I1(pc0[27]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [28]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[29]_i_1 
       (.I0(\mem_addr_reg[31] [29]),
        .I1(pc0[28]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [29]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[2]_i_1 
       (.I0(\mem_addr_reg[31] [2]),
        .I1(pc0[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [2]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[30]_i_1 
       (.I0(\mem_addr_reg[31] [30]),
        .I1(pc0[29]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [30]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[31]_i_2 
       (.I0(\mem_addr_reg[31] [31]),
        .I1(pc0[30]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [31]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[3]_i_1 
       (.I0(\mem_addr_reg[31] [3]),
        .I1(pc0[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [3]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[4]_i_1 
       (.I0(\mem_addr_reg[31] [4]),
        .I1(pc0[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [4]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[5]_i_1 
       (.I0(\mem_addr_reg[31] [5]),
        .I1(pc0[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [5]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[6]_i_1 
       (.I0(\mem_addr_reg[31] [6]),
        .I1(pc0[5]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [6]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[7]_i_1 
       (.I0(\mem_addr_reg[31] [7]),
        .I1(pc0[6]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [7]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[8]_i_1 
       (.I0(\mem_addr_reg[31] [8]),
        .I1(pc0[7]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [8]));
  LUT5 #(
    .INIT(32'hCAACCCAC)) 
    \pc[9]_i_1 
       (.I0(\mem_addr_reg[31] [9]),
        .I1(pc0[8]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\mem_wdata_reg[31] [0]),
        .O(\pc_reg[31] [9]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h1)) 
    regs_reg_r1_0_31_0_5_i_11
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\ex_aluop_reg[2]_0 ));
endmodule

module if_id
   (\ex_reg2_reg[31] ,
    \ex_addr_off_reg[24] ,
    \id_pc_reg[0]_0 ,
    \ex_reg2_reg[8] ,
    \ex_reg2_reg[9] ,
    \ex_reg2_reg[10] ,
    \ex_reg2_reg[11] ,
    \ex_reg2_reg[12] ,
    \ex_reg2_reg[13] ,
    \ex_reg2_reg[14] ,
    D,
    \ex_alusel_reg[1] ,
    \ex_addr_base_reg[14] ,
    \ex_addr_base_reg[13] ,
    \ex_addr_base_reg[12] ,
    \ex_addr_base_reg[11] ,
    \ex_addr_base_reg[10] ,
    \ex_addr_base_reg[9] ,
    \ex_addr_base_reg[8] ,
    p_0_in,
    \memop_o_reg[1] ,
    \jump_type_o_reg[1] ,
    id_reg2_addr,
    \ex_reg2_reg[0] ,
    \ex_addr_base_reg[31] ,
    id_reg1_addr,
    \ex_addr_off_reg[24]_0 ,
    \ex_wd_reg[4] ,
    \ex_reg1_reg[31] ,
    \ex_reg1_reg[31]_0 ,
    id_wreg,
    \memfunct_o_reg[2] ,
    \ex_alusel_reg[0] ,
    \mem_wdata_reg[12] ,
    \ex_alusel_reg[0]_0 ,
    \mem_wdata_reg[14] ,
    \ex_alusel_reg[0]_1 ,
    \ex_alusel_reg[0]_2 ,
    \ex_alusel_reg[0]_3 ,
    \ex_alusel_reg[0]_4 ,
    \ex_alusel_reg[0]_5 ,
    \ex_alusel_reg[0]_6 ,
    \ex_alusel_reg[0]_7 ,
    \ex_alusel_reg[0]_8 ,
    \ex_alusel_reg[0]_9 ,
    \ex_alusel_reg[0]_10 ,
    \ex_alusel_reg[0]_11 ,
    \ex_alusel_reg[0]_12 ,
    \ex_alusel_reg[0]_13 ,
    \ex_alusel_reg[0]_14 ,
    \ex_alusel_reg[0]_15 ,
    \ex_alusel_reg[0]_16 ,
    \ex_alusel_reg[0]_17 ,
    \mem_wdata_reg[13] ,
    \ex_alusel_reg[0]_18 ,
    \mem_wdata_reg[11] ,
    \ex_alusel_reg[0]_19 ,
    rst_reg,
    \ex_alusel_reg[0]_20 ,
    \ex_alusel_reg[0]_21 ,
    \ex_alusel_reg[0]_22 ,
    \ex_alusel_reg[0]_23 ,
    \ex_alusel_reg[0]_24 ,
    \ex_alusel_reg[0]_25 ,
    \ex_alusel_reg[0]_26 ,
    \mem_wdata_reg[8] ,
    \ex_alusel_reg[0]_27 ,
    \mem_wdata_reg[9] ,
    \ex_alusel_reg[0]_28 ,
    \mem_wdata_reg[10] ,
    \ex_alusel_reg[0]_29 ,
    cache_busy,
    rst,
    rdata20,
    Q,
    \jump_type_o_reg[0] ,
    rdata10,
    \jump_type_o_reg[1]_0 ,
    \memop_o_reg[1]_0 ,
    idex_wreg,
    \ex_wd_reg[4]_0 ,
    \mem_wdata_reg[31] ,
    mem_wd,
    \mem_wd_reg[4] ,
    \mem_wd_reg[3] ,
    \mem_wdata_reg[8]_0 ,
    \mem_wdata_reg[9]_0 ,
    \mem_wdata_reg[10]_0 ,
    \mem_wdata_reg[12]_0 ,
    \mem_wdata_reg[13]_0 ,
    \mem_wdata_reg[14]_0 ,
    \mem_wdata_reg[11]_0 ,
    \ex_alusel_reg[0]_30 ,
    \id_inst_reg[3]_0 ,
    \id_inst_reg[31]_0 ,
    \id_inst_reg[17]_0 ,
    \id_inst_reg[16]_0 ,
    \id_inst_reg[20]_0 ,
    \id_inst_reg[6]_0 ,
    \mem_wdata_reg[29] ,
    \mem_wdata_reg[28] ,
    \mem_wdata_reg[27] ,
    \mem_wdata_reg[26] ,
    \mem_wdata_reg[25] ,
    \mem_wdata_reg[24] ,
    \mem_wdata_reg[23] ,
    \mem_wdata_reg[22] ,
    \mem_wdata_reg[21] ,
    \mem_wdata_reg[20] ,
    \mem_wdata_reg[19] ,
    \mem_wdata_reg[18] ,
    \mem_wdata_reg[17] ,
    \mem_wdata_reg[16] ,
    \mem_wd_reg[4]_0 ,
    \wb_wd_reg[4] ,
    memwb_wreg,
    SR,
    \pc_reg[31] ,
    clk_out1,
    rst_BUFG,
    \jump_type_o_reg[1]_1 ,
    \jump_type_o_reg[1]_2 ,
    \jump_type_o_reg[1]_3 ,
    \jump_type_o_reg[1]_4 ,
    \jump_type_o_reg[1]_5 ,
    \jump_type_o_reg[1]_6 ,
    \jump_type_o_reg[1]_7 ,
    \jump_type_o_reg[1]_8 ,
    \jump_type_o_reg[1]_9 ,
    \jump_type_o_reg[1]_10 ,
    \jump_type_o_reg[1]_11 ,
    \jump_type_o_reg[1]_12 ,
    \jump_type_o_reg[1]_13 ,
    \jump_type_o_reg[1]_14 ,
    \jump_type_o_reg[1]_15 ,
    \jump_type_o_reg[1]_16 ,
    \jump_type_o_reg[1]_17 ,
    \jump_type_o_reg[1]_18 ,
    \jump_type_o_reg[1]_19 ,
    \jump_type_o_reg[1]_20 ,
    \jump_type_o_reg[1]_21 ,
    \jump_type_o_reg[1]_22 ,
    \jump_type_o_reg[1]_23 ,
    \jump_type_o_reg[1]_24 ,
    \jump_type_o_reg[1]_25 ,
    \jump_type_o_reg[1]_26 ,
    \jump_type_o_reg[1]_27 ,
    \jump_type_o_reg[1]_28 ,
    \jump_type_o_reg[1]_29 ,
    \jump_type_o_reg[1]_30 ,
    \jump_type_o_reg[1]_31 ,
    \jump_type_o_reg[1]_32 );
  output [31:0]\ex_reg2_reg[31] ;
  output [5:0]\ex_addr_off_reg[24] ;
  output \id_pc_reg[0]_0 ;
  output \ex_reg2_reg[8] ;
  output \ex_reg2_reg[9] ;
  output \ex_reg2_reg[10] ;
  output \ex_reg2_reg[11] ;
  output \ex_reg2_reg[12] ;
  output \ex_reg2_reg[13] ;
  output \ex_reg2_reg[14] ;
  output [3:0]D;
  output [1:0]\ex_alusel_reg[1] ;
  output \ex_addr_base_reg[14] ;
  output \ex_addr_base_reg[13] ;
  output \ex_addr_base_reg[12] ;
  output \ex_addr_base_reg[11] ;
  output \ex_addr_base_reg[10] ;
  output \ex_addr_base_reg[9] ;
  output \ex_addr_base_reg[8] ;
  output p_0_in;
  output [1:0]\memop_o_reg[1] ;
  output [1:0]\jump_type_o_reg[1] ;
  output [4:0]id_reg2_addr;
  output \ex_reg2_reg[0] ;
  output [31:0]\ex_addr_base_reg[31] ;
  output [4:0]id_reg1_addr;
  output [20:0]\ex_addr_off_reg[24]_0 ;
  output [4:0]\ex_wd_reg[4] ;
  output [31:0]\ex_reg1_reg[31] ;
  output \ex_reg1_reg[31]_0 ;
  output id_wreg;
  output [2:0]\memfunct_o_reg[2] ;
  input \ex_alusel_reg[0] ;
  input \mem_wdata_reg[12] ;
  input \ex_alusel_reg[0]_0 ;
  input \mem_wdata_reg[14] ;
  input \ex_alusel_reg[0]_1 ;
  input \ex_alusel_reg[0]_2 ;
  input \ex_alusel_reg[0]_3 ;
  input \ex_alusel_reg[0]_4 ;
  input \ex_alusel_reg[0]_5 ;
  input \ex_alusel_reg[0]_6 ;
  input \ex_alusel_reg[0]_7 ;
  input \ex_alusel_reg[0]_8 ;
  input \ex_alusel_reg[0]_9 ;
  input \ex_alusel_reg[0]_10 ;
  input \ex_alusel_reg[0]_11 ;
  input \ex_alusel_reg[0]_12 ;
  input \ex_alusel_reg[0]_13 ;
  input \ex_alusel_reg[0]_14 ;
  input \ex_alusel_reg[0]_15 ;
  input \ex_alusel_reg[0]_16 ;
  input \ex_alusel_reg[0]_17 ;
  input \mem_wdata_reg[13] ;
  input \ex_alusel_reg[0]_18 ;
  input \mem_wdata_reg[11] ;
  input \ex_alusel_reg[0]_19 ;
  input rst_reg;
  input \ex_alusel_reg[0]_20 ;
  input \ex_alusel_reg[0]_21 ;
  input \ex_alusel_reg[0]_22 ;
  input \ex_alusel_reg[0]_23 ;
  input \ex_alusel_reg[0]_24 ;
  input \ex_alusel_reg[0]_25 ;
  input \ex_alusel_reg[0]_26 ;
  input \mem_wdata_reg[8] ;
  input \ex_alusel_reg[0]_27 ;
  input \mem_wdata_reg[9] ;
  input \ex_alusel_reg[0]_28 ;
  input \mem_wdata_reg[10] ;
  input \ex_alusel_reg[0]_29 ;
  input cache_busy;
  input rst;
  input [31:0]rdata20;
  input [31:0]Q;
  input \jump_type_o_reg[0] ;
  input [31:0]rdata10;
  input [1:0]\jump_type_o_reg[1]_0 ;
  input \memop_o_reg[1]_0 ;
  input idex_wreg;
  input [4:0]\ex_wd_reg[4]_0 ;
  input [24:0]\mem_wdata_reg[31] ;
  input [2:0]mem_wd;
  input \mem_wd_reg[4] ;
  input [2:0]\mem_wd_reg[3] ;
  input \mem_wdata_reg[8]_0 ;
  input \mem_wdata_reg[9]_0 ;
  input \mem_wdata_reg[10]_0 ;
  input \mem_wdata_reg[12]_0 ;
  input \mem_wdata_reg[13]_0 ;
  input \mem_wdata_reg[14]_0 ;
  input \mem_wdata_reg[11]_0 ;
  input [31:0]\ex_alusel_reg[0]_30 ;
  input \id_inst_reg[3]_0 ;
  input \id_inst_reg[31]_0 ;
  input \id_inst_reg[17]_0 ;
  input \id_inst_reg[16]_0 ;
  input \id_inst_reg[20]_0 ;
  input \id_inst_reg[6]_0 ;
  input \mem_wdata_reg[29] ;
  input \mem_wdata_reg[28] ;
  input \mem_wdata_reg[27] ;
  input \mem_wdata_reg[26] ;
  input \mem_wdata_reg[25] ;
  input \mem_wdata_reg[24] ;
  input \mem_wdata_reg[23] ;
  input \mem_wdata_reg[22] ;
  input \mem_wdata_reg[21] ;
  input \mem_wdata_reg[20] ;
  input \mem_wdata_reg[19] ;
  input \mem_wdata_reg[18] ;
  input \mem_wdata_reg[17] ;
  input \mem_wdata_reg[16] ;
  input \mem_wd_reg[4]_0 ;
  input [4:0]\wb_wd_reg[4] ;
  input memwb_wreg;
  input [0:0]SR;
  input [31:0]\pc_reg[31] ;
  input clk_out1;
  input rst_BUFG;
  input \jump_type_o_reg[1]_1 ;
  input \jump_type_o_reg[1]_2 ;
  input \jump_type_o_reg[1]_3 ;
  input \jump_type_o_reg[1]_4 ;
  input \jump_type_o_reg[1]_5 ;
  input \jump_type_o_reg[1]_6 ;
  input \jump_type_o_reg[1]_7 ;
  input \jump_type_o_reg[1]_8 ;
  input \jump_type_o_reg[1]_9 ;
  input \jump_type_o_reg[1]_10 ;
  input \jump_type_o_reg[1]_11 ;
  input \jump_type_o_reg[1]_12 ;
  input \jump_type_o_reg[1]_13 ;
  input \jump_type_o_reg[1]_14 ;
  input \jump_type_o_reg[1]_15 ;
  input \jump_type_o_reg[1]_16 ;
  input \jump_type_o_reg[1]_17 ;
  input \jump_type_o_reg[1]_18 ;
  input \jump_type_o_reg[1]_19 ;
  input \jump_type_o_reg[1]_20 ;
  input \jump_type_o_reg[1]_21 ;
  input \jump_type_o_reg[1]_22 ;
  input \jump_type_o_reg[1]_23 ;
  input \jump_type_o_reg[1]_24 ;
  input \jump_type_o_reg[1]_25 ;
  input \jump_type_o_reg[1]_26 ;
  input \jump_type_o_reg[1]_27 ;
  input \jump_type_o_reg[1]_28 ;
  input \jump_type_o_reg[1]_29 ;
  input \jump_type_o_reg[1]_30 ;
  input \jump_type_o_reg[1]_31 ;
  input \jump_type_o_reg[1]_32 ;

  wire [3:0]D;
  wire [31:0]Q;
  wire [0:0]SR;
  wire cache_busy;
  wire clk_out1;
  wire \ex_addr_base[0]_i_2_n_1 ;
  wire \ex_addr_base[10]_i_2_n_1 ;
  wire \ex_addr_base[11]_i_2_n_1 ;
  wire \ex_addr_base[12]_i_2_n_1 ;
  wire \ex_addr_base[13]_i_2_n_1 ;
  wire \ex_addr_base[14]_i_2_n_1 ;
  wire \ex_addr_base[15]_i_2_n_1 ;
  wire \ex_addr_base[16]_i_2_n_1 ;
  wire \ex_addr_base[17]_i_2_n_1 ;
  wire \ex_addr_base[18]_i_2_n_1 ;
  wire \ex_addr_base[19]_i_2_n_1 ;
  wire \ex_addr_base[1]_i_2_n_1 ;
  wire \ex_addr_base[20]_i_2_n_1 ;
  wire \ex_addr_base[21]_i_2_n_1 ;
  wire \ex_addr_base[22]_i_2_n_1 ;
  wire \ex_addr_base[23]_i_2_n_1 ;
  wire \ex_addr_base[24]_i_2_n_1 ;
  wire \ex_addr_base[25]_i_2_n_1 ;
  wire \ex_addr_base[26]_i_2_n_1 ;
  wire \ex_addr_base[27]_i_2_n_1 ;
  wire \ex_addr_base[28]_i_2_n_1 ;
  wire \ex_addr_base[29]_i_2_n_1 ;
  wire \ex_addr_base[2]_i_2_n_1 ;
  wire \ex_addr_base[30]_i_2_n_1 ;
  wire \ex_addr_base[30]_i_4_n_1 ;
  wire \ex_addr_base[31]_i_2_n_1 ;
  wire \ex_addr_base[31]_i_3_n_1 ;
  wire \ex_addr_base[31]_i_4_n_1 ;
  wire \ex_addr_base[3]_i_2_n_1 ;
  wire \ex_addr_base[4]_i_2_n_1 ;
  wire \ex_addr_base[5]_i_2_n_1 ;
  wire \ex_addr_base[6]_i_2_n_1 ;
  wire \ex_addr_base[7]_i_2_n_1 ;
  wire \ex_addr_base[8]_i_2_n_1 ;
  wire \ex_addr_base[9]_i_2_n_1 ;
  wire \ex_addr_base_reg[10] ;
  wire \ex_addr_base_reg[11] ;
  wire \ex_addr_base_reg[12] ;
  wire \ex_addr_base_reg[13] ;
  wire \ex_addr_base_reg[14] ;
  wire [31:0]\ex_addr_base_reg[31] ;
  wire \ex_addr_base_reg[8] ;
  wire \ex_addr_base_reg[9] ;
  wire \ex_addr_off[0]_i_2_n_1 ;
  wire \ex_addr_off[0]_i_3_n_1 ;
  wire \ex_addr_off[11]_i_2_n_1 ;
  wire \ex_addr_off[19]_i_2_n_1 ;
  wire \ex_addr_off[19]_i_3_n_1 ;
  wire \ex_addr_off[19]_i_5_n_1 ;
  wire \ex_addr_off[19]_i_6_n_1 ;
  wire \ex_addr_off[24]_i_2_n_1 ;
  wire \ex_addr_off[4]_i_3_n_1 ;
  wire [5:0]\ex_addr_off_reg[24] ;
  wire [20:0]\ex_addr_off_reg[24]_0 ;
  wire \ex_aluop[0]_i_2_n_1 ;
  wire \ex_aluop[0]_i_3_n_1 ;
  wire \ex_aluop[0]_i_4_n_1 ;
  wire \ex_aluop[0]_i_5_n_1 ;
  wire \ex_aluop[0]_i_6_n_1 ;
  wire \ex_aluop[0]_i_7_n_1 ;
  wire \ex_aluop[1]_i_2_n_1 ;
  wire \ex_aluop[1]_i_3_n_1 ;
  wire \ex_aluop[1]_i_4_n_1 ;
  wire \ex_aluop[1]_i_5_n_1 ;
  wire \ex_aluop[2]_i_2_n_1 ;
  wire \ex_aluop[2]_i_3_n_1 ;
  wire \ex_aluop[3]_i_3_n_1 ;
  wire \ex_aluop[3]_i_4_n_1 ;
  wire \ex_alusel[0]_i_2_n_1 ;
  wire \ex_alusel[0]_i_3_n_1 ;
  wire \ex_alusel[1]_i_2_n_1 ;
  wire \ex_alusel[1]_i_3_n_1 ;
  wire \ex_alusel_reg[0] ;
  wire \ex_alusel_reg[0]_0 ;
  wire \ex_alusel_reg[0]_1 ;
  wire \ex_alusel_reg[0]_10 ;
  wire \ex_alusel_reg[0]_11 ;
  wire \ex_alusel_reg[0]_12 ;
  wire \ex_alusel_reg[0]_13 ;
  wire \ex_alusel_reg[0]_14 ;
  wire \ex_alusel_reg[0]_15 ;
  wire \ex_alusel_reg[0]_16 ;
  wire \ex_alusel_reg[0]_17 ;
  wire \ex_alusel_reg[0]_18 ;
  wire \ex_alusel_reg[0]_19 ;
  wire \ex_alusel_reg[0]_2 ;
  wire \ex_alusel_reg[0]_20 ;
  wire \ex_alusel_reg[0]_21 ;
  wire \ex_alusel_reg[0]_22 ;
  wire \ex_alusel_reg[0]_23 ;
  wire \ex_alusel_reg[0]_24 ;
  wire \ex_alusel_reg[0]_25 ;
  wire \ex_alusel_reg[0]_26 ;
  wire \ex_alusel_reg[0]_27 ;
  wire \ex_alusel_reg[0]_28 ;
  wire \ex_alusel_reg[0]_29 ;
  wire \ex_alusel_reg[0]_3 ;
  wire [31:0]\ex_alusel_reg[0]_30 ;
  wire \ex_alusel_reg[0]_4 ;
  wire \ex_alusel_reg[0]_5 ;
  wire \ex_alusel_reg[0]_6 ;
  wire \ex_alusel_reg[0]_7 ;
  wire \ex_alusel_reg[0]_8 ;
  wire \ex_alusel_reg[0]_9 ;
  wire [1:0]\ex_alusel_reg[1] ;
  wire \ex_reg1[0]_i_2_n_1 ;
  wire \ex_reg1[0]_i_3_n_1 ;
  wire \ex_reg1[0]_i_4_n_1 ;
  wire \ex_reg1[10]_i_3_n_1 ;
  wire \ex_reg1[11]_i_3_n_1 ;
  wire \ex_reg1[12]_i_3_n_1 ;
  wire \ex_reg1[13]_i_3_n_1 ;
  wire \ex_reg1[14]_i_3_n_1 ;
  wire \ex_reg1[15]_i_2_n_1 ;
  wire \ex_reg1[15]_i_3_n_1 ;
  wire \ex_reg1[15]_i_4_n_1 ;
  wire \ex_reg1[16]_i_3_n_1 ;
  wire \ex_reg1[16]_i_5_n_1 ;
  wire \ex_reg1[17]_i_3_n_1 ;
  wire \ex_reg1[17]_i_5_n_1 ;
  wire \ex_reg1[18]_i_3_n_1 ;
  wire \ex_reg1[18]_i_5_n_1 ;
  wire \ex_reg1[19]_i_3_n_1 ;
  wire \ex_reg1[19]_i_5_n_1 ;
  wire \ex_reg1[1]_i_2_n_1 ;
  wire \ex_reg1[1]_i_3_n_1 ;
  wire \ex_reg1[1]_i_4_n_1 ;
  wire \ex_reg1[20]_i_3_n_1 ;
  wire \ex_reg1[20]_i_5_n_1 ;
  wire \ex_reg1[21]_i_3_n_1 ;
  wire \ex_reg1[21]_i_5_n_1 ;
  wire \ex_reg1[22]_i_3_n_1 ;
  wire \ex_reg1[22]_i_5_n_1 ;
  wire \ex_reg1[23]_i_3_n_1 ;
  wire \ex_reg1[23]_i_5_n_1 ;
  wire \ex_reg1[24]_i_3_n_1 ;
  wire \ex_reg1[24]_i_5_n_1 ;
  wire \ex_reg1[25]_i_3_n_1 ;
  wire \ex_reg1[25]_i_5_n_1 ;
  wire \ex_reg1[26]_i_3_n_1 ;
  wire \ex_reg1[26]_i_5_n_1 ;
  wire \ex_reg1[27]_i_3_n_1 ;
  wire \ex_reg1[27]_i_5_n_1 ;
  wire \ex_reg1[28]_i_3_n_1 ;
  wire \ex_reg1[28]_i_5_n_1 ;
  wire \ex_reg1[29]_i_3_n_1 ;
  wire \ex_reg1[29]_i_5_n_1 ;
  wire \ex_reg1[2]_i_2_n_1 ;
  wire \ex_reg1[2]_i_3_n_1 ;
  wire \ex_reg1[2]_i_4_n_1 ;
  wire \ex_reg1[30]_i_2_n_1 ;
  wire \ex_reg1[30]_i_3_n_1 ;
  wire \ex_reg1[30]_i_4_n_1 ;
  wire \ex_reg1[31]_i_11_n_1 ;
  wire \ex_reg1[31]_i_13_n_1 ;
  wire \ex_reg1[31]_i_14_n_1 ;
  wire \ex_reg1[31]_i_18_n_1 ;
  wire \ex_reg1[31]_i_19_n_1 ;
  wire \ex_reg1[31]_i_20_n_1 ;
  wire \ex_reg1[31]_i_21_n_1 ;
  wire \ex_reg1[31]_i_22_n_1 ;
  wire \ex_reg1[31]_i_23_n_1 ;
  wire \ex_reg1[31]_i_2_n_1 ;
  wire \ex_reg1[31]_i_3_n_1 ;
  wire \ex_reg1[31]_i_4_n_1 ;
  wire \ex_reg1[31]_i_5_n_1 ;
  wire \ex_reg1[31]_i_6_n_1 ;
  wire \ex_reg1[31]_i_7_n_1 ;
  wire \ex_reg1[31]_i_8_n_1 ;
  wire \ex_reg1[31]_i_9_n_1 ;
  wire \ex_reg1[3]_i_2_n_1 ;
  wire \ex_reg1[3]_i_3_n_1 ;
  wire \ex_reg1[3]_i_4_n_1 ;
  wire \ex_reg1[4]_i_2_n_1 ;
  wire \ex_reg1[4]_i_3_n_1 ;
  wire \ex_reg1[4]_i_4_n_1 ;
  wire \ex_reg1[5]_i_2_n_1 ;
  wire \ex_reg1[5]_i_3_n_1 ;
  wire \ex_reg1[5]_i_4_n_1 ;
  wire \ex_reg1[6]_i_2_n_1 ;
  wire \ex_reg1[6]_i_3_n_1 ;
  wire \ex_reg1[6]_i_4_n_1 ;
  wire \ex_reg1[7]_i_2_n_1 ;
  wire \ex_reg1[7]_i_3_n_1 ;
  wire \ex_reg1[7]_i_4_n_1 ;
  wire \ex_reg1[8]_i_3_n_1 ;
  wire \ex_reg1[9]_i_3_n_1 ;
  wire \ex_reg1_reg[16]_i_2_n_1 ;
  wire \ex_reg1_reg[17]_i_2_n_1 ;
  wire \ex_reg1_reg[18]_i_2_n_1 ;
  wire \ex_reg1_reg[19]_i_2_n_1 ;
  wire \ex_reg1_reg[20]_i_2_n_1 ;
  wire \ex_reg1_reg[21]_i_2_n_1 ;
  wire \ex_reg1_reg[22]_i_2_n_1 ;
  wire \ex_reg1_reg[23]_i_2_n_1 ;
  wire \ex_reg1_reg[24]_i_2_n_1 ;
  wire \ex_reg1_reg[25]_i_2_n_1 ;
  wire \ex_reg1_reg[26]_i_2_n_1 ;
  wire \ex_reg1_reg[27]_i_2_n_1 ;
  wire \ex_reg1_reg[28]_i_2_n_1 ;
  wire \ex_reg1_reg[29]_i_2_n_1 ;
  wire [31:0]\ex_reg1_reg[31] ;
  wire \ex_reg1_reg[31]_0 ;
  wire \ex_reg2[0]_i_2_n_1 ;
  wire \ex_reg2[0]_i_4_n_1 ;
  wire \ex_reg2[0]_i_5_n_1 ;
  wire \ex_reg2[10]_i_2_n_1 ;
  wire \ex_reg2[11]_i_4_n_1 ;
  wire \ex_reg2[12]_i_4_n_1 ;
  wire \ex_reg2[13]_i_2_n_1 ;
  wire \ex_reg2[14]_i_4_n_1 ;
  wire \ex_reg2[15]_i_2_n_1 ;
  wire \ex_reg2[15]_i_4_n_1 ;
  wire \ex_reg2[15]_i_5_n_1 ;
  wire \ex_reg2[16]_i_2_n_1 ;
  wire \ex_reg2[16]_i_4_n_1 ;
  wire \ex_reg2[16]_i_5_n_1 ;
  wire \ex_reg2[17]_i_2_n_1 ;
  wire \ex_reg2[17]_i_3_n_1 ;
  wire \ex_reg2[17]_i_5_n_1 ;
  wire \ex_reg2[18]_i_2_n_1 ;
  wire \ex_reg2[18]_i_4_n_1 ;
  wire \ex_reg2[18]_i_5_n_1 ;
  wire \ex_reg2[19]_i_2_n_1 ;
  wire \ex_reg2[19]_i_3_n_1 ;
  wire \ex_reg2[19]_i_5_n_1 ;
  wire \ex_reg2[1]_i_2_n_1 ;
  wire \ex_reg2[1]_i_3_n_1 ;
  wire \ex_reg2[1]_i_5_n_1 ;
  wire \ex_reg2[20]_i_2_n_1 ;
  wire \ex_reg2[20]_i_3_n_1 ;
  wire \ex_reg2[20]_i_5_n_1 ;
  wire \ex_reg2[21]_i_2_n_1 ;
  wire \ex_reg2[21]_i_4_n_1 ;
  wire \ex_reg2[21]_i_5_n_1 ;
  wire \ex_reg2[22]_i_2_n_1 ;
  wire \ex_reg2[22]_i_4_n_1 ;
  wire \ex_reg2[22]_i_5_n_1 ;
  wire \ex_reg2[23]_i_2_n_1 ;
  wire \ex_reg2[23]_i_3_n_1 ;
  wire \ex_reg2[23]_i_5_n_1 ;
  wire \ex_reg2[24]_i_2_n_1 ;
  wire \ex_reg2[24]_i_4_n_1 ;
  wire \ex_reg2[24]_i_5_n_1 ;
  wire \ex_reg2[25]_i_2_n_1 ;
  wire \ex_reg2[25]_i_4_n_1 ;
  wire \ex_reg2[25]_i_5_n_1 ;
  wire \ex_reg2[26]_i_2_n_1 ;
  wire \ex_reg2[26]_i_4_n_1 ;
  wire \ex_reg2[26]_i_5_n_1 ;
  wire \ex_reg2[27]_i_2_n_1 ;
  wire \ex_reg2[27]_i_4_n_1 ;
  wire \ex_reg2[27]_i_5_n_1 ;
  wire \ex_reg2[28]_i_2_n_1 ;
  wire \ex_reg2[28]_i_4_n_1 ;
  wire \ex_reg2[28]_i_5_n_1 ;
  wire \ex_reg2[29]_i_2_n_1 ;
  wire \ex_reg2[29]_i_4_n_1 ;
  wire \ex_reg2[29]_i_5_n_1 ;
  wire \ex_reg2[2]_i_2_n_1 ;
  wire \ex_reg2[2]_i_3_n_1 ;
  wire \ex_reg2[2]_i_5_n_1 ;
  wire \ex_reg2[30]_i_2_n_1 ;
  wire \ex_reg2[30]_i_4_n_1 ;
  wire \ex_reg2[30]_i_5_n_1 ;
  wire \ex_reg2[30]_i_8_n_1 ;
  wire \ex_reg2[31]_i_10_n_1 ;
  wire \ex_reg2[31]_i_11_n_1 ;
  wire \ex_reg2[31]_i_12_n_1 ;
  wire \ex_reg2[31]_i_13_n_1 ;
  wire \ex_reg2[31]_i_16_n_1 ;
  wire \ex_reg2[31]_i_18_n_1 ;
  wire \ex_reg2[31]_i_21_n_1 ;
  wire \ex_reg2[31]_i_23_n_1 ;
  wire \ex_reg2[31]_i_26_n_1 ;
  wire \ex_reg2[31]_i_27_n_1 ;
  wire \ex_reg2[31]_i_28_n_1 ;
  wire \ex_reg2[31]_i_2_n_1 ;
  wire \ex_reg2[31]_i_3_n_1 ;
  wire \ex_reg2[31]_i_4_n_1 ;
  wire \ex_reg2[31]_i_6_n_1 ;
  wire \ex_reg2[31]_i_7_n_1 ;
  wire \ex_reg2[31]_i_8_n_1 ;
  wire \ex_reg2[3]_i_2_n_1 ;
  wire \ex_reg2[3]_i_4_n_1 ;
  wire \ex_reg2[3]_i_5_n_1 ;
  wire \ex_reg2[4]_i_2_n_1 ;
  wire \ex_reg2[4]_i_4_n_1 ;
  wire \ex_reg2[4]_i_5_n_1 ;
  wire \ex_reg2[5]_i_2_n_1 ;
  wire \ex_reg2[5]_i_3_n_1 ;
  wire \ex_reg2[5]_i_5_n_1 ;
  wire \ex_reg2[6]_i_2_n_1 ;
  wire \ex_reg2[6]_i_4_n_1 ;
  wire \ex_reg2[6]_i_5_n_1 ;
  wire \ex_reg2[7]_i_2_n_1 ;
  wire \ex_reg2[7]_i_4_n_1 ;
  wire \ex_reg2[7]_i_5_n_1 ;
  wire \ex_reg2[8]_i_4_n_1 ;
  wire \ex_reg2[9]_i_4_n_1 ;
  wire \ex_reg2_reg[0] ;
  wire \ex_reg2_reg[10] ;
  wire \ex_reg2_reg[11] ;
  wire \ex_reg2_reg[12] ;
  wire \ex_reg2_reg[13] ;
  wire \ex_reg2_reg[14] ;
  wire [31:0]\ex_reg2_reg[31] ;
  wire \ex_reg2_reg[8] ;
  wire \ex_reg2_reg[9] ;
  wire \ex_wd[4]_i_2_n_1 ;
  wire [4:0]\ex_wd_reg[4] ;
  wire [4:0]\ex_wd_reg[4]_0 ;
  wire ex_wreg_i_2_n_1;
  wire \id_inst_reg[16]_0 ;
  wire \id_inst_reg[17]_0 ;
  wire \id_inst_reg[20]_0 ;
  wire \id_inst_reg[31]_0 ;
  wire \id_inst_reg[3]_0 ;
  wire \id_inst_reg[6]_0 ;
  wire \id_pc_reg[0]_0 ;
  wire [4:0]id_reg1_addr;
  wire [4:0]id_reg2_addr;
  wire id_reg2_read;
  wire id_wreg;
  wire idex_wreg;
  wire [30:0]ifid_inst;
  wire [31:0]ifid_pc;
  wire \jump_type_o_reg[0] ;
  wire \jump_type_o_reg[0]_i_2_n_1 ;
  wire \jump_type_o_reg[0]_i_3_n_1 ;
  wire \jump_type_o_reg[0]_i_4_n_1 ;
  wire \jump_type_o_reg[0]_i_5_n_1 ;
  wire \jump_type_o_reg[0]_i_6_n_1 ;
  wire [1:0]\jump_type_o_reg[1] ;
  wire [1:0]\jump_type_o_reg[1]_0 ;
  wire \jump_type_o_reg[1]_1 ;
  wire \jump_type_o_reg[1]_10 ;
  wire \jump_type_o_reg[1]_11 ;
  wire \jump_type_o_reg[1]_12 ;
  wire \jump_type_o_reg[1]_13 ;
  wire \jump_type_o_reg[1]_14 ;
  wire \jump_type_o_reg[1]_15 ;
  wire \jump_type_o_reg[1]_16 ;
  wire \jump_type_o_reg[1]_17 ;
  wire \jump_type_o_reg[1]_18 ;
  wire \jump_type_o_reg[1]_19 ;
  wire \jump_type_o_reg[1]_2 ;
  wire \jump_type_o_reg[1]_20 ;
  wire \jump_type_o_reg[1]_21 ;
  wire \jump_type_o_reg[1]_22 ;
  wire \jump_type_o_reg[1]_23 ;
  wire \jump_type_o_reg[1]_24 ;
  wire \jump_type_o_reg[1]_25 ;
  wire \jump_type_o_reg[1]_26 ;
  wire \jump_type_o_reg[1]_27 ;
  wire \jump_type_o_reg[1]_28 ;
  wire \jump_type_o_reg[1]_29 ;
  wire \jump_type_o_reg[1]_3 ;
  wire \jump_type_o_reg[1]_30 ;
  wire \jump_type_o_reg[1]_31 ;
  wire \jump_type_o_reg[1]_32 ;
  wire \jump_type_o_reg[1]_4 ;
  wire \jump_type_o_reg[1]_5 ;
  wire \jump_type_o_reg[1]_6 ;
  wire \jump_type_o_reg[1]_7 ;
  wire \jump_type_o_reg[1]_8 ;
  wire \jump_type_o_reg[1]_9 ;
  wire \jump_type_o_reg[1]_i_3_n_1 ;
  wire \jump_type_o_reg[1]_i_4_n_1 ;
  wire \jump_type_o_reg[1]_i_5_n_1 ;
  wire \jump_type_o_reg[1]_i_6_n_1 ;
  wire [2:0]mem_wd;
  wire [2:0]\mem_wd_reg[3] ;
  wire \mem_wd_reg[4] ;
  wire \mem_wd_reg[4]_0 ;
  wire \mem_wdata_reg[10] ;
  wire \mem_wdata_reg[10]_0 ;
  wire \mem_wdata_reg[11] ;
  wire \mem_wdata_reg[11]_0 ;
  wire \mem_wdata_reg[12] ;
  wire \mem_wdata_reg[12]_0 ;
  wire \mem_wdata_reg[13] ;
  wire \mem_wdata_reg[13]_0 ;
  wire \mem_wdata_reg[14] ;
  wire \mem_wdata_reg[14]_0 ;
  wire \mem_wdata_reg[16] ;
  wire \mem_wdata_reg[17] ;
  wire \mem_wdata_reg[18] ;
  wire \mem_wdata_reg[19] ;
  wire \mem_wdata_reg[20] ;
  wire \mem_wdata_reg[21] ;
  wire \mem_wdata_reg[22] ;
  wire \mem_wdata_reg[23] ;
  wire \mem_wdata_reg[24] ;
  wire \mem_wdata_reg[25] ;
  wire \mem_wdata_reg[26] ;
  wire \mem_wdata_reg[27] ;
  wire \mem_wdata_reg[28] ;
  wire \mem_wdata_reg[29] ;
  wire [24:0]\mem_wdata_reg[31] ;
  wire \mem_wdata_reg[8] ;
  wire \mem_wdata_reg[8]_0 ;
  wire \mem_wdata_reg[9] ;
  wire \mem_wdata_reg[9]_0 ;
  wire \memfunct_o[2]_i_2_n_1 ;
  wire [2:0]\memfunct_o_reg[2] ;
  wire \memop_o[0]_i_2_n_1 ;
  wire \memop_o[1]_i_2_n_1 ;
  wire \memop_o[1]_i_3_n_1 ;
  wire [1:0]\memop_o_reg[1] ;
  wire \memop_o_reg[1]_0 ;
  wire memwb_wreg;
  wire p_0_in;
  wire \pc[31]_i_5_n_1 ;
  wire [31:0]\pc_reg[31] ;
  wire [31:0]rdata10;
  wire [31:0]rdata20;
  wire \regfile0/rdata11 ;
  wire \regfile0/rdata21 ;
  wire regs_reg_r1_0_31_0_5_i_10_n_1;
  wire regs_reg_r1_0_31_0_5_i_9_n_1;
  wire regs_reg_r2_0_31_0_5_i_6_n_1;
  wire rst;
  wire rst_BUFG;
  wire rst_reg;
  wire [4:0]\wb_wd_reg[4] ;

  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[0]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(rst_reg),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[0]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[0]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[0]_i_2 
       (.I0(ifid_pc[0]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[10]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_29 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\mem_wdata_reg[10]_0 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[10]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[10]_i_2 
       (.I0(ifid_pc[10]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[10]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44740000)) 
    \ex_addr_base[11]_i_1 
       (.I0(\mem_wdata_reg[11]_0 ),
        .I1(\ex_reg1[31]_i_3_n_1 ),
        .I2(\ex_alusel_reg[0]_30 [11]),
        .I3(\memop_o_reg[1]_0 ),
        .I4(\ex_addr_base[30]_i_2_n_1 ),
        .I5(\ex_addr_base[11]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ex_addr_base[11]_i_2 
       (.I0(ifid_pc[11]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .I2(\ex_addr_base[31]_i_3_n_1 ),
        .O(\ex_addr_base[11]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[12]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_0 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\mem_wdata_reg[12]_0 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[12]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[12]_i_2 
       (.I0(ifid_pc[12]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[12]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[13]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_18 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\mem_wdata_reg[13]_0 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[13]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[13]_i_2 
       (.I0(ifid_pc[13]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[13]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[14]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_1 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\mem_wdata_reg[14]_0 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[14]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[14]_i_2 
       (.I0(ifid_pc[14]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[14]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[15]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_2 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[15]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[15]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[15]_i_2 
       (.I0(ifid_pc[15]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[15]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[16]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_3 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[16]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[16]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[16]_i_2 
       (.I0(ifid_pc[16]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[16]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[17]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_17 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[17]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[17]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[17]_i_2 
       (.I0(ifid_pc[17]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[17]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[18]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_4 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[18]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[18]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[18]_i_2 
       (.I0(ifid_pc[18]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[18]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[19]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_16 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[19]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[19]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[19]_i_2 
       (.I0(ifid_pc[19]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[19]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[1]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_22 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[1]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[1]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[1]_i_2 
       (.I0(ifid_pc[1]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[1]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[20]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_15 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[20]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[20]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[20]_i_2 
       (.I0(ifid_pc[20]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[20]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[21]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_5 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[21]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[21]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[21]_i_2 
       (.I0(ifid_pc[21]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[21]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[22]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_6 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[22]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[22]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[22]_i_2 
       (.I0(ifid_pc[22]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[22]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[23]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_14 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[23]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[23]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[23]_i_2 
       (.I0(ifid_pc[23]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[23]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[24]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_7 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[24]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[24]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[24]_i_2 
       (.I0(ifid_pc[24]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[24]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[25]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_8 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[25]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[25]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[25]_i_2 
       (.I0(ifid_pc[25]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[25]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[26]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_9 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[26]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[26]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[26]_i_2 
       (.I0(ifid_pc[26]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[26]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[27]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_10 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[27]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[27]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[27]_i_2 
       (.I0(ifid_pc[27]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[27]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[28]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_11 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[28]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[28]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[28]_i_2 
       (.I0(ifid_pc[28]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[28]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[29]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_12 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[29]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[29]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [29]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[29]_i_2 
       (.I0(ifid_pc[29]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[29]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[2]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_21 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[2]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[2]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[2]_i_2 
       (.I0(ifid_pc[2]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80808A80)) 
    \ex_addr_base[30]_i_1 
       (.I0(\ex_addr_base[30]_i_2_n_1 ),
        .I1(\ex_reg1[30]_i_2_n_1 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_alusel_reg[0]_30 [30]),
        .I4(\memop_o_reg[1]_0 ),
        .I5(\ex_addr_base[30]_i_4_n_1 ),
        .O(\ex_addr_base_reg[31] [30]));
  LUT2 #(
    .INIT(4'h8)) 
    \ex_addr_base[30]_i_2 
       (.I0(\ex_addr_base[31]_i_3_n_1 ),
        .I1(\ex_addr_base[31]_i_2_n_1 ),
        .O(\ex_addr_base[30]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \ex_addr_base[30]_i_4 
       (.I0(ifid_pc[30]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .I2(\ex_addr_base[31]_i_3_n_1 ),
        .O(\ex_addr_base[30]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hE200FFFFE2000000)) 
    \ex_addr_base[31]_i_1 
       (.I0(\ex_alusel_reg[0] ),
        .I1(\ex_reg1[31]_i_3_n_1 ),
        .I2(\ex_reg1[31]_i_4_n_1 ),
        .I3(\ex_addr_base[31]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[31]_i_4_n_1 ),
        .O(\ex_addr_base_reg[31] [31]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \ex_addr_base[31]_i_2 
       (.I0(id_reg1_addr[3]),
        .I1(id_reg1_addr[0]),
        .I2(id_reg1_addr[4]),
        .I3(id_reg1_addr[2]),
        .I4(id_reg1_addr[1]),
        .I5(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[31]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000085050000)) 
    \ex_addr_base[31]_i_3 
       (.I0(\ex_addr_off_reg[24] [1]),
        .I1(ifid_inst[5]),
        .I2(ifid_inst[2]),
        .I3(\jump_type_o_reg[0] ),
        .I4(regs_reg_r1_0_31_0_5_i_9_n_1),
        .I5(ifid_inst[4]),
        .O(\ex_addr_base[31]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[31]_i_4 
       (.I0(ifid_pc[31]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[31]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[3]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_20 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[3]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[3]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[3]_i_2 
       (.I0(ifid_pc[3]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[3]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[4]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_23 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[4]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[4]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[4]_i_2 
       (.I0(ifid_pc[4]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[4]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[5]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_24 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[5]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[5]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [5]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[5]_i_2 
       (.I0(ifid_pc[5]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[5]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[6]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_25 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[6]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[6]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[6]_i_2 
       (.I0(ifid_pc[6]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[6]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[7]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_26 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[7]_i_2_n_1 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[7]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[7]_i_2 
       (.I0(ifid_pc[7]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[7]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[8]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_27 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\mem_wdata_reg[8]_0 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[8]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[8]_i_2 
       (.I0(ifid_pc[8]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[8]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_addr_base[9]_i_1 
       (.I0(\ex_addr_base[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_28 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\mem_wdata_reg[9]_0 ),
        .I4(\ex_addr_base[31]_i_3_n_1 ),
        .I5(\ex_addr_base[9]_i_2_n_1 ),
        .O(\ex_addr_base_reg[31] [9]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_base[9]_i_2 
       (.I0(ifid_pc[9]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_base[9]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hF111111100000000)) 
    \ex_addr_off[0]_i_1 
       (.I0(\ex_addr_off[0]_i_2_n_1 ),
        .I1(\ex_addr_off_reg[24] [1]),
        .I2(\jump_type_o_reg[0] ),
        .I3(\ex_addr_off_reg[24] [4]),
        .I4(\ex_addr_off[0]_i_3_n_1 ),
        .I5(regs_reg_r1_0_31_0_5_i_9_n_1),
        .O(\ex_addr_off_reg[24]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'hEEEFFFEF)) 
    \ex_addr_off[0]_i_2 
       (.I0(ifid_inst[4]),
        .I1(ifid_inst[2]),
        .I2(\ex_addr_off_reg[24] [4]),
        .I3(ifid_inst[5]),
        .I4(ifid_inst[7]),
        .O(\ex_addr_off[0]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \ex_addr_off[0]_i_3 
       (.I0(\ex_addr_off_reg[24] [1]),
        .I1(ifid_inst[5]),
        .I2(ifid_inst[2]),
        .I3(ifid_inst[4]),
        .O(\ex_addr_off[0]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_off[10]_i_1 
       (.I0(ifid_inst[30]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [10]));
  LUT6 #(
    .INIT(64'h888AAA8A88888888)) 
    \ex_addr_off[11]_i_1 
       (.I0(\ex_addr_off[19]_i_2_n_1 ),
        .I1(\ex_addr_off[11]_i_2_n_1 ),
        .I2(\id_inst_reg[31]_0 ),
        .I3(\ex_addr_off_reg[24] [0]),
        .I4(\id_inst_reg[20]_0 ),
        .I5(\ex_addr_off[19]_i_3_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [11]));
  LUT6 #(
    .INIT(64'h80FF800000000000)) 
    \ex_addr_off[11]_i_2 
       (.I0(\jump_type_o_reg[0] ),
        .I1(ifid_inst[7]),
        .I2(ifid_inst[5]),
        .I3(\ex_addr_off_reg[24] [1]),
        .I4(\ex_addr_off_reg[24] [5]),
        .I5(\memop_o[1]_i_2_n_1 ),
        .O(\ex_addr_off[11]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00808888AAAAAAAA)) 
    \ex_addr_off[12]_i_1 
       (.I0(\ex_addr_off[19]_i_2_n_1 ),
        .I1(\ex_addr_off[19]_i_3_n_1 ),
        .I2(ifid_inst[12]),
        .I3(\id_inst_reg[3]_0 ),
        .I4(\ex_addr_off[19]_i_5_n_1 ),
        .I5(\ex_addr_off[19]_i_6_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [12]));
  LUT6 #(
    .INIT(64'h00808888AAAAAAAA)) 
    \ex_addr_off[13]_i_1 
       (.I0(\ex_addr_off[19]_i_2_n_1 ),
        .I1(\ex_addr_off[19]_i_3_n_1 ),
        .I2(ifid_inst[13]),
        .I3(\id_inst_reg[3]_0 ),
        .I4(\ex_addr_off[19]_i_5_n_1 ),
        .I5(\ex_addr_off[19]_i_6_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [13]));
  LUT6 #(
    .INIT(64'h00808888AAAAAAAA)) 
    \ex_addr_off[14]_i_1 
       (.I0(\ex_addr_off[19]_i_2_n_1 ),
        .I1(\ex_addr_off[19]_i_3_n_1 ),
        .I2(ifid_inst[14]),
        .I3(\id_inst_reg[3]_0 ),
        .I4(\ex_addr_off[19]_i_5_n_1 ),
        .I5(\ex_addr_off[19]_i_6_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [14]));
  LUT6 #(
    .INIT(64'h00808888AAAAAAAA)) 
    \ex_addr_off[15]_i_1 
       (.I0(\ex_addr_off[19]_i_2_n_1 ),
        .I1(\ex_addr_off[19]_i_3_n_1 ),
        .I2(ifid_inst[15]),
        .I3(\id_inst_reg[3]_0 ),
        .I4(\ex_addr_off[19]_i_5_n_1 ),
        .I5(\ex_addr_off[19]_i_6_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [15]));
  LUT6 #(
    .INIT(64'h00088808AAAAAAAA)) 
    \ex_addr_off[16]_i_1 
       (.I0(\ex_addr_off[19]_i_2_n_1 ),
        .I1(\ex_addr_off[19]_i_3_n_1 ),
        .I2(\id_inst_reg[31]_0 ),
        .I3(\ex_addr_off_reg[24] [0]),
        .I4(\id_inst_reg[16]_0 ),
        .I5(\ex_addr_off[19]_i_6_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [16]));
  LUT6 #(
    .INIT(64'h00088808AAAAAAAA)) 
    \ex_addr_off[17]_i_1 
       (.I0(\ex_addr_off[19]_i_2_n_1 ),
        .I1(\ex_addr_off[19]_i_3_n_1 ),
        .I2(\id_inst_reg[31]_0 ),
        .I3(\ex_addr_off_reg[24] [0]),
        .I4(\id_inst_reg[17]_0 ),
        .I5(\ex_addr_off[19]_i_6_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [17]));
  LUT6 #(
    .INIT(64'h00808888AAAAAAAA)) 
    \ex_addr_off[18]_i_1 
       (.I0(\ex_addr_off[19]_i_2_n_1 ),
        .I1(\ex_addr_off[19]_i_3_n_1 ),
        .I2(ifid_inst[18]),
        .I3(\id_inst_reg[3]_0 ),
        .I4(\ex_addr_off[19]_i_5_n_1 ),
        .I5(\ex_addr_off[19]_i_6_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [18]));
  LUT6 #(
    .INIT(64'h00808888AAAAAAAA)) 
    \ex_addr_off[19]_i_1 
       (.I0(\ex_addr_off[19]_i_2_n_1 ),
        .I1(\ex_addr_off[19]_i_3_n_1 ),
        .I2(ifid_inst[19]),
        .I3(\id_inst_reg[3]_0 ),
        .I4(\ex_addr_off[19]_i_5_n_1 ),
        .I5(\ex_addr_off[19]_i_6_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [19]));
  LUT4 #(
    .INIT(16'h0040)) 
    \ex_addr_off[19]_i_2 
       (.I0(ifid_inst[4]),
        .I1(ifid_inst[1]),
        .I2(ifid_inst[0]),
        .I3(rst),
        .O(\ex_addr_off[19]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ex_addr_off[19]_i_3 
       (.I0(ifid_inst[2]),
        .I1(ifid_inst[5]),
        .I2(\ex_addr_off_reg[24] [1]),
        .O(\ex_addr_off[19]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \ex_addr_off[19]_i_5 
       (.I0(\ex_addr_off_reg[24] [0]),
        .I1(\jump_type_o_reg[1]_0 [0]),
        .I2(\jump_type_o_reg[1]_0 [1]),
        .I3(\ex_addr_off_reg[24] [5]),
        .O(\ex_addr_off[19]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hFDFDFFFDFFFDFFFD)) 
    \ex_addr_off[19]_i_6 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_addr_off_reg[24] [0]),
        .I2(ifid_inst[2]),
        .I3(\ex_addr_off_reg[24] [1]),
        .I4(ifid_inst[5]),
        .I5(\jump_type_o_reg[0] ),
        .O(\ex_addr_off[19]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0020AAAA00200020)) 
    \ex_addr_off[1]_i_1 
       (.I0(\ex_addr_off[19]_i_2_n_1 ),
        .I1(\ex_aluop[0]_i_4_n_1 ),
        .I2(ifid_inst[8]),
        .I3(\id_inst_reg[6]_0 ),
        .I4(\ex_addr_off[4]_i_3_n_1 ),
        .I5(ifid_inst[21]),
        .O(\ex_addr_off_reg[24]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_off[24]_i_1 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [20]));
  LUT6 #(
    .INIT(64'h7FFF7F70FFFFFFFF)) 
    \ex_addr_off[24]_i_2 
       (.I0(\jump_type_o_reg[0] ),
        .I1(ifid_inst[5]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(ifid_inst[2]),
        .I4(\ex_addr_off_reg[24] [0]),
        .I5(\ex_addr_off[19]_i_2_n_1 ),
        .O(\ex_addr_off[24]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0020AAAA00200020)) 
    \ex_addr_off[2]_i_1 
       (.I0(\ex_addr_off[19]_i_2_n_1 ),
        .I1(\ex_aluop[0]_i_4_n_1 ),
        .I2(ifid_inst[9]),
        .I3(\id_inst_reg[6]_0 ),
        .I4(\ex_addr_off[4]_i_3_n_1 ),
        .I5(ifid_inst[22]),
        .O(\ex_addr_off_reg[24]_0 [2]));
  LUT6 #(
    .INIT(64'h0020AAAA00200020)) 
    \ex_addr_off[3]_i_1 
       (.I0(\ex_addr_off[19]_i_2_n_1 ),
        .I1(\ex_aluop[0]_i_4_n_1 ),
        .I2(ifid_inst[10]),
        .I3(\id_inst_reg[6]_0 ),
        .I4(\ex_addr_off[4]_i_3_n_1 ),
        .I5(ifid_inst[23]),
        .O(\ex_addr_off_reg[24]_0 [3]));
  LUT6 #(
    .INIT(64'h0020AAAA00200020)) 
    \ex_addr_off[4]_i_1 
       (.I0(\ex_addr_off[19]_i_2_n_1 ),
        .I1(\id_inst_reg[6]_0 ),
        .I2(ifid_inst[11]),
        .I3(\ex_aluop[0]_i_4_n_1 ),
        .I4(\ex_addr_off[4]_i_3_n_1 ),
        .I5(ifid_inst[24]),
        .O(\ex_addr_off_reg[24]_0 [4]));
  LUT6 #(
    .INIT(64'hEFFFFFFFEFFFFFF0)) 
    \ex_addr_off[4]_i_3 
       (.I0(\jump_type_o_reg[1]_0 [0]),
        .I1(\jump_type_o_reg[1]_0 [1]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(ifid_inst[5]),
        .I4(ifid_inst[2]),
        .I5(\ex_addr_off_reg[24] [0]),
        .O(\ex_addr_off[4]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_off[5]_i_1 
       (.I0(ifid_inst[25]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_off[6]_i_1 
       (.I0(ifid_inst[26]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_off[7]_i_1 
       (.I0(ifid_inst[27]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_off[8]_i_1 
       (.I0(ifid_inst[28]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_addr_off[9]_i_1 
       (.I0(ifid_inst[29]),
        .I1(\ex_addr_off[24]_i_2_n_1 ),
        .O(\ex_addr_off_reg[24]_0 [9]));
  LUT6 #(
    .INIT(64'h5455545454555455)) 
    \ex_aluop[0]_i_1 
       (.I0(\ex_aluop[0]_i_2_n_1 ),
        .I1(\ex_aluop[0]_i_3_n_1 ),
        .I2(\jump_type_o_reg[0]_i_3_n_1 ),
        .I3(\ex_aluop[0]_i_4_n_1 ),
        .I4(\ex_aluop[0]_i_5_n_1 ),
        .I5(\ex_aluop[0]_i_6_n_1 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \ex_aluop[0]_i_2 
       (.I0(rst),
        .I1(ifid_inst[0]),
        .I2(ifid_inst[1]),
        .O(\ex_aluop[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hA88AA8AA8A8A8A8A)) 
    \ex_aluop[0]_i_3 
       (.I0(\ex_aluop[0]_i_7_n_1 ),
        .I1(ifid_inst[2]),
        .I2(ifid_inst[12]),
        .I3(ifid_inst[13]),
        .I4(ifid_inst[30]),
        .I5(ifid_inst[14]),
        .O(\ex_aluop[0]_i_3_n_1 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \ex_aluop[0]_i_4 
       (.I0(\ex_addr_off_reg[24] [0]),
        .I1(ifid_inst[5]),
        .I2(ifid_inst[2]),
        .O(\ex_aluop[0]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000D00000)) 
    \ex_aluop[0]_i_5 
       (.I0(ifid_inst[12]),
        .I1(ifid_inst[14]),
        .I2(\jump_type_o_reg[0] ),
        .I3(ifid_inst[4]),
        .I4(\ex_addr_off_reg[24] [1]),
        .I5(ifid_inst[13]),
        .O(\ex_aluop[0]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF2FC2FFFFFFFF)) 
    \ex_aluop[0]_i_6 
       (.I0(ifid_inst[30]),
        .I1(ifid_inst[13]),
        .I2(ifid_inst[14]),
        .I3(ifid_inst[12]),
        .I4(\ex_addr_off_reg[24] [1]),
        .I5(ifid_inst[4]),
        .O(\ex_aluop[0]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \ex_aluop[0]_i_7 
       (.I0(\ex_addr_off_reg[24] [0]),
        .I1(\ex_addr_off_reg[24] [1]),
        .I2(ifid_inst[4]),
        .I3(ifid_inst[5]),
        .O(\ex_aluop[0]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'h00000000AABAEABA)) 
    \ex_aluop[1]_i_1 
       (.I0(\ex_aluop[1]_i_2_n_1 ),
        .I1(ifid_inst[2]),
        .I2(ifid_inst[5]),
        .I3(ifid_inst[4]),
        .I4(\ex_addr_off_reg[24] [1]),
        .I5(\ex_aluop[1]_i_3_n_1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'hA8A800A8)) 
    \ex_aluop[1]_i_2 
       (.I0(\ex_aluop[1]_i_4_n_1 ),
        .I1(ifid_inst[30]),
        .I2(ifid_inst[13]),
        .I3(ifid_inst[12]),
        .I4(ifid_inst[14]),
        .O(\ex_aluop[1]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h7FF30000FFFFFFFF)) 
    \ex_aluop[1]_i_3 
       (.I0(ifid_inst[14]),
        .I1(\jump_type_o_reg[0] ),
        .I2(ifid_inst[12]),
        .I3(ifid_inst[13]),
        .I4(\ex_addr_off_reg[24] [1]),
        .I5(regs_reg_r1_0_31_0_5_i_9_n_1),
        .O(\ex_aluop[1]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000737070)) 
    \ex_aluop[1]_i_4 
       (.I0(ifid_inst[14]),
        .I1(\ex_aluop[1]_i_5_n_1 ),
        .I2(ifid_inst[5]),
        .I3(\ex_addr_off_reg[24] [1]),
        .I4(ifid_inst[4]),
        .I5(ifid_inst[2]),
        .O(\ex_aluop[1]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ex_aluop[1]_i_5 
       (.I0(ifid_inst[13]),
        .I1(ifid_inst[12]),
        .O(\ex_aluop[1]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h00000000D5D5F555)) 
    \ex_aluop[2]_i_1 
       (.I0(\ex_addr_off_reg[24] [1]),
        .I1(ifid_inst[14]),
        .I2(\jump_type_o_reg[0] ),
        .I3(ifid_inst[12]),
        .I4(ifid_inst[13]),
        .I5(\ex_aluop[2]_i_2_n_1 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hEFEFAFAAFFFFFFFF)) 
    \ex_aluop[2]_i_2 
       (.I0(\ex_aluop[2]_i_3_n_1 ),
        .I1(ifid_inst[4]),
        .I2(ifid_inst[5]),
        .I3(ifid_inst[2]),
        .I4(\ex_addr_off_reg[24] [1]),
        .I5(regs_reg_r1_0_31_0_5_i_9_n_1),
        .O(\ex_aluop[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0047FF004747FFFF)) 
    \ex_aluop[2]_i_3 
       (.I0(ifid_inst[13]),
        .I1(ifid_inst[12]),
        .I2(ifid_inst[14]),
        .I3(ifid_inst[2]),
        .I4(ifid_inst[4]),
        .I5(ifid_inst[5]),
        .O(\ex_aluop[2]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h8A0A000888080008)) 
    \ex_aluop[3]_i_2 
       (.I0(\ex_aluop[3]_i_3_n_1 ),
        .I1(\jump_type_o_reg[1]_i_4_n_1 ),
        .I2(ifid_inst[13]),
        .I3(ifid_inst[14]),
        .I4(ifid_inst[12]),
        .I5(\ex_aluop[3]_i_4_n_1 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \ex_aluop[3]_i_3 
       (.I0(\ex_addr_off_reg[24] [0]),
        .I1(ifid_inst[2]),
        .I2(ifid_inst[1]),
        .I3(ifid_inst[0]),
        .I4(rst),
        .O(\ex_aluop[3]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_aluop[3]_i_4 
       (.I0(ifid_inst[4]),
        .I1(\ex_addr_off_reg[24] [1]),
        .O(\ex_aluop[3]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hA2A2A28220202000)) 
    \ex_alusel[0]_i_1 
       (.I0(\ex_alusel[0]_i_2_n_1 ),
        .I1(ifid_inst[2]),
        .I2(ifid_inst[4]),
        .I3(\ex_alusel[0]_i_3_n_1 ),
        .I4(ifid_inst[14]),
        .I5(ifid_inst[5]),
        .O(\ex_alusel_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \ex_alusel[0]_i_2 
       (.I0(rst),
        .I1(ifid_inst[0]),
        .I2(ifid_inst[1]),
        .I3(\ex_addr_off_reg[24] [0]),
        .I4(\ex_addr_off_reg[24] [1]),
        .O(\ex_alusel[0]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_alusel[0]_i_3 
       (.I0(ifid_inst[12]),
        .I1(ifid_inst[13]),
        .O(\ex_alusel[0]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h4444444444444544)) 
    \ex_alusel[1]_i_1 
       (.I0(\ex_aluop[0]_i_2_n_1 ),
        .I1(\ex_alusel[1]_i_2_n_1 ),
        .I2(ifid_inst[2]),
        .I3(ifid_inst[5]),
        .I4(\ex_addr_off_reg[24] [0]),
        .I5(\ex_alusel[1]_i_3_n_1 ),
        .O(\ex_alusel_reg[1] [1]));
  LUT6 #(
    .INIT(64'hFFFFAEFFAAAAAAAA)) 
    \ex_alusel[1]_i_2 
       (.I0(\jump_type_o_reg[0]_i_3_n_1 ),
        .I1(ifid_inst[12]),
        .I2(ifid_inst[13]),
        .I3(ifid_inst[14]),
        .I4(ifid_inst[2]),
        .I5(\ex_aluop[0]_i_7_n_1 ),
        .O(\ex_alusel[1]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hCFFFF3F3C7F7C3F3)) 
    \ex_alusel[1]_i_3 
       (.I0(ifid_inst[12]),
        .I1(ifid_inst[4]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(\jump_type_o_reg[0] ),
        .I4(ifid_inst[14]),
        .I5(ifid_inst[13]),
        .O(\ex_alusel[1]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[0]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [0]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[0]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[0]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ex_reg1[0]_i_2 
       (.I0(\ex_reg1[0]_i_4_n_1 ),
        .I1(\ex_reg1_reg[31]_0 ),
        .I2(\mem_wdata_reg[31] [0]),
        .O(\ex_reg1[0]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[0]_i_3 
       (.I0(ifid_pc[0]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[0]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[0]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[0]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[0]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[0]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[10]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [10]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\mem_wdata_reg[10]_0 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[10]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[10]_i_3 
       (.I0(ifid_pc[10]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[10]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[10]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[10]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[10]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_addr_base_reg[10] ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[11]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [11]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\mem_wdata_reg[11]_0 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[11]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[11]_i_3 
       (.I0(ifid_pc[11]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[11]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[11]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[11]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[11]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_addr_base_reg[11] ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[12]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [12]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\mem_wdata_reg[12]_0 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[12]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[12]_i_3 
       (.I0(ifid_pc[12]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[12]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[12]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[12]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[12]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_addr_base_reg[12] ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[13]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [13]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\mem_wdata_reg[13]_0 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[13]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[13]_i_3 
       (.I0(ifid_pc[13]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[13]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[13]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[13]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[13]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_addr_base_reg[13] ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[14]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [14]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\mem_wdata_reg[14]_0 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[14]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[14]_i_3 
       (.I0(ifid_pc[14]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[14]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[14]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[14]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[14]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_addr_base_reg[14] ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[15]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [15]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[15]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[15]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ex_reg1[15]_i_2 
       (.I0(\ex_reg1[15]_i_4_n_1 ),
        .I1(\ex_reg1_reg[31]_0 ),
        .I2(\mem_wdata_reg[31] [8]),
        .O(\ex_reg1[15]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[15]_i_3 
       (.I0(ifid_pc[15]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[15]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[15]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[15]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[15]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[15]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[16]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [16]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[16]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[16]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[16]_i_3 
       (.I0(ifid_pc[16]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[16]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[16]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[16]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[16]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[16]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[17]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [17]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[17]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[17]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[17]_i_3 
       (.I0(ifid_pc[17]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[17]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[17]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[17]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[17]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[17]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[18]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [18]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[18]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[18]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[18]_i_3 
       (.I0(ifid_pc[18]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[18]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[18]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[18]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[18]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[18]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[19]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [19]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[19]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[19]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[19]_i_3 
       (.I0(ifid_pc[19]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[19]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[19]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[19]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[19]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[19]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[1]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [1]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[1]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[1]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ex_reg1[1]_i_2 
       (.I0(\ex_reg1[1]_i_4_n_1 ),
        .I1(\ex_reg1_reg[31]_0 ),
        .I2(\mem_wdata_reg[31] [1]),
        .O(\ex_reg1[1]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[1]_i_3 
       (.I0(ifid_pc[1]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[1]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[1]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[1]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[1]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[1]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[20]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [20]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[20]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[20]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[20]_i_3 
       (.I0(ifid_pc[20]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[20]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[20]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[20]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[20]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[20]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[21]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [21]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[21]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[21]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[21]_i_3 
       (.I0(ifid_pc[21]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[21]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[21]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[21]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[21]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[21]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[22]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [22]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[22]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[22]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[22]_i_3 
       (.I0(ifid_pc[22]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[22]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[22]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[22]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[22]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[22]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[23]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [23]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[23]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[23]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[23]_i_3 
       (.I0(ifid_pc[23]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[23]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[23]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[23]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[23]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[23]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[24]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [24]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[24]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[24]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[24]_i_3 
       (.I0(ifid_pc[24]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[24]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[24]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[24]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[24]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[24]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[25]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [25]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[25]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[25]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[25]_i_3 
       (.I0(ifid_pc[25]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[25]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[25]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[25]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[25]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[25]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[26]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [26]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[26]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[26]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[26]_i_3 
       (.I0(ifid_pc[26]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[26]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[26]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[26]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[26]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[26]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[27]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [27]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[27]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[27]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[27]_i_3 
       (.I0(ifid_pc[27]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[27]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[27]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[27]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[27]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[27]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[28]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [28]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[28]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[28]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[28]_i_3 
       (.I0(ifid_pc[28]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[28]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[28]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[28]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[28]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[28]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[29]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [29]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1_reg[29]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[29]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [29]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[29]_i_3 
       (.I0(ifid_pc[29]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[29]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[29]_i_5 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[29]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[29]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[29]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[2]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [2]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[2]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[2]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [2]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ex_reg1[2]_i_2 
       (.I0(\ex_reg1[2]_i_4_n_1 ),
        .I1(\ex_reg1_reg[31]_0 ),
        .I2(\mem_wdata_reg[31] [2]),
        .O(\ex_reg1[2]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[2]_i_3 
       (.I0(ifid_pc[2]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[2]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[2]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[2]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[2]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[2]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \ex_reg1[30]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [30]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[30]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[30]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [30]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg1[30]_i_2 
       (.I0(\ex_reg1[30]_i_4_n_1 ),
        .I1(\ex_reg1_reg[31]_0 ),
        .I2(\mem_wdata_reg[31] [23]),
        .O(\ex_reg1[30]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[30]_i_3 
       (.I0(ifid_pc[30]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[30]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000054040000)) 
    \ex_reg1[30]_i_4 
       (.I0(\jump_type_o_reg[1]_i_6_n_1 ),
        .I1(rdata10[30]),
        .I2(\regfile0/rdata11 ),
        .I3(Q[30]),
        .I4(\ex_reg1[31]_i_13_n_1 ),
        .I5(rst),
        .O(\ex_reg1[30]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hA808FFFFA8080000)) 
    \ex_reg1[31]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [31]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[31]_i_4_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[31]_i_6_n_1 ),
        .O(\ex_reg1_reg[31] [31]));
  LUT6 #(
    .INIT(64'hEFFEFFFFEFFEEFFE)) 
    \ex_reg1[31]_i_10 
       (.I0(\ex_reg1[31]_i_14_n_1 ),
        .I1(\mem_wd_reg[4]_0 ),
        .I2(id_reg1_addr[1]),
        .I3(mem_wd[1]),
        .I4(id_reg1_addr[2]),
        .I5(mem_wd[2]),
        .O(\ex_reg1_reg[31]_0 ));
  LUT6 #(
    .INIT(64'hF7F5FFCFFFFFFF0F)) 
    \ex_reg1[31]_i_11 
       (.I0(\jump_type_o_reg[0] ),
        .I1(ifid_inst[2]),
        .I2(ifid_inst[4]),
        .I3(\ex_addr_off_reg[24] [0]),
        .I4(\ex_addr_off_reg[24] [1]),
        .I5(ifid_inst[5]),
        .O(\ex_reg1[31]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ex_reg1[31]_i_12 
       (.I0(\ex_reg1[31]_i_18_n_1 ),
        .I1(\ex_reg1[31]_i_19_n_1 ),
        .I2(\ex_reg1[31]_i_20_n_1 ),
        .I3(\ex_reg1[31]_i_21_n_1 ),
        .I4(\ex_reg1[31]_i_22_n_1 ),
        .I5(memwb_wreg),
        .O(\regfile0/rdata11 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFCFCE)) 
    \ex_reg1[31]_i_13 
       (.I0(ifid_inst[18]),
        .I1(id_reg1_addr[1]),
        .I2(\jump_type_o_reg[1]_i_6_n_1 ),
        .I3(ifid_inst[15]),
        .I4(id_reg1_addr[4]),
        .I5(id_reg1_addr[2]),
        .O(\ex_reg1[31]_i_13_n_1 ));
  LUT6 #(
    .INIT(64'h00FA00FAFF6FCCF6)) 
    \ex_reg1[31]_i_14 
       (.I0(ifid_inst[18]),
        .I1(\mem_wd_reg[3] [2]),
        .I2(ifid_inst[15]),
        .I3(\jump_type_o_reg[1]_i_6_n_1 ),
        .I4(\mem_wd_reg[3] [0]),
        .I5(rst),
        .O(\ex_reg1[31]_i_14_n_1 ));
  LUT6 #(
    .INIT(64'h9555955595559595)) 
    \ex_reg1[31]_i_18 
       (.I0(\wb_wd_reg[4] [4]),
        .I1(ifid_inst[19]),
        .I2(regs_reg_r1_0_31_0_5_i_9_n_1),
        .I3(\jump_type_o_reg[1]_i_4_n_1 ),
        .I4(ifid_inst[2]),
        .I5(\ex_addr_off_reg[24] [1]),
        .O(\ex_reg1[31]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'h59AA555555555555)) 
    \ex_reg1[31]_i_19 
       (.I0(\wb_wd_reg[4] [1]),
        .I1(\jump_type_o_reg[0] ),
        .I2(regs_reg_r1_0_31_0_5_i_10_n_1),
        .I3(\ex_reg1[31]_i_23_n_1 ),
        .I4(\ex_addr_off_reg[24] [2]),
        .I5(regs_reg_r1_0_31_0_5_i_9_n_1),
        .O(\ex_reg1[31]_i_19_n_1 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \ex_reg1[31]_i_2 
       (.I0(id_reg1_addr[3]),
        .I1(id_reg1_addr[0]),
        .I2(id_reg1_addr[4]),
        .I3(id_reg1_addr[2]),
        .I4(id_reg1_addr[1]),
        .I5(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[31]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h59AA555555555555)) 
    \ex_reg1[31]_i_20 
       (.I0(\wb_wd_reg[4] [2]),
        .I1(\jump_type_o_reg[0] ),
        .I2(regs_reg_r1_0_31_0_5_i_10_n_1),
        .I3(\ex_reg1[31]_i_23_n_1 ),
        .I4(\ex_addr_off_reg[24] [3]),
        .I5(regs_reg_r1_0_31_0_5_i_9_n_1),
        .O(\ex_reg1[31]_i_20_n_1 ));
  LUT6 #(
    .INIT(64'hAA56555555555555)) 
    \ex_reg1[31]_i_21 
       (.I0(\wb_wd_reg[4] [0]),
        .I1(\ex_addr_off_reg[24] [1]),
        .I2(ifid_inst[2]),
        .I3(\jump_type_o_reg[1]_i_4_n_1 ),
        .I4(regs_reg_r1_0_31_0_5_i_9_n_1),
        .I5(ifid_inst[15]),
        .O(\ex_reg1[31]_i_21_n_1 ));
  LUT6 #(
    .INIT(64'hAA56555555555555)) 
    \ex_reg1[31]_i_22 
       (.I0(\wb_wd_reg[4] [3]),
        .I1(\ex_addr_off_reg[24] [1]),
        .I2(ifid_inst[2]),
        .I3(\jump_type_o_reg[1]_i_4_n_1 ),
        .I4(regs_reg_r1_0_31_0_5_i_9_n_1),
        .I5(ifid_inst[18]),
        .O(\ex_reg1[31]_i_22_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ex_reg1[31]_i_23 
       (.I0(\ex_addr_off_reg[24] [1]),
        .I1(ifid_inst[2]),
        .O(\ex_reg1[31]_i_23_n_1 ));
  LUT6 #(
    .INIT(64'hEFFEEFFEFFFFEFFE)) 
    \ex_reg1[31]_i_3 
       (.I0(\jump_type_o_reg[0]_i_5_n_1 ),
        .I1(\ex_reg1[31]_i_8_n_1 ),
        .I2(\ex_wd_reg[4]_0 [1]),
        .I3(id_reg1_addr[1]),
        .I4(id_reg1_addr[2]),
        .I5(\ex_wd_reg[4]_0 [2]),
        .O(\ex_reg1[31]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg1[31]_i_4 
       (.I0(\ex_reg1[31]_i_9_n_1 ),
        .I1(\ex_reg1_reg[31]_0 ),
        .I2(\mem_wdata_reg[31] [24]),
        .O(\ex_reg1[31]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h0100010001010100)) 
    \ex_reg1[31]_i_5 
       (.I0(\ex_aluop[0]_i_2_n_1 ),
        .I1(ifid_inst[2]),
        .I2(\ex_addr_off_reg[24] [0]),
        .I3(\jump_type_o_reg[1]_i_4_n_1 ),
        .I4(ifid_inst[4]),
        .I5(\ex_addr_off_reg[24] [1]),
        .O(\ex_reg1[31]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[31]_i_6 
       (.I0(ifid_pc[31]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[31]_i_6_n_1 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \ex_reg1[31]_i_7 
       (.I0(ifid_inst[1]),
        .I1(ifid_inst[0]),
        .I2(rst),
        .I3(\ex_reg1[31]_i_11_n_1 ),
        .O(\ex_reg1[31]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hD0FFD0FFFFFFD0FF)) 
    \ex_reg1[31]_i_8 
       (.I0(ifid_inst[15]),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(\ex_wd_reg[4]_0 [0]),
        .I3(idex_wreg),
        .I4(\ex_wd_reg[4]_0 [2]),
        .I5(id_reg1_addr[2]),
        .O(\ex_reg1[31]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000054040000)) 
    \ex_reg1[31]_i_9 
       (.I0(\jump_type_o_reg[1]_i_6_n_1 ),
        .I1(rdata10[31]),
        .I2(\regfile0/rdata11 ),
        .I3(Q[31]),
        .I4(\ex_reg1[31]_i_13_n_1 ),
        .I5(rst),
        .O(\ex_reg1[31]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[3]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [3]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[3]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[3]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ex_reg1[3]_i_2 
       (.I0(\ex_reg1[3]_i_4_n_1 ),
        .I1(\ex_reg1_reg[31]_0 ),
        .I2(\mem_wdata_reg[31] [3]),
        .O(\ex_reg1[3]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[3]_i_3 
       (.I0(ifid_pc[3]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[3]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[3]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[3]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[3]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[3]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[4]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [4]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[4]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[4]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ex_reg1[4]_i_2 
       (.I0(\ex_reg1[4]_i_4_n_1 ),
        .I1(\ex_reg1_reg[31]_0 ),
        .I2(\mem_wdata_reg[31] [4]),
        .O(\ex_reg1[4]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[4]_i_3 
       (.I0(ifid_pc[4]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[4]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[4]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[4]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[4]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[4]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[5]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [5]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[5]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[5]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [5]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ex_reg1[5]_i_2 
       (.I0(\ex_reg1[5]_i_4_n_1 ),
        .I1(\ex_reg1_reg[31]_0 ),
        .I2(\mem_wdata_reg[31] [5]),
        .O(\ex_reg1[5]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[5]_i_3 
       (.I0(ifid_pc[5]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[5]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[5]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[5]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[5]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[5]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[6]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [6]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[6]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[6]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ex_reg1[6]_i_2 
       (.I0(\ex_reg1[6]_i_4_n_1 ),
        .I1(\ex_reg1_reg[31]_0 ),
        .I2(\mem_wdata_reg[31] [6]),
        .O(\ex_reg1[6]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[6]_i_3 
       (.I0(ifid_pc[6]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[6]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[6]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[6]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[6]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[6]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[7]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [7]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg1[7]_i_2_n_1 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[7]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \ex_reg1[7]_i_2 
       (.I0(\ex_reg1[7]_i_4_n_1 ),
        .I1(\ex_reg1_reg[31]_0 ),
        .I2(\mem_wdata_reg[31] [7]),
        .O(\ex_reg1[7]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[7]_i_3 
       (.I0(ifid_pc[7]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[7]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[7]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[7]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[7]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_reg1[7]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[8]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [8]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\mem_wdata_reg[8]_0 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[8]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[8]_i_3 
       (.I0(ifid_pc[8]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[8]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[8]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[8]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[8]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_addr_base_reg[8] ));
  LUT6 #(
    .INIT(64'h08A8FFFF08A80000)) 
    \ex_reg1[9]_i_1 
       (.I0(\ex_reg1[31]_i_2_n_1 ),
        .I1(\ex_alusel_reg[0]_30 [9]),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\mem_wdata_reg[9]_0 ),
        .I4(\ex_reg1[31]_i_5_n_1 ),
        .I5(\ex_reg1[9]_i_3_n_1 ),
        .O(\ex_reg1_reg[31] [9]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ex_reg1[9]_i_3 
       (.I0(ifid_pc[9]),
        .I1(\ex_reg1[31]_i_7_n_1 ),
        .O(\ex_reg1[9]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hEEEFFFEFFFFFFFFF)) 
    \ex_reg1[9]_i_4 
       (.I0(rst),
        .I1(\jump_type_o_reg[1]_i_6_n_1 ),
        .I2(rdata10[9]),
        .I3(\regfile0/rdata11 ),
        .I4(Q[9]),
        .I5(\ex_reg1[31]_i_13_n_1 ),
        .O(\ex_addr_base_reg[9] ));
  MUXF7 \ex_reg1_reg[16]_i_2 
       (.I0(\mem_wdata_reg[16] ),
        .I1(\ex_reg1[16]_i_5_n_1 ),
        .O(\ex_reg1_reg[16]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  MUXF7 \ex_reg1_reg[17]_i_2 
       (.I0(\mem_wdata_reg[17] ),
        .I1(\ex_reg1[17]_i_5_n_1 ),
        .O(\ex_reg1_reg[17]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  MUXF7 \ex_reg1_reg[18]_i_2 
       (.I0(\mem_wdata_reg[18] ),
        .I1(\ex_reg1[18]_i_5_n_1 ),
        .O(\ex_reg1_reg[18]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  MUXF7 \ex_reg1_reg[19]_i_2 
       (.I0(\mem_wdata_reg[19] ),
        .I1(\ex_reg1[19]_i_5_n_1 ),
        .O(\ex_reg1_reg[19]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  MUXF7 \ex_reg1_reg[20]_i_2 
       (.I0(\mem_wdata_reg[20] ),
        .I1(\ex_reg1[20]_i_5_n_1 ),
        .O(\ex_reg1_reg[20]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  MUXF7 \ex_reg1_reg[21]_i_2 
       (.I0(\mem_wdata_reg[21] ),
        .I1(\ex_reg1[21]_i_5_n_1 ),
        .O(\ex_reg1_reg[21]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  MUXF7 \ex_reg1_reg[22]_i_2 
       (.I0(\mem_wdata_reg[22] ),
        .I1(\ex_reg1[22]_i_5_n_1 ),
        .O(\ex_reg1_reg[22]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  MUXF7 \ex_reg1_reg[23]_i_2 
       (.I0(\mem_wdata_reg[23] ),
        .I1(\ex_reg1[23]_i_5_n_1 ),
        .O(\ex_reg1_reg[23]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  MUXF7 \ex_reg1_reg[24]_i_2 
       (.I0(\mem_wdata_reg[24] ),
        .I1(\ex_reg1[24]_i_5_n_1 ),
        .O(\ex_reg1_reg[24]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  MUXF7 \ex_reg1_reg[25]_i_2 
       (.I0(\mem_wdata_reg[25] ),
        .I1(\ex_reg1[25]_i_5_n_1 ),
        .O(\ex_reg1_reg[25]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  MUXF7 \ex_reg1_reg[26]_i_2 
       (.I0(\mem_wdata_reg[26] ),
        .I1(\ex_reg1[26]_i_5_n_1 ),
        .O(\ex_reg1_reg[26]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  MUXF7 \ex_reg1_reg[27]_i_2 
       (.I0(\mem_wdata_reg[27] ),
        .I1(\ex_reg1[27]_i_5_n_1 ),
        .O(\ex_reg1_reg[27]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  MUXF7 \ex_reg1_reg[28]_i_2 
       (.I0(\mem_wdata_reg[28] ),
        .I1(\ex_reg1[28]_i_5_n_1 ),
        .O(\ex_reg1_reg[28]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  MUXF7 \ex_reg1_reg[29]_i_2 
       (.I0(\mem_wdata_reg[29] ),
        .I1(\ex_reg1[29]_i_5_n_1 ),
        .O(\ex_reg1_reg[29]_i_2_n_1 ),
        .S(\ex_reg1_reg[31]_0 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[0]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[0]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(rst_reg),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[0]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[0]_i_2 
       (.I0(\mem_wdata_reg[31] [0]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[0]_i_5_n_1 ),
        .O(\ex_reg2[0]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ex_reg2[0]_i_4 
       (.I0(\ex_reg2[30]_i_8_n_1 ),
        .I1(\ex_addr_off_reg[24] [4]),
        .I2(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[0]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[0]_i_5 
       (.I0(rdata20[0]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[0]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[0]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ex_reg2[10]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[10]_i_2_n_1 ),
        .I2(\mem_wdata_reg[10] ),
        .I3(\ex_reg2[31]_i_4_n_1 ),
        .I4(\ex_alusel_reg[0]_29 ),
        .I5(\ex_reg2[31]_i_6_n_1 ),
        .O(\ex_reg2_reg[31] [10]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ex_reg2[10]_i_2 
       (.I0(\ex_reg2[30]_i_8_n_1 ),
        .I1(\ex_reg2[31]_i_16_n_1 ),
        .I2(ifid_inst[30]),
        .O(\ex_reg2[10]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[10]_i_5 
       (.I0(rdata20[10]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[10]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2_reg[10] ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[11]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\mem_wdata_reg[11] ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_19 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[11]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [11]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ex_reg2[11]_i_4 
       (.I0(\ex_reg2[30]_i_8_n_1 ),
        .I1(\ex_addr_off_reg[24] [5]),
        .I2(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[11]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[11]_i_5 
       (.I0(rdata20[11]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[11]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2_reg[11] ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[12]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\mem_wdata_reg[12] ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_0 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[12]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[12]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[12]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[12]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[12]_i_5 
       (.I0(rdata20[12]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[12]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2_reg[12] ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ex_reg2[13]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[13]_i_2_n_1 ),
        .I2(\mem_wdata_reg[13] ),
        .I3(\ex_reg2[31]_i_4_n_1 ),
        .I4(\ex_alusel_reg[0]_18 ),
        .I5(\ex_reg2[31]_i_6_n_1 ),
        .O(\ex_reg2_reg[31] [13]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \ex_reg2[13]_i_2 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[13]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[13]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[13]_i_5 
       (.I0(rdata20[13]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[13]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2_reg[13] ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[14]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\mem_wdata_reg[14] ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_1 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[14]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [14]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[14]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[14]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[14]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[14]_i_5 
       (.I0(rdata20[14]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[14]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2_reg[14] ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[15]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[15]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_2 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[15]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [15]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[15]_i_2 
       (.I0(\mem_wdata_reg[31] [8]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[15]_i_5_n_1 ),
        .O(\ex_reg2[15]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[15]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[15]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[15]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[15]_i_5 
       (.I0(rdata20[15]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[15]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[15]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[16]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[16]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_3 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[16]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[16]_i_2 
       (.I0(\mem_wdata_reg[31] [9]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[16]_i_5_n_1 ),
        .O(\ex_reg2[16]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[16]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(\ex_addr_off_reg[24] [2]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[16]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[16]_i_5 
       (.I0(rdata20[16]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[16]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[16]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ex_reg2[17]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[17]_i_2_n_1 ),
        .I2(\ex_reg2[17]_i_3_n_1 ),
        .I3(\ex_reg2[31]_i_4_n_1 ),
        .I4(\ex_alusel_reg[0]_17 ),
        .I5(\ex_reg2[31]_i_6_n_1 ),
        .O(\ex_reg2_reg[31] [17]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \ex_reg2[17]_i_2 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(\ex_addr_off_reg[24] [3]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[17]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[17]_i_3 
       (.I0(\mem_wdata_reg[31] [10]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[17]_i_5_n_1 ),
        .O(\ex_reg2[17]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[17]_i_5 
       (.I0(rdata20[17]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[17]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[17]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[18]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[18]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_4 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[18]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [18]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[18]_i_2 
       (.I0(\mem_wdata_reg[31] [11]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[18]_i_5_n_1 ),
        .O(\ex_reg2[18]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[18]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[18]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[18]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[18]_i_5 
       (.I0(rdata20[18]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[18]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[18]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ex_reg2[19]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[19]_i_2_n_1 ),
        .I2(\ex_reg2[19]_i_3_n_1 ),
        .I3(\ex_reg2[31]_i_4_n_1 ),
        .I4(\ex_alusel_reg[0]_16 ),
        .I5(\ex_reg2[31]_i_6_n_1 ),
        .O(\ex_reg2_reg[31] [19]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hB800)) 
    \ex_reg2[19]_i_2 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[19]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[19]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[19]_i_3 
       (.I0(\mem_wdata_reg[31] [12]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[19]_i_5_n_1 ),
        .O(\ex_reg2[19]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[19]_i_5 
       (.I0(rdata20[19]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[19]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[19]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ex_reg2[1]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[1]_i_2_n_1 ),
        .I2(\ex_reg2[1]_i_3_n_1 ),
        .I3(\ex_reg2[31]_i_4_n_1 ),
        .I4(\ex_alusel_reg[0]_22 ),
        .I5(\ex_reg2[31]_i_6_n_1 ),
        .O(\ex_reg2_reg[31] [1]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ex_reg2[1]_i_2 
       (.I0(\ex_reg2[30]_i_8_n_1 ),
        .I1(\ex_reg2[31]_i_16_n_1 ),
        .I2(ifid_inst[21]),
        .O(\ex_reg2[1]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[1]_i_3 
       (.I0(\mem_wdata_reg[31] [1]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[1]_i_5_n_1 ),
        .O(\ex_reg2[1]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[1]_i_5 
       (.I0(rdata20[1]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[1]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[1]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ex_reg2[20]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[20]_i_2_n_1 ),
        .I2(\ex_reg2[20]_i_3_n_1 ),
        .I3(\ex_reg2[31]_i_4_n_1 ),
        .I4(\ex_alusel_reg[0]_15 ),
        .I5(\ex_reg2[31]_i_6_n_1 ),
        .O(\ex_reg2_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \ex_reg2[20]_i_2 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(\ex_reg2[31]_i_16_n_1 ),
        .I3(\ex_addr_off_reg[24] [4]),
        .O(\ex_reg2[20]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[20]_i_3 
       (.I0(\mem_wdata_reg[31] [13]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[20]_i_5_n_1 ),
        .O(\ex_reg2[20]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[20]_i_5 
       (.I0(rdata20[20]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[20]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[20]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[21]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[21]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_5 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[21]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [21]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[21]_i_2 
       (.I0(\mem_wdata_reg[31] [14]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[21]_i_5_n_1 ),
        .O(\ex_reg2[21]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[21]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[21]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[21]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[21]_i_5 
       (.I0(rdata20[21]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[21]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[21]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[22]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[22]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_6 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[22]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [22]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[22]_i_2 
       (.I0(\mem_wdata_reg[31] [15]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[22]_i_5_n_1 ),
        .O(\ex_reg2[22]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[22]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[22]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[22]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[22]_i_5 
       (.I0(rdata20[22]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[22]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[22]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ex_reg2[23]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[23]_i_2_n_1 ),
        .I2(\ex_reg2[23]_i_3_n_1 ),
        .I3(\ex_reg2[31]_i_4_n_1 ),
        .I4(\ex_alusel_reg[0]_14 ),
        .I5(\ex_reg2[31]_i_6_n_1 ),
        .O(\ex_reg2_reg[31] [23]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'hB080)) 
    \ex_reg2[23]_i_2 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(\ex_reg2[31]_i_16_n_1 ),
        .I3(ifid_inst[23]),
        .O(\ex_reg2[23]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[23]_i_3 
       (.I0(\mem_wdata_reg[31] [16]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[23]_i_5_n_1 ),
        .O(\ex_reg2[23]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[23]_i_5 
       (.I0(rdata20[23]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[23]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[23]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[24]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[24]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_7 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[24]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[24]_i_2 
       (.I0(\mem_wdata_reg[31] [17]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[24]_i_5_n_1 ),
        .O(\ex_reg2[24]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[24]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[24]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[24]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[24]_i_5 
       (.I0(rdata20[24]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[24]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[24]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[25]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[25]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_8 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[25]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [25]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[25]_i_2 
       (.I0(\mem_wdata_reg[31] [18]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[25]_i_5_n_1 ),
        .O(\ex_reg2[25]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[25]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[25]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[25]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[25]_i_5 
       (.I0(rdata20[25]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[25]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[25]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[26]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[26]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_9 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[26]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [26]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[26]_i_2 
       (.I0(\mem_wdata_reg[31] [19]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[26]_i_5_n_1 ),
        .O(\ex_reg2[26]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[26]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[26]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[26]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[26]_i_5 
       (.I0(rdata20[26]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[26]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[26]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[27]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[27]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_10 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[27]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [27]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[27]_i_2 
       (.I0(\mem_wdata_reg[31] [20]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[27]_i_5_n_1 ),
        .O(\ex_reg2[27]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[27]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[27]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[27]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[27]_i_5 
       (.I0(rdata20[27]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[27]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[27]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[28]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[28]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_11 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[28]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [28]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[28]_i_2 
       (.I0(\mem_wdata_reg[31] [21]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[28]_i_5_n_1 ),
        .O(\ex_reg2[28]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[28]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[28]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[28]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[28]_i_5 
       (.I0(rdata20[28]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[28]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[28]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[29]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[29]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_12 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[29]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [29]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[29]_i_2 
       (.I0(\mem_wdata_reg[31] [22]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[29]_i_5_n_1 ),
        .O(\ex_reg2[29]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[29]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[29]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[29]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[29]_i_5 
       (.I0(rdata20[29]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[29]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[29]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ex_reg2[2]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[2]_i_2_n_1 ),
        .I2(\ex_reg2[2]_i_3_n_1 ),
        .I3(\ex_reg2[31]_i_4_n_1 ),
        .I4(\ex_alusel_reg[0]_21 ),
        .I5(\ex_reg2[31]_i_6_n_1 ),
        .O(\ex_reg2_reg[31] [2]));
  LUT5 #(
    .INIT(32'hAA020002)) 
    \ex_reg2[2]_i_2 
       (.I0(\ex_reg2[30]_i_8_n_1 ),
        .I1(\jump_type_o_reg[1]_0 [0]),
        .I2(\jump_type_o_reg[1]_0 [1]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .I4(ifid_inst[22]),
        .O(\ex_reg2[2]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[2]_i_3 
       (.I0(\mem_wdata_reg[31] [2]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[2]_i_5_n_1 ),
        .O(\ex_reg2[2]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[2]_i_5 
       (.I0(rdata20[2]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[2]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[2]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[30]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[30]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_13 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[30]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [30]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[30]_i_2 
       (.I0(\mem_wdata_reg[31] [23]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[30]_i_5_n_1 ),
        .O(\ex_reg2[30]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \ex_reg2[30]_i_4 
       (.I0(\ex_addr_off_reg[24] [5]),
        .I1(\ex_reg2[30]_i_8_n_1 ),
        .I2(ifid_inst[30]),
        .I3(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[30]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[30]_i_5 
       (.I0(rdata20[30]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[30]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[30]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000000130000000)) 
    \ex_reg2[30]_i_8 
       (.I0(\ex_addr_off_reg[24] [0]),
        .I1(\memop_o[1]_i_3_n_1 ),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(ifid_inst[5]),
        .I4(ifid_inst[2]),
        .I5(ifid_inst[4]),
        .O(\ex_reg2[30]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h5555555500005404)) 
    \ex_reg2[31]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[31]_i_3_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0] ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[31]_i_7_n_1 ),
        .O(\ex_reg2_reg[31] [31]));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[31]_i_10 
       (.I0(rdata20[31]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[31]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[31]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'h5010AFAF0000FFBF)) 
    \ex_reg2[31]_i_11 
       (.I0(regs_reg_r2_0_31_0_5_i_6_n_1),
        .I1(ifid_inst[22]),
        .I2(\ex_reg2[31]_i_23_n_1 ),
        .I3(\ex_wd_reg[4]_0 [2]),
        .I4(\ex_wd_reg[4]_0 [0]),
        .I5(\ex_addr_off_reg[24] [4]),
        .O(\ex_reg2[31]_i_11_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF6FFFCCCCFC6C)) 
    \ex_reg2[31]_i_12 
       (.I0(ifid_inst[23]),
        .I1(\ex_wd_reg[4]_0 [3]),
        .I2(\ex_reg2[31]_i_23_n_1 ),
        .I3(ifid_inst[21]),
        .I4(regs_reg_r2_0_31_0_5_i_6_n_1),
        .I5(\ex_wd_reg[4]_0 [1]),
        .O(\ex_reg2[31]_i_12_n_1 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \ex_reg2[31]_i_13 
       (.I0(\ex_wd_reg[4]_0 [4]),
        .I1(\ex_aluop[0]_i_4_n_1 ),
        .I2(ifid_inst[1]),
        .I3(ifid_inst[0]),
        .I4(ifid_inst[24]),
        .I5(\ex_reg2[31]_i_23_n_1 ),
        .O(\ex_reg2[31]_i_13_n_1 ));
  LUT6 #(
    .INIT(64'h0100010100000000)) 
    \ex_reg2[31]_i_16 
       (.I0(\ex_addr_off_reg[24] [1]),
        .I1(\ex_addr_off_reg[24] [0]),
        .I2(\memop_o[1]_i_3_n_1 ),
        .I3(ifid_inst[2]),
        .I4(ifid_inst[5]),
        .I5(ifid_inst[4]),
        .O(\ex_reg2[31]_i_16_n_1 ));
  LUT5 #(
    .INIT(32'hFAFA6FF6)) 
    \ex_reg2[31]_i_18 
       (.I0(id_reg2_addr[3]),
        .I1(\mem_wd_reg[3] [2]),
        .I2(id_reg2_addr[1]),
        .I3(\mem_wd_reg[3] [1]),
        .I4(rst),
        .O(\ex_reg2[31]_i_18_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF1F1F1F00)) 
    \ex_reg2[31]_i_2 
       (.I0(ifid_inst[4]),
        .I1(ifid_inst[2]),
        .I2(\jump_type_o_reg[1]_i_4_n_1 ),
        .I3(\ex_reg2[31]_i_8_n_1 ),
        .I4(\ex_addr_off_reg[24] [0]),
        .I5(\ex_aluop[0]_i_2_n_1 ),
        .O(\ex_reg2[31]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h8008000000000000)) 
    \ex_reg2[31]_i_20 
       (.I0(\ex_reg2[31]_i_26_n_1 ),
        .I1(\ex_reg2[31]_i_27_n_1 ),
        .I2(\wb_wd_reg[4] [0]),
        .I3(id_reg2_addr[0]),
        .I4(\ex_reg2[31]_i_28_n_1 ),
        .I5(memwb_wreg),
        .O(\regfile0/rdata21 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ex_reg2[31]_i_21 
       (.I0(id_reg2_addr[3]),
        .I1(id_reg2_addr[1]),
        .I2(id_reg2_addr[0]),
        .I3(id_reg2_addr[4]),
        .I4(id_reg2_addr[2]),
        .O(\ex_reg2[31]_i_21_n_1 ));
  LUT6 #(
    .INIT(64'h0808080808080888)) 
    \ex_reg2[31]_i_22 
       (.I0(\ex_aluop[3]_i_3_n_1 ),
        .I1(ifid_inst[5]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(ifid_inst[4]),
        .I4(\jump_type_o_reg[1]_0 [1]),
        .I5(\jump_type_o_reg[1]_0 [0]),
        .O(id_reg2_read));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'h11111115)) 
    \ex_reg2[31]_i_23 
       (.I0(rst),
        .I1(\ex_addr_off_reg[24] [1]),
        .I2(ifid_inst[4]),
        .I3(\jump_type_o_reg[1]_0 [1]),
        .I4(\jump_type_o_reg[1]_0 [0]),
        .O(\ex_reg2[31]_i_23_n_1 ));
  LUT6 #(
    .INIT(64'h6555555555555555)) 
    \ex_reg2[31]_i_26 
       (.I0(\wb_wd_reg[4] [4]),
        .I1(\ex_aluop[0]_i_4_n_1 ),
        .I2(ifid_inst[1]),
        .I3(ifid_inst[0]),
        .I4(ifid_inst[24]),
        .I5(\ex_reg2[31]_i_23_n_1 ),
        .O(\ex_reg2[31]_i_26_n_1 ));
  LUT6 #(
    .INIT(64'h0000900033330393)) 
    \ex_reg2[31]_i_27 
       (.I0(ifid_inst[21]),
        .I1(\wb_wd_reg[4] [1]),
        .I2(\ex_reg2[31]_i_23_n_1 ),
        .I3(ifid_inst[22]),
        .I4(regs_reg_r2_0_31_0_5_i_6_n_1),
        .I5(\wb_wd_reg[4] [2]),
        .O(\ex_reg2[31]_i_27_n_1 ));
  LUT6 #(
    .INIT(64'h6555555555555555)) 
    \ex_reg2[31]_i_28 
       (.I0(\wb_wd_reg[4] [3]),
        .I1(\ex_aluop[0]_i_4_n_1 ),
        .I2(ifid_inst[1]),
        .I3(ifid_inst[0]),
        .I4(ifid_inst[23]),
        .I5(\ex_reg2[31]_i_23_n_1 ),
        .O(\ex_reg2[31]_i_28_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[31]_i_3 
       (.I0(\mem_wdata_reg[31] [24]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[31]_i_10_n_1 ),
        .O(\ex_reg2[31]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0200020000000200)) 
    \ex_reg2[31]_i_4 
       (.I0(\ex_reg2[31]_i_11_n_1 ),
        .I1(\ex_reg2[31]_i_12_n_1 ),
        .I2(\ex_reg2[31]_i_13_n_1 ),
        .I3(idex_wreg),
        .I4(\ex_wd_reg[4]_0 [2]),
        .I5(id_reg2_addr[2]),
        .O(\ex_reg2[31]_i_4_n_1 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \ex_reg2[31]_i_6 
       (.I0(id_reg2_addr[1]),
        .I1(id_reg2_addr[4]),
        .I2(id_reg2_addr[2]),
        .I3(id_reg2_addr[3]),
        .I4(id_reg2_addr[0]),
        .O(\ex_reg2[31]_i_6_n_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ex_reg2[31]_i_7 
       (.I0(\ex_reg2[31]_i_16_n_1 ),
        .I1(\ex_addr_off_reg[24] [5]),
        .O(\ex_reg2[31]_i_7_n_1 ));
  LUT6 #(
    .INIT(64'hFF0DFF0DFF0DFD0D)) 
    \ex_reg2[31]_i_8 
       (.I0(ifid_inst[5]),
        .I1(ifid_inst[2]),
        .I2(ifid_inst[4]),
        .I3(\ex_addr_off_reg[24] [1]),
        .I4(\jump_type_o_reg[1]_0 [1]),
        .I5(\jump_type_o_reg[1]_0 [0]),
        .O(\ex_reg2[31]_i_8_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000009099)) 
    \ex_reg2[31]_i_9 
       (.I0(id_reg2_addr[0]),
        .I1(mem_wd[0]),
        .I2(mem_wd[2]),
        .I3(id_reg2_addr[2]),
        .I4(\ex_reg2[31]_i_18_n_1 ),
        .I5(\mem_wd_reg[4] ),
        .O(\ex_reg2_reg[0] ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[3]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[3]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_20 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[3]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [3]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[3]_i_2 
       (.I0(\mem_wdata_reg[31] [3]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[3]_i_5_n_1 ),
        .O(\ex_reg2[3]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ex_reg2[3]_i_4 
       (.I0(\ex_reg2[30]_i_8_n_1 ),
        .I1(ifid_inst[23]),
        .I2(\ex_reg2[31]_i_16_n_1 ),
        .O(\ex_reg2[3]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[3]_i_5 
       (.I0(rdata20[3]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[3]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[3]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[4]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[4]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_23 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[4]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[4]_i_2 
       (.I0(\mem_wdata_reg[31] [4]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[4]_i_5_n_1 ),
        .O(\ex_reg2[4]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ex_reg2[4]_i_4 
       (.I0(\ex_reg2[31]_i_16_n_1 ),
        .I1(ifid_inst[24]),
        .I2(\ex_reg2[30]_i_8_n_1 ),
        .O(\ex_reg2[4]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[4]_i_5 
       (.I0(rdata20[4]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[4]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[4]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h4444444455544454)) 
    \ex_reg2[5]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[5]_i_2_n_1 ),
        .I2(\ex_reg2[5]_i_3_n_1 ),
        .I3(\ex_reg2[31]_i_4_n_1 ),
        .I4(\ex_alusel_reg[0]_24 ),
        .I5(\ex_reg2[31]_i_6_n_1 ),
        .O(\ex_reg2_reg[31] [5]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ex_reg2[5]_i_2 
       (.I0(\ex_reg2[30]_i_8_n_1 ),
        .I1(\ex_reg2[31]_i_16_n_1 ),
        .I2(ifid_inst[25]),
        .O(\ex_reg2[5]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[5]_i_3 
       (.I0(\mem_wdata_reg[31] [5]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[5]_i_5_n_1 ),
        .O(\ex_reg2[5]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[5]_i_5 
       (.I0(rdata20[5]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[5]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[5]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[6]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[6]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_25 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[6]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [6]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[6]_i_2 
       (.I0(\mem_wdata_reg[31] [6]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[6]_i_5_n_1 ),
        .O(\ex_reg2[6]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ex_reg2[6]_i_4 
       (.I0(\ex_reg2[31]_i_16_n_1 ),
        .I1(ifid_inst[26]),
        .I2(\ex_reg2[30]_i_8_n_1 ),
        .O(\ex_reg2[6]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[6]_i_5 
       (.I0(rdata20[6]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[6]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[6]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[7]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\ex_reg2[7]_i_2_n_1 ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_26 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[7]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [7]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ex_reg2[7]_i_2 
       (.I0(\mem_wdata_reg[31] [7]),
        .I1(\ex_reg2_reg[0] ),
        .I2(\ex_reg2[7]_i_5_n_1 ),
        .O(\ex_reg2[7]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ex_reg2[7]_i_4 
       (.I0(\ex_reg2[31]_i_16_n_1 ),
        .I1(ifid_inst[27]),
        .I2(\ex_reg2[30]_i_8_n_1 ),
        .O(\ex_reg2[7]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[7]_i_5 
       (.I0(rdata20[7]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[7]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2[7]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[8]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\mem_wdata_reg[8] ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_27 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[8]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ex_reg2[8]_i_4 
       (.I0(\ex_reg2[31]_i_16_n_1 ),
        .I1(ifid_inst[28]),
        .I2(\ex_reg2[30]_i_8_n_1 ),
        .O(\ex_reg2[8]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[8]_i_5 
       (.I0(rdata20[8]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[8]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2_reg[8] ));
  LUT6 #(
    .INIT(64'h0000540455555555)) 
    \ex_reg2[9]_i_1 
       (.I0(\ex_reg2[31]_i_2_n_1 ),
        .I1(\mem_wdata_reg[9] ),
        .I2(\ex_reg2[31]_i_4_n_1 ),
        .I3(\ex_alusel_reg[0]_28 ),
        .I4(\ex_reg2[31]_i_6_n_1 ),
        .I5(\ex_reg2[9]_i_4_n_1 ),
        .O(\ex_reg2_reg[31] [9]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ex_reg2[9]_i_4 
       (.I0(\ex_reg2[31]_i_16_n_1 ),
        .I1(ifid_inst[29]),
        .I2(\ex_reg2[30]_i_8_n_1 ),
        .O(\ex_reg2[9]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h00000000E2000000)) 
    \ex_reg2[9]_i_5 
       (.I0(rdata20[9]),
        .I1(\regfile0/rdata21 ),
        .I2(Q[9]),
        .I3(\ex_reg2[31]_i_21_n_1 ),
        .I4(id_reg2_read),
        .I5(rst),
        .O(\ex_reg2_reg[9] ));
  LUT5 #(
    .INIT(32'h08080888)) 
    \ex_wd[0]_i_1 
       (.I0(\ex_wd[4]_i_2_n_1 ),
        .I1(ifid_inst[7]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(\jump_type_o_reg[1]_0 [1]),
        .I4(\jump_type_o_reg[1]_0 [0]),
        .O(\ex_wd_reg[4] [0]));
  LUT5 #(
    .INIT(32'h08080888)) 
    \ex_wd[1]_i_1 
       (.I0(\ex_wd[4]_i_2_n_1 ),
        .I1(ifid_inst[8]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(\jump_type_o_reg[1]_0 [1]),
        .I4(\jump_type_o_reg[1]_0 [0]),
        .O(\ex_wd_reg[4] [1]));
  LUT5 #(
    .INIT(32'h08080888)) 
    \ex_wd[2]_i_1 
       (.I0(\ex_wd[4]_i_2_n_1 ),
        .I1(ifid_inst[9]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(\jump_type_o_reg[1]_0 [1]),
        .I4(\jump_type_o_reg[1]_0 [0]),
        .O(\ex_wd_reg[4] [2]));
  LUT5 #(
    .INIT(32'h08080888)) 
    \ex_wd[3]_i_1 
       (.I0(\ex_wd[4]_i_2_n_1 ),
        .I1(ifid_inst[10]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(\jump_type_o_reg[1]_0 [1]),
        .I4(\jump_type_o_reg[1]_0 [0]),
        .O(\ex_wd_reg[4] [3]));
  LUT5 #(
    .INIT(32'h57000000)) 
    \ex_wd[4]_i_1 
       (.I0(\ex_addr_off_reg[24] [1]),
        .I1(\jump_type_o_reg[1]_0 [1]),
        .I2(\jump_type_o_reg[1]_0 [0]),
        .I3(ifid_inst[11]),
        .I4(\ex_wd[4]_i_2_n_1 ),
        .O(\ex_wd_reg[4] [4]));
  LUT6 #(
    .INIT(64'h0000400011114001)) 
    \ex_wd[4]_i_2 
       (.I0(\ex_aluop[0]_i_2_n_1 ),
        .I1(\ex_addr_off_reg[24] [1]),
        .I2(ifid_inst[5]),
        .I3(ifid_inst[2]),
        .I4(ifid_inst[4]),
        .I5(\ex_addr_off_reg[24] [0]),
        .O(\ex_wd[4]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'hA8000000)) 
    ex_wreg_i_1
       (.I0(\jump_type_o_reg[0]_i_2_n_1 ),
        .I1(\jump_type_o_reg[0]_i_3_n_1 ),
        .I2(ex_wreg_i_2_n_1),
        .I3(ifid_inst[0]),
        .I4(ifid_inst[1]),
        .O(id_wreg));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'h03000301)) 
    ex_wreg_i_2
       (.I0(ifid_inst[5]),
        .I1(\ex_addr_off_reg[24] [1]),
        .I2(\ex_addr_off_reg[24] [0]),
        .I3(ifid_inst[4]),
        .I4(ifid_inst[2]),
        .O(ex_wreg_i_2_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[0] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_32 ),
        .Q(ifid_inst[0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[10] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_22 ),
        .Q(ifid_inst[10]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[11] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_21 ),
        .Q(ifid_inst[11]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[12] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_20 ),
        .Q(ifid_inst[12]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[13] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_19 ),
        .Q(ifid_inst[13]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[14] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_18 ),
        .Q(ifid_inst[14]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[15] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_17 ),
        .Q(ifid_inst[15]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[16] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_16 ),
        .Q(\ex_addr_off_reg[24] [2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[17] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_15 ),
        .Q(\ex_addr_off_reg[24] [3]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[18] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_14 ),
        .Q(ifid_inst[18]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[19] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_13 ),
        .Q(ifid_inst[19]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[1] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_31 ),
        .Q(ifid_inst[1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[20] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_12 ),
        .Q(\ex_addr_off_reg[24] [4]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[21] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_11 ),
        .Q(ifid_inst[21]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[22] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_10 ),
        .Q(ifid_inst[22]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[23] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_9 ),
        .Q(ifid_inst[23]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[24] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_8 ),
        .Q(ifid_inst[24]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[25] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_7 ),
        .Q(ifid_inst[25]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[26] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_6 ),
        .Q(ifid_inst[26]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[27] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_5 ),
        .Q(ifid_inst[27]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[28] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_4 ),
        .Q(ifid_inst[28]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[29] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_3 ),
        .Q(ifid_inst[29]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[2] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_30 ),
        .Q(ifid_inst[2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[30] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_2 ),
        .Q(ifid_inst[30]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[31] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_1 ),
        .Q(\ex_addr_off_reg[24] [5]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[3] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_29 ),
        .Q(\ex_addr_off_reg[24] [0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[4] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_28 ),
        .Q(ifid_inst[4]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[5] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_27 ),
        .Q(ifid_inst[5]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[6] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_26 ),
        .Q(\ex_addr_off_reg[24] [1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[7] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_25 ),
        .Q(ifid_inst[7]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[8] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_24 ),
        .Q(ifid_inst[8]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_inst_reg[9] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\jump_type_o_reg[1]_23 ),
        .Q(ifid_inst[9]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[0] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [0]),
        .Q(ifid_pc[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[10] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [10]),
        .Q(ifid_pc[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[11] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [11]),
        .Q(ifid_pc[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[12] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [12]),
        .Q(ifid_pc[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[13] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [13]),
        .Q(ifid_pc[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[14] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [14]),
        .Q(ifid_pc[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[15] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [15]),
        .Q(ifid_pc[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[16] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [16]),
        .Q(ifid_pc[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[17] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [17]),
        .Q(ifid_pc[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[18] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [18]),
        .Q(ifid_pc[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[19] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [19]),
        .Q(ifid_pc[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[1] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [1]),
        .Q(ifid_pc[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[20] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [20]),
        .Q(ifid_pc[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[21] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [21]),
        .Q(ifid_pc[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[22] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [22]),
        .Q(ifid_pc[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[23] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [23]),
        .Q(ifid_pc[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[24] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [24]),
        .Q(ifid_pc[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[25] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [25]),
        .Q(ifid_pc[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[26] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [26]),
        .Q(ifid_pc[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[27] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [27]),
        .Q(ifid_pc[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[28] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [28]),
        .Q(ifid_pc[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[29] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [29]),
        .Q(ifid_pc[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[2] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [2]),
        .Q(ifid_pc[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[30] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [30]),
        .Q(ifid_pc[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[31] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [31]),
        .Q(ifid_pc[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[3] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [3]),
        .Q(ifid_pc[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[4] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [4]),
        .Q(ifid_pc[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[5] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [5]),
        .Q(ifid_pc[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[6] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [6]),
        .Q(ifid_pc[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[7] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [7]),
        .Q(ifid_pc[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[8] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [8]),
        .Q(ifid_pc[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \id_pc_reg[9] 
       (.C(clk_out1),
        .CE(p_0_in),
        .D(\pc_reg[31] [9]),
        .Q(ifid_pc[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \jump_type_o_reg[0]_i_1 
       (.I0(\jump_type_o_reg[0]_i_2_n_1 ),
        .I1(\jump_type_o_reg[0]_i_3_n_1 ),
        .I2(rst),
        .I3(ifid_inst[0]),
        .I4(ifid_inst[1]),
        .O(\jump_type_o_reg[1] [0]));
  LUT6 #(
    .INIT(64'hDDDDDDD0FFFFFFFF)) 
    \jump_type_o_reg[0]_i_2 
       (.I0(\ex_reg2[31]_i_4_n_1 ),
        .I1(\ex_reg2[31]_i_6_n_1 ),
        .I2(\jump_type_o_reg[0]_i_4_n_1 ),
        .I3(\jump_type_o_reg[0]_i_5_n_1 ),
        .I4(\jump_type_o_reg[1]_i_5_n_1 ),
        .I5(\memop_o_reg[1]_0 ),
        .O(\jump_type_o_reg[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    \jump_type_o_reg[0]_i_3 
       (.I0(ifid_inst[5]),
        .I1(\ex_addr_off_reg[24] [1]),
        .I2(\jump_type_o_reg[1]_0 [0]),
        .I3(\jump_type_o_reg[1]_0 [1]),
        .I4(ifid_inst[2]),
        .I5(ifid_inst[4]),
        .O(\jump_type_o_reg[0]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF6FF6FFFF)) 
    \jump_type_o_reg[0]_i_4 
       (.I0(id_reg1_addr[1]),
        .I1(\ex_wd_reg[4]_0 [1]),
        .I2(id_reg1_addr[2]),
        .I3(\ex_wd_reg[4]_0 [2]),
        .I4(idex_wreg),
        .I5(\jump_type_o_reg[0]_i_6_n_1 ),
        .O(\jump_type_o_reg[0]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h2FF2FFFFFFFF2FF2)) 
    \jump_type_o_reg[0]_i_5 
       (.I0(id_reg1_addr[0]),
        .I1(\ex_wd_reg[4]_0 [0]),
        .I2(\ex_wd_reg[4]_0 [3]),
        .I3(id_reg1_addr[3]),
        .I4(\ex_wd_reg[4]_0 [4]),
        .I5(id_reg1_addr[4]),
        .O(\jump_type_o_reg[0]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'h00A8AAAAAAAAAAAA)) 
    \jump_type_o_reg[0]_i_6 
       (.I0(\ex_wd_reg[4]_0 [0]),
        .I1(\ex_addr_off_reg[24] [1]),
        .I2(ifid_inst[2]),
        .I3(\jump_type_o_reg[1]_i_4_n_1 ),
        .I4(regs_reg_r1_0_31_0_5_i_9_n_1),
        .I5(ifid_inst[15]),
        .O(\jump_type_o_reg[0]_i_6_n_1 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \jump_type_o_reg[1]_i_1 
       (.I0(\jump_type_o_reg[1]_i_3_n_1 ),
        .I1(\ex_addr_off_reg[24] [0]),
        .I2(ifid_inst[2]),
        .I3(ifid_inst[0]),
        .I4(ifid_inst[1]),
        .I5(\jump_type_o_reg[1]_i_4_n_1 ),
        .O(\jump_type_o_reg[1] [1]));
  LUT6 #(
    .INIT(64'h00000000FD55FDFD)) 
    \jump_type_o_reg[1]_i_3 
       (.I0(\memop_o_reg[1]_0 ),
        .I1(\jump_type_o_reg[1]_i_5_n_1 ),
        .I2(\ex_reg1[31]_i_3_n_1 ),
        .I3(\ex_reg2[31]_i_6_n_1 ),
        .I4(\ex_reg2[31]_i_4_n_1 ),
        .I5(rst),
        .O(\jump_type_o_reg[1]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \jump_type_o_reg[1]_i_4 
       (.I0(\jump_type_o_reg[1]_0 [1]),
        .I1(\jump_type_o_reg[1]_0 [0]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(ifid_inst[5]),
        .I4(ifid_inst[4]),
        .O(\jump_type_o_reg[1]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h0101000001010001)) 
    \jump_type_o_reg[1]_i_5 
       (.I0(id_reg1_addr[1]),
        .I1(id_reg1_addr[2]),
        .I2(id_reg1_addr[4]),
        .I3(ifid_inst[15]),
        .I4(\jump_type_o_reg[1]_i_6_n_1 ),
        .I5(ifid_inst[18]),
        .O(\jump_type_o_reg[1]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hEEEE4EEEFFFFFFFF)) 
    \jump_type_o_reg[1]_i_6 
       (.I0(\ex_addr_off_reg[24] [1]),
        .I1(ifid_inst[2]),
        .I2(\jump_type_o_reg[0] ),
        .I3(ifid_inst[5]),
        .I4(ifid_inst[4]),
        .I5(regs_reg_r1_0_31_0_5_i_9_n_1),
        .O(\jump_type_o_reg[1]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \memfunct_o[0]_i_1 
       (.I0(\memfunct_o[2]_i_2_n_1 ),
        .I1(ifid_inst[12]),
        .I2(ifid_inst[1]),
        .O(\memfunct_o_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \memfunct_o[1]_i_1 
       (.I0(\memfunct_o[2]_i_2_n_1 ),
        .I1(ifid_inst[13]),
        .I2(ifid_inst[1]),
        .O(\memfunct_o_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \memfunct_o[2]_i_1 
       (.I0(\memfunct_o[2]_i_2_n_1 ),
        .I1(ifid_inst[14]),
        .I2(ifid_inst[1]),
        .O(\memfunct_o_reg[2] [2]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \memfunct_o[2]_i_2 
       (.I0(ifid_inst[2]),
        .I1(\ex_addr_off_reg[24] [1]),
        .I2(ifid_inst[4]),
        .I3(ifid_inst[0]),
        .I4(\ex_addr_off_reg[24] [0]),
        .O(\memfunct_o[2]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \memop_o[0]_i_1 
       (.I0(\jump_type_o_reg[1]_i_3_n_1 ),
        .I1(ifid_inst[5]),
        .I2(\memop_o[0]_i_2_n_1 ),
        .I3(\memop_o[1]_i_3_n_1 ),
        .I4(\ex_addr_off_reg[24] [0]),
        .I5(\ex_addr_off_reg[24] [1]),
        .O(\memop_o_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \memop_o[0]_i_2 
       (.I0(ifid_inst[2]),
        .I1(ifid_inst[4]),
        .O(\memop_o[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \memop_o[1]_i_1 
       (.I0(\jump_type_o_reg[1]_i_3_n_1 ),
        .I1(\memop_o[1]_i_2_n_1 ),
        .I2(ifid_inst[5]),
        .I3(\ex_addr_off_reg[24] [1]),
        .I4(ifid_inst[4]),
        .I5(\memop_o[1]_i_3_n_1 ),
        .O(\memop_o_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \memop_o[1]_i_2 
       (.I0(ifid_inst[2]),
        .I1(\ex_addr_off_reg[24] [0]),
        .O(\memop_o[1]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \memop_o[1]_i_3 
       (.I0(ifid_inst[1]),
        .I1(ifid_inst[0]),
        .O(\memop_o[1]_i_3_n_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pc[31]_i_1 
       (.I0(\id_pc_reg[0]_0 ),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'h0000FF8F)) 
    \pc[31]_i_3 
       (.I0(\jump_type_o_reg[1]_i_4_n_1 ),
        .I1(\pc[31]_i_5_n_1 ),
        .I2(\jump_type_o_reg[0]_i_2_n_1 ),
        .I3(cache_busy),
        .I4(rst),
        .O(\id_pc_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h8088)) 
    \pc[31]_i_5 
       (.I0(ifid_inst[0]),
        .I1(ifid_inst[1]),
        .I2(ifid_inst[2]),
        .I3(\ex_addr_off_reg[24] [0]),
        .O(\pc[31]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    regs_reg_r1_0_31_0_5_i_10
       (.I0(ifid_inst[4]),
        .I1(ifid_inst[5]),
        .I2(\ex_addr_off_reg[24] [1]),
        .O(regs_reg_r1_0_31_0_5_i_10_n_1));
  LUT5 #(
    .INIT(32'hF1000000)) 
    regs_reg_r1_0_31_0_5_i_2
       (.I0(\ex_addr_off_reg[24] [1]),
        .I1(ifid_inst[2]),
        .I2(\jump_type_o_reg[1]_i_4_n_1 ),
        .I3(regs_reg_r1_0_31_0_5_i_9_n_1),
        .I4(ifid_inst[19]),
        .O(id_reg1_addr[4]));
  LUT5 #(
    .INIT(32'h80808088)) 
    regs_reg_r1_0_31_0_5_i_3
       (.I0(ifid_inst[18]),
        .I1(regs_reg_r1_0_31_0_5_i_9_n_1),
        .I2(\jump_type_o_reg[1]_i_4_n_1 ),
        .I3(ifid_inst[2]),
        .I4(\ex_addr_off_reg[24] [1]),
        .O(id_reg1_addr[3]));
  LUT6 #(
    .INIT(64'h0008888800080008)) 
    regs_reg_r1_0_31_0_5_i_4
       (.I0(regs_reg_r1_0_31_0_5_i_9_n_1),
        .I1(\ex_addr_off_reg[24] [3]),
        .I2(ifid_inst[2]),
        .I3(\ex_addr_off_reg[24] [1]),
        .I4(regs_reg_r1_0_31_0_5_i_10_n_1),
        .I5(\jump_type_o_reg[0] ),
        .O(id_reg1_addr[2]));
  LUT6 #(
    .INIT(64'h0008888800080008)) 
    regs_reg_r1_0_31_0_5_i_5
       (.I0(regs_reg_r1_0_31_0_5_i_9_n_1),
        .I1(\ex_addr_off_reg[24] [2]),
        .I2(ifid_inst[2]),
        .I3(\ex_addr_off_reg[24] [1]),
        .I4(regs_reg_r1_0_31_0_5_i_10_n_1),
        .I5(\jump_type_o_reg[0] ),
        .O(id_reg1_addr[1]));
  LUT5 #(
    .INIT(32'h80808088)) 
    regs_reg_r1_0_31_0_5_i_6
       (.I0(ifid_inst[15]),
        .I1(regs_reg_r1_0_31_0_5_i_9_n_1),
        .I2(\jump_type_o_reg[1]_i_4_n_1 ),
        .I3(ifid_inst[2]),
        .I4(\ex_addr_off_reg[24] [1]),
        .O(id_reg1_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    regs_reg_r1_0_31_0_5_i_9
       (.I0(\ex_addr_off_reg[24] [0]),
        .I1(ifid_inst[1]),
        .I2(ifid_inst[0]),
        .I3(rst),
        .O(regs_reg_r1_0_31_0_5_i_9_n_1));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    regs_reg_r2_0_31_0_5_i_1
       (.I0(\jump_type_o_reg[0] ),
        .I1(ifid_inst[4]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(rst),
        .I4(ifid_inst[24]),
        .I5(regs_reg_r2_0_31_0_5_i_6_n_1),
        .O(id_reg2_addr[4]));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    regs_reg_r2_0_31_0_5_i_2
       (.I0(\jump_type_o_reg[0] ),
        .I1(ifid_inst[4]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(rst),
        .I4(ifid_inst[23]),
        .I5(regs_reg_r2_0_31_0_5_i_6_n_1),
        .O(id_reg2_addr[3]));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    regs_reg_r2_0_31_0_5_i_3
       (.I0(\jump_type_o_reg[0] ),
        .I1(ifid_inst[4]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(rst),
        .I4(ifid_inst[22]),
        .I5(regs_reg_r2_0_31_0_5_i_6_n_1),
        .O(id_reg2_addr[2]));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    regs_reg_r2_0_31_0_5_i_4
       (.I0(\jump_type_o_reg[0] ),
        .I1(ifid_inst[4]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(rst),
        .I4(ifid_inst[21]),
        .I5(regs_reg_r2_0_31_0_5_i_6_n_1),
        .O(id_reg2_addr[1]));
  LUT6 #(
    .INIT(64'h00000000002F0000)) 
    regs_reg_r2_0_31_0_5_i_5
       (.I0(\jump_type_o_reg[0] ),
        .I1(ifid_inst[4]),
        .I2(\ex_addr_off_reg[24] [1]),
        .I3(rst),
        .I4(\ex_addr_off_reg[24] [4]),
        .I5(regs_reg_r2_0_31_0_5_i_6_n_1),
        .O(id_reg2_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    regs_reg_r2_0_31_0_5_i_6
       (.I0(ifid_inst[0]),
        .I1(ifid_inst[1]),
        .I2(ifid_inst[2]),
        .I3(ifid_inst[5]),
        .I4(\ex_addr_off_reg[24] [0]),
        .O(regs_reg_r2_0_31_0_5_i_6_n_1));
endmodule

module mem
   (p_1_in,
    \buffer_reg[0][3] ,
    Q,
    D,
    E,
    rst_BUFG,
    \mem_addr_reg[1] );
  output [7:0]p_1_in;
  output [3:0]\buffer_reg[0][3] ;
  input [1:0]Q;
  input [31:0]D;
  input [0:0]E;
  input rst_BUFG;
  input [3:0]\mem_addr_reg[1] ;

  wire [31:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [3:0]\buffer_reg[0][3] ;
  wire [3:0]\mem_addr_reg[1] ;
  wire [31:0]mem_write_data_value;
  wire [7:0]p_1_in;
  wire rst_BUFG;

  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \uart_send_data_reg[0]_i_5 
       (.I0(mem_write_data_value[16]),
        .I1(mem_write_data_value[24]),
        .I2(mem_write_data_value[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(mem_write_data_value[8]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \uart_send_data_reg[1]_i_5 
       (.I0(mem_write_data_value[17]),
        .I1(mem_write_data_value[25]),
        .I2(mem_write_data_value[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(mem_write_data_value[9]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \uart_send_data_reg[2]_i_5 
       (.I0(mem_write_data_value[18]),
        .I1(mem_write_data_value[26]),
        .I2(mem_write_data_value[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(mem_write_data_value[10]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \uart_send_data_reg[3]_i_5 
       (.I0(mem_write_data_value[19]),
        .I1(mem_write_data_value[27]),
        .I2(mem_write_data_value[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(mem_write_data_value[11]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \uart_send_data_reg[4]_i_4 
       (.I0(mem_write_data_value[20]),
        .I1(mem_write_data_value[28]),
        .I2(mem_write_data_value[4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(mem_write_data_value[12]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \uart_send_data_reg[5]_i_4 
       (.I0(mem_write_data_value[21]),
        .I1(mem_write_data_value[29]),
        .I2(mem_write_data_value[5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(mem_write_data_value[13]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \uart_send_data_reg[6]_i_4 
       (.I0(mem_write_data_value[22]),
        .I1(mem_write_data_value[30]),
        .I2(mem_write_data_value[6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(mem_write_data_value[14]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \uart_send_data_reg[7]_i_7 
       (.I0(mem_write_data_value[23]),
        .I1(mem_write_data_value[31]),
        .I2(mem_write_data_value[7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(mem_write_data_value[15]),
        .O(p_1_in[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_mask_reg[0] 
       (.CLR(rst_BUFG),
        .D(\mem_addr_reg[1] [0]),
        .G(E),
        .GE(1'b1),
        .Q(\buffer_reg[0][3] [0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_mask_reg[1] 
       (.CLR(rst_BUFG),
        .D(\mem_addr_reg[1] [1]),
        .G(E),
        .GE(1'b1),
        .Q(\buffer_reg[0][3] [1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_mask_reg[2] 
       (.CLR(rst_BUFG),
        .D(\mem_addr_reg[1] [2]),
        .G(E),
        .GE(1'b1),
        .Q(\buffer_reg[0][3] [2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_mask_reg[3] 
       (.CLR(rst_BUFG),
        .D(\mem_addr_reg[1] [3]),
        .G(E),
        .GE(1'b1),
        .Q(\buffer_reg[0][3] [3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[0] 
       (.CLR(rst_BUFG),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[10] 
       (.CLR(rst_BUFG),
        .D(D[10]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[11] 
       (.CLR(rst_BUFG),
        .D(D[11]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[12] 
       (.CLR(rst_BUFG),
        .D(D[12]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[13] 
       (.CLR(rst_BUFG),
        .D(D[13]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[13]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[14] 
       (.CLR(rst_BUFG),
        .D(D[14]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[15] 
       (.CLR(rst_BUFG),
        .D(D[15]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[15]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[16] 
       (.CLR(rst_BUFG),
        .D(D[16]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[16]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[17] 
       (.CLR(rst_BUFG),
        .D(D[17]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[17]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[18] 
       (.CLR(rst_BUFG),
        .D(D[18]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[18]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[19] 
       (.CLR(rst_BUFG),
        .D(D[19]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[19]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[1] 
       (.CLR(rst_BUFG),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[20] 
       (.CLR(rst_BUFG),
        .D(D[20]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[20]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[21] 
       (.CLR(rst_BUFG),
        .D(D[21]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[21]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[22] 
       (.CLR(rst_BUFG),
        .D(D[22]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[22]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[23] 
       (.CLR(rst_BUFG),
        .D(D[23]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[23]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[24] 
       (.CLR(rst_BUFG),
        .D(D[24]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[24]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[25] 
       (.CLR(rst_BUFG),
        .D(D[25]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[25]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[26] 
       (.CLR(rst_BUFG),
        .D(D[26]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[26]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[27] 
       (.CLR(rst_BUFG),
        .D(D[27]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[27]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[28] 
       (.CLR(rst_BUFG),
        .D(D[28]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[28]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[29] 
       (.CLR(rst_BUFG),
        .D(D[29]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[29]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[2] 
       (.CLR(rst_BUFG),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[30] 
       (.CLR(rst_BUFG),
        .D(D[30]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[30]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[31] 
       (.CLR(rst_BUFG),
        .D(D[31]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[31]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[3] 
       (.CLR(rst_BUFG),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[4] 
       (.CLR(rst_BUFG),
        .D(D[4]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[5] 
       (.CLR(rst_BUFG),
        .D(D[5]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[6] 
       (.CLR(rst_BUFG),
        .D(D[6]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[7] 
       (.CLR(rst_BUFG),
        .D(D[7]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[8] 
       (.CLR(rst_BUFG),
        .D(D[8]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \write_data_value_reg[9] 
       (.CLR(rst_BUFG),
        .D(D[9]),
        .G(E),
        .GE(1'b1),
        .Q(mem_write_data_value[9]));
endmodule

module mem_wb
   (memwb_wreg,
    p_0_in1_out,
    Q,
    \ex_reg2_reg[31] ,
    rst_BUFG,
    E,
    exmem_wreg,
    clk_out1,
    \FSM_sequential_cur_status_reg[2] ,
    rst,
    D,
    \mem_wd_reg[4] );
  output memwb_wreg;
  output p_0_in1_out;
  output [4:0]Q;
  output [31:0]\ex_reg2_reg[31] ;
  input rst_BUFG;
  input [0:0]E;
  input exmem_wreg;
  input clk_out1;
  input \FSM_sequential_cur_status_reg[2] ;
  input rst;
  input [31:0]D;
  input [4:0]\mem_wd_reg[4] ;

  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_sequential_cur_status_reg[2] ;
  wire [4:0]Q;
  wire clk_out1;
  wire [31:0]\ex_reg2_reg[31] ;
  wire exmem_wreg;
  wire [4:0]\mem_wd_reg[4] ;
  wire memwb_wreg;
  wire p_0_in1_out;
  wire regs_reg_r1_0_31_0_5_i_7_n_1;
  wire rst;
  wire rst_BUFG;

  LUT4 #(
    .INIT(16'h0008)) 
    regs_reg_r1_0_31_0_5_i_1
       (.I0(regs_reg_r1_0_31_0_5_i_7_n_1),
        .I1(memwb_wreg),
        .I2(\FSM_sequential_cur_status_reg[2] ),
        .I3(rst),
        .O(p_0_in1_out));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    regs_reg_r1_0_31_0_5_i_7
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[2]),
        .O(regs_reg_r1_0_31_0_5_i_7_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wd_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(\mem_wd_reg[4] [0]),
        .Q(Q[0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wd_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(\mem_wd_reg[4] [1]),
        .Q(Q[1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wd_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(\mem_wd_reg[4] [2]),
        .Q(Q[2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wd_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(\mem_wd_reg[4] [3]),
        .Q(Q[3]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wd_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(\mem_wd_reg[4] [4]),
        .Q(Q[4]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(D[0]),
        .Q(\ex_reg2_reg[31] [0]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[10] 
       (.C(clk_out1),
        .CE(E),
        .D(D[10]),
        .Q(\ex_reg2_reg[31] [10]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[11] 
       (.C(clk_out1),
        .CE(E),
        .D(D[11]),
        .Q(\ex_reg2_reg[31] [11]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[12] 
       (.C(clk_out1),
        .CE(E),
        .D(D[12]),
        .Q(\ex_reg2_reg[31] [12]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[13] 
       (.C(clk_out1),
        .CE(E),
        .D(D[13]),
        .Q(\ex_reg2_reg[31] [13]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[14] 
       (.C(clk_out1),
        .CE(E),
        .D(D[14]),
        .Q(\ex_reg2_reg[31] [14]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[15] 
       (.C(clk_out1),
        .CE(E),
        .D(D[15]),
        .Q(\ex_reg2_reg[31] [15]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[16] 
       (.C(clk_out1),
        .CE(E),
        .D(D[16]),
        .Q(\ex_reg2_reg[31] [16]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[17] 
       (.C(clk_out1),
        .CE(E),
        .D(D[17]),
        .Q(\ex_reg2_reg[31] [17]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[18] 
       (.C(clk_out1),
        .CE(E),
        .D(D[18]),
        .Q(\ex_reg2_reg[31] [18]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[19] 
       (.C(clk_out1),
        .CE(E),
        .D(D[19]),
        .Q(\ex_reg2_reg[31] [19]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(D[1]),
        .Q(\ex_reg2_reg[31] [1]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[20] 
       (.C(clk_out1),
        .CE(E),
        .D(D[20]),
        .Q(\ex_reg2_reg[31] [20]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[21] 
       (.C(clk_out1),
        .CE(E),
        .D(D[21]),
        .Q(\ex_reg2_reg[31] [21]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[22] 
       (.C(clk_out1),
        .CE(E),
        .D(D[22]),
        .Q(\ex_reg2_reg[31] [22]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[23] 
       (.C(clk_out1),
        .CE(E),
        .D(D[23]),
        .Q(\ex_reg2_reg[31] [23]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[24] 
       (.C(clk_out1),
        .CE(E),
        .D(D[24]),
        .Q(\ex_reg2_reg[31] [24]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[25] 
       (.C(clk_out1),
        .CE(E),
        .D(D[25]),
        .Q(\ex_reg2_reg[31] [25]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[26] 
       (.C(clk_out1),
        .CE(E),
        .D(D[26]),
        .Q(\ex_reg2_reg[31] [26]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[27] 
       (.C(clk_out1),
        .CE(E),
        .D(D[27]),
        .Q(\ex_reg2_reg[31] [27]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[28] 
       (.C(clk_out1),
        .CE(E),
        .D(D[28]),
        .Q(\ex_reg2_reg[31] [28]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[29] 
       (.C(clk_out1),
        .CE(E),
        .D(D[29]),
        .Q(\ex_reg2_reg[31] [29]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(D[2]),
        .Q(\ex_reg2_reg[31] [2]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[30] 
       (.C(clk_out1),
        .CE(E),
        .D(D[30]),
        .Q(\ex_reg2_reg[31] [30]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[31] 
       (.C(clk_out1),
        .CE(E),
        .D(D[31]),
        .Q(\ex_reg2_reg[31] [31]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(D[3]),
        .Q(\ex_reg2_reg[31] [3]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(D[4]),
        .Q(\ex_reg2_reg[31] [4]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[5] 
       (.C(clk_out1),
        .CE(E),
        .D(D[5]),
        .Q(\ex_reg2_reg[31] [5]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[6] 
       (.C(clk_out1),
        .CE(E),
        .D(D[6]),
        .Q(\ex_reg2_reg[31] [6]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[7] 
       (.C(clk_out1),
        .CE(E),
        .D(D[7]),
        .Q(\ex_reg2_reg[31] [7]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[8] 
       (.C(clk_out1),
        .CE(E),
        .D(D[8]),
        .Q(\ex_reg2_reg[31] [8]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \wb_wdata_reg[9] 
       (.C(clk_out1),
        .CE(E),
        .D(D[9]),
        .Q(\ex_reg2_reg[31] [9]),
        .R(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    wb_wreg_reg
       (.C(clk_out1),
        .CE(E),
        .D(exmem_wreg),
        .Q(memwb_wreg),
        .R(rst_BUFG));
endmodule

module pc_reg
   (ce,
    pc0,
    Q,
    rst_BUFG,
    E,
    clk_out1,
    D);
  output ce;
  output [30:0]pc0;
  output [31:0]Q;
  input rst_BUFG;
  input [0:0]E;
  input clk_out1;
  input [31:0]D;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire ce;
  wire clk_out1;
  wire [30:0]pc0;
  wire \pc[4]_i_3_n_1 ;
  wire \pc_reg[12]_i_2_n_1 ;
  wire \pc_reg[12]_i_2_n_2 ;
  wire \pc_reg[12]_i_2_n_3 ;
  wire \pc_reg[12]_i_2_n_4 ;
  wire \pc_reg[16]_i_2_n_1 ;
  wire \pc_reg[16]_i_2_n_2 ;
  wire \pc_reg[16]_i_2_n_3 ;
  wire \pc_reg[16]_i_2_n_4 ;
  wire \pc_reg[20]_i_2_n_1 ;
  wire \pc_reg[20]_i_2_n_2 ;
  wire \pc_reg[20]_i_2_n_3 ;
  wire \pc_reg[20]_i_2_n_4 ;
  wire \pc_reg[24]_i_2_n_1 ;
  wire \pc_reg[24]_i_2_n_2 ;
  wire \pc_reg[24]_i_2_n_3 ;
  wire \pc_reg[24]_i_2_n_4 ;
  wire \pc_reg[28]_i_2_n_1 ;
  wire \pc_reg[28]_i_2_n_2 ;
  wire \pc_reg[28]_i_2_n_3 ;
  wire \pc_reg[28]_i_2_n_4 ;
  wire \pc_reg[31]_i_4_n_3 ;
  wire \pc_reg[31]_i_4_n_4 ;
  wire \pc_reg[4]_i_2_n_1 ;
  wire \pc_reg[4]_i_2_n_2 ;
  wire \pc_reg[4]_i_2_n_3 ;
  wire \pc_reg[4]_i_2_n_4 ;
  wire \pc_reg[8]_i_2_n_1 ;
  wire \pc_reg[8]_i_2_n_2 ;
  wire \pc_reg[8]_i_2_n_3 ;
  wire \pc_reg[8]_i_2_n_4 ;
  wire rst_BUFG;
  wire [3:2]\NLW_pc_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_pc_reg[31]_i_4_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    ce_reg
       (.C(clk_out1),
        .CE(E),
        .D(1'b1),
        .Q(ce),
        .R(rst_BUFG));
  LUT1 #(
    .INIT(2'h1)) 
    \pc[4]_i_3 
       (.I0(Q[2]),
        .O(\pc[4]_i_3_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[0] 
       (.C(clk_out1),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[10] 
       (.C(clk_out1),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[11] 
       (.C(clk_out1),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[12] 
       (.C(clk_out1),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .S(rst_BUFG));
  CARRY4 \pc_reg[12]_i_2 
       (.CI(\pc_reg[8]_i_2_n_1 ),
        .CO({\pc_reg[12]_i_2_n_1 ,\pc_reg[12]_i_2_n_2 ,\pc_reg[12]_i_2_n_3 ,\pc_reg[12]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[11:8]),
        .S(Q[12:9]));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[13] 
       (.C(clk_out1),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[14] 
       (.C(clk_out1),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[15] 
       (.C(clk_out1),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[16] 
       (.C(clk_out1),
        .CE(E),
        .D(D[16]),
        .Q(Q[16]),
        .S(rst_BUFG));
  CARRY4 \pc_reg[16]_i_2 
       (.CI(\pc_reg[12]_i_2_n_1 ),
        .CO({\pc_reg[16]_i_2_n_1 ,\pc_reg[16]_i_2_n_2 ,\pc_reg[16]_i_2_n_3 ,\pc_reg[16]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[15:12]),
        .S(Q[16:13]));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[17] 
       (.C(clk_out1),
        .CE(E),
        .D(D[17]),
        .Q(Q[17]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[18] 
       (.C(clk_out1),
        .CE(E),
        .D(D[18]),
        .Q(Q[18]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[19] 
       (.C(clk_out1),
        .CE(E),
        .D(D[19]),
        .Q(Q[19]),
        .S(rst_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \pc_reg[1] 
       (.C(clk_out1),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[20] 
       (.C(clk_out1),
        .CE(E),
        .D(D[20]),
        .Q(Q[20]),
        .S(rst_BUFG));
  CARRY4 \pc_reg[20]_i_2 
       (.CI(\pc_reg[16]_i_2_n_1 ),
        .CO({\pc_reg[20]_i_2_n_1 ,\pc_reg[20]_i_2_n_2 ,\pc_reg[20]_i_2_n_3 ,\pc_reg[20]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[19:16]),
        .S(Q[20:17]));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[21] 
       (.C(clk_out1),
        .CE(E),
        .D(D[21]),
        .Q(Q[21]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[22] 
       (.C(clk_out1),
        .CE(E),
        .D(D[22]),
        .Q(Q[22]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[23] 
       (.C(clk_out1),
        .CE(E),
        .D(D[23]),
        .Q(Q[23]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[24] 
       (.C(clk_out1),
        .CE(E),
        .D(D[24]),
        .Q(Q[24]),
        .S(rst_BUFG));
  CARRY4 \pc_reg[24]_i_2 
       (.CI(\pc_reg[20]_i_2_n_1 ),
        .CO({\pc_reg[24]_i_2_n_1 ,\pc_reg[24]_i_2_n_2 ,\pc_reg[24]_i_2_n_3 ,\pc_reg[24]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[23:20]),
        .S(Q[24:21]));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[25] 
       (.C(clk_out1),
        .CE(E),
        .D(D[25]),
        .Q(Q[25]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[26] 
       (.C(clk_out1),
        .CE(E),
        .D(D[26]),
        .Q(Q[26]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[27] 
       (.C(clk_out1),
        .CE(E),
        .D(D[27]),
        .Q(Q[27]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[28] 
       (.C(clk_out1),
        .CE(E),
        .D(D[28]),
        .Q(Q[28]),
        .S(rst_BUFG));
  CARRY4 \pc_reg[28]_i_2 
       (.CI(\pc_reg[24]_i_2_n_1 ),
        .CO({\pc_reg[28]_i_2_n_1 ,\pc_reg[28]_i_2_n_2 ,\pc_reg[28]_i_2_n_3 ,\pc_reg[28]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[27:24]),
        .S(Q[28:25]));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[29] 
       (.C(clk_out1),
        .CE(E),
        .D(D[29]),
        .Q(Q[29]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[2] 
       (.C(clk_out1),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[30] 
       (.C(clk_out1),
        .CE(E),
        .D(D[30]),
        .Q(Q[30]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[31] 
       (.C(clk_out1),
        .CE(E),
        .D(D[31]),
        .Q(Q[31]),
        .S(rst_BUFG));
  CARRY4 \pc_reg[31]_i_4 
       (.CI(\pc_reg[28]_i_2_n_1 ),
        .CO({\NLW_pc_reg[31]_i_4_CO_UNCONNECTED [3:2],\pc_reg[31]_i_4_n_3 ,\pc_reg[31]_i_4_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_pc_reg[31]_i_4_O_UNCONNECTED [3],pc0[30:28]}),
        .S({1'b0,Q[31:29]}));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[3] 
       (.C(clk_out1),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[4] 
       (.C(clk_out1),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .S(rst_BUFG));
  CARRY4 \pc_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\pc_reg[4]_i_2_n_1 ,\pc_reg[4]_i_2_n_2 ,\pc_reg[4]_i_2_n_3 ,\pc_reg[4]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[2],1'b0}),
        .O(pc0[3:0]),
        .S({Q[4:3],\pc[4]_i_3_n_1 ,Q[1]}));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[5] 
       (.C(clk_out1),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[6] 
       (.C(clk_out1),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[7] 
       (.C(clk_out1),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .S(rst_BUFG));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[8] 
       (.C(clk_out1),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .S(rst_BUFG));
  CARRY4 \pc_reg[8]_i_2 
       (.CI(\pc_reg[4]_i_2_n_1 ),
        .CO({\pc_reg[8]_i_2_n_1 ,\pc_reg[8]_i_2_n_2 ,\pc_reg[8]_i_2_n_3 ,\pc_reg[8]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc0[7:4]),
        .S(Q[8:5]));
  FDSE #(
    .INIT(1'b1)) 
    \pc_reg[9] 
       (.C(clk_out1),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .S(rst_BUFG));
endmodule

module regfile
   (rdata10,
    rdata20,
    clk_out1,
    p_0_in1_out,
    wdata,
    id_reg1_addr,
    Q,
    id_reg2_addr);
  output [31:0]rdata10;
  output [31:0]rdata20;
  input clk_out1;
  input p_0_in1_out;
  input [31:0]wdata;
  input [4:0]id_reg1_addr;
  input [4:0]Q;
  input [4:0]id_reg2_addr;

  wire [4:0]Q;
  wire clk_out1;
  wire [4:0]id_reg1_addr;
  wire [4:0]id_reg2_addr;
  wire p_0_in1_out;
  wire [31:0]rdata10;
  wire [31:0]rdata20;
  wire [31:0]wdata;
  wire [1:0]NLW_regs_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_regs_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_UNIQ_BASE_ regs_reg_r1_0_31_0_5
       (.ADDRA(id_reg1_addr),
        .ADDRB(id_reg1_addr),
        .ADDRC(id_reg1_addr),
        .ADDRD(Q),
        .DIA(wdata[1:0]),
        .DIB(wdata[3:2]),
        .DIC(wdata[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rdata10[1:0]),
        .DOB(rdata10[3:2]),
        .DOC(rdata10[5:4]),
        .DOD(NLW_regs_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in1_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD1 regs_reg_r1_0_31_12_17
       (.ADDRA(id_reg1_addr),
        .ADDRB(id_reg1_addr),
        .ADDRC(id_reg1_addr),
        .ADDRD(Q),
        .DIA(wdata[13:12]),
        .DIB(wdata[15:14]),
        .DIC(wdata[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rdata10[13:12]),
        .DOB(rdata10[15:14]),
        .DOC(rdata10[17:16]),
        .DOD(NLW_regs_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in1_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD2 regs_reg_r1_0_31_18_23
       (.ADDRA(id_reg1_addr),
        .ADDRB(id_reg1_addr),
        .ADDRC(id_reg1_addr),
        .ADDRD(Q),
        .DIA(wdata[19:18]),
        .DIB(wdata[21:20]),
        .DIC(wdata[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rdata10[19:18]),
        .DOB(rdata10[21:20]),
        .DOC(rdata10[23:22]),
        .DOD(NLW_regs_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in1_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD3 regs_reg_r1_0_31_24_29
       (.ADDRA(id_reg1_addr),
        .ADDRB(id_reg1_addr),
        .ADDRC(id_reg1_addr),
        .ADDRD(Q),
        .DIA(wdata[25:24]),
        .DIB(wdata[27:26]),
        .DIC(wdata[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rdata10[25:24]),
        .DOB(rdata10[27:26]),
        .DOC(rdata10[29:28]),
        .DOD(NLW_regs_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in1_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD4 regs_reg_r1_0_31_30_31
       (.ADDRA(id_reg1_addr),
        .ADDRB(id_reg1_addr),
        .ADDRC(id_reg1_addr),
        .ADDRD(Q),
        .DIA(wdata[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rdata10[31:30]),
        .DOB(NLW_regs_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_regs_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_regs_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in1_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD5 regs_reg_r1_0_31_6_11
       (.ADDRA(id_reg1_addr),
        .ADDRB(id_reg1_addr),
        .ADDRC(id_reg1_addr),
        .ADDRD(Q),
        .DIA(wdata[7:6]),
        .DIB(wdata[9:8]),
        .DIC(wdata[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rdata10[7:6]),
        .DOB(rdata10[9:8]),
        .DOC(rdata10[11:10]),
        .DOD(NLW_regs_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in1_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD6 regs_reg_r2_0_31_0_5
       (.ADDRA(id_reg2_addr),
        .ADDRB(id_reg2_addr),
        .ADDRC(id_reg2_addr),
        .ADDRD(Q),
        .DIA(wdata[1:0]),
        .DIB(wdata[3:2]),
        .DIC(wdata[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rdata20[1:0]),
        .DOB(rdata20[3:2]),
        .DOC(rdata20[5:4]),
        .DOD(NLW_regs_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in1_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD7 regs_reg_r2_0_31_12_17
       (.ADDRA(id_reg2_addr),
        .ADDRB(id_reg2_addr),
        .ADDRC(id_reg2_addr),
        .ADDRD(Q),
        .DIA(wdata[13:12]),
        .DIB(wdata[15:14]),
        .DIC(wdata[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rdata20[13:12]),
        .DOB(rdata20[15:14]),
        .DOC(rdata20[17:16]),
        .DOD(NLW_regs_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in1_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD8 regs_reg_r2_0_31_18_23
       (.ADDRA(id_reg2_addr),
        .ADDRB(id_reg2_addr),
        .ADDRC(id_reg2_addr),
        .ADDRD(Q),
        .DIA(wdata[19:18]),
        .DIB(wdata[21:20]),
        .DIC(wdata[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rdata20[19:18]),
        .DOB(rdata20[21:20]),
        .DOC(rdata20[23:22]),
        .DOD(NLW_regs_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in1_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD9 regs_reg_r2_0_31_24_29
       (.ADDRA(id_reg2_addr),
        .ADDRB(id_reg2_addr),
        .ADDRC(id_reg2_addr),
        .ADDRD(Q),
        .DIA(wdata[25:24]),
        .DIB(wdata[27:26]),
        .DIC(wdata[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rdata20[25:24]),
        .DOB(rdata20[27:26]),
        .DOC(rdata20[29:28]),
        .DOD(NLW_regs_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in1_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD10 regs_reg_r2_0_31_30_31
       (.ADDRA(id_reg2_addr),
        .ADDRB(id_reg2_addr),
        .ADDRC(id_reg2_addr),
        .ADDRD(Q),
        .DIA(wdata[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rdata20[31:30]),
        .DOB(NLW_regs_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_regs_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_regs_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in1_out));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD11 regs_reg_r2_0_31_6_11
       (.ADDRA(id_reg2_addr),
        .ADDRB(id_reg2_addr),
        .ADDRC(id_reg2_addr),
        .ADDRD(Q),
        .DIA(wdata[7:6]),
        .DIB(wdata[9:8]),
        .DIC(wdata[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rdata20[7:6]),
        .DOB(rdata20[9:8]),
        .DOC(rdata20[11:10]),
        .DOD(NLW_regs_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_out1),
        .WE(p_0_in1_out));
endmodule

module risc32i
   (n_0_948_BUFG_inst_n_1,
    Tx,
    rst,
    rst_BUFG,
    clk_out1,
    E,
    Rx_IBUF);
  output n_0_948_BUFG_inst_n_1;
  output Tx;
  input rst;
  input rst_BUFG;
  input clk_out1;
  input [0:0]E;
  input Rx_IBUF;

  wire [0:0]E;
  wire Rx_IBUF;
  wire Tx;
  wire cache0_n_2;
  wire cache0_n_38;
  wire cache0_n_5;
  wire cache_busy;
  wire [31:0]cache_inst_value;
  wire [31:0]cache_read_data_value;
  wire clk_out1;
  wire [1:0]cur_disp;
  wire ex_mem0_n_10;
  wire ex_mem0_n_11;
  wire ex_mem0_n_110;
  wire ex_mem0_n_111;
  wire ex_mem0_n_112;
  wire ex_mem0_n_113;
  wire ex_mem0_n_114;
  wire ex_mem0_n_115;
  wire ex_mem0_n_116;
  wire ex_mem0_n_117;
  wire ex_mem0_n_118;
  wire ex_mem0_n_119;
  wire ex_mem0_n_12;
  wire ex_mem0_n_120;
  wire ex_mem0_n_121;
  wire ex_mem0_n_122;
  wire ex_mem0_n_123;
  wire ex_mem0_n_124;
  wire ex_mem0_n_125;
  wire ex_mem0_n_126;
  wire ex_mem0_n_127;
  wire ex_mem0_n_128;
  wire ex_mem0_n_129;
  wire ex_mem0_n_13;
  wire ex_mem0_n_130;
  wire ex_mem0_n_131;
  wire ex_mem0_n_132;
  wire ex_mem0_n_133;
  wire ex_mem0_n_134;
  wire ex_mem0_n_135;
  wire ex_mem0_n_136;
  wire ex_mem0_n_137;
  wire ex_mem0_n_138;
  wire ex_mem0_n_139;
  wire ex_mem0_n_14;
  wire ex_mem0_n_140;
  wire ex_mem0_n_141;
  wire ex_mem0_n_142;
  wire ex_mem0_n_143;
  wire ex_mem0_n_144;
  wire ex_mem0_n_145;
  wire ex_mem0_n_15;
  wire ex_mem0_n_16;
  wire ex_mem0_n_2;
  wire ex_mem0_n_22;
  wire ex_mem0_n_23;
  wire ex_mem0_n_24;
  wire ex_mem0_n_25;
  wire ex_mem0_n_26;
  wire ex_mem0_n_27;
  wire ex_mem0_n_28;
  wire ex_mem0_n_29;
  wire ex_mem0_n_3;
  wire ex_mem0_n_30;
  wire ex_mem0_n_31;
  wire ex_mem0_n_32;
  wire ex_mem0_n_33;
  wire ex_mem0_n_34;
  wire ex_mem0_n_35;
  wire ex_mem0_n_36;
  wire ex_mem0_n_4;
  wire ex_mem0_n_5;
  wire ex_mem0_n_6;
  wire ex_mem0_n_7;
  wire ex_mem0_n_8;
  wire ex_mem0_n_9;
  wire [31:0]ex_wdata;
  wire [31:0]exmem_addr;
  wire [0:0]exmem_memfunct;
  wire [1:0]exmem_memop;
  wire [4:0]exmem_wd;
  wire exmem_wreg;
  wire [31:0]id_addr_base;
  wire [24:0]id_addr_off;
  wire [3:1]id_aluop;
  wire [0:0]id_alusel;
  wire id_ex0_n_100;
  wire id_ex0_n_101;
  wire id_ex0_n_102;
  wire id_ex0_n_103;
  wire id_ex0_n_104;
  wire id_ex0_n_105;
  wire id_ex0_n_106;
  wire id_ex0_n_107;
  wire id_ex0_n_108;
  wire id_ex0_n_109;
  wire id_ex0_n_110;
  wire id_ex0_n_111;
  wire id_ex0_n_112;
  wire id_ex0_n_113;
  wire id_ex0_n_114;
  wire id_ex0_n_115;
  wire id_ex0_n_116;
  wire id_ex0_n_117;
  wire id_ex0_n_118;
  wire id_ex0_n_119;
  wire id_ex0_n_120;
  wire id_ex0_n_121;
  wire id_ex0_n_122;
  wire id_ex0_n_123;
  wire id_ex0_n_124;
  wire id_ex0_n_125;
  wire id_ex0_n_126;
  wire id_ex0_n_127;
  wire id_ex0_n_128;
  wire id_ex0_n_129;
  wire id_ex0_n_130;
  wire id_ex0_n_131;
  wire id_ex0_n_132;
  wire id_ex0_n_133;
  wire id_ex0_n_134;
  wire id_ex0_n_135;
  wire id_ex0_n_136;
  wire id_ex0_n_177;
  wire id_ex0_n_178;
  wire id_ex0_n_179;
  wire id_ex0_n_180;
  wire id_ex0_n_181;
  wire id_ex0_n_182;
  wire id_ex0_n_2;
  wire id_ex0_n_37;
  wire id_ex0_n_38;
  wire id_ex0_n_39;
  wire id_ex0_n_40;
  wire id_ex0_n_41;
  wire id_ex0_n_42;
  wire id_ex0_n_43;
  wire id_ex0_n_44;
  wire id_ex0_n_45;
  wire id_ex0_n_46;
  wire id_ex0_n_47;
  wire id_ex0_n_48;
  wire id_ex0_n_49;
  wire id_ex0_n_50;
  wire id_ex0_n_51;
  wire id_ex0_n_52;
  wire id_ex0_n_53;
  wire id_ex0_n_54;
  wire id_ex0_n_55;
  wire id_ex0_n_56;
  wire id_ex0_n_57;
  wire id_ex0_n_58;
  wire id_ex0_n_59;
  wire id_ex0_n_60;
  wire id_ex0_n_61;
  wire id_ex0_n_62;
  wire id_ex0_n_63;
  wire id_ex0_n_64;
  wire id_ex0_n_65;
  wire id_ex0_n_66;
  wire id_ex0_n_67;
  wire id_ex0_n_68;
  wire id_ex0_n_69;
  wire id_ex0_n_70;
  wire id_ex0_n_71;
  wire id_ex0_n_72;
  wire id_ex0_n_73;
  wire id_ex0_n_74;
  wire id_ex0_n_75;
  wire id_ex0_n_76;
  wire id_ex0_n_77;
  wire id_ex0_n_78;
  wire id_ex0_n_79;
  wire id_ex0_n_80;
  wire id_ex0_n_81;
  wire id_ex0_n_82;
  wire id_ex0_n_83;
  wire id_ex0_n_84;
  wire id_ex0_n_85;
  wire id_ex0_n_86;
  wire id_ex0_n_87;
  wire id_ex0_n_88;
  wire id_ex0_n_89;
  wire id_ex0_n_90;
  wire id_ex0_n_91;
  wire id_ex0_n_92;
  wire id_ex0_n_93;
  wire id_ex0_n_94;
  wire id_ex0_n_97;
  wire id_ex0_n_98;
  wire id_ex0_n_99;
  wire [1:0]id_jump_type;
  wire [2:0]id_memfunct;
  wire [1:0]id_memop;
  wire [31:0]id_reg1;
  wire [4:0]id_reg1_addr;
  wire [4:0]id_reg2_addr;
  wire [4:0]id_wd;
  wire id_wreg;
  wire [1:0]idex_jump_type;
  wire [2:0]idex_memfunct;
  wire [1:0]idex_memop;
  wire [4:0]idex_wd;
  wire idex_wreg;
  wire if_id0_n_1;
  wire if_id0_n_10;
  wire if_id0_n_11;
  wire if_id0_n_12;
  wire if_id0_n_13;
  wire if_id0_n_14;
  wire if_id0_n_15;
  wire if_id0_n_16;
  wire if_id0_n_166;
  wire if_id0_n_17;
  wire if_id0_n_18;
  wire if_id0_n_19;
  wire if_id0_n_2;
  wire if_id0_n_20;
  wire if_id0_n_21;
  wire if_id0_n_22;
  wire if_id0_n_23;
  wire if_id0_n_24;
  wire if_id0_n_25;
  wire if_id0_n_26;
  wire if_id0_n_27;
  wire if_id0_n_28;
  wire if_id0_n_29;
  wire if_id0_n_3;
  wire if_id0_n_30;
  wire if_id0_n_31;
  wire if_id0_n_32;
  wire if_id0_n_39;
  wire if_id0_n_4;
  wire if_id0_n_40;
  wire if_id0_n_41;
  wire if_id0_n_42;
  wire if_id0_n_43;
  wire if_id0_n_44;
  wire if_id0_n_45;
  wire if_id0_n_46;
  wire if_id0_n_5;
  wire if_id0_n_50;
  wire if_id0_n_51;
  wire if_id0_n_53;
  wire if_id0_n_54;
  wire if_id0_n_55;
  wire if_id0_n_56;
  wire if_id0_n_57;
  wire if_id0_n_58;
  wire if_id0_n_59;
  wire if_id0_n_6;
  wire if_id0_n_63;
  wire if_id0_n_64;
  wire if_id0_n_7;
  wire if_id0_n_70;
  wire if_id0_n_8;
  wire if_id0_n_9;
  wire [31:3]ifid_inst;
  wire mem_data_ce;
  wire mem_data_optype;
  wire mem_wb_n_2;
  wire [2:0]mem_wd;
  wire [31:0]mem_wdata;
  wire [3:0]mem_write_data_mask;
  wire [4:0]memwb_wd;
  wire [31:0]memwb_wdata;
  wire memwb_wreg;
  wire n_0_948_BUFG_inst_n_1;
  wire p_0_in;
  wire [31:0]p_1_in;
  wire [7:0]p_1_in_0;
  wire [31:1]pc0;
  wire pcreg_ce;
  wire [31:0]pcreg_pc;
  wire [31:0]rdata10;
  wire [31:0]rdata20;
  wire rst;
  wire rst_BUFG;

  cache cache0
       (.E(cache0_n_38),
        .Q(cur_disp),
        .Rx_IBUF(Rx_IBUF),
        .Tx(Tx),
        .cache_busy(cache_busy),
        .ce(pcreg_ce),
        .clk_out1(clk_out1),
        .\ex_reg1_reg[1] (cache0_n_2),
        .\id_inst_reg[31] (cache_inst_value),
        .\mem_addr_reg[1] (mem_write_data_mask),
        .\mem_addr_reg[31] (exmem_addr),
        .mem_data_ce(mem_data_ce),
        .mem_data_optype(mem_data_optype),
        .\memfunct_o_reg[0] (exmem_memfunct),
        .\memop_o_reg[1] (exmem_memop),
        .p_1_in(p_1_in_0),
        .pc(pcreg_pc),
        .rst(rst),
        .rst_BUFG(rst_BUFG),
        .\wb_wdata_reg[31] (cache_read_data_value),
        .\wb_wdata_reg[7] (cache0_n_5));
  ex_mem ex_mem0
       (.D(mem_wdata),
        .E(cache0_n_38),
        .Q(exmem_wd),
        .\buffer_reg[0][3] ({ex_mem0_n_110,ex_mem0_n_111,ex_mem0_n_112,ex_mem0_n_113}),
        .\buffer_reg[0][7] (exmem_addr),
        .\buffer_reg[0][7]_0 ({ex_mem0_n_114,ex_mem0_n_115,ex_mem0_n_116,ex_mem0_n_117,ex_mem0_n_118,ex_mem0_n_119,ex_mem0_n_120,ex_mem0_n_121,ex_mem0_n_122,ex_mem0_n_123,ex_mem0_n_124,ex_mem0_n_125,ex_mem0_n_126,ex_mem0_n_127,ex_mem0_n_128,ex_mem0_n_129,ex_mem0_n_130,ex_mem0_n_131,ex_mem0_n_132,ex_mem0_n_133,ex_mem0_n_134,ex_mem0_n_135,ex_mem0_n_136,ex_mem0_n_137,ex_mem0_n_138,ex_mem0_n_139,ex_mem0_n_140,ex_mem0_n_141,ex_mem0_n_142,ex_mem0_n_143,ex_mem0_n_144,ex_mem0_n_145}),
        .clk_out1(clk_out1),
        .\ex_addr_base_reg[10] (ex_mem0_n_6),
        .\ex_addr_base_reg[11] (ex_mem0_n_8),
        .\ex_addr_base_reg[12] (ex_mem0_n_10),
        .\ex_addr_base_reg[13] (ex_mem0_n_12),
        .\ex_addr_base_reg[14] (ex_mem0_n_14),
        .\ex_addr_base_reg[8] (ex_mem0_n_2),
        .\ex_addr_base_reg[9] (ex_mem0_n_4),
        .\ex_alusel_reg[0] (ex_wdata),
        .\ex_reg1_reg[16] (ex_mem0_n_36),
        .\ex_reg1_reg[17] (ex_mem0_n_35),
        .\ex_reg1_reg[18] (ex_mem0_n_34),
        .\ex_reg1_reg[19] (ex_mem0_n_33),
        .\ex_reg1_reg[20] (ex_mem0_n_32),
        .\ex_reg1_reg[21] (ex_mem0_n_31),
        .\ex_reg1_reg[22] (ex_mem0_n_30),
        .\ex_reg1_reg[23] (ex_mem0_n_29),
        .\ex_reg1_reg[24] (ex_mem0_n_28),
        .\ex_reg1_reg[25] (ex_mem0_n_27),
        .\ex_reg1_reg[26] (ex_mem0_n_26),
        .\ex_reg1_reg[27] (ex_mem0_n_25),
        .\ex_reg1_reg[28] (ex_mem0_n_24),
        .\ex_reg1_reg[29] (ex_mem0_n_23),
        .\ex_reg1_reg[31] (ex_mem0_n_22),
        .\ex_reg2_reg[0] (ex_mem0_n_16),
        .\ex_reg2_reg[10] (ex_mem0_n_7),
        .\ex_reg2_reg[11] (ex_mem0_n_9),
        .\ex_reg2_reg[12] (ex_mem0_n_11),
        .\ex_reg2_reg[13] (ex_mem0_n_13),
        .\ex_reg2_reg[14] (ex_mem0_n_15),
        .\ex_reg2_reg[8] (ex_mem0_n_3),
        .\ex_reg2_reg[9] (ex_mem0_n_5),
        .\ex_wd_reg[4] (idex_wd),
        .exmem_wreg(exmem_wreg),
        .\id_inst_reg[18] (if_id0_n_166),
        .\id_inst_reg[4] (if_id0_n_70),
        .id_reg1_addr({id_reg1_addr[4],id_reg1_addr[2]}),
        .id_reg2_addr({id_reg2_addr[4],id_reg2_addr[2]}),
        .idex_wreg(idex_wreg),
        .\mem_addr_reg[1]_0 (cache0_n_5),
        .mem_data_ce(mem_data_ce),
        .mem_data_optype(mem_data_optype),
        .mem_wd(mem_wd),
        .\memfunct_o_reg[2]_0 (idex_memfunct),
        .\memop_o_reg[1]_0 ({id_ex0_n_63,id_ex0_n_64,id_ex0_n_65,id_ex0_n_66,id_ex0_n_67,id_ex0_n_68,id_ex0_n_69,id_ex0_n_70,id_ex0_n_71,id_ex0_n_72,id_ex0_n_73,id_ex0_n_74,id_ex0_n_75,id_ex0_n_76,id_ex0_n_77,id_ex0_n_78,id_ex0_n_79,id_ex0_n_80,id_ex0_n_81,id_ex0_n_82,id_ex0_n_83,id_ex0_n_84,id_ex0_n_85,id_ex0_n_86,id_ex0_n_87,id_ex0_n_88,id_ex0_n_89,id_ex0_n_90,id_ex0_n_91,id_ex0_n_92,id_ex0_n_93,id_ex0_n_94}),
        .\memop_o_reg[1]_1 (idex_memop),
        .n_0_948_BUFG_inst_n_1(n_0_948_BUFG_inst_n_1),
        .\read_ptr_reg[2] (cache_read_data_value),
        .rst(rst),
        .rst_BUFG(rst_BUFG),
        .rst_reg(if_id0_n_59),
        .rst_reg_0(if_id0_n_58),
        .rst_reg_1(if_id0_n_57),
        .rst_reg_2(if_id0_n_56),
        .rst_reg_3(if_id0_n_55),
        .rst_reg_4(if_id0_n_54),
        .rst_reg_5(if_id0_n_53),
        .\wb_wdata_reg[0] (exmem_memop),
        .\wb_wdata_reg[10] (if_id0_n_42),
        .\wb_wdata_reg[11] (if_id0_n_43),
        .\wb_wdata_reg[12] (if_id0_n_44),
        .\wb_wdata_reg[13] (if_id0_n_45),
        .\wb_wdata_reg[14] (if_id0_n_46),
        .\wb_wdata_reg[31] (exmem_memfunct),
        .\wb_wdata_reg[8] (if_id0_n_40),
        .\wb_wdata_reg[9] (if_id0_n_41));
  id id0
       (.D({if_id0_n_63,if_id0_n_64}),
        .Q(id_jump_type),
        .rst_BUFG(rst_BUFG));
  id_ex id_ex0
       (.D({id_aluop,if_id0_n_50}),
        .E(cache0_n_38),
        .Q(idex_jump_type),
        .SR(id_ex0_n_182),
        .clk_out1(clk_out1),
        .\ex_addr_base_reg[11]_0 (id_ex0_n_105),
        .\ex_addr_off_reg[11]_0 (id_ex0_n_98),
        .\ex_addr_off_reg[16]_0 (id_ex0_n_100),
        .\ex_addr_off_reg[17]_0 (id_ex0_n_99),
        .\ex_addr_off_reg[17]_1 (id_ex0_n_101),
        .\ex_addr_off_reg[19]_0 (id_ex0_n_97),
        .\ex_addr_off_reg[4]_0 (id_ex0_n_102),
        .\ex_aluop_reg[2]_0 (id_ex0_n_103),
        .\ex_alusel_reg[0]_0 (id_reg1),
        .\ex_alusel_reg[0]_1 (id_addr_base),
        .\ex_reg2_reg[0]_0 (id_ex0_n_104),
        .\ex_reg2_reg[10]_0 (id_ex0_n_115),
        .\ex_reg2_reg[11]_0 (id_ex0_n_116),
        .\ex_reg2_reg[12]_0 (id_ex0_n_117),
        .\ex_reg2_reg[13]_0 (id_ex0_n_118),
        .\ex_reg2_reg[14]_0 (id_ex0_n_119),
        .\ex_reg2_reg[15]_0 (id_ex0_n_120),
        .\ex_reg2_reg[16]_0 (id_ex0_n_121),
        .\ex_reg2_reg[17]_0 (id_ex0_n_122),
        .\ex_reg2_reg[18]_0 (id_ex0_n_123),
        .\ex_reg2_reg[19]_0 (id_ex0_n_124),
        .\ex_reg2_reg[1]_0 (id_ex0_n_106),
        .\ex_reg2_reg[20]_0 (id_ex0_n_125),
        .\ex_reg2_reg[21]_0 (id_ex0_n_126),
        .\ex_reg2_reg[22]_0 (id_ex0_n_127),
        .\ex_reg2_reg[23]_0 (id_ex0_n_128),
        .\ex_reg2_reg[24]_0 (id_ex0_n_129),
        .\ex_reg2_reg[25]_0 (id_ex0_n_130),
        .\ex_reg2_reg[26]_0 (id_ex0_n_131),
        .\ex_reg2_reg[27]_0 (id_ex0_n_132),
        .\ex_reg2_reg[28]_0 (id_ex0_n_133),
        .\ex_reg2_reg[29]_0 (id_ex0_n_134),
        .\ex_reg2_reg[2]_0 (id_ex0_n_107),
        .\ex_reg2_reg[30]_0 (id_ex0_n_135),
        .\ex_reg2_reg[31]_0 (id_ex0_n_136),
        .\ex_reg2_reg[3]_0 (id_ex0_n_108),
        .\ex_reg2_reg[4]_0 (id_ex0_n_109),
        .\ex_reg2_reg[5]_0 (id_ex0_n_110),
        .\ex_reg2_reg[6]_0 (id_ex0_n_111),
        .\ex_reg2_reg[7]_0 (id_ex0_n_112),
        .\ex_reg2_reg[8]_0 (id_ex0_n_113),
        .\ex_reg2_reg[9]_0 (id_ex0_n_114),
        .\id_inst_reg[0] (id_ex0_n_181),
        .\id_inst_reg[10] (id_ex0_n_43),
        .\id_inst_reg[11] (id_ex0_n_44),
        .\id_inst_reg[12] (id_ex0_n_45),
        .\id_inst_reg[13] (id_ex0_n_178),
        .\id_inst_reg[14] (id_ex0_n_177),
        .\id_inst_reg[14]_0 (id_memfunct),
        .\id_inst_reg[15] (id_ex0_n_46),
        .\id_inst_reg[16] (id_ex0_n_47),
        .\id_inst_reg[17] (id_ex0_n_48),
        .\id_inst_reg[18] (id_ex0_n_49),
        .\id_inst_reg[19] (id_ex0_n_50),
        .\id_inst_reg[1] (id_ex0_n_180),
        .\id_inst_reg[20] (id_ex0_n_51),
        .\id_inst_reg[21] (id_ex0_n_52),
        .\id_inst_reg[22] (id_ex0_n_53),
        .\id_inst_reg[23] (id_ex0_n_54),
        .\id_inst_reg[24] (id_ex0_n_55),
        .\id_inst_reg[25] (id_ex0_n_56),
        .\id_inst_reg[26] (id_ex0_n_57),
        .\id_inst_reg[27] (id_ex0_n_58),
        .\id_inst_reg[28] (id_ex0_n_59),
        .\id_inst_reg[29] (id_ex0_n_60),
        .\id_inst_reg[2] (id_ex0_n_2),
        .\id_inst_reg[2]_0 ({if_id0_n_51,id_alusel}),
        .\id_inst_reg[30] (id_ex0_n_61),
        .\id_inst_reg[31] (id_ex0_n_62),
        .\id_inst_reg[31]_0 ({id_addr_off[24],id_addr_off[19:0]}),
        .\id_inst_reg[3] (id_ex0_n_37),
        .\id_inst_reg[3]_0 (id_jump_type),
        .\id_inst_reg[4] (id_ex0_n_179),
        .\id_inst_reg[4]_0 ({if_id0_n_1,if_id0_n_2,if_id0_n_3,if_id0_n_4,if_id0_n_5,if_id0_n_6,if_id0_n_7,if_id0_n_8,if_id0_n_9,if_id0_n_10,if_id0_n_11,if_id0_n_12,if_id0_n_13,if_id0_n_14,if_id0_n_15,if_id0_n_16,if_id0_n_17,if_id0_n_18,if_id0_n_19,if_id0_n_20,if_id0_n_21,if_id0_n_22,if_id0_n_23,if_id0_n_24,if_id0_n_25,if_id0_n_26,if_id0_n_27,if_id0_n_28,if_id0_n_29,if_id0_n_30,if_id0_n_31,if_id0_n_32}),
        .\id_inst_reg[5] (id_ex0_n_38),
        .\id_inst_reg[5]_0 (id_memop),
        .\id_inst_reg[6] (id_ex0_n_39),
        .\id_inst_reg[6]_0 (id_wd),
        .\id_inst_reg[7] (id_ex0_n_40),
        .\id_inst_reg[8] (id_ex0_n_41),
        .\id_inst_reg[9] (id_ex0_n_42),
        .id_wreg(id_wreg),
        .idex_wreg(idex_wreg),
        .ifid_inst({ifid_inst[31],ifid_inst[20],ifid_inst[17:16],ifid_inst[6],ifid_inst[3]}),
        .\mem_addr_reg[31] ({id_ex0_n_63,id_ex0_n_64,id_ex0_n_65,id_ex0_n_66,id_ex0_n_67,id_ex0_n_68,id_ex0_n_69,id_ex0_n_70,id_ex0_n_71,id_ex0_n_72,id_ex0_n_73,id_ex0_n_74,id_ex0_n_75,id_ex0_n_76,id_ex0_n_77,id_ex0_n_78,id_ex0_n_79,id_ex0_n_80,id_ex0_n_81,id_ex0_n_82,id_ex0_n_83,id_ex0_n_84,id_ex0_n_85,id_ex0_n_86,id_ex0_n_87,id_ex0_n_88,id_ex0_n_89,id_ex0_n_90,id_ex0_n_91,id_ex0_n_92,id_ex0_n_93,id_ex0_n_94}),
        .\mem_wd_reg[4] (idex_wd),
        .\mem_wdata_reg[31] (ex_wdata),
        .\memfunct_o_reg[2]_0 (idex_memfunct),
        .\memop_o_reg[1]_0 (idex_memop),
        .pc0(pc0),
        .\pc_reg[0] (pcreg_pc[0]),
        .\pc_reg[31] (p_1_in),
        .\read_ptr_reg[2] (cache_inst_value),
        .rst(rst),
        .rst_BUFG(rst_BUFG),
        .rst_reg(if_id0_n_39));
  if_id if_id0
       (.D({id_aluop,if_id0_n_50}),
        .Q(memwb_wdata),
        .SR(id_ex0_n_182),
        .cache_busy(cache_busy),
        .clk_out1(clk_out1),
        .\ex_addr_base_reg[10] (if_id0_n_57),
        .\ex_addr_base_reg[11] (if_id0_n_56),
        .\ex_addr_base_reg[12] (if_id0_n_55),
        .\ex_addr_base_reg[13] (if_id0_n_54),
        .\ex_addr_base_reg[14] (if_id0_n_53),
        .\ex_addr_base_reg[31] (id_addr_base),
        .\ex_addr_base_reg[8] (if_id0_n_59),
        .\ex_addr_base_reg[9] (if_id0_n_58),
        .\ex_addr_off_reg[24] ({ifid_inst[31],ifid_inst[20],ifid_inst[17:16],ifid_inst[6],ifid_inst[3]}),
        .\ex_addr_off_reg[24]_0 ({id_addr_off[24],id_addr_off[19:0]}),
        .\ex_alusel_reg[0] (id_ex0_n_136),
        .\ex_alusel_reg[0]_0 (id_ex0_n_117),
        .\ex_alusel_reg[0]_1 (id_ex0_n_119),
        .\ex_alusel_reg[0]_10 (id_ex0_n_132),
        .\ex_alusel_reg[0]_11 (id_ex0_n_133),
        .\ex_alusel_reg[0]_12 (id_ex0_n_134),
        .\ex_alusel_reg[0]_13 (id_ex0_n_135),
        .\ex_alusel_reg[0]_14 (id_ex0_n_128),
        .\ex_alusel_reg[0]_15 (id_ex0_n_125),
        .\ex_alusel_reg[0]_16 (id_ex0_n_124),
        .\ex_alusel_reg[0]_17 (id_ex0_n_122),
        .\ex_alusel_reg[0]_18 (id_ex0_n_118),
        .\ex_alusel_reg[0]_19 (id_ex0_n_116),
        .\ex_alusel_reg[0]_2 (id_ex0_n_120),
        .\ex_alusel_reg[0]_20 (id_ex0_n_108),
        .\ex_alusel_reg[0]_21 (id_ex0_n_107),
        .\ex_alusel_reg[0]_22 (id_ex0_n_106),
        .\ex_alusel_reg[0]_23 (id_ex0_n_109),
        .\ex_alusel_reg[0]_24 (id_ex0_n_110),
        .\ex_alusel_reg[0]_25 (id_ex0_n_111),
        .\ex_alusel_reg[0]_26 (id_ex0_n_112),
        .\ex_alusel_reg[0]_27 (id_ex0_n_113),
        .\ex_alusel_reg[0]_28 (id_ex0_n_114),
        .\ex_alusel_reg[0]_29 (id_ex0_n_115),
        .\ex_alusel_reg[0]_3 (id_ex0_n_121),
        .\ex_alusel_reg[0]_30 (ex_wdata),
        .\ex_alusel_reg[0]_4 (id_ex0_n_123),
        .\ex_alusel_reg[0]_5 (id_ex0_n_126),
        .\ex_alusel_reg[0]_6 (id_ex0_n_127),
        .\ex_alusel_reg[0]_7 (id_ex0_n_129),
        .\ex_alusel_reg[0]_8 (id_ex0_n_130),
        .\ex_alusel_reg[0]_9 (id_ex0_n_131),
        .\ex_alusel_reg[1] ({if_id0_n_51,id_alusel}),
        .\ex_reg1_reg[31] (id_reg1),
        .\ex_reg1_reg[31]_0 (if_id0_n_166),
        .\ex_reg2_reg[0] (if_id0_n_70),
        .\ex_reg2_reg[10] (if_id0_n_42),
        .\ex_reg2_reg[11] (if_id0_n_43),
        .\ex_reg2_reg[12] (if_id0_n_44),
        .\ex_reg2_reg[13] (if_id0_n_45),
        .\ex_reg2_reg[14] (if_id0_n_46),
        .\ex_reg2_reg[31] ({if_id0_n_1,if_id0_n_2,if_id0_n_3,if_id0_n_4,if_id0_n_5,if_id0_n_6,if_id0_n_7,if_id0_n_8,if_id0_n_9,if_id0_n_10,if_id0_n_11,if_id0_n_12,if_id0_n_13,if_id0_n_14,if_id0_n_15,if_id0_n_16,if_id0_n_17,if_id0_n_18,if_id0_n_19,if_id0_n_20,if_id0_n_21,if_id0_n_22,if_id0_n_23,if_id0_n_24,if_id0_n_25,if_id0_n_26,if_id0_n_27,if_id0_n_28,if_id0_n_29,if_id0_n_30,if_id0_n_31,if_id0_n_32}),
        .\ex_reg2_reg[8] (if_id0_n_40),
        .\ex_reg2_reg[9] (if_id0_n_41),
        .\ex_wd_reg[4] (id_wd),
        .\ex_wd_reg[4]_0 (idex_wd),
        .\id_inst_reg[16]_0 (id_ex0_n_100),
        .\id_inst_reg[17]_0 (id_ex0_n_101),
        .\id_inst_reg[20]_0 (id_ex0_n_98),
        .\id_inst_reg[31]_0 (id_ex0_n_99),
        .\id_inst_reg[3]_0 (id_ex0_n_97),
        .\id_inst_reg[6]_0 (id_ex0_n_102),
        .\id_pc_reg[0]_0 (if_id0_n_39),
        .id_reg1_addr(id_reg1_addr),
        .id_reg2_addr(id_reg2_addr),
        .id_wreg(id_wreg),
        .idex_wreg(idex_wreg),
        .\jump_type_o_reg[0] (id_ex0_n_103),
        .\jump_type_o_reg[1] ({if_id0_n_63,if_id0_n_64}),
        .\jump_type_o_reg[1]_0 (idex_jump_type),
        .\jump_type_o_reg[1]_1 (id_ex0_n_62),
        .\jump_type_o_reg[1]_10 (id_ex0_n_53),
        .\jump_type_o_reg[1]_11 (id_ex0_n_52),
        .\jump_type_o_reg[1]_12 (id_ex0_n_51),
        .\jump_type_o_reg[1]_13 (id_ex0_n_50),
        .\jump_type_o_reg[1]_14 (id_ex0_n_49),
        .\jump_type_o_reg[1]_15 (id_ex0_n_48),
        .\jump_type_o_reg[1]_16 (id_ex0_n_47),
        .\jump_type_o_reg[1]_17 (id_ex0_n_46),
        .\jump_type_o_reg[1]_18 (id_ex0_n_177),
        .\jump_type_o_reg[1]_19 (id_ex0_n_178),
        .\jump_type_o_reg[1]_2 (id_ex0_n_61),
        .\jump_type_o_reg[1]_20 (id_ex0_n_45),
        .\jump_type_o_reg[1]_21 (id_ex0_n_44),
        .\jump_type_o_reg[1]_22 (id_ex0_n_43),
        .\jump_type_o_reg[1]_23 (id_ex0_n_42),
        .\jump_type_o_reg[1]_24 (id_ex0_n_41),
        .\jump_type_o_reg[1]_25 (id_ex0_n_40),
        .\jump_type_o_reg[1]_26 (id_ex0_n_39),
        .\jump_type_o_reg[1]_27 (id_ex0_n_38),
        .\jump_type_o_reg[1]_28 (id_ex0_n_179),
        .\jump_type_o_reg[1]_29 (id_ex0_n_37),
        .\jump_type_o_reg[1]_3 (id_ex0_n_60),
        .\jump_type_o_reg[1]_30 (id_ex0_n_2),
        .\jump_type_o_reg[1]_31 (id_ex0_n_180),
        .\jump_type_o_reg[1]_32 (id_ex0_n_181),
        .\jump_type_o_reg[1]_4 (id_ex0_n_59),
        .\jump_type_o_reg[1]_5 (id_ex0_n_58),
        .\jump_type_o_reg[1]_6 (id_ex0_n_57),
        .\jump_type_o_reg[1]_7 (id_ex0_n_56),
        .\jump_type_o_reg[1]_8 (id_ex0_n_55),
        .\jump_type_o_reg[1]_9 (id_ex0_n_54),
        .mem_wd(mem_wd),
        .\mem_wd_reg[3] ({exmem_wd[3],exmem_wd[1:0]}),
        .\mem_wd_reg[4] (ex_mem0_n_16),
        .\mem_wd_reg[4]_0 (ex_mem0_n_22),
        .\mem_wdata_reg[10] (ex_mem0_n_7),
        .\mem_wdata_reg[10]_0 (ex_mem0_n_6),
        .\mem_wdata_reg[11] (ex_mem0_n_9),
        .\mem_wdata_reg[11]_0 (ex_mem0_n_8),
        .\mem_wdata_reg[12] (ex_mem0_n_11),
        .\mem_wdata_reg[12]_0 (ex_mem0_n_10),
        .\mem_wdata_reg[13] (ex_mem0_n_13),
        .\mem_wdata_reg[13]_0 (ex_mem0_n_12),
        .\mem_wdata_reg[14] (ex_mem0_n_15),
        .\mem_wdata_reg[14]_0 (ex_mem0_n_14),
        .\mem_wdata_reg[16] (ex_mem0_n_36),
        .\mem_wdata_reg[17] (ex_mem0_n_35),
        .\mem_wdata_reg[18] (ex_mem0_n_34),
        .\mem_wdata_reg[19] (ex_mem0_n_33),
        .\mem_wdata_reg[20] (ex_mem0_n_32),
        .\mem_wdata_reg[21] (ex_mem0_n_31),
        .\mem_wdata_reg[22] (ex_mem0_n_30),
        .\mem_wdata_reg[23] (ex_mem0_n_29),
        .\mem_wdata_reg[24] (ex_mem0_n_28),
        .\mem_wdata_reg[25] (ex_mem0_n_27),
        .\mem_wdata_reg[26] (ex_mem0_n_26),
        .\mem_wdata_reg[27] (ex_mem0_n_25),
        .\mem_wdata_reg[28] (ex_mem0_n_24),
        .\mem_wdata_reg[29] (ex_mem0_n_23),
        .\mem_wdata_reg[31] ({mem_wdata[31:15],mem_wdata[7:0]}),
        .\mem_wdata_reg[8] (ex_mem0_n_3),
        .\mem_wdata_reg[8]_0 (ex_mem0_n_2),
        .\mem_wdata_reg[9] (ex_mem0_n_5),
        .\mem_wdata_reg[9]_0 (ex_mem0_n_4),
        .\memfunct_o_reg[2] (id_memfunct),
        .\memop_o_reg[1] (id_memop),
        .\memop_o_reg[1]_0 (id_ex0_n_105),
        .memwb_wreg(memwb_wreg),
        .p_0_in(p_0_in),
        .\pc_reg[31] (pcreg_pc),
        .rdata10(rdata10),
        .rdata20(rdata20),
        .rst(rst),
        .rst_BUFG(rst_BUFG),
        .rst_reg(id_ex0_n_104),
        .\wb_wd_reg[4] (memwb_wd));
  mem mem0
       (.D({ex_mem0_n_114,ex_mem0_n_115,ex_mem0_n_116,ex_mem0_n_117,ex_mem0_n_118,ex_mem0_n_119,ex_mem0_n_120,ex_mem0_n_121,ex_mem0_n_122,ex_mem0_n_123,ex_mem0_n_124,ex_mem0_n_125,ex_mem0_n_126,ex_mem0_n_127,ex_mem0_n_128,ex_mem0_n_129,ex_mem0_n_130,ex_mem0_n_131,ex_mem0_n_132,ex_mem0_n_133,ex_mem0_n_134,ex_mem0_n_135,ex_mem0_n_136,ex_mem0_n_137,ex_mem0_n_138,ex_mem0_n_139,ex_mem0_n_140,ex_mem0_n_141,ex_mem0_n_142,ex_mem0_n_143,ex_mem0_n_144,ex_mem0_n_145}),
        .E(E),
        .Q(cur_disp),
        .\buffer_reg[0][3] (mem_write_data_mask),
        .\mem_addr_reg[1] ({ex_mem0_n_110,ex_mem0_n_111,ex_mem0_n_112,ex_mem0_n_113}),
        .p_1_in(p_1_in_0),
        .rst_BUFG(rst_BUFG));
  mem_wb mem_wb
       (.D(mem_wdata),
        .E(cache0_n_38),
        .\FSM_sequential_cur_status_reg[2] (cache0_n_2),
        .Q(memwb_wd),
        .clk_out1(clk_out1),
        .\ex_reg2_reg[31] (memwb_wdata),
        .exmem_wreg(exmem_wreg),
        .\mem_wd_reg[4] (exmem_wd),
        .memwb_wreg(memwb_wreg),
        .p_0_in1_out(mem_wb_n_2),
        .rst(rst),
        .rst_BUFG(rst_BUFG));
  pc_reg pc_reg0
       (.D(p_1_in),
        .E(p_0_in),
        .Q(pcreg_pc),
        .ce(pcreg_ce),
        .clk_out1(clk_out1),
        .pc0(pc0),
        .rst_BUFG(rst_BUFG));
  regfile regfile0
       (.Q(memwb_wd),
        .clk_out1(clk_out1),
        .id_reg1_addr(id_reg1_addr),
        .id_reg2_addr(id_reg2_addr),
        .p_0_in1_out(mem_wb_n_2),
        .rdata10(rdata10),
        .rdata20(rdata20),
        .wdata(memwb_wdata));
endmodule

module uart_comm
   (Tx,
    E,
    D,
    \wb_wdata_reg[31] ,
    \cur_disp_reg[2] ,
    \id_inst_reg[24] ,
    \id_inst_reg[7] ,
    clk_out1,
    rst_BUFG,
    out,
    mem_data_ce,
    Q,
    mem_data_optype,
    rst,
    \memop_o_reg[1] ,
    Rx_IBUF,
    \FSM_sequential_cur_status_reg[2] ,
    \FSM_sequential_cur_status_reg[1] ,
    ce,
    ce_reg,
    \cur_disp_reg[0] ,
    \cur_disp_reg[1] ,
    \cur_disp_reg[0]_0 ,
    \cur_disp_reg[0]_1 ,
    \FSM_sequential_cur_status_reg[2]_0 );
  output Tx;
  output [0:0]E;
  output [2:0]D;
  output [3:0]\wb_wdata_reg[31] ;
  output [2:0]\cur_disp_reg[2] ;
  output [3:0]\id_inst_reg[24] ;
  output [7:0]\id_inst_reg[7] ;
  input clk_out1;
  input rst_BUFG;
  input [2:0]out;
  input mem_data_ce;
  input [2:0]Q;
  input mem_data_optype;
  input rst;
  input [1:0]\memop_o_reg[1] ;
  input Rx_IBUF;
  input \FSM_sequential_cur_status_reg[2] ;
  input \FSM_sequential_cur_status_reg[1] ;
  input ce;
  input ce_reg;
  input \cur_disp_reg[0] ;
  input \cur_disp_reg[1] ;
  input \cur_disp_reg[0]_0 ;
  input \cur_disp_reg[0]_1 ;
  input [7:0]\FSM_sequential_cur_status_reg[2]_0 ;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_cur_status_reg[1] ;
  wire \FSM_sequential_cur_status_reg[2] ;
  wire [7:0]\FSM_sequential_cur_status_reg[2]_0 ;
  wire \FSM_sequential_recv_status[0]_i_1_n_1 ;
  wire \FSM_sequential_recv_status[1]_i_1_n_1 ;
  wire \FSM_sequential_recv_status[2]_i_1_n_1 ;
  wire \FSM_sequential_recv_status[2]_i_2_n_1 ;
  wire \FSM_sequential_send_status[1]_i_2_n_1 ;
  wire [2:0]Q;
  wire Rx_IBUF;
  wire Tx;
  wire Tx_1;
  wire \__0/i__n_1 ;
  wire [7:0]buffer;
  wire [3:0]buffer_size_reg__0;
  wire ce;
  wire ce_reg;
  wire clk_out1;
  wire [31:0]counter;
  wire \counter[31]_i_2_n_1 ;
  wire \counter[31]_i_4_n_1 ;
  wire \counter[31]_i_5_n_1 ;
  wire \counter[31]_i_6_n_1 ;
  wire \counter[31]_i_7_n_1 ;
  wire \counter[31]_i_8_n_1 ;
  wire \counter[31]_i_9_n_1 ;
  wire [31:0]counter_0;
  wire \counter_reg[12]_i_2_n_1 ;
  wire \counter_reg[12]_i_2_n_2 ;
  wire \counter_reg[12]_i_2_n_3 ;
  wire \counter_reg[12]_i_2_n_4 ;
  wire \counter_reg[12]_i_2_n_5 ;
  wire \counter_reg[12]_i_2_n_6 ;
  wire \counter_reg[12]_i_2_n_7 ;
  wire \counter_reg[12]_i_2_n_8 ;
  wire \counter_reg[16]_i_2_n_1 ;
  wire \counter_reg[16]_i_2_n_2 ;
  wire \counter_reg[16]_i_2_n_3 ;
  wire \counter_reg[16]_i_2_n_4 ;
  wire \counter_reg[16]_i_2_n_5 ;
  wire \counter_reg[16]_i_2_n_6 ;
  wire \counter_reg[16]_i_2_n_7 ;
  wire \counter_reg[16]_i_2_n_8 ;
  wire \counter_reg[20]_i_2_n_1 ;
  wire \counter_reg[20]_i_2_n_2 ;
  wire \counter_reg[20]_i_2_n_3 ;
  wire \counter_reg[20]_i_2_n_4 ;
  wire \counter_reg[20]_i_2_n_5 ;
  wire \counter_reg[20]_i_2_n_6 ;
  wire \counter_reg[20]_i_2_n_7 ;
  wire \counter_reg[20]_i_2_n_8 ;
  wire \counter_reg[24]_i_2_n_1 ;
  wire \counter_reg[24]_i_2_n_2 ;
  wire \counter_reg[24]_i_2_n_3 ;
  wire \counter_reg[24]_i_2_n_4 ;
  wire \counter_reg[24]_i_2_n_5 ;
  wire \counter_reg[24]_i_2_n_6 ;
  wire \counter_reg[24]_i_2_n_7 ;
  wire \counter_reg[24]_i_2_n_8 ;
  wire \counter_reg[28]_i_2_n_1 ;
  wire \counter_reg[28]_i_2_n_2 ;
  wire \counter_reg[28]_i_2_n_3 ;
  wire \counter_reg[28]_i_2_n_4 ;
  wire \counter_reg[28]_i_2_n_5 ;
  wire \counter_reg[28]_i_2_n_6 ;
  wire \counter_reg[28]_i_2_n_7 ;
  wire \counter_reg[28]_i_2_n_8 ;
  wire \counter_reg[31]_i_3_n_3 ;
  wire \counter_reg[31]_i_3_n_4 ;
  wire \counter_reg[31]_i_3_n_6 ;
  wire \counter_reg[31]_i_3_n_7 ;
  wire \counter_reg[31]_i_3_n_8 ;
  wire \counter_reg[4]_i_2_n_1 ;
  wire \counter_reg[4]_i_2_n_2 ;
  wire \counter_reg[4]_i_2_n_3 ;
  wire \counter_reg[4]_i_2_n_4 ;
  wire \counter_reg[4]_i_2_n_5 ;
  wire \counter_reg[4]_i_2_n_6 ;
  wire \counter_reg[4]_i_2_n_7 ;
  wire \counter_reg[4]_i_2_n_8 ;
  wire \counter_reg[8]_i_2_n_1 ;
  wire \counter_reg[8]_i_2_n_2 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire \counter_reg[8]_i_2_n_4 ;
  wire \counter_reg[8]_i_2_n_5 ;
  wire \counter_reg[8]_i_2_n_6 ;
  wire \counter_reg[8]_i_2_n_7 ;
  wire \counter_reg[8]_i_2_n_8 ;
  wire \cur_disp_reg[0] ;
  wire \cur_disp_reg[0]_0 ;
  wire \cur_disp_reg[0]_1 ;
  wire \cur_disp_reg[1] ;
  wire [2:0]\cur_disp_reg[2] ;
  wire [31:1]data0;
  wire i__i_3_n_1;
  wire i__i_4_n_1;
  wire [3:0]\id_inst_reg[24] ;
  wire [7:0]\id_inst_reg[7] ;
  wire mem_data_ce;
  wire mem_data_optype;
  wire [1:0]\memop_o_reg[1] ;
  wire [2:0]out;
  wire \recv_bit[0]_i_1_n_1 ;
  wire \recv_bit[1]_i_1_n_1 ;
  wire \recv_bit[2]_i_2_n_1 ;
  wire \recv_bit_reg_n_1_[0] ;
  wire \recv_bit_reg_n_1_[1] ;
  wire \recv_bit_reg_n_1_[2] ;
  wire recv_buffer_n_11;
  wire recv_buffer_n_12;
  wire recv_buffer_n_13;
  wire recv_clock_i_1_n_1;
  wire recv_clock_reg_n_1;
  wire \recv_counter[31]_i_10_n_1 ;
  wire \recv_counter[31]_i_3_n_1 ;
  wire \recv_counter[31]_i_4_n_1 ;
  wire \recv_counter[31]_i_5_n_1 ;
  wire \recv_counter[31]_i_6_n_1 ;
  wire \recv_counter[31]_i_7_n_1 ;
  wire \recv_counter[31]_i_8_n_1 ;
  wire \recv_counter[31]_i_9_n_1 ;
  wire [31:0]recv_counter__0;
  wire [31:0]recv_counter__1;
  wire recv_counter_n_1;
  wire \recv_counter_reg[12]_i_2_n_1 ;
  wire \recv_counter_reg[12]_i_2_n_2 ;
  wire \recv_counter_reg[12]_i_2_n_3 ;
  wire \recv_counter_reg[12]_i_2_n_4 ;
  wire \recv_counter_reg[16]_i_2_n_1 ;
  wire \recv_counter_reg[16]_i_2_n_2 ;
  wire \recv_counter_reg[16]_i_2_n_3 ;
  wire \recv_counter_reg[16]_i_2_n_4 ;
  wire \recv_counter_reg[20]_i_2_n_1 ;
  wire \recv_counter_reg[20]_i_2_n_2 ;
  wire \recv_counter_reg[20]_i_2_n_3 ;
  wire \recv_counter_reg[20]_i_2_n_4 ;
  wire \recv_counter_reg[24]_i_2_n_1 ;
  wire \recv_counter_reg[24]_i_2_n_2 ;
  wire \recv_counter_reg[24]_i_2_n_3 ;
  wire \recv_counter_reg[24]_i_2_n_4 ;
  wire \recv_counter_reg[28]_i_2_n_1 ;
  wire \recv_counter_reg[28]_i_2_n_2 ;
  wire \recv_counter_reg[28]_i_2_n_3 ;
  wire \recv_counter_reg[28]_i_2_n_4 ;
  wire \recv_counter_reg[31]_i_2_n_3 ;
  wire \recv_counter_reg[31]_i_2_n_4 ;
  wire \recv_counter_reg[4]_i_2_n_1 ;
  wire \recv_counter_reg[4]_i_2_n_2 ;
  wire \recv_counter_reg[4]_i_2_n_3 ;
  wire \recv_counter_reg[4]_i_2_n_4 ;
  wire \recv_counter_reg[8]_i_2_n_1 ;
  wire \recv_counter_reg[8]_i_2_n_2 ;
  wire \recv_counter_reg[8]_i_2_n_3 ;
  wire \recv_counter_reg[8]_i_2_n_4 ;
  wire recv_parity;
  wire recv_parity_i_1_n_1;
  wire recv_parity_reg_n_1;
  wire recv_status;
  (* RTL_KEEP = "yes" *) wire [2:0]recv_status__0;
  wire [7:0]recv_write_data;
  wire \recv_write_data[7]_i_2_n_1 ;
  wire [7:0]recv_write_data_2;
  wire recv_write_flag;
  wire recv_write_flag_reg_n_1;
  wire rst;
  wire rst_BUFG;
  wire sample;
  wire sample_carry__0_i_1_n_1;
  wire sample_carry__0_i_2_n_1;
  wire sample_carry__0_i_3_n_1;
  wire sample_carry__0_i_4_n_1;
  wire sample_carry__0_n_1;
  wire sample_carry__0_n_2;
  wire sample_carry__0_n_3;
  wire sample_carry__0_n_4;
  wire sample_carry__1_i_1_n_1;
  wire sample_carry__1_i_2_n_1;
  wire sample_carry__1_i_3_n_1;
  wire sample_carry__1_n_3;
  wire sample_carry__1_n_4;
  wire sample_carry_i_1_n_1;
  wire sample_carry_i_2_n_1;
  wire sample_carry_i_3_n_1;
  wire sample_carry_i_4_n_1;
  wire sample_carry_n_1;
  wire sample_carry_n_2;
  wire sample_carry_n_3;
  wire sample_carry_n_4;
  wire \send_bit[0]_i_1_n_1 ;
  wire \send_bit[1]_i_1_n_1 ;
  wire \send_bit[2]_i_2_n_1 ;
  wire \send_bit_reg_n_1_[0] ;
  wire \send_bit_reg_n_1_[1] ;
  wire \send_bit_reg_n_1_[2] ;
  wire send_buffer_n_10;
  wire send_buffer_n_14;
  wire send_buffer_n_15;
  wire send_buffer_n_17;
  wire send_buffer_n_18;
  wire send_buffer_n_19;
  wire send_buffer_n_7;
  wire send_parity1;
  wire send_parity_reg_n_1;
  wire \send_read_data_buf_reg_n_1_[0] ;
  wire \send_read_data_buf_reg_n_1_[1] ;
  wire \send_read_data_buf_reg_n_1_[2] ;
  wire \send_read_data_buf_reg_n_1_[3] ;
  wire \send_read_data_buf_reg_n_1_[4] ;
  wire \send_read_data_buf_reg_n_1_[5] ;
  wire \send_read_data_buf_reg_n_1_[6] ;
  wire \send_read_data_buf_reg_n_1_[7] ;
  wire send_read_flag_reg_n_1;
  wire send_status;
  (* RTL_KEEP = "yes" *) wire [1:0]send_status__0;
  wire uart_receivable;
  wire uart_sendable;
  wire [3:0]\wb_wdata_reg[31] ;
  wire [3:2]\NLW_counter_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_recv_counter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_recv_counter_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]NLW_sample_carry_O_UNCONNECTED;
  wire [3:0]NLW_sample_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_sample_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sample_carry__1_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h1F10)) 
    \FSM_sequential_recv_status[0]_i_1 
       (.I0(recv_status__0[0]),
        .I1(recv_status__0[2]),
        .I2(\FSM_sequential_recv_status[2]_i_2_n_1 ),
        .I3(recv_status__0[0]),
        .O(\FSM_sequential_recv_status[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h0026FFFF00260000)) 
    \FSM_sequential_recv_status[1]_i_1 
       (.I0(recv_status__0[1]),
        .I1(recv_status__0[0]),
        .I2(Rx_IBUF),
        .I3(recv_status__0[2]),
        .I4(\FSM_sequential_recv_status[2]_i_2_n_1 ),
        .I5(recv_status__0[1]),
        .O(\FSM_sequential_recv_status[1]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \FSM_sequential_recv_status[2]_i_1 
       (.I0(recv_status__0[2]),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[1]),
        .I3(\FSM_sequential_recv_status[2]_i_2_n_1 ),
        .I4(recv_status__0[2]),
        .O(\FSM_sequential_recv_status[2]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hFFFD000100010001)) 
    \FSM_sequential_recv_status[2]_i_2 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(sample),
        .I5(recv_status),
        .O(\FSM_sequential_recv_status[2]_i_2_n_1 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_recv_status_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_recv_status[0]_i_1_n_1 ),
        .Q(recv_status__0[0]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_recv_status_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_recv_status[1]_i_1_n_1 ),
        .Q(recv_status__0[1]));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:001,iSTATE1:010,iSTATE2:011,iSTATE3:100" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_recv_status_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(\FSM_sequential_recv_status[2]_i_1_n_1 ),
        .Q(recv_status__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_send_status[1]_i_2 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[5]),
        .I3(counter[6]),
        .I4(\counter[31]_i_2_n_1 ),
        .O(\FSM_sequential_send_status[1]_i_2_n_1 ));
  (* FSM_ENCODED_STATES = "STATUS_IDLE:00,STATUS_DATA:01,STATUS_VALID:10,STATUS_END:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_send_status_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(send_buffer_n_18),
        .Q(send_status__0[0]));
  (* FSM_ENCODED_STATES = "STATUS_IDLE:00,STATUS_DATA:01,STATUS_VALID:10,STATUS_END:11" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_send_status_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(send_buffer_n_17),
        .Q(send_status__0[1]));
  FDPE #(
    .INIT(1'b1)) 
    Tx_reg
       (.C(clk_out1),
        .CE(Tx_1),
        .D(\__0/i__n_1 ),
        .PRE(rst_BUFG),
        .Q(Tx));
  LUT5 #(
    .INIT(32'hFFA3F0A3)) 
    \__0/i_ 
       (.I0(send_parity_reg_n_1),
        .I1(send_buffer_n_7),
        .I2(send_status__0[1]),
        .I3(send_status__0[0]),
        .I4(send_parity1),
        .O(\__0/i__n_1 ));
  LUT6 #(
    .INIT(64'hFEAEAEAEAEAEAEAE)) 
    \__2/i_ 
       (.I0(send_status__0[1]),
        .I1(send_buffer_n_7),
        .I2(send_status__0[0]),
        .I3(\send_bit_reg_n_1_[2] ),
        .I4(\send_bit_reg_n_1_[0] ),
        .I5(\send_bit_reg_n_1_[1] ),
        .O(send_status));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[10]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[12]_i_2_n_7 ),
        .O(counter_0[10]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[11]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[12]_i_2_n_6 ),
        .O(counter_0[11]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[12]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[12]_i_2_n_5 ),
        .O(counter_0[12]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[13]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[16]_i_2_n_8 ),
        .O(counter_0[13]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[14]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[16]_i_2_n_7 ),
        .O(counter_0[14]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[15]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[16]_i_2_n_6 ),
        .O(counter_0[15]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[16]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[16]_i_2_n_5 ),
        .O(counter_0[16]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[17]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[20]_i_2_n_8 ),
        .O(counter_0[17]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[18]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[20]_i_2_n_7 ),
        .O(counter_0[18]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[19]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[20]_i_2_n_6 ),
        .O(counter_0[19]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[1]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[4]_i_2_n_8 ),
        .O(counter_0[1]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[20]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[20]_i_2_n_5 ),
        .O(counter_0[20]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[21]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[24]_i_2_n_8 ),
        .O(counter_0[21]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[22]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[24]_i_2_n_7 ),
        .O(counter_0[22]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[23]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[24]_i_2_n_6 ),
        .O(counter_0[23]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[24]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[24]_i_2_n_5 ),
        .O(counter_0[24]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[25]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[28]_i_2_n_8 ),
        .O(counter_0[25]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[26]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[28]_i_2_n_7 ),
        .O(counter_0[26]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[27]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[28]_i_2_n_6 ),
        .O(counter_0[27]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[28]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[28]_i_2_n_5 ),
        .O(counter_0[28]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[29]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[31]_i_3_n_8 ),
        .O(counter_0[29]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[2]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[4]_i_2_n_7 ),
        .O(counter_0[2]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[30]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[31]_i_3_n_7 ),
        .O(counter_0[30]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[31]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[31]_i_3_n_6 ),
        .O(counter_0[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[31]_i_2 
       (.I0(\counter[31]_i_4_n_1 ),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[7]),
        .I4(counter[4]),
        .I5(\counter[31]_i_5_n_1 ),
        .O(\counter[31]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[31]_i_4 
       (.I0(\counter[31]_i_6_n_1 ),
        .I1(counter[9]),
        .I2(counter[8]),
        .I3(counter[11]),
        .I4(counter[10]),
        .I5(\counter[31]_i_7_n_1 ),
        .O(\counter[31]_i_4_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_5 
       (.I0(counter[26]),
        .I1(counter[27]),
        .I2(counter[24]),
        .I3(counter[25]),
        .I4(\counter[31]_i_8_n_1 ),
        .O(\counter[31]_i_5_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_6 
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(counter[15]),
        .I3(counter[14]),
        .O(\counter[31]_i_6_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_7 
       (.I0(counter[18]),
        .I1(counter[19]),
        .I2(counter[16]),
        .I3(counter[17]),
        .I4(\counter[31]_i_9_n_1 ),
        .O(\counter[31]_i_7_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_8 
       (.I0(counter[29]),
        .I1(counter[28]),
        .I2(counter[31]),
        .I3(counter[30]),
        .O(\counter[31]_i_8_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_9 
       (.I0(counter[21]),
        .I1(counter[20]),
        .I2(counter[23]),
        .I3(counter[22]),
        .O(\counter[31]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[3]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[4]_i_2_n_6 ),
        .O(counter_0[3]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[4]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[4]_i_2_n_5 ),
        .O(counter_0[4]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[5]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[8]_i_2_n_8 ),
        .O(counter_0[5]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[6]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[8]_i_2_n_7 ),
        .O(counter_0[6]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[7]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[8]_i_2_n_6 ),
        .O(counter_0[7]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[8]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[8]_i_2_n_5 ),
        .O(counter_0[8]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00000000)) 
    \counter[9]_i_1 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_2_n_1 ),
        .I5(\counter_reg[12]_i_2_n_8 ),
        .O(counter_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[12]),
        .Q(counter[12]));
  CARRY4 \counter_reg[12]_i_2 
       (.CI(\counter_reg[8]_i_2_n_1 ),
        .CO({\counter_reg[12]_i_2_n_1 ,\counter_reg[12]_i_2_n_2 ,\counter_reg[12]_i_2_n_3 ,\counter_reg[12]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_2_n_5 ,\counter_reg[12]_i_2_n_6 ,\counter_reg[12]_i_2_n_7 ,\counter_reg[12]_i_2_n_8 }),
        .S(counter[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[16]),
        .Q(counter[16]));
  CARRY4 \counter_reg[16]_i_2 
       (.CI(\counter_reg[12]_i_2_n_1 ),
        .CO({\counter_reg[16]_i_2_n_1 ,\counter_reg[16]_i_2_n_2 ,\counter_reg[16]_i_2_n_3 ,\counter_reg[16]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_2_n_5 ,\counter_reg[16]_i_2_n_6 ,\counter_reg[16]_i_2_n_7 ,\counter_reg[16]_i_2_n_8 }),
        .S(counter[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[18]),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[19]),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[20]),
        .Q(counter[20]));
  CARRY4 \counter_reg[20]_i_2 
       (.CI(\counter_reg[16]_i_2_n_1 ),
        .CO({\counter_reg[20]_i_2_n_1 ,\counter_reg[20]_i_2_n_2 ,\counter_reg[20]_i_2_n_3 ,\counter_reg[20]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_2_n_5 ,\counter_reg[20]_i_2_n_6 ,\counter_reg[20]_i_2_n_7 ,\counter_reg[20]_i_2_n_8 }),
        .S(counter[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[21]),
        .Q(counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[22]),
        .Q(counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[23]),
        .Q(counter[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[24]),
        .Q(counter[24]));
  CARRY4 \counter_reg[24]_i_2 
       (.CI(\counter_reg[20]_i_2_n_1 ),
        .CO({\counter_reg[24]_i_2_n_1 ,\counter_reg[24]_i_2_n_2 ,\counter_reg[24]_i_2_n_3 ,\counter_reg[24]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_2_n_5 ,\counter_reg[24]_i_2_n_6 ,\counter_reg[24]_i_2_n_7 ,\counter_reg[24]_i_2_n_8 }),
        .S(counter[24:21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[25]),
        .Q(counter[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[26]),
        .Q(counter[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[27]),
        .Q(counter[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[28]),
        .Q(counter[28]));
  CARRY4 \counter_reg[28]_i_2 
       (.CI(\counter_reg[24]_i_2_n_1 ),
        .CO({\counter_reg[28]_i_2_n_1 ,\counter_reg[28]_i_2_n_2 ,\counter_reg[28]_i_2_n_3 ,\counter_reg[28]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_2_n_5 ,\counter_reg[28]_i_2_n_6 ,\counter_reg[28]_i_2_n_7 ,\counter_reg[28]_i_2_n_8 }),
        .S(counter[28:25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[29]),
        .Q(counter[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[30]),
        .Q(counter[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[31]),
        .Q(counter[31]));
  CARRY4 \counter_reg[31]_i_3 
       (.CI(\counter_reg[28]_i_2_n_1 ),
        .CO({\NLW_counter_reg[31]_i_3_CO_UNCONNECTED [3:2],\counter_reg[31]_i_3_n_3 ,\counter_reg[31]_i_3_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[31]_i_3_O_UNCONNECTED [3],\counter_reg[31]_i_3_n_6 ,\counter_reg[31]_i_3_n_7 ,\counter_reg[31]_i_3_n_8 }),
        .S({1'b0,counter[31:29]}));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[4]),
        .Q(counter[4]));
  CARRY4 \counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_2_n_1 ,\counter_reg[4]_i_2_n_2 ,\counter_reg[4]_i_2_n_3 ,\counter_reg[4]_i_2_n_4 }),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_2_n_5 ,\counter_reg[4]_i_2_n_6 ,\counter_reg[4]_i_2_n_7 ,\counter_reg[4]_i_2_n_8 }),
        .S(counter[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[8]),
        .Q(counter[8]));
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_1 ),
        .CO({\counter_reg[8]_i_2_n_1 ,\counter_reg[8]_i_2_n_2 ,\counter_reg[8]_i_2_n_3 ,\counter_reg[8]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_2_n_5 ,\counter_reg[8]_i_2_n_6 ,\counter_reg[8]_i_2_n_7 ,\counter_reg[8]_i_2_n_8 }),
        .S(counter[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(counter_0[9]),
        .Q(counter[9]));
  MUXF7 i__i_2
       (.I0(i__i_3_n_1),
        .I1(i__i_4_n_1),
        .O(send_parity1),
        .S(\send_bit_reg_n_1_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__i_3
       (.I0(\send_read_data_buf_reg_n_1_[3] ),
        .I1(\send_read_data_buf_reg_n_1_[2] ),
        .I2(\send_bit_reg_n_1_[1] ),
        .I3(\send_read_data_buf_reg_n_1_[1] ),
        .I4(\send_bit_reg_n_1_[0] ),
        .I5(\send_read_data_buf_reg_n_1_[0] ),
        .O(i__i_3_n_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__i_4
       (.I0(\send_read_data_buf_reg_n_1_[7] ),
        .I1(\send_read_data_buf_reg_n_1_[6] ),
        .I2(\send_bit_reg_n_1_[1] ),
        .I3(\send_read_data_buf_reg_n_1_[5] ),
        .I4(\send_bit_reg_n_1_[0] ),
        .I5(\send_read_data_buf_reg_n_1_[4] ),
        .O(i__i_4_n_1));
  LUT3 #(
    .INIT(8'h8B)) 
    \recv_bit[0]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(\recv_bit_reg_n_1_[0] ),
        .O(\recv_bit[0]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \recv_bit[1]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(\recv_bit_reg_n_1_[0] ),
        .I3(\recv_bit_reg_n_1_[1] ),
        .O(\recv_bit[1]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h000C0400)) 
    \recv_bit[2]_i_1 
       (.I0(Rx_IBUF),
        .I1(sample),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[0]),
        .I4(recv_status__0[1]),
        .O(recv_parity));
  LUT5 #(
    .INIT(32'h8BBBB888)) 
    \recv_bit[2]_i_2 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(\recv_bit_reg_n_1_[0] ),
        .I3(\recv_bit_reg_n_1_[1] ),
        .I4(\recv_bit_reg_n_1_[2] ),
        .O(\recv_bit[2]_i_2_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \recv_bit_reg[0] 
       (.C(clk_out1),
        .CE(recv_parity),
        .CLR(rst_BUFG),
        .D(\recv_bit[0]_i_1_n_1 ),
        .Q(\recv_bit_reg_n_1_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \recv_bit_reg[1] 
       (.C(clk_out1),
        .CE(recv_parity),
        .CLR(rst_BUFG),
        .D(\recv_bit[1]_i_1_n_1 ),
        .Q(\recv_bit_reg_n_1_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \recv_bit_reg[2] 
       (.C(clk_out1),
        .CE(recv_parity),
        .CLR(rst_BUFG),
        .D(\recv_bit[2]_i_2_n_1 ),
        .Q(\recv_bit_reg_n_1_[2] ));
  fifo recv_buffer
       (.CO(sample),
        .D(D[2]),
        .\FSM_sequential_recv_status_reg[2] (recv_status__0),
        .Q(Q),
        .Rx_IBUF(Rx_IBUF),
        .ce_reg(ce_reg),
        .clk_out1(clk_out1),
        .\cur_disp_reg[0] (recv_buffer_n_13),
        .\cur_disp_reg[0]_0 (\cur_disp_reg[0] ),
        .\cur_disp_reg[0]_1 (\cur_disp_reg[0]_0 ),
        .\cur_disp_reg[0]_2 (\cur_disp_reg[0]_1 ),
        .\cur_disp_reg[1] (recv_buffer_n_12),
        .\cur_disp_reg[1]_0 (\cur_disp_reg[1] ),
        .\cur_disp_reg[2] (recv_buffer_n_11),
        .\cur_disp_reg[2]_0 (send_buffer_n_10),
        .\id_inst_reg[24] (\id_inst_reg[24] ),
        .\id_inst_reg[7] (\id_inst_reg[7] ),
        .mem_data_optype(mem_data_optype),
        .\memop_o_reg[1] (\memop_o_reg[1] ),
        .out(out),
        .recv_parity_reg(recv_parity_reg_n_1),
        .\recv_write_data_reg[7] (recv_write_data),
        .recv_write_flag(recv_write_flag),
        .recv_write_flag_reg(recv_write_flag_reg_n_1),
        .rst(rst),
        .rst_BUFG(rst_BUFG),
        .uart_receivable(uart_receivable),
        .uart_sendable(uart_sendable),
        .\wb_wdata_reg[31] (\wb_wdata_reg[31] ));
  LUT6 #(
    .INIT(64'hF9FFFBFF00000101)) 
    recv_clock_i_1
       (.I0(recv_status__0[0]),
        .I1(recv_status__0[2]),
        .I2(recv_status__0[1]),
        .I3(sample),
        .I4(Rx_IBUF),
        .I5(recv_clock_reg_n_1),
        .O(recv_clock_i_1_n_1));
  FDCE #(
    .INIT(1'b0)) 
    recv_clock_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(recv_clock_i_1_n_1),
        .Q(recv_clock_reg_n_1));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    recv_counter
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(recv_clock_reg_n_1),
        .O(recv_counter_n_1));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    \recv_counter[0]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(\recv_counter[31]_i_3_n_1 ),
        .I5(recv_counter__0[0]),
        .O(recv_counter__1[0]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[10]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[10]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[10]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[11]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[11]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[11]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[12]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[12]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[12]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[13]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[13]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[13]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[14]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[14]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[14]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[15]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[15]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[15]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[16]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[16]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[16]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[17]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[17]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[17]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[18]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[18]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[18]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[19]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[19]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[19]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[1]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[1]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[1]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[20]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[20]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[20]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[21]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[21]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[21]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[22]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[22]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[22]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[23]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[23]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[23]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[24]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[24]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[24]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[25]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[25]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[25]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[26]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[26]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[26]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[27]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[27]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[27]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[28]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[28]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[28]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[29]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[29]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[29]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[2]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[2]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[2]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[30]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[30]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[30]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[31]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[31]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[31]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \recv_counter[31]_i_10 
       (.I0(recv_counter__0[20]),
        .I1(recv_counter__0[21]),
        .I2(recv_counter__0[23]),
        .I3(recv_counter__0[22]),
        .O(\recv_counter[31]_i_10_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \recv_counter[31]_i_3 
       (.I0(\recv_counter[31]_i_4_n_1 ),
        .I1(\recv_counter[31]_i_5_n_1 ),
        .I2(recv_counter__0[27]),
        .I3(recv_counter__0[7]),
        .I4(recv_counter__0[8]),
        .I5(recv_counter__0[9]),
        .O(\recv_counter[31]_i_3_n_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \recv_counter[31]_i_4 
       (.I0(\recv_counter[31]_i_6_n_1 ),
        .I1(recv_counter__0[28]),
        .I2(recv_counter__0[4]),
        .I3(recv_counter__0[3]),
        .I4(recv_counter__0[2]),
        .O(\recv_counter[31]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \recv_counter[31]_i_5 
       (.I0(recv_counter__0[14]),
        .I1(recv_counter__0[15]),
        .I2(\recv_counter[31]_i_7_n_1 ),
        .I3(\recv_counter[31]_i_8_n_1 ),
        .I4(\recv_counter[31]_i_9_n_1 ),
        .I5(\recv_counter[31]_i_10_n_1 ),
        .O(\recv_counter[31]_i_5_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \recv_counter[31]_i_6 
       (.I0(recv_counter__0[10]),
        .I1(recv_counter__0[11]),
        .I2(recv_counter__0[13]),
        .I3(recv_counter__0[12]),
        .I4(recv_counter__0[31]),
        .I5(recv_counter__0[29]),
        .O(\recv_counter[31]_i_6_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \recv_counter[31]_i_7 
       (.I0(recv_counter__0[24]),
        .I1(recv_counter__0[25]),
        .I2(recv_counter__0[26]),
        .I3(recv_counter__0[30]),
        .O(\recv_counter[31]_i_7_n_1 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \recv_counter[31]_i_8 
       (.I0(recv_counter__0[1]),
        .I1(recv_counter__0[5]),
        .I2(recv_counter__0[6]),
        .I3(recv_counter__0[0]),
        .O(\recv_counter[31]_i_8_n_1 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \recv_counter[31]_i_9 
       (.I0(recv_counter__0[18]),
        .I1(recv_counter__0[19]),
        .I2(recv_counter__0[17]),
        .I3(recv_counter__0[16]),
        .O(\recv_counter[31]_i_9_n_1 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[3]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[3]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[3]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[4]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[4]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[4]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[5]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[5]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[5]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[6]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[6]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[6]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[7]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[7]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[7]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[8]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[8]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[8]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \recv_counter[9]_i_1 
       (.I0(Rx_IBUF),
        .I1(recv_status__0[0]),
        .I2(recv_status__0[2]),
        .I3(recv_status__0[1]),
        .I4(data0[9]),
        .I5(\recv_counter[31]_i_3_n_1 ),
        .O(recv_counter__1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[0] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[0]),
        .Q(recv_counter__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[10] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[10]),
        .Q(recv_counter__0[10]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[11] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[11]),
        .Q(recv_counter__0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[12] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[12]),
        .Q(recv_counter__0[12]));
  CARRY4 \recv_counter_reg[12]_i_2 
       (.CI(\recv_counter_reg[8]_i_2_n_1 ),
        .CO({\recv_counter_reg[12]_i_2_n_1 ,\recv_counter_reg[12]_i_2_n_2 ,\recv_counter_reg[12]_i_2_n_3 ,\recv_counter_reg[12]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(recv_counter__0[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[13] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[13]),
        .Q(recv_counter__0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[14] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[14]),
        .Q(recv_counter__0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[15] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[15]),
        .Q(recv_counter__0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[16] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[16]),
        .Q(recv_counter__0[16]));
  CARRY4 \recv_counter_reg[16]_i_2 
       (.CI(\recv_counter_reg[12]_i_2_n_1 ),
        .CO({\recv_counter_reg[16]_i_2_n_1 ,\recv_counter_reg[16]_i_2_n_2 ,\recv_counter_reg[16]_i_2_n_3 ,\recv_counter_reg[16]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(recv_counter__0[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[17] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[17]),
        .Q(recv_counter__0[17]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[18] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[18]),
        .Q(recv_counter__0[18]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[19] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[19]),
        .Q(recv_counter__0[19]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[1] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[1]),
        .Q(recv_counter__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[20] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[20]),
        .Q(recv_counter__0[20]));
  CARRY4 \recv_counter_reg[20]_i_2 
       (.CI(\recv_counter_reg[16]_i_2_n_1 ),
        .CO({\recv_counter_reg[20]_i_2_n_1 ,\recv_counter_reg[20]_i_2_n_2 ,\recv_counter_reg[20]_i_2_n_3 ,\recv_counter_reg[20]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(recv_counter__0[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[21] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[21]),
        .Q(recv_counter__0[21]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[22] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[22]),
        .Q(recv_counter__0[22]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[23] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[23]),
        .Q(recv_counter__0[23]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[24] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[24]),
        .Q(recv_counter__0[24]));
  CARRY4 \recv_counter_reg[24]_i_2 
       (.CI(\recv_counter_reg[20]_i_2_n_1 ),
        .CO({\recv_counter_reg[24]_i_2_n_1 ,\recv_counter_reg[24]_i_2_n_2 ,\recv_counter_reg[24]_i_2_n_3 ,\recv_counter_reg[24]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(recv_counter__0[24:21]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[25] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[25]),
        .Q(recv_counter__0[25]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[26] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[26]),
        .Q(recv_counter__0[26]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[27] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[27]),
        .Q(recv_counter__0[27]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[28] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[28]),
        .Q(recv_counter__0[28]));
  CARRY4 \recv_counter_reg[28]_i_2 
       (.CI(\recv_counter_reg[24]_i_2_n_1 ),
        .CO({\recv_counter_reg[28]_i_2_n_1 ,\recv_counter_reg[28]_i_2_n_2 ,\recv_counter_reg[28]_i_2_n_3 ,\recv_counter_reg[28]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(recv_counter__0[28:25]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[29] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[29]),
        .Q(recv_counter__0[29]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[2] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[2]),
        .Q(recv_counter__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[30] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[30]),
        .Q(recv_counter__0[30]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[31] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[31]),
        .Q(recv_counter__0[31]));
  CARRY4 \recv_counter_reg[31]_i_2 
       (.CI(\recv_counter_reg[28]_i_2_n_1 ),
        .CO({\NLW_recv_counter_reg[31]_i_2_CO_UNCONNECTED [3:2],\recv_counter_reg[31]_i_2_n_3 ,\recv_counter_reg[31]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_recv_counter_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,recv_counter__0[31:29]}));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[3] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[3]),
        .Q(recv_counter__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[4] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[4]),
        .Q(recv_counter__0[4]));
  CARRY4 \recv_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\recv_counter_reg[4]_i_2_n_1 ,\recv_counter_reg[4]_i_2_n_2 ,\recv_counter_reg[4]_i_2_n_3 ,\recv_counter_reg[4]_i_2_n_4 }),
        .CYINIT(recv_counter__0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(recv_counter__0[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[5] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[5]),
        .Q(recv_counter__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[6] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[6]),
        .Q(recv_counter__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[7] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[7]),
        .Q(recv_counter__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[8] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[8]),
        .Q(recv_counter__0[8]));
  CARRY4 \recv_counter_reg[8]_i_2 
       (.CI(\recv_counter_reg[4]_i_2_n_1 ),
        .CO({\recv_counter_reg[8]_i_2_n_1 ,\recv_counter_reg[8]_i_2_n_2 ,\recv_counter_reg[8]_i_2_n_3 ,\recv_counter_reg[8]_i_2_n_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(recv_counter__0[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_counter_reg[9] 
       (.C(clk_out1),
        .CE(recv_counter_n_1),
        .CLR(rst_BUFG),
        .D(recv_counter__1[9]),
        .Q(recv_counter__0[9]));
  LUT3 #(
    .INIT(8'h9C)) 
    recv_parity_i_1
       (.I0(recv_status__0[0]),
        .I1(Rx_IBUF),
        .I2(recv_parity_reg_n_1),
        .O(recv_parity_i_1_n_1));
  FDCE #(
    .INIT(1'b0)) 
    recv_parity_reg
       (.C(clk_out1),
        .CE(recv_parity),
        .CLR(rst_BUFG),
        .D(recv_parity_i_1_n_1),
        .Q(recv_parity_reg_n_1));
  LUT6 #(
    .INIT(64'h5444444466666666)) 
    \recv_status_inferred__0/i_ 
       (.I0(recv_status__0[2]),
        .I1(recv_status__0[0]),
        .I2(\recv_bit_reg_n_1_[1] ),
        .I3(\recv_bit_reg_n_1_[0] ),
        .I4(\recv_bit_reg_n_1_[2] ),
        .I5(recv_status__0[1]),
        .O(recv_status));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \recv_write_data[0]_i_1 
       (.I0(\recv_bit_reg_n_1_[2] ),
        .I1(\recv_bit_reg_n_1_[0] ),
        .I2(\recv_bit_reg_n_1_[1] ),
        .I3(sample),
        .I4(recv_status__0[1]),
        .I5(\recv_write_data[7]_i_2_n_1 ),
        .O(recv_write_data_2[0]));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \recv_write_data[1]_i_1 
       (.I0(\recv_bit_reg_n_1_[2] ),
        .I1(\recv_bit_reg_n_1_[0] ),
        .I2(\recv_bit_reg_n_1_[1] ),
        .I3(sample),
        .I4(recv_status__0[1]),
        .I5(\recv_write_data[7]_i_2_n_1 ),
        .O(recv_write_data_2[1]));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \recv_write_data[2]_i_1 
       (.I0(\recv_bit_reg_n_1_[2] ),
        .I1(\recv_bit_reg_n_1_[1] ),
        .I2(\recv_bit_reg_n_1_[0] ),
        .I3(sample),
        .I4(recv_status__0[1]),
        .I5(\recv_write_data[7]_i_2_n_1 ),
        .O(recv_write_data_2[2]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \recv_write_data[3]_i_1 
       (.I0(\recv_bit_reg_n_1_[2] ),
        .I1(\recv_bit_reg_n_1_[0] ),
        .I2(\recv_bit_reg_n_1_[1] ),
        .I3(sample),
        .I4(recv_status__0[1]),
        .I5(\recv_write_data[7]_i_2_n_1 ),
        .O(recv_write_data_2[3]));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \recv_write_data[4]_i_1 
       (.I0(\recv_bit_reg_n_1_[2] ),
        .I1(\recv_bit_reg_n_1_[0] ),
        .I2(\recv_bit_reg_n_1_[1] ),
        .I3(sample),
        .I4(recv_status__0[1]),
        .I5(\recv_write_data[7]_i_2_n_1 ),
        .O(recv_write_data_2[4]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \recv_write_data[5]_i_1 
       (.I0(\recv_bit_reg_n_1_[2] ),
        .I1(\recv_bit_reg_n_1_[0] ),
        .I2(\recv_bit_reg_n_1_[1] ),
        .I3(sample),
        .I4(recv_status__0[1]),
        .I5(\recv_write_data[7]_i_2_n_1 ),
        .O(recv_write_data_2[5]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \recv_write_data[6]_i_1 
       (.I0(\recv_bit_reg_n_1_[2] ),
        .I1(\recv_bit_reg_n_1_[1] ),
        .I2(\recv_bit_reg_n_1_[0] ),
        .I3(sample),
        .I4(recv_status__0[1]),
        .I5(\recv_write_data[7]_i_2_n_1 ),
        .O(recv_write_data_2[6]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \recv_write_data[7]_i_1 
       (.I0(\recv_bit_reg_n_1_[2] ),
        .I1(\recv_bit_reg_n_1_[0] ),
        .I2(\recv_bit_reg_n_1_[1] ),
        .I3(sample),
        .I4(recv_status__0[1]),
        .I5(\recv_write_data[7]_i_2_n_1 ),
        .O(recv_write_data_2[7]));
  LUT2 #(
    .INIT(4'hE)) 
    \recv_write_data[7]_i_2 
       (.I0(recv_status__0[2]),
        .I1(recv_status__0[0]),
        .O(\recv_write_data[7]_i_2_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \recv_write_data_reg[0] 
       (.C(clk_out1),
        .CE(recv_write_data_2[0]),
        .CLR(rst_BUFG),
        .D(Rx_IBUF),
        .Q(recv_write_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_write_data_reg[1] 
       (.C(clk_out1),
        .CE(recv_write_data_2[1]),
        .CLR(rst_BUFG),
        .D(Rx_IBUF),
        .Q(recv_write_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_write_data_reg[2] 
       (.C(clk_out1),
        .CE(recv_write_data_2[2]),
        .CLR(rst_BUFG),
        .D(Rx_IBUF),
        .Q(recv_write_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_write_data_reg[3] 
       (.C(clk_out1),
        .CE(recv_write_data_2[3]),
        .CLR(rst_BUFG),
        .D(Rx_IBUF),
        .Q(recv_write_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_write_data_reg[4] 
       (.C(clk_out1),
        .CE(recv_write_data_2[4]),
        .CLR(rst_BUFG),
        .D(Rx_IBUF),
        .Q(recv_write_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_write_data_reg[5] 
       (.C(clk_out1),
        .CE(recv_write_data_2[5]),
        .CLR(rst_BUFG),
        .D(Rx_IBUF),
        .Q(recv_write_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_write_data_reg[6] 
       (.C(clk_out1),
        .CE(recv_write_data_2[6]),
        .CLR(rst_BUFG),
        .D(Rx_IBUF),
        .Q(recv_write_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \recv_write_data_reg[7] 
       (.C(clk_out1),
        .CE(recv_write_data_2[7]),
        .CLR(rst_BUFG),
        .D(Rx_IBUF),
        .Q(recv_write_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    recv_write_flag_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(recv_write_flag),
        .Q(recv_write_flag_reg_n_1));
  CARRY4 sample_carry
       (.CI(1'b0),
        .CO({sample_carry_n_1,sample_carry_n_2,sample_carry_n_3,sample_carry_n_4}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sample_carry_O_UNCONNECTED[3:0]),
        .S({sample_carry_i_1_n_1,sample_carry_i_2_n_1,sample_carry_i_3_n_1,sample_carry_i_4_n_1}));
  CARRY4 sample_carry__0
       (.CI(sample_carry_n_1),
        .CO({sample_carry__0_n_1,sample_carry__0_n_2,sample_carry__0_n_3,sample_carry__0_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sample_carry__0_O_UNCONNECTED[3:0]),
        .S({sample_carry__0_i_1_n_1,sample_carry__0_i_2_n_1,sample_carry__0_i_3_n_1,sample_carry__0_i_4_n_1}));
  LUT3 #(
    .INIT(8'h01)) 
    sample_carry__0_i_1
       (.I0(recv_counter__0[23]),
        .I1(recv_counter__0[22]),
        .I2(recv_counter__0[21]),
        .O(sample_carry__0_i_1_n_1));
  LUT3 #(
    .INIT(8'h01)) 
    sample_carry__0_i_2
       (.I0(recv_counter__0[20]),
        .I1(recv_counter__0[19]),
        .I2(recv_counter__0[18]),
        .O(sample_carry__0_i_2_n_1));
  LUT3 #(
    .INIT(8'h01)) 
    sample_carry__0_i_3
       (.I0(recv_counter__0[17]),
        .I1(recv_counter__0[16]),
        .I2(recv_counter__0[15]),
        .O(sample_carry__0_i_3_n_1));
  LUT3 #(
    .INIT(8'h01)) 
    sample_carry__0_i_4
       (.I0(recv_counter__0[14]),
        .I1(recv_counter__0[13]),
        .I2(recv_counter__0[12]),
        .O(sample_carry__0_i_4_n_1));
  CARRY4 sample_carry__1
       (.CI(sample_carry__0_n_1),
        .CO({NLW_sample_carry__1_CO_UNCONNECTED[3],sample,sample_carry__1_n_3,sample_carry__1_n_4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sample_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,sample_carry__1_i_1_n_1,sample_carry__1_i_2_n_1,sample_carry__1_i_3_n_1}));
  LUT2 #(
    .INIT(4'h1)) 
    sample_carry__1_i_1
       (.I0(recv_counter__0[31]),
        .I1(recv_counter__0[30]),
        .O(sample_carry__1_i_1_n_1));
  LUT3 #(
    .INIT(8'h01)) 
    sample_carry__1_i_2
       (.I0(recv_counter__0[29]),
        .I1(recv_counter__0[28]),
        .I2(recv_counter__0[27]),
        .O(sample_carry__1_i_2_n_1));
  LUT3 #(
    .INIT(8'h01)) 
    sample_carry__1_i_3
       (.I0(recv_counter__0[26]),
        .I1(recv_counter__0[25]),
        .I2(recv_counter__0[24]),
        .O(sample_carry__1_i_3_n_1));
  LUT3 #(
    .INIT(8'h01)) 
    sample_carry_i_1
       (.I0(recv_counter__0[11]),
        .I1(recv_counter__0[10]),
        .I2(recv_counter__0[9]),
        .O(sample_carry_i_1_n_1));
  LUT3 #(
    .INIT(8'h01)) 
    sample_carry_i_2
       (.I0(recv_counter__0[8]),
        .I1(recv_counter__0[7]),
        .I2(recv_counter__0[6]),
        .O(sample_carry_i_2_n_1));
  LUT3 #(
    .INIT(8'h08)) 
    sample_carry_i_3
       (.I0(recv_counter__0[5]),
        .I1(recv_counter__0[4]),
        .I2(recv_counter__0[3]),
        .O(sample_carry_i_3_n_1));
  LUT3 #(
    .INIT(8'h04)) 
    sample_carry_i_4
       (.I0(recv_counter__0[2]),
        .I1(recv_counter__0[1]),
        .I2(recv_counter__0[0]),
        .O(sample_carry_i_4_n_1));
  LUT6 #(
    .INIT(64'h4444444444444447)) 
    \send_bit[0]_i_1 
       (.I0(\send_bit_reg_n_1_[0] ),
        .I1(send_status__0[0]),
        .I2(buffer_size_reg__0[3]),
        .I3(buffer_size_reg__0[2]),
        .I4(buffer_size_reg__0[1]),
        .I5(buffer_size_reg__0[0]),
        .O(\send_bit[0]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h606F)) 
    \send_bit[1]_i_1 
       (.I0(\send_bit_reg_n_1_[0] ),
        .I1(\send_bit_reg_n_1_[1] ),
        .I2(send_status__0[0]),
        .I3(send_buffer_n_7),
        .O(\send_bit[1]_i_1_n_1 ));
  LUT5 #(
    .INIT(32'h780078FF)) 
    \send_bit[2]_i_2 
       (.I0(\send_bit_reg_n_1_[0] ),
        .I1(\send_bit_reg_n_1_[1] ),
        .I2(\send_bit_reg_n_1_[2] ),
        .I3(send_status__0[0]),
        .I4(send_buffer_n_7),
        .O(\send_bit[2]_i_2_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \send_bit_reg[0] 
       (.C(clk_out1),
        .CE(send_buffer_n_15),
        .CLR(rst_BUFG),
        .D(\send_bit[0]_i_1_n_1 ),
        .Q(\send_bit_reg_n_1_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \send_bit_reg[1] 
       (.C(clk_out1),
        .CE(send_buffer_n_15),
        .CLR(rst_BUFG),
        .D(\send_bit[1]_i_1_n_1 ),
        .Q(\send_bit_reg_n_1_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \send_bit_reg[2] 
       (.C(clk_out1),
        .CE(send_buffer_n_15),
        .CLR(rst_BUFG),
        .D(\send_bit[2]_i_2_n_1 ),
        .Q(\send_bit_reg_n_1_[2] ));
  fifo_0 send_buffer
       (.D(D[1:0]),
        .E(E),
        .\FSM_sequential_cur_status_reg[0] (recv_buffer_n_13),
        .\FSM_sequential_cur_status_reg[0]_0 (recv_buffer_n_12),
        .\FSM_sequential_cur_status_reg[0]_1 (recv_buffer_n_11),
        .\FSM_sequential_cur_status_reg[1] (send_buffer_n_10),
        .\FSM_sequential_cur_status_reg[1]_0 (\FSM_sequential_cur_status_reg[1] ),
        .\FSM_sequential_cur_status_reg[2] (\FSM_sequential_cur_status_reg[2] ),
        .\FSM_sequential_cur_status_reg[2]_0 (\FSM_sequential_cur_status_reg[2]_0 ),
        .\FSM_sequential_send_status_reg[0] (send_buffer_n_18),
        .\FSM_sequential_send_status_reg[1] (send_buffer_n_17),
        .\FSM_sequential_send_status_reg[1]_0 (send_status__0),
        .Q(Q),
        .Tx_1(Tx_1),
        .\buffer_size_reg[0]_0 (buffer_size_reg__0),
        .ce(ce),
        .clk_out1(clk_out1),
        .\counter_reg[0] (\FSM_sequential_send_status[1]_i_2_n_1 ),
        .\cur_disp_reg[2] (\cur_disp_reg[2] ),
        .in0(send_status__0),
        .mem_data_ce(mem_data_ce),
        .mem_data_optype(mem_data_optype),
        .\memop_o_reg[1] (\memop_o_reg[1] ),
        .out(out),
        .rst(rst),
        .rst_BUFG(rst_BUFG),
        .send_parity1(send_parity1),
        .send_parity_reg(send_buffer_n_7),
        .send_parity_reg_0(send_buffer_n_15),
        .send_parity_reg_1(send_buffer_n_19),
        .send_parity_reg_2(send_parity_reg_n_1),
        .\send_read_data_buf_reg[0] (send_buffer_n_14),
        .\send_read_data_buf_reg[7] (buffer),
        .send_read_flag_reg(send_read_flag_reg_n_1),
        .send_status(send_status),
        .uart_receivable(uart_receivable),
        .uart_sendable(uart_sendable));
  FDCE #(
    .INIT(1'b0)) 
    send_parity_reg
       (.C(clk_out1),
        .CE(send_buffer_n_15),
        .CLR(rst_BUFG),
        .D(send_buffer_n_19),
        .Q(send_parity_reg_n_1));
  FDCE #(
    .INIT(1'b0)) 
    \send_read_data_buf_reg[0] 
       (.C(clk_out1),
        .CE(send_buffer_n_14),
        .CLR(rst_BUFG),
        .D(buffer[0]),
        .Q(\send_read_data_buf_reg_n_1_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \send_read_data_buf_reg[1] 
       (.C(clk_out1),
        .CE(send_buffer_n_14),
        .CLR(rst_BUFG),
        .D(buffer[1]),
        .Q(\send_read_data_buf_reg_n_1_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \send_read_data_buf_reg[2] 
       (.C(clk_out1),
        .CE(send_buffer_n_14),
        .CLR(rst_BUFG),
        .D(buffer[2]),
        .Q(\send_read_data_buf_reg_n_1_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \send_read_data_buf_reg[3] 
       (.C(clk_out1),
        .CE(send_buffer_n_14),
        .CLR(rst_BUFG),
        .D(buffer[3]),
        .Q(\send_read_data_buf_reg_n_1_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \send_read_data_buf_reg[4] 
       (.C(clk_out1),
        .CE(send_buffer_n_14),
        .CLR(rst_BUFG),
        .D(buffer[4]),
        .Q(\send_read_data_buf_reg_n_1_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \send_read_data_buf_reg[5] 
       (.C(clk_out1),
        .CE(send_buffer_n_14),
        .CLR(rst_BUFG),
        .D(buffer[5]),
        .Q(\send_read_data_buf_reg_n_1_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \send_read_data_buf_reg[6] 
       (.C(clk_out1),
        .CE(send_buffer_n_14),
        .CLR(rst_BUFG),
        .D(buffer[6]),
        .Q(\send_read_data_buf_reg_n_1_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \send_read_data_buf_reg[7] 
       (.C(clk_out1),
        .CE(send_buffer_n_14),
        .CLR(rst_BUFG),
        .D(buffer[7]),
        .Q(\send_read_data_buf_reg_n_1_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    send_read_flag_reg
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(rst_BUFG),
        .D(send_buffer_n_14),
        .Q(send_read_flag_reg_n_1));
endmodule
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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

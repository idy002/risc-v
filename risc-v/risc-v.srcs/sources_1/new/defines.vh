`include "opcode.vh"


//
//  global definitions
//
//`define MemFile         "/home/idy002/github/risc-v/risc-v/risc-v.srcs/sources_1/new/inst.mem"
//`define WaveFile        "/home/idy002/github/risc-v/risc-v/risc-v.srcs/sources_1/new/dump.vcd"
`define MemFile         "/home/ding/Github/risc-v/risc-v/risc-v.srcs/sources_1/new/inst.mem"
`define WaveFile        "/home/ding/Github/risc-v/risc-v/risc-v.srcs/sources_1/new/dump.vcd"
`define ChipEnable      1'b1
`define ChipDisable     1'b0
`define RstEnable       1'b1
`define RstDisable      1'b0
`define MemAddrWidth    32
`define InstWidth       32
`define ZeroWord        32'h00000000

//
//  memory
//
`define MemDataWidth    8
`define MemNum          1024
`define MemNumLog2      10

//
//  regfile
//
`define RegAddrWidth    5
`define RegDataWidth    32
`define RegNum          32
`define WriteEnable     1'b1
`define WriteDisable    1'b0
`define ReadEnable      1'b1
`define ReadDisable     1'b0
`define ZeroRegAddr     5'b00000

//
//  id(instruction decode)
//
`define InstValid       1'b1
`define InstInvalid     1'b0
`define DataZero		2'd0
`define DataImm			2'd1
`define DataPC			2'd2
`define DataReg			2'd3

//
//  ex(execusion)
//
`define AluOpWidth      5
`define AluSelWidth     3


//
// vim:filetype=verilog

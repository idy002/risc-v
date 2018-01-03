`include "opcode.vh"


//
//  global definitions
//
`define MemFile         "/home/idy002/github/risc-v/inst.mem"
`define WaveFile        "/home/idy002/github/risc-v/wave.vcd"
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
`define MemDataWidth    32
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

//
//  ex(execusion)
//
`define AluOpWidth      5
`define AluSelWidth     3

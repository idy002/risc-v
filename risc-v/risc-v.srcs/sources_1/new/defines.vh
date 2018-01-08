`include "opcode.vh"

//
//  global definitions
//
//`define MemFile         "/home/idy002/github/risc-v/risc-v/risc-v.srcs/sources_1/new/inst.mem"
//`define WaveFile        "/home/idy002/github/risc-v/risc-v/risc-v.srcs/sources_1/new/dump.vcd"
//`define MemFile         "/home/ding/Github/risc-v/risc-v/risc-v.srcs/sources_1/new/inst.mem"
//`define WaveFile        "/home/ding/Github/risc-v/risc-v/risc-v.srcs/sources_1/new/dump.vcd"
`define MemFile       "C:\\Users\\99486\\Desktop\\architecture\\risc-v\\risc-v\\risc-v.srcs\\sources_1\\new\\inst.mem"
`define WaveFile        "C:\\Users\\99486\\Desktop\\architecture\\risc-v\\risc-v\\risc-v.srcs\\sources_1\\new\\dump.vcd"
`define ChipEnable      1'b1
`define ChipDisable     1'b0
`define RstEnable       1'b1
`define RstDisable      1'b0
`define MemAddrWidth    32
`define InstWidth       32
`define ZeroWord        32'h00000000
`define ZeroByte		8'h00
`define NopInst			32'h00006013
`define Yes				1'b1
`define No				1'b0


//
//  memory
//
//  28      =  11   +  13   +   4
//  addr       tag     index    disp
//
`define MemDataWidth    8
`define MemNum          1024
`define MemNumLog2      10
`define CacheDispWidth	4
`define CacheIndexWidth	12
`define CacheTagWidth	12
`define CacheDispPos	(`CacheDispWidth-1):0
`define CacheIndexPos	(`CacheIndexWidth + `CacheDispWidth - 1) : (`CacheDispWidth)
`define CacheTagPos		27 : (`CacheIndexWidth + `CacheDispWidth)
`define CacheLineBits	(1 + 12 +  16 * 8)	//	1 + 8 + 2^6 * 8
`define CacheLineNum	(4096)		//	2^12
`define BlockBytes		16
`define BlockWidth		(16 * 8)
`define BlockAddrWidth	(`CacheTagWidth + `CacheIndexWidth)
`define ZeroBlock		{`BlockWidth{1'b0}}
`define ZeroDataDisp	{(`CacheDispWidth){1'b0}}
`define FullDataDisp	{(`CacheDispWidth){1'b1}}
`define ZeroHeadDisp	2'b00
`define FullHeadDisp	2'b11
`define ReadOpHead		{(32-`BlockAddrWidth){1'b0}}
`define WriteOpHead		{(32-`BlockAddrWidth){1'b1}}
`define MemRead			1'b0
`define MemWrite		1'b1
`define MemAddrWidth	32
`define IsBusy			1'b1
`define NotBusy			1'b0
`define SendEnable		1'b1
`define SendDisable		1'b0
`define RecvEnable		1'b1
`define RecvDisable		1'b0
`define TransAddr		1'b0
`define TransData		1'b1

//
//  regfile
//
`define RegAddrWidth    5
`define RegDataWidth    32
`define RegDataBytes	4
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
`define RequestStall	1'b1
`define NoRequestStall	1'b0
`define NoJump			2'b00
`define JumpUncdt		2'b01
`define JumpBranch		2'b10
`define NoWait			1'b0
`define WaitReg			1'b1

//
//  ex(execusion)
//
`define AluOpWidth      5
`define AluSelWidth     3


//
// vim:filetype=verilog

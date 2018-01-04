`timescale 1ns / 1ps
`include "defines.vh"

module id_ex(
		input wire clk,
		input wire rst,
		input wire[5:0] stall,
		
		//	input from id
		input wire[`AluOpWidth-1:0]		id_aluop,
		input wire[`AluSelWidth-1:0]	id_alusel,
		input wire[`RegDataWidth-1:0]	id_reg1,
		input wire[`RegDataWidth-1:0]	id_reg2,
		input wire[`RegAddrWidth-1:0]	id_wd,
		input wire id_wreg,
		input wire[`RegDataWidth-1:0]	id_addr_base,
		input wire[`RegDataWidth-1:0]	id_addr_off,
		input wire[1:0] id_jump_type,
		
		//	output to ex
		output reg[`AluOpWidth-1:0]		ex_aluop,
		output reg[`AluSelWidth-1:0]	ex_alusel,
		output reg[`RegDataWidth-1:0]	ex_reg1,
		output reg[`RegDataWidth-1:0]	ex_reg2,
		output reg[`RegAddrWidth-1:0]	ex_wd,
		output reg ex_wreg,
		output reg[`RegDataWidth-1:0]	ex_addr_base,
		output reg[`RegDataWidth-1:0]	ex_addr_off,

		//	output to ex, pc_reg, if_id, id
		output reg[1:0] jump_type_o
		
	);
	always @ (posedge clk)
	begin
		if(rst == `RstEnable) begin
			ex_aluop	<=	`EXE_NOP_OP;
			ex_alusel	<=	`EXE_NOP_RES;
			ex_reg1		<=	`ZeroWord;
			ex_reg2		<=	`ZeroWord;
			ex_wd		<=	`ZeroRegAddr;
			ex_wreg		<=	`WriteDisable;
			ex_addr_base <= `ZeroWord;
			ex_addr_off	<=	`ZeroWord;
			jump_type_o	<=	`NoJump;
		end else if(!stall[2]) begin
			ex_aluop	<=	id_aluop;
			ex_alusel	<=	id_alusel;
			ex_reg1		<=	id_reg1;
			ex_reg2		<=	id_reg2;
			ex_wd		<=	id_wd;
			ex_wreg		<=	id_wreg;
			ex_addr_base <= id_addr_base;
			ex_addr_off	<=	id_addr_off;
			jump_type_o	<=	id_jump_type;
		end 
	end
	
endmodule

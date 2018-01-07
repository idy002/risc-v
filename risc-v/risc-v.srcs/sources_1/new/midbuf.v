`timescale 1ns / 1ps
`include "defines.vh"

module if_id(
        input wire clk,
        input wire rst,
		input wire[5:0] stall,

		//	input from pc_reg and inst cache
        input wire[`MemAddrWidth-1:0] if_pc,
        input wire[`InstWidth-1:0] if_inst,

		//	input from ex
		input wire ex_jump,
		input wire[1:0] idex_jump_type,

		//	output to id
        output reg[`MemAddrWidth-1:0] id_pc,
        output reg[`InstWidth-1:0] id_inst
    );
    
    always @ (posedge clk)
    begin
        if (rst == `RstEnable)
        begin
            id_pc <= `ZeroWord;
            id_inst <= `ZeroWord;
		end else if (!stall[1]) begin
			if (idex_jump_type == `JumpUncdt 
				|| (idex_jump_type == `JumpBranch && ex_jump)) begin
				id_pc <= `ZeroWord;
				id_inst <= `NopInst;
			end else begin
				id_pc <= if_pc;
				id_inst <= if_inst;
			end
        end
    end
    
endmodule

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
		input wire id_wait_reg,
		input wire[1:0] memop_i,
		input wire[2:0] memfunct_i,
		
		//	output to ex
		output reg[`AluOpWidth-1:0]		ex_aluop,
		output reg[`AluSelWidth-1:0]	ex_alusel,
		output reg[`RegDataWidth-1:0]	ex_reg1,
		output reg[`RegDataWidth-1:0]	ex_reg2,
		output reg[`RegAddrWidth-1:0]	ex_wd,
		output reg ex_wreg,
		output reg[`RegDataWidth-1:0]	ex_addr_base,
		output reg[`RegDataWidth-1:0]	ex_addr_off,
		output reg[1:0] memop_o,
		output reg[2:0] memfunct_o,

		//	output to ex, pc_reg, if_id, id
		output reg[1:0] jump_type_o,

		//	output to id
		output reg wait_reg_o
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
			wait_reg_o <=	`NoWait;
			memop_o		<=	`MEM_NOP;
			memfunct_o  <=	0;
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
			wait_reg_o <=	id_wait_reg;
			memop_o		<=	memop_i;
			memfunct_o  <=	memfunct_i;
		end 
	end
	
endmodule

module ex_mem(
        input wire clk,
        input wire rst,
		input wire[5:0] stall,
        
        //  input from ex
        input wire[`RegDataWidth-1:0] ex_wdata,
        input wire[`RegAddrWidth-1:0] ex_wd,
        input wire ex_wreg,
		input wire[`MemAddrWidth-1:0] ex_addr,
		input wire[1:0] memop_i,
		input wire[2:0] memfunct_i,
        
        //  output to mem
        output reg[`RegDataWidth-1:0] mem_wdata,            
        output reg[`RegAddrWidth-1:0] mem_wd,               
        output reg mem_wreg,
		output reg[`MemAddrWidth-1:0] mem_addr,
		output reg[1:0] memop_o,
		output reg[2:0] memfunct_o
    );
    
    always @ (posedge clk) 
    begin
        if (rst == `RstEnable) begin
            mem_wdata <= `ZeroWord;
            mem_wd <= `ZeroRegAddr;
            mem_wreg <= `WriteDisable;
			mem_addr <= `ZeroWord;
			memop_o <= 0;
			memfunct_o <= 0;
        end else if (!stall[3]) begin
            mem_wdata <= ex_wdata;
            mem_wd <= ex_wd;
            mem_wreg <= ex_wreg;
			mem_addr <= ex_addr;
			memop_o <= memop_i;
			memfunct_o <= memfunct_i;
        end
    end
endmodule

module mem_wb(
        input wire clk,
        input wire rst,
		input wire[5:0] stall,
        
        //  input from mem
        input wire[`RegDataWidth-1:0] mem_wdata,
        input wire[`RegAddrWidth-1:0] mem_wd,
        input wire mem_wreg,
        
        //  output to wb
        output reg[`RegDataWidth-1:0] wb_wdata,
        output reg[`RegAddrWidth-1:0] wb_wd,
        output reg wb_wreg
    );
    
    always @ (posedge clk)
    begin
        if (rst == `RstEnable) begin
            wb_wdata <= `ZeroWord;
            wb_wd <= `ZeroRegAddr;
            wb_wreg <= `WriteDisable;
        end else if(!stall[4]) begin
            wb_wdata <= mem_wdata;
            wb_wd <= mem_wd;
            wb_wreg <= mem_wreg;
        end
    end
    
endmodule

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

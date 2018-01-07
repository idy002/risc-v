`timescale 1ns / 1ps
`include "defines.vh"

module pc_reg(
        input wire clk,
        input wire rst,
		input wire[5:0] stall,

		//	input from ex
		input wire ex_jump,
		input wire[1:0] idex_jump_type,
		input wire[`MemAddrWidth-1:0] ex_addr,

		//	output to inst cache and if_id	
        output reg[`MemAddrWidth-1:0] pc,
        output reg ce
    );
    
    always @ (posedge clk) 
    begin
        if (rst == `RstEnable) 
        begin
            ce <= `ChipDisable;
            pc <= 32'hFFFFFFFC;
		end else if (!stall[0]) begin
			if (idex_jump_type == `JumpUncdt 
				|| (idex_jump_type == `JumpBranch && ex_jump)) begin
				ce <= `ChipEnable;
				pc <= ex_addr;
			end else begin
				ce <= `ChipEnable;
				pc <= pc + 4'h4;
			end
        end 
    end
    
endmodule

`timescale 1ns / 1ps
`include "defines.vh"

module sopc(
        input wire clk,
        input wire rst,
        
        output[10:0] display_out 
    );

    wire[`MemAddrWidth-1:0] inst_addr;
    wire[`InstWidth-1:0] inst;
    wire memory_ce;

    risc32i risc32i0(
        .clk(clk),
        .rst(rst)
    );

	/*
	memory_ctrl memory_ctrl0(
		
	);
    memory memory0(
        .ce(memory_ce),
        .addr(inst_addr),
        .inst(inst)
    );
	*/

    //  test atom

endmodule

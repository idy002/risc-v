`timescale 1ns / 1ps
`include "defines.vh"

module sopc(
        input wire clk,
        input wire rst,
        
		output Tx,
		input Rx,
        output[10:0] display_out 
    );


    risc32i risc32i0(
        .clk(clk),
        .rst(rst),
		.Tx(Tx),
		.Rx(Rx)
    );

    //  test atom

endmodule

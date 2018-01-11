`timescale 1ns / 1ps
`include "defines.vh"

module sim();

	reg clk;
	reg rst;
	wire Tx;
	wire Rx;

	cpu cpu0(clk,rst,Tx,Rx);
	memory_sim memory_sim0(clk,rst,Rx,Tx);

	initial begin
		$dumpvars(0);
	end

	initial begin
		clk = 0;
		forever #5 clk = !clk;	//	100MHZ
	end

	initial begin
		rst = 0;
		rst = 1;
#100	rst = 0;
#700000 $finish;
	end

endmodule

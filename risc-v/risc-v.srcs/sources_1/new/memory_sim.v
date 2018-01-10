`timescale 1ns / 1ps
`include "defines.vh"

module memory_sim(
        input wire clk,
        input wire rst,
        
		output Tx,
		input Rx
	);

	//	control uart
	reg uart_send_flag, uart_recv_flag;
	reg[7:0] uart_send_data;
	wire[7:0] uart_recv_data;
	wire uart_receivable, uart_sendable;

	uart_comm uart0( clk, rst, uart_send_flag, uart_send_data, uart_recv_flag, 
		uart_recv_data, uart_sendable, uart_receivable, Tx, Rx);

	localparam MEM_SIZE = 8192;		//	2^13 = 8K
 	reg[7:0] data[MEM_SIZE-1:0];
 
 	integer i;
 	initial begin
		for(i = 0; i < MEM_SIZE; i=i+1) begin
			data[i] = 0;
		end
 		for(i = 0; i < MEM_SIZE; i=i+1) begin
 			$dumpvars(0, data[i]);
 		end
 		$readmemh(`MemFile, data);
 	end

	always @ (posedge clk or posedge rst) begin
		if(rst) begin
			uart_send_flag <= 0;
			uart_recv_flag <= 0;
			uart_send_data <= 0;
		end else begin
		end
	end
	

endmodule

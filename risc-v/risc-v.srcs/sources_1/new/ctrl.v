`timescale 1ns / 1ps
`include "defines.vh"

module ctrl(
		input wire		rst,

		//	request from combination circuit
		input wire		id_req,
		input wire		mem_busy,

		//	stall signals sent to buffer
		output reg[5:0] stall
	);

	always @ (*)
	begin
		if (rst) begin
			stall <= 6'b000000;
		end else begin
			if (mem_busy) begin
				stall <= 6'b111111;
			end else if (id_req) begin
				stall <= 6'b000011;
			end else begin
				stall <= 6'b000000;
			end
		end
	end

endmodule

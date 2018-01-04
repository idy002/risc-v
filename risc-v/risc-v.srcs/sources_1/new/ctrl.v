`timescale 1ns / 1ps
`include "defines.vh"

module ctrl(
		input wire		rst,

		//	request from combination circuit
		input wire		id_req,

		//	stall signals sent to buffer
		output reg[5:0] stall
	);

	always @ (*)
	begin
		if (id_req) begin
			stall <= 6'b000011;
		end else begin
			stall <= 6'b000000;
		end
	end

endmodule

`timescale 1ns / 1ps
`include "defines.vh"

module cache(
		input wire clk,
		input wire rst,

		input wire flush,	//	make sure when flush is 1,  inst_ce and data_ce are 0

		input wire inst_ce, data_ce,
		input wire data_optype,		//	0 for `MemRead 1 for `MemWrite
		input wire[`MemAddrWidth-1:0] inst_addr,
		input wire[`MemAddrWidth-1:0] data_addr,
		input wire[`RegDataBytes-1:0] write_data_mask,
		input wire[`RegDataWidth-1:0] write_data_value,

		output reg[`RegDataWidth-1:0] inst_value,
		output reg[`RegDataWidth-1:0] read_data_value,

		output reg busy,

		output wire Tx,
		input wire Rx
	);

	reg[7:0] data[1023:0];

	integer i;
	initial begin
		$readmemh(`MemFile, data);
		for(i = 0; i < 1024; i=i+1) begin
			$dumpvars(0, data[i]);
		end
	end

	reg[1:0] counter;

	reg finished;

	always @ (*) begin
		busy <= !finished;
	end
	always @ (posedge clk) begin
		if(rst) begin
			counter <= 2'b01;
			inst_value <= `ZeroWord;
			read_data_value <= `ZeroWord;
			finished <= 1'b1;
		end else begin
			if(inst_ce) begin
				if(data_ce && data_optype == `MemWrite && data_addr[9:0] == inst_addr[9:0]) begin
					inst_value <= write_data_value;
				end else begin
					inst_value <= {
						data[{inst_addr[9:2],2'b11}],
						data[{inst_addr[9:2],2'b10}],
						data[{inst_addr[9:2],2'b01}],
						data[{inst_addr[9:2],2'b00}]
								  };
				end
			end
			if(data_ce) begin
				if(data_optype == `MemRead) begin
					read_data_value <= {
						data[{data_addr[9:2],2'b11}],
						data[{data_addr[9:2],2'b10}],
						data[{data_addr[9:2],2'b01}],
						data[{data_addr[9:2],2'b00}]
								  };
				end else begin
					if(write_data_mask[0]) data[{data_addr[9:2],2'b00}] <= write_data_value[7:0];
					if(write_data_mask[1]) data[{data_addr[9:2],2'b01}] <= write_data_value[15:8];
					if(write_data_mask[2]) data[{data_addr[9:2],2'b10}] <= write_data_value[23:16];
					if(write_data_mask[3]) data[{data_addr[9:2],2'b11}] <= write_data_value[31:24];
				end
			end
			finished <= (counter[0] == 1'b0);
			counter <= counter + 1;
		end
	end
endmodule

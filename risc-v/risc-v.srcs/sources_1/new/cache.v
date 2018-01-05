`timescale 1ns / 1ps
`include "defines.vh"

module cacheram(
		input wire clk,
		input wire rst,

		input wire read_flag,
		input wire[`CacheIndexWidth-1:0] read_addr,
		output reg[`BlockWidth-1:0] read_data,

		input wire write_flag,
		input wire[`CacheIndexWidth-1:0] write_addr,
		input wire[`BlockWidth-1:0] write_data,
		input wire[`BlockBytes-1:0] write_mask
	);

	reg[`BlockWidth-1:0] data[(1<<`CacheIndexWidth)-1:0];

	always @ (posedge clk) begin
		if (rst) begin
			read_data <= `ZeroBlock;
		end else begin
			if(read_flag) 
				read_data <= data[read_addr];
			if(write_flag) begin
				if(write_mask[0]) data[write_addr][(0+1)*8-1:0*8] <= write_data[(0+1)*8-1:0*8];
				if(write_mask[1]) data[write_addr][(1+1)*8-1:1*8] <= write_data[(1+1)*8-1:1*8];
				if(write_mask[2]) data[write_addr][(2+1)*8-1:2*8] <= write_data[(2+1)*8-1:2*8];
				if(write_mask[3]) data[write_addr][(3+1)*8-1:3*8] <= write_data[(3+1)*8-1:3*8];
				if(write_mask[4]) data[write_addr][(4+1)*8-1:4*8] <= write_data[(4+1)*8-1:4*8];
				if(write_mask[5]) data[write_addr][(5+1)*8-1:5*8] <= write_data[(5+1)*8-1:5*8];
				if(write_mask[6]) data[write_addr][(6+1)*8-1:6*8] <= write_data[(6+1)*8-1:6*8];
				if(write_mask[7]) data[write_addr][(7+1)*8-1:7*8] <= write_data[(7+1)*8-1:7*8];
				if(write_mask[8]) data[write_addr][(8+1)*8-1:8*8] <= write_data[(8+1)*8-1:8*8];
				if(write_mask[9]) data[write_addr][(9+1)*8-1:9*8] <= write_data[(9+1)*8-1:9*8];
				if(write_mask[10]) data[write_addr][(10+1)*8-1:10*8] <= write_data[(10+1)*8-1:10*8];
				if(write_mask[11]) data[write_addr][(11+1)*8-1:11*8] <= write_data[(11+1)*8-1:11*8];
				if(write_mask[12]) data[write_addr][(12+1)*8-1:12*8] <= write_data[(12+1)*8-1:12*8];
				if(write_mask[13]) data[write_addr][(13+1)*8-1:13*8] <= write_data[(13+1)*8-1:13*8];
				if(write_mask[14]) data[write_addr][(14+1)*8-1:14*8] <= write_data[(14+1)*8-1:14*8];
				if(write_mask[15]) data[write_addr][(15+1)*8-1:15*8] <= write_data[(15+1)*8-1:15*8];
			end
		end
	end
endmodule

module cache(
		input wire clk,
		input wire rst,

		input wire flush,	//	make sure when flush is 1,  inst_ce and data_ce are 0

		input wire inst_ce, data_ce,
		input wire data_optype,		//	0 for `MemRead 1 for `MemWrite
		input wire[`MemAddrWidth-1:0] inst_addr,
		input wire[`MemAddrWidth-1:0] data_addr,
		input wire[`RegDataWidth-1:0] write_data_value,

		output reg[`RegDataWidth-1:0] inst_value,
		output reg[`RegDataWidth-1:0] read_data_value,

		output reg busy,

		output wire Tx,
		input wire Rx
	);

	//	for memory_ctrl 
	reg							mc_ce; 
	reg							mc_optype;
	reg[`BlockAddrWidth-1:0]	mc_addr;
	reg[`BlockWidth-1:0]		mc_write_data;
	wire[`BlockWidth-1:0]		mc_read_data;
	wire						mc_busy;

	memory_ctrl mctrl0( clk, rst, mc_ce, mc_optype,
		mc_addr, mc_write_data, mc_read_data, mc_busy, Tx, Rx
	);

	//	for inst cache ram
	reg							icram_read_flag;
	reg[`CacheIndexWidth-1:0]	icram_read_addr;
	wire[`BlockWidth-1:0]		icram_read_data;
	reg							icram_write_flag;
	reg[`CacheIndexWidth-1:0]	icram_write_addr;
	reg[`BlockWidth-1:0]		icram_write_data;
	reg[`BlockBytes-1:0]		icram_write_mask;
	cacheram icacheram( clk, rst, icram_read_flag, icram_read_addr, icram_read_data, 
		icram_write_flag, icram_read_addr, icram_write_data, icram_write_mask
	);
	reg[`CacheTagWidth-1:0]		itags[(1<<`CacheIndexWidth)-1:0];
	reg							ivalid[(1<<`CacheIndexWidth)-1:0];

	//	for data cache ram
	reg							dcram_read_flag;
	reg[`CacheIndexWidth-1:0]	dcram_read_addr;
	wire[`BlockWidth-1:0]		dcram_read_data;
	reg							dcram_write_flag;
	reg[`CacheIndexWidth-1:0]	dcram_write_addr;
	reg[`BlockWidth-1:0]		dcram_write_data;
	reg[`BlockBytes-1:0]		dcram_write_mask;
	cacheram dcacheram( clk, rst, dcram_read_flag, dcram_read_addr, dcram_read_data, 
		icram_write_flag, dcram_read_addr, dcram_write_data, dcram_write_mask
	);
	reg[`CacheTagWidth-1:0]		dtags[(1<<`CacheIndexWidth)-1:0];
	reg							dvalid[(1<<`CacheIndexWidth)-1:0];
	reg							ddirty[(1<<`CacheIndexWidth)-1:0];

	//	current status
	//		when flush on:
	//		flush the blocks one by one
	reg[`CacheIndexWidth-1:0] current_flush_line;

	//		when flush not on:
	//			0.	start
	//			1.	write data to memory if tag not equal
	//			2.  load data from memory if empty
	//			3.	write data to dcache(read data from dcache), set icache
	//				invalid if necessary
	//			4.	load data from memory
	//			5.	read data from icache
	reg[2:0] status;
	

	//	next status
	reg[`RegDataWidth-1:0] next_inst_value,
	reg[`RegDataWidth-1:0] next_read_data_value,
	reg next_busy,
	reg[2:0] next_status;

	wire[`CacheDispWidth-1:0]	iaddr_disp;
	wire[`CacheIndexWidth-1:0]	iaddr_index;
	wire[`CacheTagWidth-1:0]	iaddr_tag;
	assign iaddr_disp = inst_addr[`CacheDispPos];
	assign iaddr_index = inst_addr[`CacheIndexPos];
	assign iaddr_tag = inst_addr[`CacheTagPos];

	wire[`CacheDispWidth-1]		daddr_disp;
	wire[`CacheIndexWidth-1]	daddr_index;
	wire[`CacheTagWidth-1]		daddr_tag;
	assign daddr_disp = inst_data[`CacheDispPos];
	assign daddr_index = inst_data[`CacheIndexPos];
	assign daddr_tag = inst_data[`CacheTagPos];

	always @ (*) begin
		if(rst) begin
			next_inst_value <= `ZeroWord;
			next_read_data_value <= `ZeroWord;
			next_busy <= `NotBusy;
			next_status <= 3'b0;
		end else begin
			next_inst_value <= `ZeroWord;
			next_read_data_value <= `ZeroWord;
			next_busy <= `IsBusy;
			next_status <= 3'b0;
			case(status)
				3'd0: begin
					if(data_ce) begin
						if(dvalid[daddr_index]) begin
							if(daddr_tag == dtags[daddr_index]) begin	
							end else begin	
							end
						end else begin
						end
					end else begin
					end
				end
				3'd1: begin
				end
				3'd2: begin
				end
				3'd3: begin
				end
				3'd4: begin
				end
				3'd5: begin
				end
			endcase
		end
	end

	always @ (posedge clk) begin
		if(rst) begin
			valid <= {(1<<`CacheIndexWidth)-1{1'b0}};
			inst_value <= `ZeroWord;
			read_data_value <= `ZeroWord;
			busy <= `NotBusy;
			status <= 3'b0;
		end else begin
			inst_value <= next_inst_value;
			read_data_value <= next_read_data_value;
			busy <= next_busy;
			status <= next_status;
		end
	end

endmodule


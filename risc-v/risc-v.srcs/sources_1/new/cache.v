`timescale 1ns / 1ps
`include "defines.vh"

module cache(
		input wire clk,
		input wire rst,

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

	//	for control uart_comm 
	reg uart_send_flag, uart_recv_flag;
	reg[7:0] uart_send_data;
	wire[7:0] uart_recv_data;
	wire uart_receivable, uart_sendable;

//	uart_comm uart0( clk, rst, uart_send_flag, uart_send_data, uart_recv_flag, 
//		uart_recv_data, uart_sendable, uart_receivable, Tx, Rx);
    uart_comm uart0( 
            .CLK(clk),
            .RST(rst),
            .send_flag(uart_send_flag),
            .send_data(uart_send_data),
            .recv_flag(uart_recv_flag),
            .recv_data(uart_recv_data),
            .sendable(uart_sendable),
            .receivable(uart_receivable), 
            .Tx(Tx), 
            .Rx(Rx) );
	//	relative data
	reg[39:0] cur_head;
	reg[31:0] cur_data;

	//	transfer status
	localparam CS_READY			=	4'd0;
	localparam CS_DATA_HEAD		=	4'd1;
	localparam CS_DATA_VALUE	=	4'd2;
	localparam CS_INST_HEAD		=	4'd3;
	localparam CS_INST_VALUE	=	4'd4;
	localparam CS_OUTPUT		=	4'd5;
	reg[3:0] cur_status;
	reg[2:0] cur_disp;
	reg[2:0] next_disp;
	reg[3:0] next_status;

	//
	//	for cur_head and cur_data
	//
	//  the format of head:
	//	1111   1111   11111111 11111111 11111111 11111111
	//  ----   ----   -----------------------------------
	//  type   mask   address
	//
	//
	localparam READ_BIT		=	1'b0;
	localparam WRITE_BIT	=	1'b1;
	always @ (*) begin
		if (rst) begin
			cur_head <= 0;
			cur_data <= 0;
		end else begin
			cur_head <= 0;
			cur_data <= 0;
			case (cur_status) 
				CS_READY: begin
					cur_head <= 0;
					cur_data <= 0;
				end
				CS_DATA_HEAD: begin
					if(data_optype == `MemRead) begin
						cur_head <= {{4{READ_BIT}}, {4{1'b0}}, data_addr};
					end else begin
						cur_head <= {{4{WRITE_BIT}}, write_data_mask, data_addr};
					end
				end
				CS_DATA_VALUE: begin
					if(data_optype == `MemWrite) begin
						cur_data <= write_data_value;
					end 
				end
				CS_INST_HEAD: begin
					cur_head <= {{4{READ_BIT}}, {4{1'b0}}, inst_addr};
				end
			endcase
		end
	end

	//
	//	when busy:
	//		1. current is CS_INST_HEAD, CS_INST_VALUE, CS_DATA_HEAD,
	//		CS_DATA_VALUE.
	//		2. or current is CS_READY and at least one of inst_ce and data_ce
	//		is on.
	//
	always @ (*) begin
		if(rst) begin
			busy <= `No;
		end else begin
			if(		cur_status == CS_INST_HEAD 
				||	cur_status == CS_INST_VALUE
				||	cur_status == CS_DATA_HEAD
				||	cur_status == CS_DATA_VALUE
				||	(cur_status == CS_READY && (inst_ce || data_ce))) begin
				busy <= `Yes;
			end else begin
				busy <= `No;
			end
		end
	end

	//
	//	the combinational logic
	//
	integer index;
	localparam HeadFullDisp	=	3'b100;
	localparam DataFullDisp =	3'b011;

	always @ (*) begin
		if (rst) begin
			next_status <= CS_READY;
			next_disp	<= 0;
			uart_send_flag <= `SendDisable;
			uart_recv_flag <= `RecvDisable;
			uart_send_data <= 0;
			inst_value <= 0;
			read_data_value <= 0;
		end else begin
		    next_status <= cur_status;
		    next_disp   <= 0;
		    uart_send_data <= 0;
		    uart_send_flag <= `SendDisable;
			uart_recv_flag <= `RecvDisable;
			case (cur_status) 
				CS_READY: begin
					if (data_ce) begin
						next_status <= CS_DATA_HEAD;
						next_disp <= 0;
					end else if (inst_ce) begin
						next_status <= CS_INST_HEAD;
						next_disp <= 0;
					end else begin
						next_status <= CS_READY;
						next_disp <= 0;
					end
				end
				CS_DATA_HEAD: begin
					if (uart_sendable) begin
						uart_send_flag <= `SendEnable;
						/*
						for(index = 0; index < 8; index = index + 1) 
							uart_send_data[index] <= cur_head[{cur_disp,index[2:0]}];
						*/
                        if(cur_disp == 3'b000) 
                          uart_send_data <= cur_head[7:0];
                        else if(cur_disp == 3'b001)
                          uart_send_data <= cur_head[15:8];
                        else if(cur_disp == 3'b010)
                          uart_send_data <= cur_head[23:16];
                        else if(cur_disp == 3'b011)
                          uart_send_data <= cur_head[31:24];
                        else
                          uart_send_data <= cur_head[39:32];
						if(cur_disp == HeadFullDisp) begin
							next_status <= CS_DATA_VALUE;
							next_disp <= 0;
							$display("[cache] send data head [%x]", cur_head);
						end else begin
							next_status <= cur_status;
							next_disp <= cur_disp + 1;
						end
					end else begin
						next_status <= cur_status;
						next_disp <= cur_disp;
					end
				end
				CS_DATA_VALUE: begin
					if (data_optype == `MemRead) begin
						if (uart_receivable) begin
							uart_recv_flag <= `RecvEnable;
							/*
							for(index = 0; index < 8; index = index + 1) 
								read_data_value[{cur_disp,index[2:0]}] <= uart_recv_data[index];
							*/
                            if(cur_disp == 3'b000) 
                              read_data_value[7:0] <= uart_recv_data;
                            else if(cur_disp == 3'b001)
                              read_data_value[15:8] <= uart_recv_data;
                            else if(cur_disp == 3'b010)
                              read_data_value[23:16] <= uart_recv_data;
                            else
                              read_data_value[31:24] <= uart_recv_data;
							if(cur_disp == DataFullDisp) begin
								next_disp <= 0;
								if(inst_ce)
									next_status <= CS_INST_HEAD;
								else
									next_status <= CS_OUTPUT;
								$display("[cache] recv data value [%x]", {uart_recv_data,read_data_value[23:0]});
							end else begin
								next_status <= cur_status;
								next_disp <= cur_disp + 1;
							end
						end else begin
							next_status <= cur_status;
							next_disp <= cur_disp;
						end
					end else begin
						if (uart_sendable) begin
							uart_send_flag <= `SendEnable;
							/*
							for(index = 0; index < 8; index = index + 1) 
								uart_send_data[index] <= write_data_value[{cur_disp,index[2:0]}];
							*/
							if(cur_disp == 3'b000) 
                              uart_send_data <= write_data_value[7:0];
                            else if(cur_disp == 3'b001)
                              uart_send_data <= write_data_value[15:8];
                            else if(cur_disp == 3'b010)
                              uart_send_data <= write_data_value[23:16];
                            else 
                              uart_send_data <= write_data_value[31:24];
							if(cur_disp == DataFullDisp) begin
								next_disp <= 0;
								if(inst_ce) begin
									next_status <= CS_INST_HEAD;
								end else begin
									next_status <= CS_OUTPUT;
								end
								$display("[cache] send data value [%x]", write_data_value);
							end else begin
								next_status <= cur_status;
								next_disp <= cur_disp + 1;
							end
						end else begin
							next_status <= cur_status;
							next_disp <= cur_disp;
						end
					end
				end
				CS_INST_HEAD: begin
					if (uart_sendable) begin
						uart_send_flag <= `SendEnable;
						/*
						for(index = 0; index < 8; index = index + 1) 
							uart_send_data[index] <= cur_head[{cur_disp,index[2:0]}];
						*/
						if(cur_disp == 3'b000) 
						  uart_send_data <= cur_head[7:0];
						else if(cur_disp == 3'b001)
						  uart_send_data <= cur_head[15:8];
						else if(cur_disp == 3'b010)
						  uart_send_data <= cur_head[23:16];
						else if(cur_disp == 3'b011)
						  uart_send_data <= cur_head[31:24];
						else
						  uart_send_data <= cur_head[39:32];
						if(cur_disp == HeadFullDisp) begin
							next_status <= CS_INST_VALUE;
							next_disp <= 0;
							$display("[cache] send inst head [%x]", cur_head);
						end else begin
							next_status <= cur_status;
							next_disp <= cur_disp + 1;
						end
					end else begin
						next_status <= cur_status;
						next_disp <= cur_disp;
					end
				end
				CS_INST_VALUE: begin
					if (uart_receivable) begin
						uart_recv_flag <= `RecvEnable;
						/*
						for(index = 0; index < 8; index = index + 1) 
							inst_value[{cur_disp,index[2:0]}] <= uart_recv_data[index];
						*/
						if(cur_disp == 3'b000) 
						  inst_value[7:0] <= uart_recv_data;
						else if(cur_disp == 3'b001)
						  inst_value[15:8] <= uart_recv_data;
						else if(cur_disp == 3'b010)
						  inst_value[23:16] <= uart_recv_data;
						else
						  inst_value[31:24] <= uart_recv_data;
						if(cur_disp == DataFullDisp) begin
							next_disp <= 0;
							next_status <= CS_OUTPUT;
							$display("[cache] recv inst value [%x]", {uart_recv_data,inst_value[23:0]});
						end else begin
							next_status <= cur_status;
							next_disp <= cur_disp + 1;
						end
					end else begin
						next_status <= cur_status;
						next_disp <= cur_disp;
					end
				end
				CS_OUTPUT: begin
					$display("[cache] cur_status: CS_OUTPUT");
					next_status <= CS_READY;
					next_disp <= 0;
				end
			endcase
		end
	end


//
//	update the status and disp per clock
//
	always @ (posedge clk) begin
		if(rst) begin
			cur_status <= CS_READY;
			cur_disp <= 0;
		end else begin
			cur_status <= next_status;
			cur_disp <= next_disp;
		end
	end
endmodule

// `timescale 1ns / 1ps
// `include "defines.vh"
// 
// module cache(
// 		input wire clk,
// 		input wire rst,
// 
// 		input wire flush,	//	make sure when flush is 1,  inst_ce and data_ce are 0
// 
// 		input wire inst_ce, data_ce,
// 		input wire data_optype,		//	0 for `MemRead 1 for `MemWrite
// 		input wire[`MemAddrWidth-1:0] inst_addr,
// 		input wire[`MemAddrWidth-1:0] data_addr,
// 		input wire[`RegDataWidth-1:0] write_data_value,
// 
// 		output reg[`RegDataWidth-1:0] inst_value,
// 		output reg[`RegDataWidth-1:0] read_data_value,
// 
// 		output wire busy,
// 
// 		output wire Tx,
// 		input wire Rx
// 	);
// 
// 	//	for memory_ctrl 
// 	reg							mc_ce; 
// 	reg							mc_optype;
// 	reg[`BlockAddrWidth-1:0]	mc_addr;
// 	reg[`BlockWidth-1:0]		mc_write_data;
// 	wire[`BlockWidth-1:0]		mc_read_data;
// 	wire						mc_busy;
// 	memory_ctrl mctrl0( clk, rst, mc_ce, mc_optype,
// 		mc_addr, mc_write_data, mc_read_data, mc_busy, Tx, Rx
// 	);
// 
// 	reg[`CacheTagWidth-1:0]		itags[(1<<`CacheIndexWidth)-1:0];
// 	reg[`BlockWidth-1:0]		iblocks[(1<<`CacheIndexWidth)-1:0];
// 	reg							ivalid[(1<<`CacheIndexWidth)-1:0];
// 
// 	reg[`CacheTagWidth-1:0]		dtags[(1<<`CacheIndexWidth)-1:0];
// 	reg[`BlockWidth-1:0]		dblocks[(1<<`CacheIndexWidth)-1:0];
// 	reg							dvalid[(1<<`CacheIndexWidth)-1:0];
// 
// 	//	decomposition of inst and data address
// 	wire[`CacheDispWidth-1:0]	iaddr_disp;
// 	wire[`CacheIndexWidth-1:0]	iaddr_index;
// 	wire[`CacheTagWidth-1:0]	iaddr_tag;
// 	wire[`BlockAddrWidth-1:0]	iaddr_block_addr;
// 	assign iaddr_disp	= inst_addr[`CacheDispPos];
// 	assign iaddr_index	= inst_addr[`CacheIndexPos];
// 	assign iaddr_tag	= inst_addr[`CacheTagPos];
// 	assign iaddr_block_addr = inst_addr[`CacheBlockAddrPos];
// 
// 	wire[`CacheDispWidth-1:0]		daddr_disp;
// 	wire[`CacheIndexWidth-1:0]	daddr_index;
// 	wire[`CacheTagWidth-1:0]		daddr_tag;
// 	wire[`BlockAddrWidth-1:0]	daddr_block_addr;
// 	assign daddr_disp	= data_addr[`CacheDispPos];
// 	assign daddr_index	= data_addr[`CacheIndexPos];
// 	assign daddr_tag	= data_addr[`CacheTagPos];
// 	assign daddr_block_addr = data_addr[`CacheBlockAddrPos];
// 	
// 	//	current status
// 	`define CS_WAIT_IN			4'd0
// 	`define CS_DATA_WRITE_1		4'd1
// 	`define CS_DATA_WRITE_2		4'd2
// 	`define CS_DATA_LOAD_1		4'd3
// 	`define CS_DATA_LOAD_2		4'd4
// 	`define CS_INST_LOAD_1		4'd5
// 	`define CS_INST_LOAD_2		4'd6
// 	`define CS_CACHE			4'd7
// 	`define CS_FLUSH			4'd8
// 	`define CS_WAIT_OUT			4'd9
// 	reg[3:0] curt_status;
// 
// 	//	current status
// 	//		when flush on:
// 	//		flush the blocks one by one
// 	reg[`CacheIndexWidth-1:0] curt_flush_line;
// 
// 	//	next status
// 	reg[`RegDataWidth-1:0] next_inst_value;
// 	reg[`RegDataWidth-1:0] next_read_data_value;
// 	reg[3:0] next_status;
// 	reg[`CacheIndexWidth-1:0] next_flush_line;
// 
// 
// 	always @ (*) begin
// 		if (rst) begin
// 			busy <= `No;
// 		end else begin
// 			busy <= (curt_status != `CS_WAIT_OUT)
// 				&& !(curt_status == `CS_WAIT_IN && (inst_ce || data_ce || flush));
// 		end
// 	end
// 
// 	always @ (*) begin
// 		if (rst) begin
// 		end else begin
// 			//	next status
// 			next_inst_value <= 0;
// 			next_read_data_value <= 0;
// 			next_status <= 0;
// 			next_flush_line <= 0;
// 
// 			//	mem ctrl
// 			mc_ce <= `ChipDisable;
// 
// 			case (curt_status) 
// 				`CS_WAIT_IN: begin
// 					if (flush) begin
// 						next_status <= `CS_FLUSH;
// 						next_flush_line <= 0;
// 					end else if (inst_ce || data_ce) begin
// 						next_status <= `CS_DATA_WRITE_1;
// 					end else begin
// 						next_status <= `CS_WAIT_IN;
// 					end
// 				end
// 				`CS_DATA_WRITE_1: begin
// 					if (data_ce) begin
// 						if (dvalid[daddr_index]) begin
// 							if (dtags[daddr_index] == daddr_tag) begin
// 								next_status <= `CS_INST_LOAD_1;
// 							end else begin
// 								next_status <= `CS_DATA_WRITE_2;
// 								dvalid[daddr_tag] <= `No;
// 								mc_ce <= `ChipEnable;
// 								mc_optype <= `MemWrite;
// 								mc_addr <= daddr_block_addr;
// 								mc_write_data <= dblocks[daddr_index];
// 							end
// 						end else begin
// 							next_status <= `CS_DATA_LOAD_1;
// 						end
// 					end else begin
// 						next_status <= `CS_INST_LOAD_1;
// 					end
// 				end
// 				`CS_DATA_WRITE_2: begin
// 					if (mc_busy) begin
// 						next_status <= `CS_DATA_WRITE_2;
// 						mc_ce <= `ChipEnable;
// 						mc_optype <= `MemWrite;
// 						mc_addr <= daddr_block_addr;
// 						mc_write_data <= dblocks[daddr_index];
// 					end else begin
// 						next_status <= `CS_DATA_LOAD_1;
// 						mc_ce <= `ChipDisable;
// 					end
// 				end
// 				`CS_DATA_LOAD_1: begin
// 					if (data_ce) begin
// 						if(dvalid[daddr_index] && dtags[daddr_index] == daddr_tag) begin
// 							next_status <= `CS_INST_LOAD_1;
// 						end else begin
// 							next_status <= `CS_DATA_LOAD_2; 
// 							mc_ce <= `ChipEnable;
// 							mc_optype <= `MemRead;
// 							mc_addr <= daddr_block_addr;
// 						end
// 					end else begin
// 						next_status <= `CS_INST_LOAD_1;
// 					end
// 				end
// 				`CS_DATA_LOAD_2: begin
// 					if (mc_busy) begin
// 						next_status <= `CS_DATA_LOAD_2;
// 						mc_ce <= `ChipEnable;
// 					end else begin
// 					end
// 				end
// 				`CS_INST_LOAD_1: begin
// 				end
// 				`CS_INST_LOAD_2: begin
// 				end
// 				`CS_CACHE: begin
// 				end
// 				`CS_WAIT_OUT: begin
// 				end
// 				`CS_FLUSH: begin
// 				end
// 			endcase
// 		end
// 	end
// 
// 	always @ (posedge clk) begin
// 		if (rst) begin
// 			inst_value <= `ZeroWord;
// 			read_data_value <= `ZeroWord;
// 			curt_status <= `CS_WAIT_IN;
// 			curt_flush_line <= 0;
// 		end else begin
// 			inst_value <= next_inst_value;
// 			read_data_value <= next_read_data_value;
// 			curt_status <= next_status;
// 			curt_flush_line <= next_flush_line;
// 		end
// 	end
// 
// endmodule





// `timescale 1ns / 1ps
// `include "defines.vh"
// 
// module cache(
// 		input wire clk,
// 		input wire rst,
// 
// 		input wire flush,	//	make sure when flush is 1,  inst_ce and data_ce are 0
// 
// 		input wire inst_ce, data_ce,
// 		input wire data_optype,		//	0 for `MemRead 1 for `MemWrite
// 		input wire[`MemAddrWidth-1:0] inst_addr,
// 		input wire[`MemAddrWidth-1:0] data_addr,
// 		input wire[`RegDataBytes-1:0] write_data_mask,
// 		input wire[`RegDataWidth-1:0] write_data_value,
// 
// 		output reg[`RegDataWidth-1:0] inst_value,
// 		output reg[`RegDataWidth-1:0] read_data_value,
// 
// 		output reg busy,
// 
// 		output wire Tx,
// 		input wire Rx
// 	);
// 
// 	reg[7:0] data[8191:0];
// 
// 	integer i;
// 	initial begin
// 		$readmemh(`MemFile, data);
// 		for(i = 0; i < 5000; i=i+1) begin
// 			$dumpvars(0, data[i]);
// 		end
// 	end
// 
// 	reg[1:0] counter;
// 
// 	reg finished;
// 
// 	always @ (*) begin
// 		busy <= !finished;
// 	end
// 	always @ (posedge clk) begin
// 		if(rst) begin
// 			counter <= 2'b01;
// 			inst_value <= `ZeroWord;
// 			read_data_value <= `ZeroWord;
// 			finished <= 1'b1;
// 		end else begin
// 			if(inst_ce) begin
// 				if(data_ce && data_optype == `MemWrite && data_addr[9:0] == inst_addr[9:0]) begin
// 					inst_value <= write_data_value;
// 				end else begin
// 					inst_value <= {
// 						data[{inst_addr[12:2],2'b11}],
// 						data[{inst_addr[12:2],2'b10}],
// 						data[{inst_addr[12:2],2'b01}],
// 						data[{inst_addr[12:2],2'b00}]
// 					};
// 				end
// 			end
// 			if(data_ce) begin
// 				if(data_optype == `MemRead) begin
// 					read_data_value <= {
// 						data[{data_addr[12:2],2'b11}],
// 						data[{data_addr[12:2],2'b10}],
// 						data[{data_addr[12:2],2'b01}],
// 						data[{data_addr[12:2],2'b00}]
// 					 };
// 				end else begin
// 					if(write_data_mask[0]) data[{data_addr[12:2],2'b00}] <= write_data_value[7:0];
// 					if(write_data_mask[1]) data[{data_addr[12:2],2'b01}] <= write_data_value[15:8];
// 					if(write_data_mask[2]) data[{data_addr[12:2],2'b10}] <= write_data_value[23:16];
// 					if(write_data_mask[3]) data[{data_addr[12:2],2'b11}] <= write_data_value[31:24];
// 					if(data_addr[12:0] == 13'h104 && (counter[0] != 1'b0)) begin
// 						$display("Write to 0x104 with '%c' %d", data[10'h104], data[10'h104]);
// 					end
// 				end
// 			end
// 			finished <= (counter[0] == 1'b0);
// 			counter <= counter + 1;
// 		end
// 	end
// endmodule

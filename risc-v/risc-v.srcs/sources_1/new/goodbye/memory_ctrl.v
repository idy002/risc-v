`timescale 1ns / 1ps
`include "defines.vh"

module memory_ctrl(
		input wire clk,
		input wire rst,
		input wire ce,	//	0 for sleep, 1 for work
		input wire optype,	

		input wire[`BlockAddrWidth-1:0] addr,	//	block address
		input wire[`BlockWidth-1:0] write_data,	//	write data to memory
		output reg[`BlockWidth-1:0] read_data,	//	read data from memory
		output reg busy,

		output wire Tx,
		input Rx
	);

	reg[`BlockWidth-1:0] next_read_data;
	reg next_busy;

	reg trans_status;
	reg[1:0] head_disp;
	reg[`CacheDispWidth-1:0] data_disp;
	
	reg next_trans_status;
	reg[1:0] next_head_disp;
	reg[`CacheDispWidth-1:0] next_data_disp;

	//	for control uart_comm 
	reg uart_send_flag, uart_recv_flag;
	reg[7:0] uart_send_data;
	wire[7:0] uart_recv_data;
	wire uart_receivable, uart_sendable;

	uart_comm uart0( clk, rst, uart_send_flag, uart_send_data, uart_recv_flag, 
		uart_recv_data, uart_sendable, uart_receivable, Tx, Rx);

	integer idx;

	reg[31:0] opaddr;
	always @ (*) begin
		if(rst || !ce || busy == `NotBusy) begin
			opaddr <= `ZeroWord;
		end else begin
			if(optype == `MemRead) begin
				opaddr <= {`ReadOpHead, addr};
			end else begin
				opaddr <= {`WriteOpHead, addr};
			end
		end
	end
	always @ (*) begin
		if(rst || !ce) begin		//	reset or not access memory
			uart_send_flag <= `SendDisable;
			uart_send_data <= `ZeroByte;
			uart_recv_flag <= `RecvDisable;
			next_busy <= `NotBusy;
			next_read_data <= `ZeroBlock;
			next_trans_status <= 1'b0;
			next_head_disp <= `ZeroHeadDisp;
			next_data_disp <= `ZeroDataDisp;
		end else if(busy == `NotBusy) begin	//	keep the outputs the same as the previous clock
			uart_send_flag <= `SendDisable;
			uart_send_data <= `ZeroByte;
			uart_recv_flag <= `RecvDisable;
			next_busy <= busy;
			next_read_data <= read_data;
			next_trans_status <= trans_status;
			next_head_disp <= head_disp;
			next_data_disp <= data_disp;
		end else begin
			/* remain the same */
			uart_send_flag <= `SendDisable;
			uart_send_data <= `ZeroByte;
			uart_recv_flag <= `RecvDisable;
			next_busy <= busy;
			next_read_data <= read_data;
			next_trans_status <= trans_status;
			next_head_disp <= head_disp;
			next_data_disp <= data_disp;

			if(optype == `MemRead) begin	//	read from memory
				if(trans_status == `TransAddr) begin	//	read : trans_addr
					if(uart_sendable) begin
						uart_send_flag <= `SendEnable;
						for(idx = 0; idx < 8; idx = idx + 1) begin
							uart_send_data[idx[2:0]] <= opaddr[{head_disp,idx[2:0]}];
						end
						uart_recv_flag <= `RecvDisable;
						next_busy <= `IsBusy;
						next_read_data <= `ZeroBlock;
						next_trans_status <= (head_disp == `FullHeadDisp ? `TransData : `TransAddr);
						next_head_disp <= head_disp + 1;
						next_data_disp <= `ZeroDataDisp;
					end 
				end else begin		//	read : trans_data
					if(uart_receivable) begin
						uart_send_flag <= `SendDisable;
						uart_send_data <= `ZeroByte;
						uart_recv_flag <= `RecvEnable;
						next_busy <= (data_disp != `FullDataDisp);
						next_read_data <= read_data;
						for(idx = 0; idx < 8; idx=idx+1) begin
							next_read_data[{data_disp,idx[2:0]}] <= uart_recv_data[idx[2:0]];
						end
						next_trans_status <= (data_disp == `FullDataDisp ? `TransAddr : `TransData);
						next_head_disp <= `ZeroHeadDisp;
						next_data_disp <= data_disp + 1;
					end
				end
			end else begin		//	write to memory
				if(trans_status == `TransAddr) begin	//	write : send_addr
					if(uart_sendable) begin
						uart_send_flag <= `SendEnable;
						for(idx = 0; idx < 8; idx = idx + 1) begin
							uart_send_data[idx[2:0]] <= opaddr[{head_disp,idx[2:0]}];
						end
						uart_recv_flag <= `RecvDisable;
						next_busy <= `IsBusy;
						next_read_data <= `ZeroBlock;
						next_trans_status <= (head_disp == `FullHeadDisp ? `TransData : `TransAddr);
						next_head_disp <= head_disp + 1;
						next_data_disp <= `ZeroDataDisp;
					end 
				end else begin	//	write : send_addr
					if(uart_sendable) begin
						uart_send_flag <= `SendEnable;
						for(idx = 0; idx < 8; idx = idx + 1) begin
							uart_send_data[idx[2:0]] <= write_data[{data_disp,idx[2:0]}];
						end
						uart_recv_flag <= `RecvDisable;
						next_busy <= (data_disp != `FullDataDisp);
						next_read_data <= `ZeroBlock;
						next_trans_status <= (data_disp == `FullDataDisp ? `TransAddr : `TransData);
						next_head_disp <= `ZeroHeadDisp;
						next_data_disp <= data_disp + 1;
					end
				end
			end
		end
	end
	always @ (posedge clk) begin
		busy <= next_busy;
		read_data <= next_read_data;
		trans_status <= next_trans_status;
		head_disp <= next_head_disp;
		data_disp <= next_data_disp;
	end
endmodule


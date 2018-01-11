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
 

	reg[7:0] bytes[8:0];

 	integer i;
 	initial begin
		for(i = 0; i < MEM_SIZE; i=i+1) begin
			data[i] = 0;
		end
 		for(i = 0; i < 512; i=i+1) begin
			$dumpvars(0, data[i]);
		end
		for(i = 0; i < 9; i=i+1) begin
			$dumpvars(0, bytes[i]);
		end
 		$readmemh(`MemFile, data);
 	end

	integer cur_count;
	integer next_count;
	integer cur_disp;
	integer next_disp;

	integer index;


	wire[31:0] addr;
	wire[3:0] mask;
	assign addr = {bytes[3], bytes[2], bytes[1], bytes[0]};
	assign mask = bytes[4][3:0];


	localparam FullDisp = 3;
	integer idx;
	always @ (*) begin
		if(rst) begin
			for(index = 0; index < 9; index=index+1)
				bytes[index] = 0;
			next_count <= 0;
			next_disp <= 0;
			uart_send_flag <= 0;
			uart_recv_flag <= 0;
		end else begin
			uart_send_flag <= 0;
			uart_recv_flag <= 0;
			if(cur_count == 5 && bytes[4][7:4] == 4'b0000) begin	//	read
				if(uart_sendable) begin
					uart_send_flag <= 1;
					uart_send_data <= data[addr+cur_disp];
					if(cur_disp == FullDisp) begin
						next_disp <= 0;
						next_count <= 0;
						$display("[memory_sim] cpu read request [%x], send data %x",
							addr, {data[addr+3],data[addr+2],data[addr+1],data[addr]});
					end else begin
						next_disp <= cur_disp + 1;
						next_count <= cur_count;
					end
				end else begin
					next_disp <= cur_disp;
					next_count <= cur_count;
				end
			end else if(cur_count == 9) begin	//	write
				for(idx = 0; idx < 4; idx=idx+1) begin
					if(mask[idx]) begin
						data[addr+idx] <= bytes[5+idx];
					end
				end
				next_count <= 0;
				next_disp <= 0;
				if(addr == 32'h104 && mask[0]) begin
					$display("*** %c ***", bytes[5]);
				end
				if(addr == 32'h108 && mask[0]) begin
					$display("access %x, successfully exit", 32'h108);
					$finish;
				end
				/*
				if(mask[cur_disp] == 1'b0) begin
					if(cur_disp == FullDisp) begin
						next_disp <= 0;
						next_count <= 0;
						$display("[memory_sim] cpu write request [%d], write data %x, mask[%d%d%d%d]",
							addr, {bytes[8], bytes[7], bytes[6], bytes[5]}, 
							bytes[4][3], bytes[4][2], bytes[4][1], bytes[4][0]
						);
					end else begin
						next_disp <= cur_disp + 1;
						next_count <= cur_count;
					end
				end else if(uart_receivable) begin
					uart_recv_flag <= 1;
					data[addr + cur_disp] <= uart_recv_data;
					if(cur_disp == FullDisp) begin
						next_disp <= 0;
						next_count <= 0;
						$display("[memory_sim] cpu write request [%d], write data %x, mask[%d%d%d%d]",
							addr, {bytes[8], bytes[7], bytes[6], bytes[5]}, 
							bytes[4][3], bytes[4][2], bytes[4][1], bytes[4][0]
						);
						if(addr == 32'h104 && mask[0] == 1) begin
							next_disp <= 0;
							$display("write %c to 0x104", bytes[5]);
							$finish;
						end
					end else begin
						next_disp <= cur_disp + 1;
						next_count <= cur_count;
					end
				end else begin
					next_disp <= cur_disp;
					next_count <= cur_count;
				end
				*/
			end else begin	//	fetch data
				if(uart_receivable) begin
					uart_recv_flag <= 1;
					bytes[cur_count] <= uart_recv_data;
					next_count <= cur_count + 1;
					next_disp <= 0;
				end else begin
					next_count <= cur_count;
					next_disp <= 0;
				end
			end
		end
	end

	always @ (posedge clk or posedge rst) begin
		if(rst) begin
			cur_count <= 0;
			cur_disp <= 0;
		end else begin
			cur_count <= next_count;
			cur_disp <= next_disp;
		end
	end

endmodule

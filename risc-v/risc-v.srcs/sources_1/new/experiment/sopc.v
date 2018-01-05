`timescale 1ns / 1ps

module grap(
	output Tx,
	input Rx
	);
	uart_comm uart0(.Tx(Tx), .Rx(Rx));
endmodule
module sopc();
	reg clk1, rst1;
	reg send_flag1, recv_flag1;
	reg[7:0] send_data1; 
	wire[7:0] recv_data1;
	wire receivable1, sendable1;

	reg clk2, rst2;
	reg send_flag2, recv_flag2;
	reg[7:0] send_data2; 
	wire[7:0] recv_data2;
	wire receivable2, sendable2;

	wire t1_r2, r1_t2;
	uart_comm agent1(clk1, rst1, send_flag1, send_data1, recv_flag1, recv_data1,
		sendable1, receivable1, t1_r2, r1_t2
	);
	grap grap0( r1_t2, t1_r2);
//	uart_comm agent2(clk2, rst2, send_flag2, send_data2, recv_flag2, recv_data2,
//		sendable2, receivable2, r1_t2, t1_r2
//	);


	reg clk, rst;
	reg CLOCK_50;

	always @(*) begin
		clk  = CLOCK_50;
		clk1 = clk;
		clk2 = clk;
		rst1 = rst;
		rst2 = rst;
	end

	initial begin
		CLOCK_50 <= 1'b0;
		forever #10 CLOCK_50 <= ~CLOCK_50;
	end

	reg[7:0] idx;
	reg[7:0] data[0:255];
	reg[7:0] current;
	initial begin
		rst <= 1'b1;
		$dumpvars(0);
		for(idx = 0; idx < 128; idx=idx+1) begin
			data[idx] <= idx;
			$dumpvars(0, data[idx]);
		end
		current <= 9'b0;
# 100	rst <= 1'b0;
# 100000	$finish;
	end

	initial begin
	end

	always @ (*) begin
		if(rst) begin
			send_flag1 <= 1'b0;
			send_data1 <= 8'b0;
			recv_flag1 <= 1'b0;
		end else begin
			if(sendable1) begin
				send_flag1 <= 1'b1;
				send_data1 <= data[current[7:0]];
			end else begin
				send_flag1 <= 1'b0;
				send_data1 <= 8'b0;
			end
			recv_flag1 <= 1'b0;
		end
	end

	always @ (posedge clk1) begin
		if (rst) begin
			current <= 8'b0;
		end else begin
			if (sendable1) begin
				if(current[8]) begin
					current <= 8'b0;
				end else begin
					current <= current + 1;
				end
			end
		end
	end

	reg[7:0] recevied_data;
	always @ (*) begin
		if(rst) begin
			send_flag2 <= 1'b0;
			send_data2 <= 8'b0;
			recv_flag2 <= 1'b0;
		end else begin
			if(receivable2) begin
				recv_flag2 <= 1'b1;
				recevied_data <= recv_data2;
			end else begin
				recv_flag2 <= 1'b0;
				recevied_data <= 8'b0;
			end
			send_flag2 <= 1'b0;
			send_data2 <= 8'b0;
		end
	end

endmodule

`timescale 1ns / 1ps
`include "defines.vh"

module cpu(
        input wire EXclk,
        input wire button,
        
		output Tx,
		input Rx
//        output[10:0] display_out 
    );
/*    
    reg[7:0] counter;
    
    reg uart_send_flag, uart_recv_flag;
    reg[7:0] uart_send_data;
    wire[7:0] uart_recv_data;
    wire uart_receivable, uart_sendable;

    uart_comm uart0( EXclk, button, uart_send_flag, uart_send_data, uart_recv_flag, 
        uart_recv_data, uart_sendable, uart_receivable, Tx, Rx);
  
    always @ (posedge EXclk) begin
        if(button) begin
            counter <= 0;
        end else begin
            uart_send_flag <= 0;
            uart_recv_flag <= 0;
            if(uart_sendable) begin
                uart_send_flag <= 1;
                uart_send_data <= counter;
            end 
        end
    end
*/
    
	/*
    reg rst;
    reg rst_delay;
    
    wire clk;
    
    clk_wiz_0 clk0(.clk_out1(clk), .reset(1'b0), .clk_in1(EXclk));

    always @(posedge clk or posedge button) begin
        if(button) begin
            rst <= 1;
            rst_delay <= 1;
        end else begin
            rst_delay <= 0;
            rst <= rst_delay;
        end
    end

    risc32i risc32i0(
        .clk(clk),
        .rst(rst),
		.Tx(Tx),
		.Rx(Rx)
    );
	*/
   risc32i risc32i0(
	   .clk(EXclk),
	   .rst(button),
	   .Tx(Tx),
	   .Rx(Rx)
   );
endmodule

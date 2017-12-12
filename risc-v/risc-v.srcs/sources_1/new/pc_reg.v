`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/12 21:31:34
// Design Name: 
// Module Name: pc_reg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "defines.vh"

module pc_reg(
        input wire clk,
        input wire rst,
        output reg[`InstAddrWidth-1:0] pc,
        output reg ce
    );
    
    always @ (posedge clk) 
    begin
        if (rst == `RstEnable) 
        begin
            ce <= `ChipDisable;
            pc <= 32'h00000000;
        end else begin
            ce <= `ChipEnable;
            pc <= pc + 4'h4;
        end
    end
    
endmodule

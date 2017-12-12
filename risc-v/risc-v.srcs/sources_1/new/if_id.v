`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/12 21:31:34
// Design Name: 
// Module Name: if_id
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

module if_id(
        input wire clk,
        input wire rst,
        input wire[`InstAddrWidth-1:0] if_pc,
        input wire[`InstWidth-1:0] if_inst,
        output reg[`InstAddrWidth-1:0] id_pc,
        output reg[`InstWidth-1:0] id_inst
    );
    
    always @ (posedge clk)
    begin
        if (rst == `RstEnable)
        begin
            id_pc <= `ZeroWord;
            id_inst <= `ZeroWord;
        end else begin
            id_pc <= if_pc;
            id_inst <= if_inst;
        end
        
    end
    
endmodule

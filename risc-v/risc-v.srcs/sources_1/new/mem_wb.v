`timescale 1ns / 1ps
`include "defines.vh"


module mem_wb(
        input wire clk,
        input wire rst,
        
        //  input from mem
        input wire[`RegDataWidth-1:0] mem_wdata,
        input wire[`RegAddrWidth-1:0] mem_wd,
        input wire mem_wreg,
        
        //  output to wb
        output reg[`RegDataWidth-1:0] wb_wdata,
        output reg[`RegAddrWidth-1:0] wb_wd,
        output reg wb_wreg
    );
    
    always @ (posedge clk)
    begin
        if (rst == `RstEnable) begin
            wb_wdata <= `ZeroWord;
            wb_wd <= `ZeroRegAddr;
            wb_wreg <= `WriteDisable;
        end else begin
            wb_wdata <= mem_wdata;
            wb_wd <= mem_wd;
            wb_wreg <= mem_wreg;
        end
    end
    
endmodule

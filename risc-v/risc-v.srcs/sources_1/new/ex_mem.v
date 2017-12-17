`timescale 1ns / 1ps
`include "defines.vh"

module ex_mem(
        input wire clk,
        input wire rst,
        
        //  input from ex
        input wire[`RegDataWidth-1:0] ex_wdata,
        input wire[`RegAddrWidth-1:0] ex_wd,
        input wire ex_wreg,
        
        //  output to mem
        output reg[`RegDataWidth-1:0] mem_wdata,            
        output reg[`RegAddrWidth-1:0] mem_wd,               
        output reg mem_wreg                   
    );
    
    always @ (posedge clk) 
    begin
        if (rst == `RstEnable) begin
            mem_wdata <= `ZeroWord;
            mem_wd <= `ZeroRegAddr;
            mem_wreg <= `WriteDisable;
        end else begin
            mem_wdata <= ex_wdata;
            mem_wd <= ex_wd;
            mem_wreg <= ex_wreg;
        end
    end
endmodule

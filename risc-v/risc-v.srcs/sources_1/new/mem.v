`timescale 1ns / 1ps
`include "defines.vh"


module mem(
        input wire rst,
        
        //  input from ex_mem
        input wire[`RegDataWidth-1:0] wdata_i,
        input wire[`RegAddrWidth-1:0] wd_i,
        input wire wreg_i,
        
        //  output to mem_wb
        output reg[`RegDataWidth-1:0] wdata_o,
        output reg[`RegAddrWidth-1:0] wd_o,
        output reg wreg_o
    );
    
    always @ (*) 
    begin
        if (rst == `RstEnable) begin
            wdata_o <= `ZeroWord;
            wd_o <= `ZeroRegAddr;
            wreg_o <= `WriteDisable;
        end else begin
            wdata_o <= wdata_i;
            wd_o <= wd_i;
            wreg_o <= wreg_i;
        end
    end
endmodule

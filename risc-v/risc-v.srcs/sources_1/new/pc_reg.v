`timescale 1ns / 1ps
`include "defines.vh"

module pc_reg(
        input wire clk,
        input wire rst,
        output reg[`MemAddrWidth-1:0] pc,
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

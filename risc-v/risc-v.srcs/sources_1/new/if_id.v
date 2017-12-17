`timescale 1ns / 1ps
`include "defines.vh"

module if_id(
        input wire clk,
        input wire rst,
        input wire[`MemAddrWidth-1:0] if_pc,
        input wire[`InstWidth-1:0] if_inst,
        output reg[`MemAddrWidth-1:0] id_pc,
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

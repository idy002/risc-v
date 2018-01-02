`timescale 1ns / 1ps
`include "defines.vh"

module memory(
        input wire ce,
        input wire[`MemAddrWidth-1:0] addr,
        output reg[`InstWidth-1:0] inst
    );

    reg[`MemDataWidth-1:0]  mem[0:`MemNum];
    initial $readmemh(`MemFile, mem);

    always @ (*)
    begin
        if (ce == `ChipDisable) begin
            inst <= `ZeroWord;
        end else begin
            inst <= mem[addr[`MemNumLog2+1:2]];
        end
    end

endmodule

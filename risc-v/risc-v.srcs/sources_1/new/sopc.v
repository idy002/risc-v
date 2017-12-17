`timescale 1ns / 1ps
`include "defines.vh"

module sopc(
        input wire clk,
        input wire rst
    );
    
    wire[`MemAddrWidth-1:0] inst_addr;
    wire[`InstWidth-1:0] inst;
    wire memory_ce;
    
    risc32i risc32i0(
        .clk(clk),
        .rst(rst),
        .memory_addr_o(inst_addr),
        .memory_ce_o(memory_ce),
        .memory_data_i(inst)
    );
    
    memory memory0(
        .ce(memory_ce),
        .addr(inst_addr),
        .inst(inst)
    );
    
endmodule

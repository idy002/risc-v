`timescale 1ns / 1ps
`include "defines.vh"

module memory(
        input wire ce,
        input wire[`MemAddrWidth-1:0] addr,
        output reg[`InstWidth-1:0] inst
    );

    reg[`MemDataWidth-1:0]  mem[0:`MemNum];
    
	integer i;
    initial begin
        $readmemh(`MemFile, mem);
        for(i = 0; i < `MemNum; i=i+1)
            $dumpvars(0, mem[i]);
    end

    always @ (*)
    begin
        if (ce == `ChipDisable) begin
            inst <= `ZeroWord;
        end else begin
			inst <= {
						mem[{addr[`MemAddrWidth-1:2],2'b11}],
						mem[{addr[`MemAddrWidth-1:2],2'b10}],
						mem[{addr[`MemAddrWidth-1:2],2'b01}],
						mem[{addr[`MemAddrWidth-1:2],2'b00}]
					};
        end
    end

endmodule

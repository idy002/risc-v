`timescale 1ns / 1ps
`include "defines.vh"


module regfile(
        input wire clk,
        input wire rst,
        
        //  write port
        input wire we,
        input wire[`RegAddrWidth-1:0] waddr,
        input wire[`RegDataWidth-1:0] wdata,
        
        //  read port 1
        input wire re1,
        input wire[`RegAddrWidth-1:0] raddr1,
        output reg[`RegDataWidth-1:0] rdata1,
        
        //  read port 2
        input wire re2,
        input wire[`RegAddrWidth-1:0] raddr2,
        output reg[`RegDataWidth-1:0] rdata2
    );
    
    reg[`RegDataWidth-1:0] regs[0:`RegNum-1];

	integer i;
	initial begin
		for(i = 0; i < `RegNum; i=i+1) begin
			$dumpvars(0, regs[i]);
		end
	end
    
    //  write port
    always @ (posedge clk) 
    begin
        if (rst == `RstDisable) begin
            if (we == `WriteEnable && waddr != `ZeroRegAddr) begin
                regs[waddr] <= wdata;
            end
        end 
    end
    
    //  read port 1
    always @(*) 
    begin
        if (rst == `RstEnable) begin
            rdata1 <= `ZeroWord;
        end else if (re1 == `ReadDisable) begin
            rdata1 <= `ZeroWord;
        end else if (raddr1 == `ZeroRegAddr) begin
            rdata1 <= `ZeroWord;
        end else if (raddr1 == waddr && we == `WriteEnable) begin
            rdata1 <= wdata;
        end else begin
            rdata1 <= regs[raddr1];
        end
    end
    
    //  read port 2
    always @(*) 
    begin
        if (rst == `RstEnable) begin
            rdata2 <= `ZeroWord;
        end else if (re2 == `ReadDisable) begin
            rdata2 <= `ZeroWord;
        end else if (raddr2 == `ZeroRegAddr) begin
            rdata2 <= `ZeroWord;
        end else if (raddr2 == waddr && we == `WriteEnable) begin
            rdata2 <= wdata;
        end else begin
            rdata2 <= regs[raddr2];
        end
    end
endmodule

`timescale 1ns / 1ps
`include "defines.vh"

module sopc_tb();
    reg CLOCK_50;
    reg rst;
    initial begin
        CLOCK_50 = 1'b0;
        forever #10 CLOCK_50 = ~CLOCK_50;
    end

    initial begin
        $dumpfile(`WaveFile);
        $dumpvars;
        rst = `RstEnable;
        #195 rst = `RstDisable;
        #1000 $finish;
    end

    sopc sopc0(
        .clk(CLOCK_50),
        .rst(rst)
    );
endmodule

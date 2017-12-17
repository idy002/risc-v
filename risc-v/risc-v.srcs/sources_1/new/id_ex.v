`timescale 1ns / 1ps
`include "defines.vh"

module id_ex(
        input wire clk,
        input wire rst,
        
        //  input from id
        input wire[`AluOpWidth-1:0]     id_aluop,
        input wire[`AluSelWidth-1:0]    id_alusel,
        input wire[`RegDataWidth-1:0]   id_reg1,
        input wire[`RegDataWidth-1:0]   id_reg2,
        input wire[`RegAddrWidth-1:0]   id_wd,
        input wire id_wreg,
        
        //  output to ex
        output reg[`AluOpWidth-1:0]    ex_aluop,
        output reg[`AluSelWidth-1:0]   ex_alusel,
        output reg[`RegDataWidth-1:0]  ex_reg1,
        output reg[`RegDataWidth-1:0]  ex_reg2,
        output reg[`RegAddrWidth-1:0]  ex_wd,
        output reg ex_wreg
    );
    always @ (posedge clk)
    begin
        if(rst == `RstEnable) begin
            ex_aluop    <=  `EXE_NOP_OP;
            ex_alusel   <=  `EXE_NOP_RES;
            ex_reg1     <=  `ZeroWord;
            ex_reg2     <=  `ZeroWord;
            ex_wd       <=  `ZeroRegAddr;
            ex_wreg     <=  `WriteDisable;
        end else begin
            ex_aluop    <=  id_aluop;
            ex_alusel   <=  id_alusel;
            ex_reg1     <=  id_reg1;
            ex_reg2     <=  id_reg2;
            ex_wd       <=  id_wd;
            ex_wreg     <=  id_wreg;
        end
    end
    
endmodule

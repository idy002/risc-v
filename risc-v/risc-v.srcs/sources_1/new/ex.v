`timescale 1ns / 1ps
`include "defines.vh"

module ex(
        input wire rst,
        
        //  input from id_ex
        input wire[`AluOpWidth-1:0] aluop_i,
        input wire[`AluSelWidth-1:0] alusel_i,
        input wire[`RegDataWidth-1:0] reg1_i,
        input wire[`RegDataWidth-1:0] reg2_i,
        input wire[`RegAddrWidth-1:0] wd_i,
        input wire wreg_i,
        
        //  output to ex_mem
        output reg[`RegDataWidth-1:0] wdata_o,
        output reg[`RegAddrWidth-1:0] wd_o,
        output reg wreg_o
    );
    
    reg[`RegDataWidth-1:0] logicout;
    
    //  do the calculation and store the result to corresponding output reg
    always @ (*) 
    begin
        if (rst == `RstEnable) begin
            logicout <= `ZeroWord;
        end else begin
            case (aluop_i)
                `EXE_OR_OP: begin
                    logicout <= reg1_i | reg2_i;
                end
                default: begin
                    logicout <= `ZeroWord;
                end
            endcase
        end
    end
    
    //  select the proper output reg as the final output reg
    always @ (*)
    begin
        wd_o <= wd_i;
        wreg_o <= wreg_i;
        case (alusel_i)
            `EXE_LOGIC_RES: begin
                wdata_o <= logicout;
            end 
            default: begin
                wdata_o <= `ZeroWord;
            end
        endcase
    end
    
endmodule

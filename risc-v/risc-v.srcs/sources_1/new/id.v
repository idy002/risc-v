`timescale 1ns / 1ps
`include "defines.vh"

module id(
        input wire      rst,
        
        //  read from if_id
        input wire[`MemAddrWidth-1:0] pc_i,
        input wire[`InstWidth-1:0] inst_i,
        
        //  read from regfile
        input wire[`RegDataWidth-1:0] reg1_data_i,
        input wire[`RegDataWidth-1:0] reg2_data_i,
        
        //  output to regfile
        output reg reg1_read_o,
        output reg reg2_read_o,
        output reg[`RegAddrWidth-1:0] reg1_addr_o,
        output reg[`RegAddrWidth-1:0] reg2_addr_o,
                
        //  output to id_ex
        output reg[`AluOpWidth-1:0] aluop_o,
        output reg[`AluSelWidth-1:0] alusel_o,
        output reg[`RegDataWidth-1:0] reg1_o,
        output reg[`RegDataWidth-1:0] reg2_o,
        output reg[`RegAddrWidth-1:0] wd_o,
        output reg  wreg_o
    );
    
    wire[6:0] opcode = inst_i[6:0];
    wire[2:0] funct3 = inst_i[14:12];
    wire[6:0] funct7 = inst_i[31:25];
    
    reg[`RegDataWidth-1:0] imm;
    
    reg inst_valid;
    
    //  decode instruction
    always @ (*) 
    begin
        if (rst == `RstEnable) begin
            aluop_o <= `EXE_NOP_OP;
            alusel_o <= `EXE_NOP_RES;
            wd_o <= `ZeroRegAddr;
            wreg_o <= `WriteDisable;
            inst_valid <= `InstValid;
            reg1_read_o <= `ChipDisable;
            reg2_read_o <= `ChipDisable;
            reg1_addr_o <= `ZeroRegAddr;
            reg2_addr_o <= `ZeroRegAddr;
            imm <= 32'b0;
        end else begin
            aluop_o <= `EXE_NOP_OP;
            alusel_o <= `EXE_NOP_RES;
            wd_o <= `ZeroRegAddr;
            wreg_o <= `WriteDisable;
            inst_valid <= `InstInvalid;
            reg1_read_o <= `ChipDisable;
            reg2_read_o <= `ChipDisable;
            reg1_addr_o <= `ZeroRegAddr;
            reg2_addr_o <= `ZeroRegAddr;
            case (opcode) 
                `OP_OP_IMM: 
                begin
                    wd_o <= inst_i[11:7];
                    wreg_o <= `WriteEnable;
                    reg1_read_o <= `ChipEnable;
                    reg1_addr_o <= inst_i[19:15];
                    reg2_read_o <= `ChipDisable;
                    reg2_read_o <= `ZeroRegAddr;
                    case (funct3) 
                        `FUNCT3_ORI: 
                        begin
                            inst_valid <= `InstValid;
                            aluop_o <= `EXE_OR_OP;
                            alusel_o <= `EXE_LOGIC_RES;
                            imm <= {20'b0, inst_i[11:0]};
                        end
                        default:
                        begin
                        end
                    endcase
                end
                default:
                begin
                end
            endcase
        end
    end
    //  decide src1
    always @ (*) 
    begin
        if (rst == `RstEnable) begin
            reg1_o <= `ZeroWord;
        end else if (reg1_read_o == `ReadEnable) begin
            reg1_o <= reg1_data_i;
        end else if (reg1_read_o == `ReadDisable) begin
            reg1_o <= imm;
        end else begin
            reg1_o <= `ZeroWord;
        end
    end
    
    //  decide src2
    always @ (*) 
    begin
        if (rst == `RstEnable) begin
            reg2_o <= `ZeroWord;
        end else if (reg2_read_o == `ReadEnable) begin
            reg2_o <= reg1_data_i;
        end else if (reg2_read_o == `ReadDisable) begin
            reg2_o <= imm;
        end else begin
            reg2_o <= `ZeroWord;
        end
    end    
endmodule

`timescale 1ns / 1ps
`include "defines.vh"

module id(
		input wire		rst,

		//	read from if_id
		input wire[`MemAddrWidth-1:0] pc_i,
		input wire[`InstWidth-1:0] inst_i,

		//	read from regfile
		input wire[`RegDataWidth-1:0] reg1_data_i,
		input wire[`RegDataWidth-1:0] reg2_data_i,

		//	read from ex
		input wire[`RegDataWidth-1:0] mem_wdata_i,
		input wire[`RegAddrWidth-1:0] mem_wd_i,
		input wire mem_wreg_i,

		//	read from mem
		input wire[`RegDataWidth-1:0] ex_wdata_i,
		input wire[`RegAddrWidth-1:0] ex_wd_i,
		input wire ex_wreg_i,

		//	output to regfile
		output reg reg1_read_o,
		output reg reg2_read_o,
		output reg[`RegAddrWidth-1:0] reg1_addr_o,
		output reg[`RegAddrWidth-1:0] reg2_addr_o,

		//	output to id_ex
		output reg[`AluOpWidth-1:0] aluop_o,
		output reg[`AluSelWidth-1:0] alusel_o,
		output reg[`RegDataWidth-1:0] reg1_o,
		output reg[`RegDataWidth-1:0] reg2_o,
		output reg[`RegAddrWidth-1:0] wd_o,
		output reg	wreg_o
	);

	wire[6:0] opcode = inst_i[6:0];
	wire[2:0] funct3 = inst_i[14:12];
	wire[6:0] funct7 = inst_i[31:25];

	reg[1:0] reg1_type;
	reg[1:0] reg2_type;

	reg[`RegDataWidth-1:0] imm;

	reg inst_valid;

	//	decode instruction
	always @ (*)
	begin
		if (rst == `RstEnable) begin
			aluop_o <= `EXE_NOP_OP;
			alusel_o <= `EXE_NOP_RES;
			wd_o <= `ZeroRegAddr;
			wreg_o <= `WriteDisable;
			inst_valid <= `InstValid;
			reg1_type <= `DataZero;
			reg2_type <= `DataZero;
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
			inst_valid <= `InstValid;
			reg1_type <= `DataZero;
			reg2_type <= `DataZero;
			reg1_read_o <= `ChipDisable;
			reg2_read_o <= `ChipDisable;
			reg1_addr_o <= `ZeroRegAddr;
			reg2_addr_o <= `ZeroRegAddr;
			imm <= `ZeroWord;
			case (opcode)
				`OP_OP_IMM: begin
					wd_o <= inst_i[11:7];
					wreg_o <= `WriteEnable;
					reg1_type <= `DataReg;
					reg2_type <= `DataImm;
					reg1_read_o <= `ChipEnable;
					reg1_addr_o <= inst_i[19:15];
					reg2_read_o <= `ChipDisable;
					reg2_addr_o <= `ZeroRegAddr;
					imm <= {{20{inst_i[31]}}, inst_i[31:20]};
					case (funct3)
						`FUNCT3_ADDI: begin
							aluop_o <= `EXE_ADD_OP;
							alusel_o <= `EXE_ARITH_RES;
						end
						`FUNCT3_SLTI: begin
							aluop_o <= `EXE_SLT_OP;
							alusel_o <= `EXE_ARITH_RES;
						end
						`FUNCT3_SLTIU: begin
							aluop_o <= `EXE_SLTU_OP;
							alusel_o <= `EXE_ARITH_RES;
						end
						`FUNCT3_XORI: begin
							aluop_o <= `EXE_XOR_OP;
							alusel_o <= `EXE_LOGIC_RES;
						end
						`FUNCT3_ORI: begin
							aluop_o <= `EXE_OR_OP;
							alusel_o <= `EXE_LOGIC_RES;
						end
						`FUNCT3_ANDI: begin
							aluop_o <= `EXE_AND_OP;
							alusel_o <= `EXE_LOGIC_RES;
						end
						`FUNCT3_SLLI: begin
							aluop_o <= `EXE_SLL_OP;
							alusel_o <= `EXE_SHIFT_RES;
						end
						`FUNCT3_SRLI_SRAI: begin
							if(funct7[5] == 1'b0) begin
								aluop_o <= `EXE_SRL_OP;
								alusel_o <= `EXE_SHIFT_RES;
							end else begin
								aluop_o <= `EXE_SRA_OP;
								alusel_o <= `EXE_SHIFT_RES;
							end
						end
						default:
						begin
							inst_valid <= `InstInvalid;
						end
					endcase
				end
				`OP_OP: begin
					wd_o <= inst_i[11:7];
					wreg_o <= `WriteEnable;
					reg1_type <= `DataReg;
					reg2_type <= `DataReg;
					reg1_read_o <= `ChipEnable;
					reg1_addr_o <= inst_i[19:15];
					reg2_read_o <= `ChipEnable;
					reg2_addr_o <= inst_i[24:20];
					case(funct3)
						`FUNCT3_ADD_SUB: begin
							if (funct7[5] == 1'b0) begin
								aluop_o <= `EXE_ADD_OP;
								alusel_o <= `EXE_ARITH_RES;
							end else begin
								aluop_o <= `EXE_SUB_OP;
								alusel_o <= `EXE_ARITH_RES;
							end
						end
						`FUNCT3_SLL: begin
							aluop_o <= `EXE_SLL_OP;
							alusel_o <= `EXE_SHIFT_RES;
						end
						`FUNCT3_SLT: begin
							aluop_o <= `EXE_SLT_OP;
							alusel_o <= `EXE_ARITH_RES;
						end
						`FUNCT3_SLTU: begin
							aluop_o <= `EXE_SLTU_OP;
							alusel_o <= `EXE_ARITH_RES;
						end
						`FUNCT3_XOR: begin
							aluop_o <= `EXE_XOR_OP;
							alusel_o <= `EXE_LOGIC_RES;
						end
						`FUNCT3_SRL_SRA: begin
							if(funct7[5] == 1'b0) begin
								aluop_o <= `EXE_SRL_OP;
								alusel_o <= `EXE_SHIFT_RES;
							end else begin
								aluop_o <= `EXE_SRA_OP;
								alusel_o <= `EXE_SHIFT_RES;
							end
						end
						`FUNCT3_OR: begin
							aluop_o <= `EXE_OR_OP;
							alusel_o <= `EXE_LOGIC_RES;
						end
						`FUNCT3_AND: begin
							aluop_o <= `EXE_AND_OP;
							alusel_o <= `EXE_LOGIC_RES;
						end
						default: begin
							inst_valid <= `InstInvalid;
						end
					endcase
				end
				`OP_LUI: begin
					imm <= {inst_i[31:12], 12'h000};
					wd_o <= inst_i[11:7];
					wreg_o <= `WriteEnable;
					reg1_type <= `DataZero;
					reg2_type <= `DataImm;
					aluop_o <= `EXE_OR_OP;
					alusel_o <= `EXE_LOGIC_RES;
				end
				`OP_AUIPC: begin
					imm <= {inst_i[31:12], 12'h000};
					wd_o <= inst_i[11:7];
					wreg_o <= `WriteEnable;
					reg1_type <= `DataPC;
					reg2_type <= `DataImm;
					aluop_o <= `EXE_ADD_OP;
					alusel_o <= `EXE_ARITH_RES;
				end
				default:
				begin
					inst_valid <= `InstInvalid;
				end
			endcase
		end
	end
	//	decide src1
	always @ (*)
	begin
		if (rst == `RstEnable) begin
			reg1_o <= `ZeroWord;
		end else if (reg1_type == `DataReg) begin
			if ( ex_wreg_i == `WriteEnable 
			  && ex_wd_i == reg1_addr_o) begin
				reg1_o <= ex_wdata_i;
			end else if ( mem_wreg_i == `WriteEnable
			      && mem_wd_i == reg1_addr_o) begin
				reg1_o <= mem_wdata_i;
			end else begin
				reg1_o <= reg1_data_i;
			end
		end else if (reg1_type == `DataImm) begin
			reg1_o <= imm;
		end else if (reg1_type == `DataPC) begin
			reg1_o <= pc_i;
		end else begin
			reg1_o <= `ZeroWord;
		end
	end

	//	decide src2
	always @ (*)
	begin
		if (rst == `RstEnable) begin
			reg2_o <= `ZeroWord;
		end else if (reg2_type == `DataReg) begin
			if ( ex_wreg_i == `WriteEnable 
			  && ex_wd_i == reg2_addr_o) begin
				reg2_o <= ex_wdata_i;
			end else if ( mem_wreg_i == `WriteEnable
			      && mem_wd_i == reg2_addr_o) begin
				reg2_o <= mem_wdata_i;
			end else begin
				reg2_o <= reg2_data_i;
			end
		end else if (reg2_type == `DataImm) begin
			reg2_o <= imm;
		end else if (reg2_type == `DataPC) begin
			reg2_o <= pc_i;
		end else begin
			reg2_o <= `ZeroWord;
		end
	end
endmodule

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

		//	read from mem
		input wire[`RegDataWidth-1:0] mem_wdata_i,
		input wire[`RegAddrWidth-1:0] mem_wd_i,
		input wire mem_wreg_i,

		//	read from id_ex
		input wire[1:0] jump_type_i,

		//	read from ex
		input wire[1:0] ex_memop_i,
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
		output reg	wreg_o,
		output reg[`RegDataWidth-1:0] addr_base,
		output reg[`RegDataWidth-1:0] addr_off,
		output reg[1:0] jump_type_o,
		output reg[1:0] memop_o,
		output reg[2:0] memfunct_o,

		//	output to ctrl
		output reg stall_req
	);

	wire[6:0] opcode = inst_i[6:0];
	wire[2:0] funct3 = inst_i[14:12];
	wire[6:0] funct7 = inst_i[31:25];

	reg[1:0] reg1_type;
	reg[1:0] reg2_type;
	reg[1:0] addr_base_type;
	
	reg[`RegDataWidth-1:0] imm;

	reg inst_valid;

	reg[1:0] jump_type_inner;
	reg[3:0] sub_reqstall;
	reg		stall_cur_available;

	reg pre_wreg_o;
	reg[1:0] pre_memop_o;

	//	decode instruction
	always @ (*)
	begin
		if (rst == `RstEnable) begin
			aluop_o <= `EXE_NOP_OP;
			alusel_o <= `EXE_NOP_RES;
			wd_o <= `ZeroRegAddr;
			pre_wreg_o <= `WriteDisable;
			inst_valid <= `InstValid;
			reg1_type <= `DataZero;
			reg2_type <= `DataZero;
			addr_base_type <= `DataZero;
			reg1_read_o <= `ChipDisable;
			reg2_read_o <= `ChipDisable;
			reg1_addr_o <= `ZeroRegAddr;
			reg2_addr_o <= `ZeroRegAddr;
			imm <= 32'b0;
			addr_off  <= `ZeroWord;
			jump_type_inner <= `NoJump;
			pre_memop_o <= `MEM_NOP;
			memfunct_o <= 3'b000;
			sub_reqstall[0] <= `NoRequestStall;
			stall_cur_available <= `No;
		end else begin
			aluop_o <= `EXE_NOP_OP;
			alusel_o <= `EXE_NOP_RES;
			wd_o <= `ZeroRegAddr;
			pre_wreg_o <= `WriteDisable;
			inst_valid <= `InstValid;
			reg1_type <= `DataZero;
			reg2_type <= `DataZero;
			addr_base_type <= `DataZero;
			reg1_read_o <= `ChipDisable;
			reg2_read_o <= `ChipDisable;
			reg1_addr_o <= `ZeroRegAddr;
			reg2_addr_o <= `ZeroRegAddr;
			imm <= `ZeroWord;
			addr_off  <= `ZeroWord;
			jump_type_inner <= `NoJump;
			pre_memop_o <= `MEM_NOP;
			memfunct_o <= 3'b000;
			sub_reqstall[0] <= `NoRequestStall;
			stall_cur_available <= `No;

			case (opcode)
				`OP_OP_IMM: begin
					wd_o <= inst_i[11:7];
					pre_wreg_o <= `WriteEnable;
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
					pre_wreg_o <= `WriteEnable;
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
					pre_wreg_o <= `WriteEnable;
					reg1_type <= `DataZero;
					reg2_type <= `DataImm;
					aluop_o <= `EXE_OR_OP;
					alusel_o <= `EXE_LOGIC_RES;
				end
				`OP_AUIPC: begin
					imm <= {inst_i[31:12], 12'h000};
					wd_o <= inst_i[11:7];
					pre_wreg_o <= `WriteEnable;
					reg1_type <= `DataPC;
					reg2_type <= `DataImm;
					aluop_o <= `EXE_ADD_OP;
					alusel_o <= `EXE_ARITH_RES;
				end
				`OP_BRANCH: begin
					if (jump_type_i != `NoJump) begin
						//	default nop instruction
					end else begin
						jump_type_inner <= `JumpBranch;
						addr_base_type <= `DataPC;
						addr_off <= {{20{inst_i[31]}},inst_i[7],inst_i[30:25],inst_i[11:8],1'b0};
						reg1_type <= `DataReg;
						reg2_type <= `DataReg;
						reg1_read_o <= `ReadEnable;
						reg2_read_o <= `ReadEnable;
						reg1_addr_o <= inst_i[19:15];
						reg2_addr_o <= inst_i[24:20];
						pre_wreg_o <= `WriteDisable;
						wd_o <= `ZeroRegAddr;
						sub_reqstall[0] <= `RequestStall;
						stall_cur_available <= `Yes;
						case (funct3) 
							`FUNCT3_BEQ: begin
								aluop_o <= `EXE_SEQ_OP;
								alusel_o <= `EXE_ARITH_RES;
							end
							`FUNCT3_BNE: begin
								aluop_o <= `EXE_SNE_OP;
								alusel_o <= `EXE_ARITH_RES;
							end
							`FUNCT3_BLT: begin
								aluop_o <= `EXE_SLT_OP;
								alusel_o <= `EXE_ARITH_RES;
							end
							`FUNCT3_BGE: begin
								aluop_o <= `EXE_SGE_OP;
								alusel_o <= `EXE_ARITH_RES;
							end
							`FUNCT3_BLTU: begin
								aluop_o <= `EXE_SLTU_OP;
								alusel_o <= `EXE_ARITH_RES;
							end
							`FUNCT3_BGEU: begin
								aluop_o <= `EXE_SGEU_OP;
								alusel_o <= `EXE_ARITH_RES;
							end
							default: begin
								inst_valid <= `InstInvalid;
							end
						endcase
					end
				end
				`OP_JAL: begin
					if (jump_type_i != `NoJump) begin
						//	default nop instruction
					end else begin
						jump_type_inner <= `JumpUncdt;
						addr_base_type <= `DataPC;
						addr_off <= {{12{inst_i[31]}},inst_i[19:12],inst_i[20],inst_i[30:21],1'b0};
						reg1_type <= `DataPC;
						reg2_type <= `DataImm;
						imm <= 32'd4;
						pre_wreg_o <= `WriteEnable;
						wd_o <= inst_i[11:7];
						sub_reqstall[0] <= `RequestStall;
						stall_cur_available <= `Yes;
						aluop_o <= `EXE_ADD_OP;
						alusel_o <= `EXE_ARITH_RES;
					end
				end
				`OP_JALR: begin
					if (jump_type_i != `NoJump) begin
						//	default nop instruction
					end else begin
						jump_type_inner <= `JumpUncdt;
						addr_base_type <= `DataReg;
						reg1_read_o <= `ReadEnable;
						reg1_addr_o <= inst_i[19:15];
						addr_off <= {{20{inst_i[31]}},inst_i[31:20]};
						reg1_type <= `DataPC;
						reg2_type <= `DataImm;
						imm <= 32'd4;
						pre_wreg_o <= `WriteEnable;
						wd_o <= inst_i[11:7];
						sub_reqstall[0] <= `RequestStall;
						stall_cur_available <= `Yes;
						aluop_o <= `EXE_ADD_OP;
						alusel_o <= `EXE_ARITH_RES;
					end
				end
				`OP_LOAD: begin
					addr_base_type <= `DataReg;
					reg1_read_o <= `ReadEnable;
					reg1_addr_o <= inst_i[19:15];
					addr_off <= {{20{inst_i[31]}},inst_i[31:20]};
					reg1_type <= `DataZero;
					reg2_type <= `DataZero;
					pre_wreg_o <= `WriteEnable;
					wd_o <= inst_i[11:7];
					aluop_o <= `EXE_NOP_OP;
					alusel_o <= `EXE_NOP_RES;
					pre_memop_o <= `MEM_LOAD;
					memfunct_o <= funct3;
				end
				`OP_STORE: begin
					addr_base_type <= `DataReg;
					reg1_read_o <= `ReadEnable;
					reg1_addr_o <= inst_i[19:15];
					addr_off <= {{20{inst_i[31]}},inst_i[31:25],inst_i[11:7]};
					reg1_type <= `DataZero;
					reg2_type <= `DataReg;
					reg2_read_o <= `ReadEnable;
					reg2_addr_o <= inst_i[24:20];
					aluop_o <= `EXE_OR_OP;
					alusel_o <= `EXE_LOGIC_RES;
					pre_memop_o <= `MEM_STORE;
					memfunct_o <= funct3;
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
			sub_reqstall[1] <= `NoRequestStall;
		end else begin
			sub_reqstall[1] <= `NoRequestStall;
			if (reg1_type == `DataReg) begin
				if (reg1_addr_o == `ZeroRegAddr) begin
					reg1_o <= `ZeroWord;
				end else if ( ex_wreg_i == `WriteEnable 
				  && ex_wd_i == reg1_addr_o) begin
					if(ex_memop_i == `MEM_LOAD) begin
						sub_reqstall[1] <= `RequestStall;
						reg1_o <= `ZeroWord;
					end else begin
						reg1_o <= ex_wdata_i;
					end
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
	end

	//	decide src2
	always @ (*)
	begin
		if (rst == `RstEnable) begin
			reg2_o <= `ZeroWord;
			sub_reqstall[2] <= `NoRequestStall;
		end else begin
			sub_reqstall[2] <= `NoRequestStall;
			if (reg2_type == `DataReg) begin
				if (reg2_addr_o == `ZeroRegAddr) begin
					reg2_o <= `ZeroWord;
				end else if ( ex_wreg_i == `WriteEnable 
				  && ex_wd_i == reg2_addr_o) begin
					if(ex_memop_i == `MEM_LOAD) begin
						sub_reqstall[2] <= `RequestStall;
						reg2_o <= `ZeroWord;
					end else begin
						reg2_o <= ex_wdata_i;
					end
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
	end

	//	decide addr_base
	always @ (*)
	begin
		if (rst == `RstEnable) begin
			addr_base <= `ZeroWord;
			sub_reqstall[3] <= `NoRequestStall;
		end else begin
			sub_reqstall[3] <= `NoRequestStall;
			if (addr_base_type == `DataReg) begin
				if (reg1_addr_o == `ZeroRegAddr) begin
					addr_base <= `ZeroWord;
				end else if (ex_wreg_i == `WriteEnable 
				  && ex_wd_i == reg1_addr_o) begin
					if(ex_memop_i == `MEM_LOAD) begin
						sub_reqstall[3] <= `RequestStall;
						addr_base <= `ZeroWord;
					end else begin
						addr_base <= ex_wdata_i;
					end
				end else if ( mem_wreg_i == `WriteEnable
					  && mem_wd_i == reg1_addr_o) begin
					addr_base <= mem_wdata_i;
				end else begin
					addr_base <= reg1_data_i;
				end
			end else if (addr_base_type == `DataImm) begin
				addr_base <= imm;
			end else if (addr_base_type == `DataPC) begin
				addr_base <= pc_i;
			end else begin
				addr_base <= `ZeroWord;
			end
		end
	end

	//	stalll control
	always @ (*) begin
		if (rst == `RstEnable) begin
			stall_req <= `NoRequestStall;
			wreg_o <= `WriteDisable;
			memop_o <= `MEM_NOP;
		end else begin
			if(sub_reqstall[1] || sub_reqstall[2] || sub_reqstall[3]) begin
				stall_req <= `RequestStall;
				wreg_o <= `WriteDisable;
				memop_o <= `MEM_NOP;
				jump_type_o <= `NoJump;
			end else if(sub_reqstall[0]) begin
				stall_req <= `RequestStall;
				wreg_o <= pre_wreg_o;
				memop_o <= pre_memop_o;
				jump_type_o <= jump_type_inner;
			end else begin
				stall_req <= `NoRequestStall;
				wreg_o <= pre_wreg_o;
				memop_o <= pre_memop_o;
				jump_type_o <= jump_type_inner;
			end
			/*
			if(sub_reqstall[0] || sub_reqstall[1] || sub_reqstall[2] || sub_reqstall[3]) begin
				stall_req <= `RequestStall;
				if(stall_cur_available) begin
					wreg_o <= pre_wreg_o;
					memop_o <= pre_memop_o;
				end else begin
					wreg_o <= `WriteDisable;
					memop_o <= `MEM_NOP;
				end
			end else begin
				stall_req <= `NoRequestStall;
				wreg_o <= pre_wreg_o;
				memop_o <= pre_memop_o;
			end
			*/
		end
	end
endmodule

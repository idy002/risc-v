`timescale 1ns / 1ps
`include "defines.vh"

module ex(
		input wire rst,
		
		//	input from id_ex
		input wire[`AluOpWidth-1:0] aluop_i,
		input wire[`AluSelWidth-1:0] alusel_i,
		input wire[`RegDataWidth-1:0] reg1_i,
		input wire[`RegDataWidth-1:0] reg2_i,
		input wire[`RegAddrWidth-1:0] wd_i,
		input wire wreg_i,
		
		//	output to ex_mem
		output reg[`RegDataWidth-1:0] wdata_o,
		output reg[`RegAddrWidth-1:0] wd_o,
		output reg wreg_o
	);
	
	reg[`RegDataWidth-1:0] logicout;
	reg[`RegDataWidth-1:0] arithout;
	reg[`RegDataWidth-1:0] shiftout;

	wire[`RegDataWidth-1:0] reg2_comp;
	wire[`RegDataWidth-1:0] sub_res;
	wire[`RegDataWidth-1:0] sum_res;
	wire reg1_eq_reg2;
	wire reg1_lt_reg2;

	assign sub_res = reg1_i + (~reg2_i) + 1;
	assign reg1_lt_reg2 = (aluop_i == `EXE_SLT_OP ?
					(   (reg1_i[31] && !reg2_i[31]) 
					 || (reg1_i[31] && reg2_i[31] && sub_res[31])
					 || (!reg1_i[31] && !reg2_i[31] && sub_res[31])
					) : (reg1_i < reg2_i));


	//	do the calculation and store the result to corresponding output reg
	always @ (*) 
	begin
		if (rst == `RstEnable) begin
			logicout <= `ZeroWord;
		end else begin
			case (aluop_i)
				`EXE_OR_OP: begin
					logicout <= reg1_i | reg2_i;
				end
				`EXE_ADD_OP: begin
					arithout <= reg1_i + reg2_i;
				end
				`EXE_SUB_OP: begin
					arithout <= sub_res;
				end
				`EXE_SLT_OP: begin
					arithout <= {31'b0, reg1_lt_reg2};
				end
				`EXE_SLTU_OP: begin
					arithout <= {31'b0, reg1_lt_reg2};
				end
				`EXE_XOR_OP: begin
					logicout <= reg1_i ^ reg2_i;
				end
				`EXE_OR_OP: begin
					logicout <= reg1_i | reg2_i;
				end
				`EXE_AND_OP: begin
					logicout <= reg1_i & reg2_i;
				end
				`EXE_SLL_OP: begin
					shiftout <= reg1_i << reg2_i[4:0];
				end
				`EXE_SRL_OP: begin
					shiftout <= reg1_i >> reg2_i[4:0];
				end
				`EXE_SRA_OP: begin
					shiftout <= (reg1_i >> reg2_i[4:0])
							  | ({32{reg1_i[31]}} << (6'd32 - {1'b0, reg2_i[4:0]}));
				end
				default: begin
					logicout <= `ZeroWord;
				end
			endcase
		end
	end
	
	//	select the proper output reg as the final output reg
	always @ (*)
	begin
		wd_o <= wd_i;
		wreg_o <= wreg_i;
		case (alusel_i)
			`EXE_LOGIC_RES: begin
				wdata_o <= logicout;
			end 
			`EXE_ARITH_RES: begin
				wdata_o <= arithout;
			end
			`EXE_SHIFT_RES: begin
				wdata_o <= shiftout;
			end
			default: begin
				wdata_o <= `ZeroWord;
			end
		endcase
	end
	
endmodule

`timescale 1ns / 1ps
`include "defines.vh"


module mem(
        input wire rst,

        //  input from ex_mem
        input wire[`RegDataWidth-1:0] wdata_i,
        input wire[`RegAddrWidth-1:0] wd_i,
        input wire wreg_i,
		input wire[`RegDataWidth-1:0] exmem_addr,
		input wire[1:0] memop_i,
		input wire[2:0] memfunct_i,

		//	input from cache
		input wire[`RegDataWidth-1:0] read_data_value,

        //  output to mem_wb
		output reg data_ce,
		output reg data_optype,
		output reg[`MemAddrWidth-1:0] data_addr,
		output reg[`RegDataWidth-1:0] write_data_value,
		output reg[`RegDataBytes-1:0] write_data_mask,
        output reg[`RegDataWidth-1:0] wdata_o,
        output reg[`RegAddrWidth-1:0] wd_o,
        output reg wreg_o
    );

    always @ (*)
    begin
        if (rst == `RstEnable) begin
			data_ce <= `ChipDisable;
			data_optype <= 1'b0;
			data_addr <= `ZeroWord;
			write_data_value <= `ZeroWord;
			write_data_mask <= 4'b0000;
            wdata_o <= `ZeroWord;
            wd_o <= `ZeroRegAddr;
            wreg_o <= `WriteDisable;
        end else begin
			data_ce <= `ChipDisable;
			data_optype <= 1'b0;
			data_addr <= `ZeroWord;
			write_data_value <= `ZeroWord;
			write_data_mask <= 0;
            wdata_o <= wdata_i;
            wd_o <= wd_i;
            wreg_o <= wreg_i;
			case (memop_i) 
				`MEM_LOAD: begin
					data_ce <= `ChipEnable;
					data_optype <= `MemRead;
					data_addr <= {exmem_addr[31:2],2'b00};
					case (memfunct_i) 
						`FUNCT3_LBU: begin
							case (exmem_addr[1:0])
								2'b00: wdata_o <= {{24{1'b0}},read_data_value[7:0]};
								2'b01: wdata_o <= {{24{1'b0}},read_data_value[15:8]};
								2'b10: wdata_o <= {{24{1'b0}},read_data_value[23:16]};
								2'b11: wdata_o <= {{24{1'b0}},read_data_value[31:24]};
							endcase
						end
						`FUNCT3_LB: begin
							case (exmem_addr[1:0])
								2'b00: wdata_o <= {{24{read_data_value[7]}},read_data_value[7:0]};
								2'b01: wdata_o <= {{24{read_data_value[15]}},read_data_value[15:8]};
								2'b10: wdata_o <= {{24{read_data_value[23]}},read_data_value[23:16]};
								2'b11: wdata_o <= {{24{read_data_value[31]}},read_data_value[31:24]};
							endcase
						end
						`FUNCT3_LHU: begin
							case (exmem_addr[1])
								1'b0: wdata_o <= {{16{1'b0}},read_data_value[15:0]};
								1'b1: wdata_o <= {{16{1'b0}},read_data_value[31:16]};
							endcase
						end
						`FUNCT3_LH: begin
							case (exmem_addr[0])
								1'b0: wdata_o <= {{16{read_data_value[15]}},read_data_value[15:0]};
								1'b1: wdata_o <= {{16{read_data_value[31]}},read_data_value[31:16]};
							endcase
						end
						`FUNCT3_LW: begin
							wdata_o <= read_data_value;
						end
					endcase
				end
				`MEM_STORE: begin
					data_ce <= `ChipEnable;
					data_optype <= `MemWrite;
					data_addr <= {exmem_addr[31:2],2'b00};
					case (memfunct_i) 
						`FUNCT3_SB: begin
							case (exmem_addr[1:0]) 
								2'b00: begin
									write_data_mask <= 4'b0001;
									write_data_value <= wdata_i;
								end
								2'b01: begin
									write_data_mask <= 4'b0010;
									write_data_value <= wdata_i << 8;
								end
								2'b10: begin
									write_data_mask <= 4'b0100;
									write_data_value <= wdata_i << 16;
								end
								2'b11: begin
									write_data_mask <= 4'b1000;
									write_data_value <= wdata_i << 24;
								end
							endcase
						end
						`FUNCT3_SH: begin
							case (exmem_addr[1]) 
								1'b0: begin
									write_data_mask <= 4'b0011;
									write_data_value <= wdata_i;
								end
								1'b1: begin
									write_data_mask <= 4'b1100;
									write_data_value <= wdata_i << 16;
								end
							endcase
						end
						`FUNCT3_SW: begin
							write_data_mask <= 4'b1111;
							write_data_value <= wdata_i;
						end
					endcase
				end
			endcase
        end
    end
endmodule


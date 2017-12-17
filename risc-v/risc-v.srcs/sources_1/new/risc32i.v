`timescale 1ns / 1ps
`include "defines.vh"


module risc32i(
        input wire clk,
        input wire rst,
        
        //  input from memory
        input [`RegDataWidth-1:0] memory_data_i,
        
        //  output to memory
        output [`MemAddrWidth-1:0] memory_addr_o,
        output memory_ce_o
    );
    
    //  pc_reg -> if_id
    wire[`MemAddrWidth-1:0] pc;
    
    //  if_id -> id
    wire[`MemAddrWidth-1:0] id_pc_i;
    wire[`InstWidth-1:0] id_inst_i;
    
    //  id -> id_ex
    wire[`AluOpWidth-1:0] id_aluop_o;
    wire[`AluSelWidth-1:0] id_alusel_o;
    wire[`RegDataWidth-1:0] id_reg1_o;
    wire[`RegDataWidth-1:0] id_reg2_o;
    wire[`RegAddrWidth-1:0] id_wd_o;
    wire id_wreg_o;
    
    //  id_ex -> ex
    wire[`AluOpWidth-1:0]    ex_aluop_i;
    wire[`AluSelWidth-1:0]   ex_alusel_i;
    wire[`RegDataWidth-1:0]  ex_reg1_i;  
    wire[`RegDataWidth-1:0]  ex_reg2_i;  
    wire[`RegAddrWidth-1:0]  ex_wd_i;    
    wire ex_wreg_i;   
    
    //  ex -> ex_mem
    wire[`RegDataWidth-1:0] ex_wdata_o; 
    wire[`RegAddrWidth-1:0] ex_wd_o;    
    wire ex_wreg_o;                      
    
    //  ex_mem -> mem
    wire[`RegDataWidth-1:0] mem_wdata_i;   
    wire[`RegAddrWidth-1:0] mem_wd_i;      
    wire mem_wreg_i;
                            
    //  mem -> mem_wb
    wire[`RegDataWidth-1:0] mem_wdata_o; 
    wire[`RegAddrWidth-1:0] mem_wd_o;    
    wire mem_wreg_o;                    
      
    //  wb -> regfile
    wire[`RegDataWidth-1:0] wb_wdata_i;   
    wire[`RegAddrWidth-1:0] wb_wd_i;      
    wire wb_wreg_i;

    //  id <-> regfile
    wire reg1_read;
    wire reg2_read;
    wire[`RegAddrWidth-1:0] reg1_addr;
    wire[`RegDataWidth-1:0] reg1_data;
    wire[`RegAddrWidth-1:0] reg2_addr;
    wire[`RegDataWidth-1:0] reg2_data;  
    
    //  pc_reg
    pc_reg pc_reg0(
        .clk(clk), 
        .rst(rst), 
        .pc(pc), 
        .ce(memory_ce_o)
    );
    
    //  if_id
    if_id if_id0(
        .clk(clk),
        .rst(rst),
        .if_pc(pc),
        .if_inst(memory_data_i),
        .id_pc(id_pc_i),
        .id_inst(id_inst_i)
    );
    
    //  id
    id id0(
        .rst(rst),
        .pc_i(id_pc_i),
        .inst_i(id_inst_i),
        .reg1_data_i(reg1_data),
        .reg2_data_i(reg2_data),
        .aluop_o(id_aluop_o),
        .alusel_o(id_alusel_o),
        .reg1_o(id_reg1_o),
        .reg2_o(id_reg2_o),
        .wd_o(id_wd_o),
        .wreg_o(id_wreg_o)
    );
    
    //  id_ex
    id_ex id_ex0(
        .clk(clk),
        .rst(rst),
        .id_aluop(id_aluop_o),
        .id_alusel(id_alusel_o),
        .id_reg1(id_reg1_o),
        .id_reg2(id_reg2_o),
        .id_wd(id_wd_o),
        .id_wreg(id_wreg_o),
        .ex_aluop(ex_aluop_i),
        .ex_alusel(ex_alusel_i),
        .ex_reg1(ex_reg1_i),
        .ex_reg2(ex_reg2_i),
        .ex_wd(ex_wd_i),
        .ex_wreg(ex_wreg_i)
    );
    
    //  ex
    ex ex0(
        .rst(rst),
        .aluop_i(ex_aluop_i),
        .alusel_i(ex_alusel_i),
        .reg1_i(ex_reg1_i),
        .reg2_i(ex_reg2_i),
        .wd_i(ex_wd_i),
        .wreg_i(ex_wreg_i),
        .wdata_o(ex_wdata_o),
        .wd_o(ex_wd_o),
        .wreg_o(ex_wreg_o)
    );
    
    //  ex_mem
    ex_mem ex_mem0(
        .clk(clk),
        .rst(rst),
        .ex_wdata(ex_wdata_o),
        .ex_wd(ex_wd_o),
        .ex_wreg(ex_wreg_o),
        .mem_wdata(mem_wdata_i),
        .mem_wd(mem_wd_i),
        .mem_wreg(mem_wreg_i)
    );
    
    //  mem
    mem mem0(
        .rst(rst),
        .wdata_i(mem_wdata_i),
        .wd_i(mem_wd_i),
        .wreg_i(mem_wreg_i),
        .wdata_o(mem_wdata_o),
        .wd_o(mem_wd_o),
        .wreg_o(mem_wreg_o)
    );
    
    //  mem_wb
    mem_wb mem_wb(
        .clk(clk),
        .rst(rst),
        .mem_wdata(mem_wdata_o),
        .mem_wd(mem_wd_o),
        .mem_wreg(mem_wreg_o),
        .wb_wdata(wb_wdata_i),
        .wb_wd(wb_wd_i),
        .wb_wreg(wb_wreg_i)
    );
    
    //  regfile
    regfile regfile0(
        .clk(clk),
        .rst(rst),
        .wdata(wb_wdata_i),
        .waddr(wb_wd_i),
        .we(wb_wreg_i),
        .rdata1(reg1_data),
        .rdata2(reg2_data)
    );
endmodule

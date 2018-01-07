`timescale 1ns / 1ps
`include "defines.vh"


module risc32i(
        input wire clk,
        input wire rst,
        
		output Tx,
		input Rx
    );
    
    //  pc_reg outputs
    wire[`MemAddrWidth-1:0] pcreg_pc;
	wire pcreg_ce;
    
    //  if_id outputs
    wire[`MemAddrWidth-1:0] ifid_pc;
    wire[`InstWidth-1:0] ifid_inst;
    
    //  id outputs
    wire id_reg1_read;
    wire id_reg2_read;
    wire[`RegAddrWidth-1:0] id_reg1_addr;
    wire[`RegAddrWidth-1:0] id_reg2_addr;
    wire[`AluOpWidth-1:0] id_aluop;
    wire[`AluSelWidth-1:0] id_alusel;
    wire[`RegDataWidth-1:0] id_reg1;
    wire[`RegDataWidth-1:0] id_reg2;
    wire[`RegAddrWidth-1:0] id_wd;
    wire id_wreg;
	wire[`RegDataWidth-1:0] id_addr_base;
	wire[`RegDataWidth-1:0] id_addr_off;
	wire[1:0] id_jump_type;
	wire	id_wait_reg;
	wire[1:0] id_memop;
	wire[2:0] id_memfunct;
	wire id_stallreq;

	//	regfile outputs
    wire[`RegDataWidth-1:0] reg_reg1_data;
    wire[`RegDataWidth-1:0] reg_reg2_data;  

    //  id_ex outputs
    wire[`AluOpWidth-1:0]    idex_aluop;
    wire[`AluSelWidth-1:0]   idex_alusel;
    wire[`RegDataWidth-1:0]  idex_reg1;  
    wire[`RegDataWidth-1:0]  idex_reg2;  
    wire[`RegAddrWidth-1:0]  idex_wd;    
    wire idex_wreg;   
	wire[`RegDataWidth-1:0]  idex_addr_base;
	wire[`RegDataWidth-1:0]  idex_addr_off;
	wire[1:0] idex_memop;
	wire[2:0] idex_memfunct;
	wire[1:0] idex_jump_type;
	wire	  idex_wait_reg;
    
    //  ex outputs
    wire[`RegDataWidth-1:0] ex_wdata; 
    wire[`RegAddrWidth-1:0] ex_wd;    
    wire ex_wreg;                      
	wire[`RegDataWidth-1:0] ex_addr;
	wire[1:0] ex_memop;
	wire[2:0] ex_memfunct;
    
    //  ex_mem outputs
    wire[`RegDataWidth-1:0] exmem_wdata;   
    wire[`RegAddrWidth-1:0] exmem_wd;      
    wire exmem_wreg;
	wire[`MemAddrWidth-1:0] exmem_addr;
	wire[1:0] exmem_memop;
	wire[2:0] exmem_memfunct;
                            
    //  mem outputs
	wire mem_data_ce;
	wire mem_data_optype;
	wire[`MemAddrWidth-1:0] mem_data_addr;
	wire[`RegDataWidth-1:0] mem_write_data_value;
	wire[`RegDataBytes-1:0] mem_write_data_mask;
    wire[`RegDataWidth-1:0] mem_wdata; 
    wire[`RegAddrWidth-1:0] mem_wd;    
    wire mem_wreg;                    
      
    //  memwb outputs
    wire[`RegDataWidth-1:0] memwb_wdata;   
    wire[`RegAddrWidth-1:0] memwb_wd;      
    wire memwb_wreg;

	//	ctrl outputs
	wire[5:0] ctrl_stall;

	//	cache outputs
	wire[`RegDataWidth-1:0] cache_inst_value;
	wire[`RegDataWidth-1:0] cache_read_data_value;
	wire cache_busy;
	wire cache_Tx;
	wire cache_Rx;

    //  pc_reg
    pc_reg pc_reg0(
        .clk(clk), 
        .rst(rst), 
		.stall(ctrl_stall),
		.ex_jump(ex_wdata[0]),
		.idex_jump_type(idex_jump_type),
		.ex_addr(ex_addr),
        .pc(pcreg_pc), 
        .ce(pcreg_ce)
    );
    
    //  if_id
    if_id if_id0(
        .clk(clk),
        .rst(rst),
		.stall(ctrl_stall),
        .if_pc(pcreg_pc),
        .if_inst(cache_inst_value),
		.ex_jump(ex_wdata[0]),
		.idex_jump_type(idex_jump_type),
        .id_pc(ifid_pc),
        .id_inst(ifid_inst)
    );
    
    //  id
    id id0(
        .rst(rst),
        .pc_i(ifid_pc),
        .inst_i(ifid_inst),
        .reg1_data_i(reg_reg1_data),
        .reg2_data_i(reg_reg2_data),
		.mem_wdata_i(mem_wdata), 
		.mem_wd_i(mem_wd), 
		.mem_wreg_i(mem_wreg),
		.jump_type_i(idex_jump_type),
		.wait_reg_i(idex_wait_reg),
		.ex_memop_i(ex_memop),
		.ex_wdata_i(ex_wdata), 
		.ex_wd_i(ex_wd), 
		.ex_wreg_i(ex_wreg),
        .reg1_read_o(id_reg1_read),
        .reg2_read_o(id_reg2_read),
        .reg1_addr_o(id_reg1_addr),
        .reg2_addr_o(id_reg2_addr),
        .aluop_o(id_aluop),
        .alusel_o(id_alusel),
        .reg1_o(id_reg1),
        .reg2_o(id_reg2),
        .wd_o(id_wd),
        .wreg_o(id_wreg),        
		.addr_base(id_addr_base),
		.addr_off(id_addr_off),
		.jump_type_o(id_jump_type),
		.wait_reg_o(id_wait_reg),
		.memop_o(id_memop),
		.memfunct_o(id_memfunct),
		.stall_req(id_stallreq)
    );
    
    //  id_ex
    id_ex id_ex0(
        .clk(clk),
        .rst(rst),
		.stall(ctrl_stall),
        .id_aluop(id_aluop),
        .id_alusel(id_alusel),
        .id_reg1(id_reg1),
        .id_reg2(id_reg2),
        .id_wd(id_wd),
        .id_wreg(id_wreg),
		.id_addr_base(id_addr_base),
		.id_addr_off(id_addr_off),
		.id_jump_type(id_jump_type),
		.id_wait_reg(id_wait_reg),
		.memop_i(id_memop),
		.memfunct_i(id_memfunct),
        .ex_aluop(idex_aluop),
        .ex_alusel(idex_alusel),
        .ex_reg1(idex_reg1),
        .ex_reg2(idex_reg2),
        .ex_wd(idex_wd),
        .ex_wreg(idex_wreg),
		.ex_addr_base(idex_addr_base),
		.ex_addr_off(idex_addr_off),
		.memop_o(idex_memop),
		.memfunct_o(idex_memfunct),
		.jump_type_o(idex_jump_type),
		.wait_reg_o(idex_wait_reg)
    );
    
    //  ex
    ex ex0(
        .rst(rst),
        .aluop_i(idex_aluop),
        .alusel_i(idex_alusel),
        .reg1_i(idex_reg1),
        .reg2_i(idex_reg2),
        .wd_i(idex_wd),
        .wreg_i(idex_wreg),
		.addr_base(idex_addr_base),
		.addr_off(idex_addr_off),
		.jump_type_i(idex_jump_type),
		.memop_i(idex_memop),
		.memfunct_i(idex_memfunct),
        .wdata_o(ex_wdata),
        .wd_o(ex_wd),
        .wreg_o(ex_wreg),
		.addr_o(ex_addr),
		.memop_o(ex_memop),
		.memfunct_o(ex_memfunct)
    );
    
    //  ex_mem
    ex_mem ex_mem0(
        .clk(clk),
        .rst(rst),
		.stall(ctrl_stall),
        .ex_wdata(ex_wdata),
        .ex_wd(ex_wd),
        .ex_wreg(ex_wreg),
		.ex_addr(ex_addr),
		.memop_i(ex_memop),
		.memfunct_i(ex_memfunct),
        .mem_wdata(exmem_wdata),
        .mem_wd(exmem_wd),
        .mem_wreg(exmem_wreg),
		.mem_addr(exmem_addr),
		.memop_o(exmem_memop),
		.memfunct_o(exmem_memfunct)
    );
    
    //  mem
    mem mem0(
        .rst(rst),
        .wdata_i(exmem_wdata),
        .wd_i(exmem_wd),
        .wreg_i(exmem_wreg),
		.exmem_addr(exmem_addr),
		.memop_i(exmem_memop),
		.memfunct_i(exmem_memfunct),
		.read_data_value(cache_read_data_value),
		.data_ce(mem_data_ce),
		.data_optype(mem_data_optype),
		.data_addr(mem_data_addr),
		.write_data_value(mem_write_data_value),
		.write_data_mask(mem_write_data_mask),
        .wdata_o(mem_wdata),
        .wd_o(mem_wd),
        .wreg_o(mem_wreg)
    );
    
    //  mem_wb
    mem_wb mem_wb(
        .clk(clk),
        .rst(rst),
		.stall(ctrl_stall),
        .mem_wdata(mem_wdata),
        .mem_wd(mem_wd),
        .mem_wreg(mem_wreg),
        .wb_wdata(memwb_wdata),
        .wb_wd(memwb_wd),
        .wb_wreg(memwb_wreg)
    );
    
    //  regfile
    regfile regfile0(
        .clk(clk),
        .rst(rst),
		.stall(ctrl_stall),
        .we(memwb_wreg),
        .waddr(memwb_wd),
        .wdata(memwb_wdata),
        .re1(id_reg1_read),
        .raddr1(id_reg1_addr),
        .rdata1(reg_reg1_data),
        .re2(id_reg2_read),
        .raddr2(id_reg2_addr),
        .rdata2(reg_reg2_data)
    );

	//	ctrl
	ctrl ctrl0(
		.rst(rst),
		.mem_busy(cache_busy),
		.id_req(id_stallreq),
		.stall(ctrl_stall)
	);

	//	cache
	cache cache0(
		.clk(clk),
		.rst(rst),
		.inst_ce(pcreg_ce),
		.data_ce(mem_data_ce),
		.data_optype(mem_data_optype),
		.inst_addr(pcreg_pc),
		.data_addr(mem_data_addr),
		.write_data_mask(mem_write_data_mask),
		.write_data_value(mem_write_data_value),
		.inst_value(cache_inst_value),
		.read_data_value(cache_read_data_value),
		.busy(cache_busy),
		.Tx(Tx),
		.Rx(Rx)
	);
endmodule

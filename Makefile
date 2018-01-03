TOOL_CHAIN = /opt/riscv/bin
COMPLIE = $(TOOL_CHAIN)/riscv32-unknown-elf-
SOURSE_DIR = ./risc-v/risc-v.srcs/sources_1/new
SOURSES = $(SOURSE_DIR)/defines.vh \
		  $(SOURSE_DIR)/ex.v \
		  $(SOURSE_DIR)/ex_mem.v \
		  $(SOURSE_DIR)/id.v \
		  $(SOURSE_DIR)/id_ex.v \
		  $(SOURSE_DIR)/if_id.v \
		  $(SOURSE_DIR)/mem.v \
		  $(SOURSE_DIR)/mem_wb.v \
		  $(SOURSE_DIR)/memory.v \
		  $(SOURSE_DIR)/opcode.vh \
		  $(SOURSE_DIR)/pc_reg.v \
		  $(SOURSE_DIR)/regfile.v \
		  $(SOURSE_DIR)/risc32i.v \
		  $(SOURSE_DIR)/sopc.v \
		  $(SOURSE_DIR)/sopc_tb.v 

wave : wave.vcd
	#   --   Show wave   --
	gtkwave wave.vcd

wave.vcd : sopc inst.mem
	#   --   Simulate   --
	vvp sopc

sopc : $(SOURSES)
	#   --   Complie Verilog  --
	iverilog -I$(SOURSE_DIR) -o sopc $(SOURSES)

%.o : %.S
	#   --   Assemble   --
	$(COMPLIE)as $< -o $@ -march=rv32i

%.om : %.o
	#   --   Link   --		   
	$(COMPLIE)ld $< -o $@

%.mem : %.om
	#   --   Complie Instruction   --
	$(COMPLIE)objcopy -O verilog $< $@
	sed -i '1d' $@

clean : 
	rm -f *.o *.om *.mem wave.vcd sopc 

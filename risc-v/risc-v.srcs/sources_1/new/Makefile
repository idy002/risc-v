TOOL_CHAIN = /opt/riscv/bin
COMPLIE = $(TOOL_CHAIN)/riscv32-unknown-elf-
INCLUDE_DIR = .
SOURSE_DIR = 
SOURSES =    $(SOURSE_DIR)pc_reg.v \
			 $(SOURSE_DIR)if_id.v  \
			 $(SOURSE_DIR)id.v     \
			 $(SOURSE_DIR)id_ex.v  \
			 $(SOURSE_DIR)ex.v     \
			 $(SOURSE_DIR)ex_mem.v \
			 $(SOURSE_DIR)mem.v    \
			 $(SOURSE_DIR)mem_wb.v \
			 $(SOURSE_DIR)memory.v \
			 $(SOURSE_DIR)regfile.v \
			 $(SOURSE_DIR)risc32i.v \
			 $(SOURSE_DIR)sopc.v    \
			 $(SOURSE_DIR)sopc_tb.v \
			 $(SOURSE_DIR)defines.vh \
			 $(SOURSE_DIR)opcode.vh

start : 
	@echo "Hello, ding!"
edit : 
	vim -p $(SOURSES) inst.S

wave : dump.vcd
	#   --   Show wave   --
	gtkwave dump.vcd

dump.vcd : sopc inst.mem
	#   --   Simulate   --
	vvp sopc > /dev/null

sopc : $(SOURSES)
	#   --   Complie Verilog  --
	iverilog -I$(INCLUDE_DIR) -o sopc $(SOURSES)

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

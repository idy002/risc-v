TOOL_CHAIN = /opt/riscv/bin
COMPLIE = $(TOOL_CHAIN)/riscv32-unknown-elf-
INCLUDE_DIR = .
SOURSE_DIR = 
SOURSES =    $(SOURSE_DIR)ctrl.v   \
			 $(SOURSE_DIR)pc_reg.v \
			 $(SOURSE_DIR)id.v     \
			 $(SOURSE_DIR)ex.v     \
			 $(SOURSE_DIR)mem.v    \
			 $(SOURSE_DIR)midbuf.v \
			 $(SOURSE_DIR)regfile.v \
			 $(SOURSE_DIR)risc32i.v \
			 $(SOURSE_DIR)cache.v 	\
			 $(SOURSE_DIR)memory_sim.v 	\
			 $(SOURSE_DIR)fifo.v 	\
			 $(SOURSE_DIR)uart_comm.v \
			 $(SOURSE_DIR)cpu.v    \
			 $(SOURSE_DIR)sim.v	\
			 $(SOURSE_DIR)defines.vh \
			 $(SOURSE_DIR)opcode.vh


#			 $(SOURSE_DIR)sopc_tb.v \

start : 
	@echo "Hello, ding!"

edit : 
	vim -p $(SOURSES) inst.S

%.S : %.c
	$(COMPLIE)gcc -S -o $@ $<

wave : dump.vcd
	#   --   Show wave   --
	gtkwave dump.vcd &

dump.vcd : sopc inst.mem
	#   --   Simulate   --
	vvp sopc #> /dev/null

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
	#	sed -i '1s/^.*$$/00 00 00 00/' $@
	sed -i '1d' $@

clean : 
	rm -f *.o *.om *.mem wave.vcd sopc 

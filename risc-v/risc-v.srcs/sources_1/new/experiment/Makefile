TOOL_CHAIN = /opt/riscv/bin
COMPLIE = $(TOOL_CHAIN)/riscv32-unknown-elf-
INCLUDE_DIR = .
SOURSE_DIR = 
SOURSES =    $(SOURSE_DIR)sopc.v   \
			 $(SOURSE_DIR)uart_comm.v \
			 $(SOURSE_DIR)fifo.v 

start : 
	@echo "Hello, ding!"

edit : 
	vim -p $(SOURSES) inst.S

wave : dump.vcd
	#   --   Show wave   --
	gtkwave dump.vcd &

dump.vcd : sopc
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
	sed -i '1s/^.*$$/00 00 00 00/' $@
	

clean : 
	rm -f *.o *.om *.mem wave.vcd sopc 

TOOL_CHAIN = /opt/riscv/bin
COMPLIE = $(TOOL_CHAIN)/riscv32-unknown-elf-

%.o : %.S
	$(COMPLIE)as $< -o $@ -march=rv32i

%.om : %.o
	$(COMPLIE)ld $< -o $@

%.mem : %.om
	$(COMPLIE)objcopy -O verilog $< $@

clean : 
	rm -f *.o *.om *.mem

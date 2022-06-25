FAKETIME=faketime -f "-1y" 

all: sw_emu
	
sw_emu: sw_emu_output_stationary

sw_emu_output_stationary:
	$(MAKE) -C case_output_stationary TARGET=sw_emu
	@echo "."
	@echo "."
	@echo "."
	@echo "       TEST PASSED! :)\n\n\n"

clean:
	$(MAKE) -C case_output_stationary clean

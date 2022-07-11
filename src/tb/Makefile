FAKETIME=faketime -f "-1y" 

#SW Emulation list
SW_EMU_LIST =
#SW_EMU_LIST += sw_emu_convolution_output_stationary
#SW_EMU_LIST += sw_emu_convolution_weight_stationary
SW_EMU_LIST += sw_emu_maxpool
#SW_EMU_LIST += sw_emu_conv_out_stat_then_maxpool

#HW Emulation list
HW_EMU_LIST =
#HW_EMU_LIST += hw_emu_convolution_output_stationary
#HW_EMU_LIST += hw_emu_convolution_weight_stationary
HW_EMU_LIST += hw_emu_maxpool
#HW_EMU_LIST += hw_emu_conv_out_stat_then_maxpool


all: #sw_emu

#SW emulation
sw_emu: $(SW_EMU_LIST)
sw_emu_convolution_weight_stationary:
	$(MAKE) -C case_convolution_weight_stationary TARGET=sw_emu
	@echo "."
	@echo "."
	@echo "."
	@echo "   Test Target: case_convolution_weight_stationary"
	@echo "       TEST PASSED! :)\n\n\n"
sw_emu_convolution_output_stationary:
	$(MAKE) -C case_convolution_output_stationary TARGET=sw_emu
	@echo "."
	@echo "."
	@echo "."
	@echo "   Test Target: case_convolution_output_stationary"
	@echo "       TEST PASSED! :)\n\n\n"
sw_emu_maxpool:
	$(MAKE) -C case_maxpool TARGET=sw_emu
	@echo "."
	@echo "."
	@echo "."
	@echo "   Test Target: case_maxpool"
	@echo "       TEST PASSED! :)\n\n\n"
sw_emu_conv_out_stat_then_maxpool:
	$(MAKE) -C case_conv_out_stat_then_maxpool TARGET=sw_emu
	@echo "."
	@echo "."
	@echo "."
	@echo "   Test Target: case_conv_out_stat_then_maxpool"
	@echo "       TEST PASSED! :)\n\n\n"


#HW emulation
hw_emu: $(HW_EMU_LIST)
hw_emu_convolution_weight_stationary:
	$(MAKE) -C case_convolution_weight_stationary TARGET=hw_emu
	@echo "."
	@echo "."
	@echo "."
	@echo "   Test Target: case_convolution_weight_stationary"
	@echo "       TEST PASSED! :)\n\n\n"
hw_emu_convolution_output_stationary:
	$(MAKE) -C case_convolution_output_stationary TARGET=hw_emu
	@echo "."
	@echo "."
	@echo "."
	@echo "   Test Target: case_convolution_output_stationary"
	@echo "       TEST PASSED! :)\n\n\n"
hw_emu_maxpool:
	$(MAKE) -C case_maxpool TARGET=hw_emu
	@echo "."
	@echo "."
	@echo "."
	@echo "   Test Target: case_maxpool"
	@echo "       TEST PASSED! :)\n\n\n"
hw_emu_conv_out_stat_then_maxpool:
	$(MAKE) -C case_conv_out_stat_then_maxpool TARGET=hw_emu
	@echo "."
	@echo "."
	@echo "."
	@echo "   Test Target: case_conv_out_stat_then_maxpool"
	@echo "       TEST PASSED! :)\n\n\n"


clean:
	$(MAKE) -C case_convolution_weight_stationary clean
	$(MAKE) -C case_convolution_output_stationary clean
	$(MAKE) -C case_maxpool clean
	$(MAKE) -C case_conv_out_stat_then_maxpool clean

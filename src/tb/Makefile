FAKETIME=faketime -f "-1y" 


all: #sw_emu

#SW emulation
sw_emu: \
	sw_emu_convolution_weight_stationary\
	sw_emu_convolution_output_stationary\
	sw_emu_conv_out_stat_then_maxpool\
	sw_emu_maxpool\
	#
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
hw_emu: \
	hw_emu_conv_out_stat_then_maxpool\
	#hw_emu_convolution_weight_stationary\
	hw_emu_convolution_output_stationary\
	hw_emu_maxpool\
	#
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
	$(MAKE) -C case_maxpool TARGET=sw_emu
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
	$(MAKE) -C case_convolution_output_stationary clean
	$(MAKE) -C case_maxpool clean
	$(MAKE) -C case_conv_out_stat_then_maxpool clean

FAKETIME=faketime -f "-1y" 

################################
##### test case choices ########

#SW Emulation list
SW_EMU_LIST =
SW_EMU_LIST += sw_emu_convolution_output_stationary
#SW_EMU_LIST += sw_emu_convolution_weight_stationary
#SW_EMU_LIST += sw_emu_maxpool
#SW_EMU_LIST += sw_emu_conv_out_stat_then_maxpool

#HW Emulation list
HW_EMU_LIST =
HW_EMU_LIST += hw_emu_convolution_output_stationary
HW_EMU_LIST += hw_emu_convolution_weight_stationary
HW_EMU_LIST += hw_emu_maxpool
HW_EMU_LIST += hw_emu_conv_out_stat_then_maxpool

#FPGA running list
FPGA_LIST =
FPGA_LIST += fpga_convolution_output_stationary
#FPGA_LIST += fpga_convolution_weight_stationary
#FPGA_LIST += fpga_maxpool
#FPGA_LIST += fpga_conv_out_stat_then_maxpool


#pre-commit sw emulation list
PRE_COMMIT_LIST =
PRE_COMMIT_LIST += sw_emu_convolution_output_stationary
PRE_COMMIT_LIST += sw_emu_convolution_weight_stationary
PRE_COMMIT_LIST += sw_emu_maxpool
PRE_COMMIT_LIST += sw_emu_conv_out_stat_then_maxpool

###############################
############## fixed ##########
all: #

pre_commit_check: $(PRE_COMMIT_LIST)
pre_commit_%: sw_emu_%

#SW emulation
sw_emu: $(SW_EMU_LIST)
sw_emu_%: case_%
	$(MAKE) -C $< TARGET=sw_emu
	@echo "."
	@echo "."
	@echo "."
	@echo "   Test Target: $<"
	@echo "       TEST PASSED! :)\n\n\n"

#HW emulation
hw_emu: $(HW_EMU_LIST)
hw_emu_%: case_%
	$(MAKE) -C $< TARGET=hw_emu
	@echo "."
	@echo "."
	@echo "."
	@echo "   Test Target: $<"
	@echo "       TEST PASSED! :)\n\n\n"

#FPGA running
fpga: $(FPGA_LIST)
fpga_%: case_%
	$(MAKE) -C $< TARGET=hw
	@echo "."
	@echo "."
	@echo "."
	@echo "   Test Target: $<"
	@echo "       TEST PASSED! :)\n\n\n"


clean:
	$(MAKE) -C case_convolution_weight_stationary clean
	$(MAKE) -C case_convolution_output_stationary clean
	$(MAKE) -C case_maxpool clean
	$(MAKE) -C case_conv_out_stat_then_maxpool clean

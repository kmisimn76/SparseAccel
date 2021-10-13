################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../test.cpp 

OBJS += \
./testbench/test.o 

CPP_DEPS += \
./testbench/test.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/test.o: /home/sumin/workspace/hls_test/Systolic_Array_PCNN_based/test.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/home/sumin/tools/Xilinx_vitis/Vitis/Vitis/2020.1/include/etc -I/home/sumin/tools/Xilinx_vitis/Vitis/Vitis/2020.1/include -I/home/sumin/tools/Xilinx_vitis/Vitis/Vitis/2020.1/lnx64/tools/systemc/include -I/home/sumin/tools/Xilinx_vitis/Vitis/Vitis/2020.1/include/ap_sysc -I/home/sumin/workspace/hls_test -I/home/sumin/tools/Xilinx_vitis/Vitis/Vitis/2020.1/lnx64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



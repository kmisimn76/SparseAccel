FAKETIME=faketime -f "-1y" 

#TARGET=sw_emu
#TARGET=hw_emu
#TARGET=hw

JOBS=-j 12
OPTIMIZE=

DEFINE=  -D ARRAY_K=16
DEFINE+= -D ARRAY_C=16
DEFINE+= -D BLOCK_SIZE=4
DEFINE+= -D PORT_NUM=4

DEFINE+= -D DATA_L1_SIZE=72 #(288/PORT_NUM)
DEFINE+= -D OUTPUT_L1_SIZE=72 #(288/PORT_NUM)

DEFINE+= -D BIAS_L2_SIZE=128
DEFINE+= -D WEIGHT_L2_SIZE=2304
DEFINE+= -D DATA_L2_SIZE=576 #1152/PORT_NUM #2304/PORT_NUM
DEFINE+= -D OUTPUT_L2_SIZE=512 #1024/PORT_NUM #1600/PORT_NUM


ifeq ($(TARGET),hw)
	PROFILE=
else
	PROFILE=--profile_kernel data:all:all:all --profile_kernel stall:all:all
endif
DEBUG=-g

xrt_path = $(XILINX_XRT)
LINK_CONFIG = -L$(xrt_path)/lib -lOpenCL -lpthread -lrt -lstdc++
HEADER_OPTION = -I../../../common -I../.. -I.. -I../../device
BUILD_DIR = ./build.${TARGET}
LOG_DIR = ./log.${TARGET}

all: accelerator.${TARGET}.xclbin testbench emu

# Build HLS Kernel
conv.${TARGET}.xo: ../../device/SparseSIMD_Weight_Stationary.cpp
	${FAKETIME} v++ ${PROFILE} -t ${TARGET} ${OPTIMIZE} --platform xilinx_u200_xdma_201830_2 --save-temps ${DEBUG} --log_dir ${LOG_DIR} --temp_dir ${BUILD_DIR} -c -k Convolution ${DEFINE} --config config_sp ${HEADER_OPTION} -o'conv.${TARGET}.xo' ./../../device/SparseSIMD_Weight_Stationary.cpp ${JOBS}

accelerator.${TARGET}.xclbin: conv.${TARGET}.xo
	${FAKETIME} v++ -l ${PROFILE} -t ${TARGET} ${OPTIMIZE} --platform xilinx_u200_xdma_201830_2 --save-temps ${DEBUG} --log_dir ${LOG_DIR} --temp_dir ${BUILD_DIR} ${DEFINE} conv.${TARGET}.xo -o'accelerator.${TARGET}.xclbin' --config config_sp ${JOBS}

# Build TestBench - common
TestEnvironment.o: ../TestEnvironment.cpp ../TestEnvironment.h
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) $(CXXFLAGS) $(COMP_CONFIG) $(OCV_LIBS) $(HEADER_OPTION) -c ./../TestEnvironment.cpp
timer.o: ../../../common/timer.cpp
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) $(CXXFLAGS) $(COMP_CONFIG) $(OCV_LIBS) $(HEADER_OPTION) -c ../../../common/timer.cpp
ocl_util.o: ../../../common/ocl_util.cpp
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) $(CXXFLAGS) $(COMP_CONFIG) $(OCV_LIBS) $(HEADER_OPTION) -c ../../../common/ocl_util.cpp

# Build TestBench - Specific
ConvTestBench.o: ./ConvTestBench.cpp
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) $(CXXFLAGS) $(COMP_CONFIG) $(OCV_LIBS) $(HEADER_OPTION) -c ././ConvTestBench.cpp
ConvWeightStationaryTask.o: ../Tasks/ConvWeightStationaryTask.cpp ../Tasks/ConvWeightStationaryTask.h
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) $(CXXFLAGS) $(COMP_CONFIG) $(OCV_LIBS) $(HEADER_OPTION) -c ./../Tasks/ConvWeightStationaryTask.cpp
.PHONY: testbench
testbench: ConvTestBench.o TestEnvironment.o ConvWeightStationaryTask.o timer.o ocl_util.o
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) ConvTestBench.o TestEnvironment.o ConvWeightStationaryTask.o timer.o ocl_util.o -o testbench $(LINK_CONFIG) $(OCV_LIBS)

# Run Test
.PHONY: emu
emu:
	emconfigutil --platform xilinx_u200_xdma_201830_2 --od .
	XCL_EMULATION_MODE=$(TARGET) ./testbench accelerator.${TARGET}.xclbin ./test_layer_info.txt > print_log_tb.txt || (echo "\n\n\n           test failed.... :( \n      @(${shell pwd})\n\n\n"; sh -c 'exit 1')

.PHONY: debug
debug:
	emconfigutil --platform xilinx_u200_xdma_201830_2 --od .
	XCL_EMULATION_MODE=sw_emu gdb --args ./testbench accelerator.sw_emu.xclbin ./test_layer_info.txt


clean: clean_hw clean_sw clean_log
clean_hw:
	-rm *.xo
	-rm *.xclbin
clean_sw:
	-rm *.o
	-rm testbench
clean_log:
	-rm -rf build.sw_emu/*
	-rm -rf build.hw_emu/*
	-rm -rf build.hw/*
	-rm -rf log.sw_emu/*
	-rm -rf log.hw_emu/*
	-rm -rf log.hw/*
	-rm *.ltx
	-rm -r _x
	-rm *.log
	-rm *summary
	-rm *.xclbin.info
	-rm xilinx_u200_xdma_201830_2-0-accelerator.*
	-rm emconfig.json
	-rm *.jou

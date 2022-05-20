FAKETIME=faketime -f "-1y" 
#v++ -t sw_emu --platform xilinx_u200_xdma_201830_2 --save-temps -g --profile_kernel data:all:all:all --profile_kernel stall:all:all:all --define VGG16 --temp_dir ./tmp.sw_emu -c -k Conv_sysarr --config config_sp.u50 -I'../' -o'tmp.sw_emu/coreConv.xo' '../conv_sysarr_dbbuf.cpp'

#TARGET=sw_emu
TARGET=hw
#TARGET=hw
JOBS=-j 12
OPTIMIZE=

DEFINE=  -D ARRAY_K=16
DEFINE+= -D ARRAY_C=16
DEFINE+= -D VEC_SIZE=16
DEFINE+= -D BLOCK_SIZE=4
DEFINE+= -D PORT_NUM=8
DEFINE+= -D WEIGHT_L2_SIZE=2304
DEFINE+= -D DATA_L2_SIZE=144 #1152/PORT_NUM #2304/PORT_NUM
DEFINE+= -D OUTPUT_L2_SIZE=128 #1024/PORT_NUM #1600/PORT_NUM

PROFILE=--profile_kernel data:all:all:all --profile_kernel stall:all:all # move to config_sp
DEBUG=-g
#PROFILE=
#DEBUG=

xrt_path = $(XILINX_XRT)
LINK_CONFIG = -L$(xrt_path)/lib -lOpenCL -lpthread -lrt -lstdc++
HEADER_OPTION = -I../common -I../

all: conv.xo conv.xclbin host

conv.xo: ../conv_sysarr_dbbuf.cpp
	${FAKETIME} v++ ${PROFILE} -t ${TARGET} ${OPTIMIZE} --platform xilinx_u200_xdma_201830_2 --save-temps ${DEBUG} -c -k Conv_sysarr ${DEFINE} --config config_sp -I'./..' -o'conv.${TARGET}.xo' ./../conv_sysarr_dbbuf.cpp ${JOBS}
conv.xclbin: ../conv_sysarr_dbbuf.cpp
	${FAKETIME} v++ -l ${PROFILE} -t ${TARGET} ${OPTIMIZE} --platform xilinx_u200_xdma_201830_2 --save-temps ${DEBUG} ${DEFINE} conv.${TARGET}.xo -o'conv.${TARGET}.xclbin' --config config_sp ${JOBS}

.PHONY: host
host: $(HOST_OBJS)
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) $(CXXFLAGS) $(COMP_CONFIG) $(OCV_LIBS) $(HEADER_OPTION) -c ../host.cpp
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) $(CXXFLAGS) $(COMP_CONFIG) $(OCV_LIBS) $(HEADER_OPTION) -c ../common/timer.cpp
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) $(CXXFLAGS) $(COMP_CONFIG) $(OCV_LIBS) $(HEADER_OPTION) -c ../common/ocl_util.cpp
	g++ $(DEBUG) ${DEFINE} $(OCV_LIBDIRS) $(OCV_INCLUDES) host.o timer.o ocl_util.o -o host $(LINK_CONFIG) $(OCV_LIBS)

.PHONY: emu
emu:
#ifeq ($(PLATFORM), x86)
	emconfigutil --platform xilinx_u200_xdma_201830_2 --od .
	XCL_EMULATION_MODE=$(TARGET) ./host conv.${TARGET}.xclbin
#else
#	$(ABS_COMMON_REPO)/utility/run_emulation.pl "$(PACKAGE_OUT)/launch_$(FLOW).sh | tee embedded_run.log" "./run_app.sh $(FLOW)" "TEST PASSED" "7"
#endif


clean:
	-rm *.o
	-rm host
	-rm *.xo
	-rm *.xclbin
	-rm *.ltx
	-rm -r _x
	-rm *.log
	-rm *summary
	-rm *.xclbin.info

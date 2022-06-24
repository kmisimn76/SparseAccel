FAKETIME=faketime -f "-1y"
#v++ -t sw_emu --platform xilinx_u200_xdma_201830_2 --save-temps -g --profile_kernel data:all:all:all --profile_kernel stall:all:all:all --define VGG16 --temp_dir ./tmp.sw_emu -c -k Conv_sysarr --config config_sp.u50 -I'../' -o'tmp.sw_emu/coreConv.xo' '../conv_sysarr_dbbuf.cpp'

#TARGET=sw_emu
#TARGET=hw_emu
TARGET=hw

all: conv.xo conv.xclbin
conv.xo: ../conv_sysarr_dbbuf.cpp
	${FAKETIME} v++ -t ${TARGET} --platform xilinx_u200_xdma_201830_2 -c -k Conv_sysarr -I'./..' -o'conv.${TARGET}.xo' ./../conv_sysarr_dbbuf.cpp
conv.xclbin: ../conv_sysarr_dbbuf.cpp
	${FAKETIME} v++ -t ${TARGET} --platform xilinx_u200_xdma_201830_2 -l conv.${TARGET}.xo -o'conv.${TARGET}.xclbin' --config config_sp.u50

clean:
	rm *.log
	rm *summary
	rm *.xo
	rm *.ltx
	rm *.xclbin
	rm *.xclbin.info
	rm -r _x

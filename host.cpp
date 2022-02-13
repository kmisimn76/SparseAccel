//#define CL_TARGET_OPENCL_VERSION 120
#define CL_HPP_CL_1_2_DEFAULT_BUILD
#define CL_HPP_TARGET_OPENCL_VERSION 120
#define CL_HPP_MINIMUM_OPENCL_VERSION 120
#define CL_HPP_ENABLE_PROGRAM_CONSTRUCTION_FROM_ARRAY_COMPATIBILITY 1
#define CL_USE_DEPRECATED_OPENCL_1_2_APIS

#define XILINX

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include <iostream>
#include <fstream>

//#include <CL/opencl.h>
#include <CL/cl2.hpp>
//#include <CL/cl_ext_xilinx.h>

// dependency
#include "ocl_util.h"
#include "timer.h"

#include "hw_param.h"

/*void Conv_sysarr(
        NPU_PARAM hw_param,
		DPTYPE *bias_in,
		DPTYPE *weight_in,
		DPTYPE *data_in,
		MACTYPE *conv_out);*/

//typedef char DPTYPE;  // data path type
//typedef int  MACTYPE;

using namespace std;
using namespace ocl_util;


//----------- Design Parameters --------------//
// select what platform is used
#ifdef XILINX
const char *vendor_name = "Xilinx";
#else
//----------- SDK version <= 19.1 -----------//
//const char *vendor_name = "Intel";
//----------- SDK version >= 19.3 ----------//
#if defined(SW_EMU)
const char *vendor_name = "Intel(R) FPGA Emulation Platform for OpenCL(TM)";
#else
const char *vendor_name = "Intel(R) FPGA SDK for OpenCL(TM)";
#endif
#endif
#define DEVICE_TYPE CL_DEVICE_TYPE_ACCELERATOR

#define DMA_ALIGNMENT   4096

const char* knl_name_conv = "Conv_sysarr";
char *kernel_file_name;
/*cl_uint num_devices = 0;
cl_platform_id platform_id = NULL;
cl_context context = NULL;
cl_program program = NULL;
scoped_array<cl_device_id> device;
cl_kernel knl_conv;
cl_command_queue que;
cl_mem data_buf;
cl_mem output_buf;
cl_mem weights_buf;
cl_mem bias_buf;*/
cl_uint num_devices = 0;
cl::Platform platform;
cl::Context context;
cl::Program program;
std::vector<cl::Device> device;
cl::Kernel knl_conv;
cl::CommandQueue que;
cl::Buffer data_buf;
cl::Buffer output_buf;
cl::Buffer weights_buf;
cl::Buffer bias_buf;
std::vector<cl::Event> events;

DPTYPE* weight;
DPTYPE* data;
DPTYPE* bias;
MACTYPE* output;
MACTYPE* gold;
unsigned int weight_buf_size = 0;
unsigned int bias_buf_size = 0;
unsigned int in_buf_size = 0;
unsigned int out_buf_size = 0;
NPU_PARAM param;

void conv_gold()
{
	for(int k=0;k<param.K;k++){
		for(int h=0;h<param.WH;h++){
			for(int w=0;w<param.WH;w++){
				int output_ptr = k*param.WH*param.WH + h*param.WH + w;
				//int output_ptr = (((k/VEC_SIZE)*param.WH*param.WH) + h*param.WH + w)*VEC_SIZE + k%VEC_SIZE;
				int bias_ptr = k;
				//int bias_ptr = (k%VEC_SIZE)*(param.K/VEC_SIZE) + (k/VEC_SIZE);
				gold[output_ptr] = bias[bias_ptr];
				for(int c=0;c<param.C;c++){
					for(int r=0;r<param.RS;r++){
						for(int s=0;s<param.RS;s++){
							int data_ptr = c*param.WH_in*param.WH_in + (h+r)*param.WH_in + (w+s);
							int weight_ptr = k*param.C*param.RS*param.RS + c*param.RS*param.RS + r*param.RS + s;
							//int data_ptr = ((c/VEC_SIZE)*param.WH_in*param.WH_in + (h+r)*param.WH_in + (w+s))*VEC_SIZE + c%VEC_SIZE;
							//int weight_ptr = ((k/VEC_SIZE)*param.C*param.RS*param.RS + c*param.RS*param.RS + r*param.RS + s)*VEC_SIZE + k%VEC_SIZE;
							// INT32 accumulation
							gold[output_ptr] += data[data_ptr] * weight[weight_ptr];

							// INT8 accumulation
							/*gold[output_ptr] = (char)((char)gold[output_ptr] + (char)(data[data_ptr] * weight[weight_ptr])); // for Quantization
															 */
						}
					}
				}
		    	//printf("%d ", gold[k*WH*WH + h*WH + w]);
			}
		}
	}
	//printf("\n");
}
void ocl_initialize();
void array_initialize();
void initial_buffers();
void set_param_data(int);
void reorder_params();
void reorder_output();
void data_enque();
void set_args();
void read_data(cl::Event* event);
void score();
void cleanup();

typedef struct layer_info_ {
    uint K;
    uint C;
    uint WH;
    uint WH_in;
    uint RS;
}LayerInfo;
LayerInfo layer_infos[200];
int get_layer_info(const char* filename)
{
    FILE* f = fopen(filename, "r");
    printf("Filename: %s\n", filename);
    int n = 0;
    fscanf(f, "%d", &n);
    printf("N: %d\n", n);
    for (int i=0; i<n; i++)
    {
        fscanf(f, "%d,%d,%d,%d,%d", &layer_infos[i].K,
                                        &layer_infos[i].C,
                                        &layer_infos[i].WH,
                                        &layer_infos[i].WH_in,
                                        &layer_infos[i].RS);
    }
    fclose(f);
    return n;
}

int main(int argc, char** argv)
{
    if (argc != 2){
	printf("Error: wrong commad format, usage:\n");
	printf("%s <binaryfile>\n", argv[0]);
	return EXIT_FAILURE;
	}
	kernel_file_name=argv[1];
    cl_int status;
   	cl::Event event;
   	cl::Event event_read;
	cl_ulong time;

    printf("running with OCL2\n");
    ocl_initialize();
    printf("end ocl_initilaize\n");
    array_initialize();
    printf("end array_initilaize\n");

    int len = get_layer_info("./layer_info.txt");

    time = 0;
	int run_case = -3;
    for(int i=0, run_case=1;i<13;i++, run_case++){
		printf("<<<<<<<<Iter %d>>>>>>>>>\n", i);
        set_param_data(run_case);
        conv_gold();
		reorder_params();
        printf("end set_param_data\n");
        initial_buffers();
        printf("end initial_buffers\n");

        data_enque();
        printf("end data_enque\n");
        set_args();
        printf("end set_args\n");

        // run
    	//status = clEnqueueTask(que, knl_conv, 0, NULL, &event);
    	status = que.enqueueTask(knl_conv, &events, &event);
        events.push_back(event);
    	checkError(status, "Failed to enqueue task");
        status = event.wait();
    	checkError(status, "Failed to wait event");
		cl_ulong time_start, time_end;
		event.getProfilingInfo(CL_PROFILING_COMMAND_START, &time_start);
		event.getProfilingInfo(CL_PROFILING_COMMAND_END, &time_end);
		cl_ulong time_total = time_end - time_start;
		printf("Kernel time (ms): \t%lf\n", (double)time_total/1000000.0);
    	//time += getKernelStartEndTime(event);
    	//clReleaseEvent(event);

        //status = clFinish(que);
        //status = que.finish();
    	//checkError(status, "Failed to finish");
        printf("end run kernel\n");

        read_data(&event_read);
        printf("end read_data\n");

        events.back().wait();
        events.clear();

		printf("===Run Result===\n");
		reorder_output();
        score();
        printf("Run complete, No errors!\n");
		printf("<<<<<<<<<<<<>>>>>>>>>>>>\n");
    }

    //cleanup();
	//printf("end cleanup");
	printf("skip cleanup\n"); // due to opencl object
	exit(0);                  // due to opencl object
    return 0;
}

std::vector<cl::Device> get_devices(const std::string& vendor_name) {
    size_t i;
    cl_int err;
    std::vector<cl::Platform> platforms;
    err = cl::Platform::get(&platforms);
    checkError(err, "error");
    cl::Platform platform;
    for (i  = 0 ; i < platforms.size(); i++){
        platform = platforms[i];
        std::string platformName = platform.getInfo<CL_PLATFORM_NAME>(&err);
        checkError(err, "error");
        if (platformName == vendor_name){
            //std::cout << "Found platform: " << platformName.c_str() << std::endl;
            break;
        }
    }
    if (i == platforms.size()) {
        std::cout << "Error: Failed to find Xilinx platform" << std::endl;
        exit(EXIT_FAILURE);
    }

    //Getting ACCELERATOR Devices and selecting 1st such device
    std::vector<cl::Device> devices;
    err = platform.getDevices(CL_DEVICE_TYPE_ACCELERATOR, &devices);
    checkError(err, "error");
	cout<<"Device Nums: "<<devices.size()<<"\n";
	cout<<"Device Name: "<<devices[0].getInfo<CL_DEVICE_NAME>()<<"\n";
    return devices;
}
char* read_binary_file(const std::string &xclbin_file_name, unsigned &nb) 
{
    if(access(xclbin_file_name.c_str(), R_OK) != 0) {
        printf("ERROR: %s xclbin not available please build\n", xclbin_file_name.c_str());
        exit(EXIT_FAILURE);
    }
    //Loading XCL Bin into char buffer 
    // std::cout << "Loading: '" << xclbin_file_name.c_str() << "'\n";
    std::ifstream bin_file(xclbin_file_name.c_str(), std::ifstream::binary);
    bin_file.seekg (0, bin_file.end);
    nb = bin_file.tellg();
    bin_file.seekg (0, bin_file.beg);
    char *buf = new char [nb];
    bin_file.read(buf, nb);
    return buf;
}

void ocl_initialize()
{
    cl_int status;
	// Connect to the desired platform
	/*platform_id = findPlatform(vendor_name);
	if(platform_id == NULL) {
		printf("ERROR: Unable to find the desired OpenCL platform.\n");
		exit(1);
	}

    // Query the available OpenCL device
    device.reset(getDevices(platform_id, DEVICE_TYPE, &num_devices));
    printf("\nPlatform: %s\n", getPlatformName(platform_id).c_str());
    printf("Totally %d device(s) are found\n", num_devices);
    int device_ptr = 0; // only use one device, select the proper idx
    num_devices = 1; // reset the num of device to 1
    printf("  Using Device %d: %s\n", device_ptr, getDeviceName(device[device_ptr]).c_str());
    displayDeviceInfo(device[device_ptr]);*/
    std::string vendor_name_s(vendor_name);
    device = get_devices(vendor_name_s);

	// Create the context.
    /*context = clCreateContext(NULL, num_devices, &device[device_ptr], NULL, NULL, &status);
	checkError(status, "Failed to create context");*/
    context = cl::Context(device[0], NULL, NULL, NULL, &status);
	checkError(status, "Failed to create context");
	/*que = clCreateCommandQueue(context, device[device_ptr], CL_QUEUE_PROFILING_ENABLE, &status);
	checkError(status, "Failed to create command queue");*/
    que = cl::CommandQueue(context, device[0], cl::QueueProperties::Profiling | cl::QueueProperties::OutOfOrder, &status);
	checkError(status, "Failed to create command queue");

	// Create Program Objects
    /*
#ifdef XILINX
	char *fpga_bin;
	size_t fpga_bin_size;
	fpga_bin_size = load_file_to_memory(kernel_file_name, &fpga_bin);
	program = clCreateProgramWithBinary(context, 1, &device[device_ptr], &fpga_bin_size, (const unsigned char **) &fpga_bin, NULL, &status);
#else
	// Create the program for all device. All devices execute the same kernel.
	program = createProgramFromFile(context, (const char *) kernel_file_name, &device[device_ptr], num_devices);
#endif
	checkError(status, "Failed to create context");*/
    unsigned fileBufSize;
    char* fileBuf = read_binary_file(kernel_file_name, fileBufSize);
    cl::Program::Binaries bins{{fileBuf, fileBufSize}};
    program = cl::Program(context, device, bins, NULL, &status);
	checkError(status, "Failed to create program");
    status = program.build(device);
	checkError(status, "Failed to build program");

    /*knl_conv = clCreateKernel(program, knl_name_conv, &status);
	checkError(status, "Failed to create memRd kernel");*/
    knl_conv = cl::Kernel(program, knl_name_conv, &status);
	checkError(status, "Failed to create kernel");
}

void array_initialize()
{
#define MAX_WEIGHT_SIZE 23592960
#define MAX_DATA_SIZE 32688640
#define MAX_BIAS_SIZE 20480
#define MAX_OUTPUT_SIZE 32112640
    weight = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_WEIGHT_SIZE, DMA_ALIGNMENT);
    data = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_DATA_SIZE, DMA_ALIGNMENT);
    bias = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_BIAS_SIZE, DMA_ALIGNMENT);
    output = (MACTYPE*)alignedMalloc(sizeof(MACTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
    gold = (MACTYPE*)alignedMalloc(sizeof(MACTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
}

void initial_buffers()
{
    cl_int status;
    // Initialize Cl buffer
    printf("weight_buf_size: %d\n", weight_buf_size);
    printf("bias_buf_size: %d\n", bias_buf_size);
	/*weights_buf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR, weight_buf_size* sizeof(DPTYPE), weight, &status);
	checkError(status, "Failed to create buffer for weights");
    bias_buf = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR, bias_buf_size * sizeof(DPTYPE), bias, &status);
    checkError(status, "Failed to create buffer for bias");

	data_buf = clCreateBuffer(context, CL_MEM_READ_WRITE, in_buf_size * sizeof(DPTYPE), NULL, &status);
	checkError(status, "Failed to create buffer for data");
	output_buf = clCreateBuffer(context, CL_MEM_READ_WRITE, out_buf_size * sizeof(MACTYPE), NULL, &status);
	checkError(status, "Failed to create buffer for output");*/
    weights_buf = cl::Buffer(context, CL_MEM_READ_ONLY,  weight_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for weights");
    bias_buf = cl::Buffer(context, CL_MEM_READ_ONLY,  bias_buf_size*sizeof(DPTYPE), nullptr, &status);
    checkError(status, "Failed to create buffer for bias");
    data_buf = cl::Buffer(context, CL_MEM_READ_ONLY,  in_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for data");
    output_buf = cl::Buffer(context, CL_MEM_WRITE_ONLY,  out_buf_size*sizeof(MACTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for output");

    status = knl_conv.setArg(36+1, bias_buf);
    status |= knl_conv.setArg(36+2, weights_buf);
    status |= knl_conv.setArg(36+3, data_buf);
    status |= knl_conv.setArg(36+4, output_buf);
	checkError(status, "Failed to set buffer args");

    status = que.enqueueMigrateMemObjects({bias_buf,weights_buf,data_buf,output_buf}, CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED);
	checkError(status, "Failed to migrate buffer");

    que.finish();
}


void set_param_data(int run_case)
{
	//int run_case = 0;
    if(run_case==-1){
	param.K = 16;
	param.C = 4;
	param.WH = 7;
	param.WH_in = 9;
	param.RS = 3;
	param.L2_TILENUM_K = 4; ///
	param.L2_TILENUM_C = 1;
	param.L2_TILENUM_W = 1;
	param.L2_TILENUM_H = 1;
	param.L2_TILENUM_R = 1;
	param.L2_TILENUM_S = 1;
	param.K_L2 = 4;
	param.C_L2 = 4;
	param.W_L2 = 7;
	param.H_L2 = 7;
	param.W_in_L2 = 9; // TILENUM_W + TILENUM_R/2. and don't need thinking about stride
	param.H_in_L2 = 9;
	param.R_L2 = 3;
	param.S_L2 = 3;
	param.L1_TILENUM_K = 1; ///
	param.L1_TILENUM_C = 1;
	param.L1_TILENUM_W = 1;
	param.L1_TILENUM_H = 1;
	param.L1_TILENUM_R = 3;
	param.L1_TILENUM_S = 3;
	param.K_L1 = 4;
	param.C_L1 = 4;
	param.W_L1 = 7;
	param.H_L1 = 7;
	param.W_in_L1 = 7; // TILESIZE_W + TILESIZE_R/2. and don't need thinking about stride
	param.H_in_L1 = 7;
	param.R_L1 = 1;
	param.S_L1 = 1;
	param.TILESIZE_W = 7; ////
	param.TILESIZE_H = 7;
	param.TILESIZE_R = 1; //must be 1
	param.TILESIZE_S = 1; //must be 1
	}
	else if(run_case==-2){
	param.K = 32;
	param.C = 64;
	param.WH = 14;
	param.WH_in = 16;
	param.RS = 3;
	param.L2_TILENUM_K = 1; ///
	param.L2_TILENUM_C = 2;
	param.L2_TILENUM_W = 1;
	param.L2_TILENUM_H = 1;
	param.L2_TILENUM_R = 1;
	param.L2_TILENUM_S = 1;
	param.K_L2 = ARRAY_K*8;
	param.C_L2 = ARRAY_C*8;
	param.W_L2 = 14;
	param.H_L2 = 14;
	param.W_in_L2 = 16; // TILENUM_W + TILENUM_R/2. and don't need thinking about stride
	param.H_in_L2 = 16;
	param.R_L2 = 3;
	param.S_L2 = 3;
	param.L1_TILENUM_K = 8; ///
	param.L1_TILENUM_C = 8;
	param.L1_TILENUM_W = 2;
	param.L1_TILENUM_H = 2;
	param.L1_TILENUM_R = 3;
	param.L1_TILENUM_S = 3;
	param.K_L1 = ARRAY_K;
	param.C_L1 = ARRAY_C;
	param.W_L1 = 7;
	param.H_L1 = 7;
	param.W_in_L1 = 7; // TILESIZE_W + TILESIZE_R/2. and don't need thinking about stride
	param.H_in_L1 = 7;
	param.R_L1 = 1;
	param.S_L1 = 1;
	param.TILESIZE_W = 7; ////
	param.TILESIZE_H = 7;
	param.TILESIZE_R = 1; //must be 1
	param.TILESIZE_S = 1; //must be 1
	}
	else if(run_case==-3){
	param.K = 512;
	param.C = 512;
	param.WH = 28;
	param.WH_in = 30;
	param.RS = 3;
	param.L2_TILENUM_K = 16; ///
	param.L2_TILENUM_C = 16;
	param.L2_TILENUM_W = 2;
	param.L2_TILENUM_H = 2;
	param.L2_TILENUM_R = 1;
	param.L2_TILENUM_S = 1;
	param.K_L2 = ARRAY_K*8;
	param.C_L2 = ARRAY_C*8;
	param.W_L2 = 14;
	param.H_L2 = 14;
	param.W_in_L2 = 16; // TILENUM_W + TILENUM_R/2. and don't need thinking about stride
	param.H_in_L2 = 16;
	param.R_L2 = 3;
	param.S_L2 = 3;
	param.L1_TILENUM_K = 8; ///
	param.L1_TILENUM_C = 8;
	param.L1_TILENUM_W = 2;
	param.L1_TILENUM_H = 2;
	param.L1_TILENUM_R = 3;
	param.L1_TILENUM_S = 3;
	param.K_L1 = ARRAY_K;
	param.C_L1 = ARRAY_C;
	param.W_L1 = 7;
	param.H_L1 = 7;
	param.W_in_L1 = 7; // TILESIZE_W + TILESIZE_R/2. and don't need thinking about stride
	param.H_in_L1 = 7;
	param.R_L1 = 1;
	param.S_L1 = 1;
	param.TILESIZE_W = 7; ////
	param.TILESIZE_H = 7;
	param.TILESIZE_R = 1; //must be 1
	param.TILESIZE_S = 1; //must be 1
	}
	else if(run_case>=0 && run_case<1000) { // real vgg case
        param.K = layer_infos[run_case].K;
        param.C = layer_infos[run_case].C;
        param.WH = layer_infos[run_case].WH;
        param.WH_in = layer_infos[run_case].WH_in;
        param.RS = layer_infos[run_case].RS;
	param.L2_TILENUM_K = param.K/(ARRAY_K*1);//((param.K>=128)?8:4)); ///
	param.L2_TILENUM_C = param.C/(ARRAY_C*1);//((param.C>=128)?8:((param.C>=64)?4:1)));
	param.L2_TILENUM_W = param.WH/14;
	param.L2_TILENUM_H = param.WH/14;
	param.L2_TILENUM_R = 1;
	param.L2_TILENUM_S = 1;
	param.K_L2 = ARRAY_K*1;//((param.K>=128)?8:4);
	param.C_L2 = ARRAY_C*1;//((param.C>=128)?8:((param.C>=64)?4:1));
	param.W_L2 = 14;
	param.H_L2 = 14;
	param.W_in_L2 = 16; // TILENUM_W + TILENUM_R/2. and don't need thinking about stride
	param.H_in_L2 = 16;
	param.R_L2 = 3;
	param.S_L2 = 3;
	param.L1_TILENUM_K = 1;//(param.K>=128)?8:4; ///
	param.L1_TILENUM_C = 1;//(param.C>=128)?8:((param.C>=64)?4:1);
	param.L1_TILENUM_W = 2;
	param.L1_TILENUM_H = 2;
	param.L1_TILENUM_R = 3;
	param.L1_TILENUM_S = 3;
	param.K_L1 = ARRAY_K;
	param.C_L1 = ARRAY_C;
	param.W_L1 = 7;
	param.H_L1 = 7;
	param.W_in_L1 = 7; // TILESIZE_W + TILESIZE_R/2. and don't need thinking about stride
	param.H_in_L1 = 7;
	param.R_L1 = 1;
	param.S_L1 = 1;
	param.TILESIZE_W = 7; ////
	param.TILESIZE_H = 7;
	param.TILESIZE_R = 1; //must be 1
	param.TILESIZE_S = 1; //must be 1
	}
	else{ printf("Invalid case\n"); exit(1);}
    /*for(int k = 0; k < param.K; k++)								bias[k]		= rand()%256-128;
    for(int k = 0; k < param.K*param.C*param.RS*param.RS; k++)		weight[k]	= rand()%256-128;
    for(int k = 0; k < param.C*param.WH_in*param.WH_in; k++)		data[k]		= rand()%256-128;*/
    for(int k = 0; k < param.K; k++)								bias[k]		= rand()%256-128;
    for(int k = 0; k < param.K*param.C*param.RS*param.RS; k++)		weight[k]	= 1;
    for(int k = 0; k < param.C*param.WH_in*param.WH_in; k++)		data[k]		= 1;

    weight_buf_size = param.K * param.C * param.RS * param.RS;
    bias_buf_size = param.K;
    in_buf_size = param.C * param.WH_in * param.WH_in;
    out_buf_size = param.K * param.WH * param.WH;

	printf("===Kernel Info(case %d)===\n", run_case);
	printf("K,C,WH,RS : %d %d %d %d\n", param.K, param.C, param.WH, param.RS);
	printf("L2 Tile K,C,W(H),R(S): %d %d %d %d\n", param.L2_TILENUM_K, param.L2_TILENUM_C, param.L2_TILENUM_W, param.L2_TILENUM_R);
	printf("L1 Tile K,C,W(H),R(S): %d %d %d %d\n", param.L1_TILENUM_K, param.L1_TILENUM_C, param.L1_TILENUM_W, param.L1_TILENUM_R);
	printf("InTile  K,C,W(H),R(S): %d %d %d %d\n", ARRAY_K, ARRAY_C, param.TILESIZE_W, param.TILESIZE_R);
	printf("==========================\n");
}
void reorder_params() {
	// bias
	DPTYPE* bias_origin = new DPTYPE[bias_buf_size]();
	memcpy(bias_origin, bias, bias_buf_size * sizeof(DPTYPE));
	for (unsigned int ko = 0; ko < param.K/VEC_SIZE; ko++) {
		for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
			unsigned int origin_k = ko*VEC_SIZE + ki;
			unsigned int global_k = (ko)*VEC_SIZE + ki;
			bias[global_k] = bias_origin[origin_k];
		}
	}
	delete bias_origin;
	// weight
	DPTYPE* weight_origin = new DPTYPE[weight_buf_size]();
	memcpy(weight_origin, weight, weight_buf_size * sizeof(DPTYPE));
	for (int kmo = 0; kmo < param.L2_TILENUM_K; kmo++) { // Inner channel
	for (int cmo = 0; cmo < param.L2_TILENUM_C; cmo++) { // Inner channel
	for (int hmo = 0; hmo < param.L2_TILENUM_H; hmo++) {
	for (int wmo = 0; wmo < param.L2_TILENUM_W; wmo++) {
	for (int rmo = 0; rmo < param.L2_TILENUM_R; rmo++) {
	for (int smo = 0; smo < param.L2_TILENUM_S; smo++) {
		for (unsigned int ko = 0; ko < (param.K_L2 / VEC_SIZE); ko++) { //burst read
		for (unsigned int co = 0; co < param.C_L2; co++) { //burst read
		for (unsigned int ro = 0; ro < param.R_L2; ro++) { //burst read
		for (unsigned int so = 0; so < param.S_L2; so++) { //burst read
			for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
				unsigned int origin_kcsrs = ((kmo*param.K_L2+(ko*VEC_SIZE+ki))*param.C*param.RS*param.RS + (cmo*param.C_L2+co)*param.RS*param.RS + (rmo*param.R_L2+ro)*param.RS + (smo*param.S_L2 + so));
				unsigned int global_kcrs = ((kmo*(param.L2_TILENUM_C)*(param.L2_TILENUM_R)*(param.L2_TILENUM_S)+cmo*(param.L2_TILENUM_R)*(param.L2_TILENUM_S)+rmo*(param.L2_TILENUM_S)+smo)
												*(param.K_L2/VEC_SIZE)*param.C_L2*param.R_L2*param.S_L2 + (ko*param.C_L2*param.R_L2*param.S_L2+co*param.S_L2*param.R_L2+ro*param.S_L2+so))*VEC_SIZE + ki; //burst read
				weight[global_kcrs] = weight_origin[origin_kcsrs];
			}
		}
	}
	}
	}
	}
	}
	}
	}
	}
	}
	delete weight_origin;
	// input
	DPTYPE* data_origin = new DPTYPE[in_buf_size]();
	memcpy(data_origin, data, in_buf_size * sizeof(DPTYPE));
	for (int cmo = 0; cmo < param.L2_TILENUM_C; cmo++) { // Inner channel
	for (int hmo = 0; hmo < param.L2_TILENUM_H; hmo++) {
	for (int wmo = 0; wmo < param.L2_TILENUM_W; wmo++) {
	for (unsigned int co = 0; co < param.C_L2/VEC_SIZE; co++) {
		for(unsigned int h = 0; h < param.H_in_L2; h++) {
			for(unsigned int w = 0; w < param.W_in_L2; w++) {
				for(unsigned int ci = 0; ci < VEC_SIZE; ci++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_C) / ARRAY_C
					unsigned int origin_chw = ((cmo*(param.C_L2)+(co*VEC_SIZE+ci))*param.WH_in*param.WH_in + (hmo*param.H_in_L2+h)*param.WH_in + (wmo*param.W_in_L2+w));
					unsigned int global_chw = ((cmo*(param.C_L2/VEC_SIZE)+co)*param.WH_in*param.WH_in + (hmo*param.H_in_L2+h)*param.WH_in + (wmo*param.W_in_L2+w))*VEC_SIZE + ci;
					data[global_chw] = data_origin[origin_chw];
				}
			}
		}
	}
	}
	}
	}
	delete data_origin;
}
void reorder_output()
{
	MACTYPE* out_origin = new MACTYPE[out_buf_size]();
	memcpy(out_origin, output, out_buf_size * sizeof(MACTYPE));
	for (int kmo = 0; kmo < param.L2_TILENUM_K; kmo++) { // Inner channel
	for (int hmo = 0; hmo < param.L2_TILENUM_H; hmo++) {
	for (int wmo = 0; wmo < param.L2_TILENUM_W; wmo++) {
	for (unsigned int ko = 0; ko < param.K_L2/VEC_SIZE; ko++) {
		for(unsigned int h = 0; h < param.H_L2; h++) {
			for(unsigned int w = 0; w < param.W_L2; w++) {
				for(unsigned int ki = 0;ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_C) / ARRAY_C
					unsigned int origin_khw = ((kmo*(param.K_L2)+(ko*VEC_SIZE+ki))*param.WH*param.WH + (hmo*param.H_L2+h)*param.WH + (wmo*param.W_L2+w));
					unsigned int global_khw = ((kmo*(param.K_L2/VEC_SIZE)+ko)*param.WH*param.WH + (hmo*param.H_L2+h)*param.WH + (wmo*param.W_L2+w))*VEC_SIZE + ki;
					output[origin_khw] = out_origin[global_khw];
				}
			}
		}
	}
	}
	}
	}
}

void data_enque()
{
    cl_int status;
    // Data enque
    // weight is static
/*	status = clEnqueueMigrateMemObjects(que, 1, &weights_buf, 0, 0, NULL, NULL); // 0 means from host
	checkError(status, "Failed to transfer weight");
	status = clEnqueueMigrateMemObjects(que, 1, &bias_buf, 0, 0, NULL, NULL);
	checkError(status, "Failed to transfer weight");
    // input is dynamic
	status = clEnqueueWriteBuffer(que, data_buf, CL_TRUE, 0, in_buf_size * sizeof(DPTYPE), data, 0, NULL, NULL);
	checkError(status, "Failed to transfer input image");*/
    status = que.enqueueWriteBuffer(weights_buf, CL_FALSE, 0, weight_buf_size * sizeof(DPTYPE), weight, nullptr, nullptr);
	checkError(status, "Failed to transfer weight");
    status = que.enqueueWriteBuffer(bias_buf, CL_FALSE, 0, bias_buf_size * sizeof(DPTYPE), bias, nullptr, nullptr);
	checkError(status, "Failed to transfer weight");
    status = que.enqueueWriteBuffer(data_buf, CL_FALSE, 0, in_buf_size * sizeof(DPTYPE), data, nullptr, nullptr);
	checkError(status, "Failed to transfer input image");

    que.finish();
}

typedef union NPU_PARAM_TEMP_
{
    NPU_PARAM origin;
    unsigned int dest[37];
}NPU_PARAM_TEMP;
void set_args()
{
    cl_int status;
    // Set Kernel Arg
    int argi = 0;
	//status = clSetKernelArg(knl_conv, argi++, sizeof(NPU_PARAM), &param);
	//checkError(status, "Failed to set argument %d of kernel", argi - 1);
    /*status = knl_conv.setArg(0, param); // OCLC++ origin
	checkError(status, "Failed to set argument %d of kernel", 0);*/
    NPU_PARAM_TEMP tmp;
    tmp.origin = param;
    /*printf("param union tmp : %u,%u,%u,%u,%u,...,%u\n", 
                tmp.origin.K,tmp.origin.C,tmp.origin.WH,tmp.origin.WH_in,tmp.origin.RS,
                tmp.origin.TILESIZE_S);
    printf("param union dst : %u,%u,%u,%u,%u,...,%u\n",
                tmp.dest[0],tmp.dest[1],tmp.dest[2],tmp.dest[3],tmp.dest[4],tmp.dest[36]);*/
    status = 0;
    for(int i=0;i<37;i++)
        status |= knl_conv.setArg(i, tmp.dest[i]);
	checkError(status, "Failed to set argument %d of kernel", 36);

//    argi = 7;
//    status = knl_conv.setArg(5, argi);
//	checkError(status, "Failed to set argument %d of kernel", 5);

    //move to createBuffer for OCL2
    /*status = clSetKernelArg(knl_conv, argi++, sizeof(cl_mem), &bias_buf);
	checkError(status, "Failed to set argument %d of kernel", argi - 1);
    status = clSetKernelArg(knl_conv, argi++, sizeof(cl_mem), &weights_buf);
	checkError(status, "Failed to set argument %d of kernel", argi - 1);
    status = clSetKernelArg(knl_conv, argi++, sizeof(cl_mem), &data_buf);
	checkError(status, "Failed to set argument %d of kernel", argi - 1);
    status = clSetKernelArg(knl_conv, argi++, sizeof(cl_mem), &output_buf);
	checkError(status, "Failed to set argument %d of kernel", argi - 1);*/
}

void read_data(cl::Event* event)
{
    cl_int status;
	/*status = clEnqueueReadBuffer(que, output_buf, CL_FALSE, 0, sizeof(MACTYPE) * out_buf_size, (void *)output, 0, NULL, NULL);
	checkError(status, "Failed to set transfer output data");*/
    status = que.enqueueReadBuffer(output_buf, CL_FALSE, 0, sizeof(MACTYPE) * out_buf_size, output, &events, event);
    events.push_back(*event);
	checkError(status, "Failed to set transfer output data");
}

void score()
{
    for(int wh=0;wh<param.WH*param.WH;wh++) {
		for (unsigned int ko = 0; ko < param.K/VEC_SIZE; ko++) {
			for (unsigned int ki = 0; ki < VEC_SIZE; ki++) {
				//unsigned int ptr = (ko*param.WH*param.WH+wh)*VEC_SIZE + ki;
				unsigned int l = (ko*VEC_SIZE+ki)*param.WH*param.WH + wh;
				unsigned int ptr = (ko*VEC_SIZE+ki)*param.WH*param.WH + wh;
				int v = ki;
				int out = output[ptr];
				if(out != gold[ptr])
                { printf("Error(%d or %d): %d (gold %d)\n", ptr, ptr, out, gold[l]);  exit(1); }
			}
		}
    }
}

// Release all memory resources here
void cleanup()
{
	// Release the opencl runtime resource allocated
	/*if(knl_conv) {
		clReleaseKernel(knl_conv);
	}
	if(que) {
		clReleaseCommandQueue(que);
	}
	if(data_buf) {
		clReleaseMemObject(data_buf);
	}
	if(weights_buf) {
		clReleaseMemObject(weights_buf);
	}
	if(bias_buf) {
		clReleaseMemObject(bias_buf);
	}
	if(output_buf) {
		clReleaseMemObject(output_buf);
	}

	if(program) {
		clReleaseProgram(program);
	}
	if(context) {
		clReleaseContext(context);
	}*/

	// Release the memory resource allocated
	alignedFree(weight);
	alignedFree(data);
	alignedFree(bias);
	alignedFree(output);
}

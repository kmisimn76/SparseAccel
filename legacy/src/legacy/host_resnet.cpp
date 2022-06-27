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

//#include "spdlog/sinks/basic_file_sink.h"

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

class cl_data_ {
public:
// cl::Platform platform;
cl::Context context;
cl::Program program;
std::vector<cl::Device> device;
cl::Kernel knl_conv;
cl::CommandQueue que;
cl::Buffer dat_buf;
cl::Buffer output_buf;
cl::Buffer weights_buf;
cl::Buffer bias_buf;


cl_data_() {}
~cl_data_() {}
};
unsigned int bias_buf_size = 0;
unsigned int weight_buf_size = 0;
unsigned int in_buf_size = 0;
unsigned int out_buf_size = 0;

//float sparsity = 0.0; //eltwise sparsity: expected group 4 sparsity = 0.6561
//float sparsity = 0.9; //eltwise sparsity: expected group 4 sparsity = 0.6561
//float sparsity = 0.95; //eltwise sparsity: expected group 4 sparsity = 0.8145
//float sparsity = 0.975; //eltwise sparsity: expected group 4 sparsity = 0.9037
float sparsity_set[20][3] =
{
{0, 0.0, 0.0},
{1, 0.05,	0.472870804501588},
{2,0.1,	0.562341325190349},
{3,0.15,	0.622332977288478},
{4,0.2,	0.668740304976422},
{5,0.25,	0.707106781186548},
{6,0.3,	0.740082804492285},
{7,0.35,	0.769160567313459},
{8,0.4,	0.795270728767051},
{9,0.45,	0.81903625881272},
{10,0.5,	0.840896415253715},
{11,0.55,	0.861173529963367},
{12,0.6,	0.880111736793393},
{13,0.65,	0.897900760011848},
{14,0.7,	0.914691219228694},
{15,0.75,	0.9306048591021},
{16,0.8,	0.945741609003176},
{17,0.85,	0.960184589404188},
{18,0.9,	0.974003746425297},
{19,0.95,	0.987258544901434}};
float sparsity = sparsity_set[0][2];
int groupsize[3] = {1,1,4}; //W,H,C

const char* knl_name_conv = "Conv_sysarr";
char *kernel_file_name;
/*cl_uint num_cl_data->devices = 0;
cl_cl_data->platform_id platform_id = NULL;
cl_cl_data->context context = NULL;
cl_cl_data->program program = NULL;
scoped_array<cl_cl_data->device_id> device;
cl_kernel cl_data->knl_conv;
cl_command_cl_data->queue que;
cl_mem cl_data->dat_buf;
cl_mem cl_data->output_buf;
cl_mem cl_data->weights_buf;
cl_mem cl_data->bias_buf;*/
cl_uint num_devices = 0;
cl_data_* cl_data;
std::vector<cl::Event> events;

DPTYPE* weight;
DPTYPE* data;
DPTYPE* weight_original;
DPTYPE* data_original;
DPTYPE* bias;
MACTYPE* output;
MACTYPE* gold;
NPU_PARAM param;

void conv_gold()
{
	for(int k=0;k<param.K;k++){
		for(int h=0;h<param.H;h++){
			for(int w=0;w<param.W;w++){
				int output_ptr = k*param.H*param.W + h*param.W + w;
				int bias_ptr = k;
				gold[output_ptr] = bias[bias_ptr];
                //if(k==0&&h==0&&w==3) printf("bias %d\n", bias[bias_ptr]);
				for(int c=0;c<param.C;c++){
					for(int r=0;r<param.R;r++){
						for(int s=0;s<param.S;s++){
							int data_ptr = c*param.H_in*param.W_in + (h+r)*param.W_in + (w+s);
							int weight_ptr = k*param.C*param.R*param.S + c*param.R*param.S + r*param.S + s;
							// INT32 accumulation
							gold[output_ptr] += data[data_ptr] * weight[weight_ptr];
                //if(k==0&&h==0&&w==3) printf("%d %d\n", data[data_ptr] , weight[weight_ptr]);

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

template<typename T>
void sparsify(T* _data, int _len, float _sparsity)
{
    bool* mask = new bool[_len];
    for(int i=0;i<_len;i++) // zero mask
        mask[i] = (i >= _len*_sparsity)?(true):(false);
    for(int i=_len-1;i>=1;i--) { // suffule
        int r = rand()%i;
        T tmp = mask[i];
        mask[i] = mask[r];
        mask[r] = tmp;
    }
    for(int i=0;i<_len;i++) // masking
        _data[i] *= mask[i];

    int cnt = 0;
    for(int i=0;i<_len;i++)
        if(_data[i]==.0) cnt++;
    printf("Eltwise sparsified rate: %lf\n", (float)cnt / (float)_len);

//int groupsize[3] = {1,1,4}; //W,H,C
    // input group sparsity
    cnt = 0;
    for(int c=0; c<param.C/groupsize[2];c++) {
        for(int h=0; h<param.H/groupsize[1];h++) {
            for(int w=0; w<param.W/groupsize[0];w++) {
                bool non_zero = false;
                for(int ci=0; ci<groupsize[2];ci++) {
                    for(int hi=0; hi<groupsize[1];hi++) {
                        for(int wi=0; wi<groupsize[0];wi++) {
                            if(_data[(c*groupsize[2]+ci)*(param.H*param.W) + (h*groupsize[1]+hi)*(param.W) + (w*groupsize[0]+wi)]!=.0) non_zero = true;
                        }
                    }
                }
                if(!non_zero) cnt++;
            }
        }
    }
    printf("Group sparsified rate: %lf\n", (float)cnt / (float)((param.C/groupsize[2])*(param.H/groupsize[1])*(param.W/groupsize[0])));
    delete[] mask;
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
    uint H;
    uint W;
    uint H_in;
    uint W_in;
    uint R;
    uint S;
    float density;
    uint L2K;
    uint L2C;
    uint L2H;
    uint L2W;
    uint L2R;
    uint L2S;
    uint L1K;
    uint L1C;
    uint L1H;
    uint L1W;
    uint L1R;
    uint L1S;
    uint TK;
    uint TC;
    uint TH;
    uint TW;
    uint TR;
    uint TS;
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
	    uint tmp;
	    fscanf(f,"%d,%d,%d,%d,%d,%d,", &layer_infos[i].K,&layer_infos[i].C,&layer_infos[i].H,&layer_infos[i].W,&layer_infos[i].R,&layer_infos[i].S);
	    fscanf(f,"%f,", &layer_infos[i].density);
	    fscanf(f,"%d,%d,%d,%d,%d,%d,%d,", &layer_infos[i].L2K,&layer_infos[i].L2C,&layer_infos[i].L2H,&layer_infos[i].L2W,&layer_infos[i].L2R,&layer_infos[i].L2S, &tmp);
	    fscanf(f,"%d,%d,%d,%d,%d,%d,%d,", &layer_infos[i].L1K,&layer_infos[i].L1C,&layer_infos[i].L1H,&layer_infos[i].L1W,&layer_infos[i].L1R,&layer_infos[i].L1S, &tmp);
	    fscanf(f,"%d,%d,%d,%d,%d,%d,%d", &layer_infos[i].TK,&layer_infos[i].TC,&layer_infos[i].TH,&layer_infos[i].TW,&layer_infos[i].TR,&layer_infos[i].TS, &tmp);
	    layer_infos[i].W_in = layer_infos[i].W + layer_infos[i].S -1;
	    layer_infos[i].H_in = layer_infos[i].H + layer_infos[i].R -1;
    }
    fclose(f);
    return n;
}
//std::shared_ptr<logger> logger;

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
/*    try 
    {
        //logger = spdlog::basic_logger_mt("basic_logger", "logs/sa_runtime_log.txt");
    }
    catch (const spdlog::spdlog_ex &ex)
    {
        std::cout << "Log init failed: " << ex.what() << std::endl;
    }*/

    //logger->info("Running host");
    printf("running with OCL2\n");
    ocl_initialize();
    printf("end ocl_initilaize\n");
    array_initialize();
    printf("end array_initilaize\n");

    int len = get_layer_info("./layer_info.txt");

    double time_log[13][17] = {};
    time = 0;
	//int run_case = -4;
	//int run_case = -3;
	int i = 0;
	int j = 0;
    //for(int i=0;i<20;i++){

    //for(int i=0, run_case=0;i<len;i++, run_case++){
//    for(int i=49, run_case=49;i<49+1;i++, run_case++){
    for(int i=0, run_case=0;i<0+1;i++, run_case++){
//    for(int j=0;j<17;j++){
	int j = 10;
        sparsity = sparsity_set[j][2];
	sparsity=0.0;
    //{

		printf("<<<<<<<<Iter %d>>>>>>>>>\n", i);
        set_param_data(run_case);
        conv_gold();
		reorder_params();
        printf("end set_param_data\n");
        initial_buffers();
        printf("end initial_buffers\n");

        data_enque();
        printf("end data_encl_data->que\n");
        set_args();
        printf("end set_args\n");

        // run
    	//status = clEncl_data->queueTask(que, cl_data->knl_conv, 0, NULL, &event);
    	status = cl_data->que.enqueueTask(cl_data->knl_conv, &events, &event);
        events.push_back(event);
    	checkError(status, "Failed to encl_data->queue task");
        status = event.wait();
    	checkError(status, "Failed to wait event");
		cl_ulong time_start, time_end;
		event.getProfilingInfo(CL_PROFILING_COMMAND_START, &time_start);
		event.getProfilingInfo(CL_PROFILING_COMMAND_END, &time_end);
		cl_ulong time_total = time_end - time_start;
		printf("Kernel time (ms): \t%lf\n", (double)time_total/1000000.0);
		time_log[i][j] = (double)time_total/1000000.0;
    	//time += getKernelStartEndTime(event);
    	//clReleaseEvent(event);

        //status = clFinish(cl_data->que);
        //status = cl_data->que.finish();
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
    //}
    }

    printf("time result\n");
    for(int i=0, run_case=0;i<13;i++, run_case++){
    	for(int j=0;j<17;j++){
		printf("%lf,", time_log[i][j]);
	}
	printf("\n");
    }

    cleanup();
	printf("end cleanup\n");
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
            //std::cout << "Found cl_data->platform: " << platformName.c_str() << std::endl;
            break;
        }
    }
    if (i == platforms.size()) {
        std::cout << "Error: Failed to find Xilinx platform" << std::endl;
        exit(EXIT_FAILURE);
    }

    //Getting ACCELERATOR Devices and selecting 1st such cl_data->device
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
    cl_data = new cl_data_();
	// Connect to the desired cl_data->platform
	/*cl_data->platform_id = findPlatform(vendor_name);
	if(cl_data->platform_id == NULL) {
		printf("ERROR: Unable to find the desired OpenCL cl_data->platform.\n");
		exit(1);
	}
    // Query the available OpenCL cl_data->device
    cl_data->device.reset(getDevices(cl_data->platform_id, DEVICE_TYPE, &num_devices));
    printf("\nPlatform: %s\n", getPlatformName(cl_data->platform_id).c_str());
    printf("Totally %d cl_data->device(s) are found\n", num_devices);
    int cl_data->device_ptr = 0; // only use one device, select the proper idx
    num_cl_data->devices = 1; // reset the num of device to 1
    printf("  Using Device %d: %s\n", cl_data->device_ptr, getDeviceName(device[device_ptr]).c_str());
    displayDeviceInfo(cl_data->device[device_ptr]);*/
    std::string vendor_name_s(vendor_name);
    cl_data->device = get_devices(vendor_name_s);

	// Create the cl_data->context.
    /*cl_data->context = clCreateContext(NULL, num_cl_data->devices, &device[device_ptr], NULL, NULL, &status);
	checkError(status, "Failed to create cl_data->context");*/
    cl_data->context = cl::Context(cl_data->device[0], NULL, NULL, NULL, &status);
	checkError(status, "Failed to create cl_data->context");
	/*cl_data->que = clCreateCommandQueue(cl_data->context, cl_data->device[device_ptr], CL_QUEUE_PROFILING_ENABLE, &status);
	checkError(status, "Failed to create command queue");*/
    cl_data->que = cl::CommandQueue(cl_data->context, cl_data->device[0], cl::QueueProperties::Profiling | cl::QueueProperties::OutOfOrder, &status);
	checkError(status, "Failed to create command queue");

	// Create Program Objects
    /*
#ifdef XILINX
	char *fpga_bin;
	size_t fpga_bin_size;
	fpga_bin_size = load_file_to_memory(kernel_file_name, &fpga_bin);
	cl_data->program = clCreateProgramWithBinary(cl_data->context, 1, &cl_data->device[device_ptr], &fpga_bin_size, (const unsigned char **) &fpga_bin, NULL, &status);
#else
	// Create the cl_data->program for all cl_data->device. All devices execute the same kernel.
	cl_data->program = createProgramFromFile(cl_data->context, (const char *) kernel_file_name, &cl_data->device[device_ptr], num_devices);
#endif
	checkError(status, "Failed to create cl_data->context");*/
    unsigned fileBufSize;
    char* fileBuf = read_binary_file(kernel_file_name, fileBufSize);
    cl::Program::Binaries bins{{fileBuf, fileBufSize}};
    cl_data->program = cl::Program(cl_data->context, cl_data->device, bins, NULL, &status);
	checkError(status, "Failed to create program");
    status = cl_data->program.build(cl_data->device);
	checkError(status, "Failed to build program");

    /*cl_data->knl_conv = clCreateKernel(cl_data->program, knl_name_conv, &status);
	checkError(status, "Failed to create memRd kernel");*/
    cl_data->knl_conv = cl::Kernel(cl_data->program, knl_name_conv, &status);
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
	/*cl_data->weights_buf = clCreateBuffer(cl_data->context, CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR, weight_buf_size* sizeof(DPTYPE), weight, &status);
	checkError(status, "Failed to create buffer for weights");
    cl_data->bias_buf = clCreateBuffer(cl_data->context, CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR, bias_buf_size * sizeof(DPTYPE), bias, &status);
    checkError(status, "Failed to create buffer for bias");
	cl_data->dat_buf = clCreateBuffer(cl_data->context, CL_MEM_READ_WRITE, in_buf_size * sizeof(DPTYPE), NULL, &status);
	checkError(status, "Failed to create buffer for data");
	cl_data->output_buf = clCreateBuffer(cl_data->context, CL_MEM_READ_WRITE, out_buf_size * sizeof(MACTYPE), NULL, &status);
	checkError(status, "Failed to create buffer for output");*/
    cl_data->weights_buf = cl::Buffer(cl_data->context, CL_MEM_READ_ONLY,  weight_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for weights");
    cl_data->bias_buf = cl::Buffer(cl_data->context, CL_MEM_READ_ONLY,  bias_buf_size*sizeof(DPTYPE), nullptr, &status);
    checkError(status, "Failed to create buffer for bias");
    cl_data->dat_buf = cl::Buffer(cl_data->context, CL_MEM_READ_ONLY,  in_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for data");
    cl_data->output_buf = cl::Buffer(cl_data->context, CL_MEM_WRITE_ONLY,  out_buf_size*sizeof(MACTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for output");

    status = cl_data->knl_conv.setArg(/*36*/41+1, cl_data->bias_buf);
    status |= cl_data->knl_conv.setArg(/*36*/41+2, cl_data->weights_buf);
    status |= cl_data->knl_conv.setArg(/*36*/41+3, cl_data->dat_buf);
    status |= cl_data->knl_conv.setArg(/*36*/41+4, cl_data->output_buf);
	checkError(status, "Failed to set buffer args");

    status = cl_data->que.enqueueMigrateMemObjects({cl_data->bias_buf,cl_data->weights_buf,cl_data->dat_buf,cl_data->output_buf}, CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED);
	checkError(status, "Failed to migrate buffer");

    cl_data->que.finish();
}


void set_param_data(int run_case)
{
	//int run_case = 0;
    if(run_case==-1){
	}
	else if(run_case==-2){
	}
	else if(run_case==-3){
	param.K = 16;
	param.C = 32;
	param.H = 16;
	param.W = 16;
	param.H_in = 18;
	param.W_in = 18;
	param.R = 3;
	param.S = 3;
	param.L2_TILENUM_K = 1; ///
	param.L2_TILENUM_C = 2;
	param.L2_TILENUM_W = 1;
	param.L2_TILENUM_H = 2;
	param.L2_TILENUM_R = 1;
	param.L2_TILENUM_S = 1;

	param.L1_TILENUM_K = 16/ARRAY_K; ///
	param.L1_TILENUM_C = 2;
	param.L1_TILENUM_W = 16/ARRAY_W;
	param.L1_TILENUM_H = 8;
	param.L1_TILENUM_R = 3;
	param.L1_TILENUM_S = 3;
	param.TILESIZE_K = ARRAY_K; //// is allowed(not matched with W_L1)
	param.TILESIZE_C = 8; //// is allowed(not matched with W_L1)
	param.TILESIZE_W = ARRAY_W; //// is allowed(not matched with W_L1)
	param.TILESIZE_H = 1;
	param.TILESIZE_R = 1; //must be 1
	param.TILESIZE_S = 1; //must be 1

	param.K_L1 = param.TILESIZE_K;
	param.C_L1 = param.TILESIZE_C;
	param.W_L1 = param.TILESIZE_W;
	param.H_L1 = param.TILESIZE_H;
	param.R_L1 = param.TILESIZE_R;
	param.S_L1 = param.TILESIZE_S;
	param.W_in_L1 = param.TILESIZE_W + param.S_L1-1; // TILESIZE_W + TILESIZE_R/2. and don't need thinking about stride
	param.H_in_L1 = param.TILESIZE_H + param.R_L1-1;
	param.K_L2 = param.K_L1 * param.L1_TILENUM_K;
	param.C_L2 = param.C_L1 * param.L1_TILENUM_C;
	param.W_L2 = param.W_L1 * param.L1_TILENUM_W;
	param.H_L2 = param.H_L1 * param.L1_TILENUM_H;
	param.R_L2 = param.R_L1*param.L1_TILENUM_R;
	param.S_L2 = param.S_L1*param.L1_TILENUM_S;
	param.W_in_L2 = param.W_L2 + param.S_L2-1; // TILENUM_W + TILENUM_R/2. and don't need thinking about stride
	param.H_in_L2 = param.H_L2 + param.R_L2-1;
	}
	else if(run_case==-4){
	}
	else if(run_case==-5){
	}
	else if(run_case>=0 && run_case<1000) { // real vgg case
/*	if (layer_infos[run_case].K < ARRAY_K) layer_infos[run_case].K = ARRAY_K; //HW padding
	if (layer_infos[run_case].W < ARRAY_W) { layer_infos[run_case].W = ARRAY_W; layer_infos[run_case].W_in = ARRAY_W+layer_infos[run_case].S-1; } //HW padding

    param.K = layer_infos[run_case].K;
    param.C = layer_infos[run_case].C;
    param.H = layer_infos[run_case].H;
    param.W = layer_infos[run_case].W;
    param.H_in = layer_infos[run_case].H_in;
    param.W_in = layer_infos[run_case].W_in;
    param.R = layer_infos[run_case].R;
    param.S = layer_infos[run_case].S;

	// L1
	param.TILESIZE_K = ARRAY_K; //// is allowed(not matched with W_L1)
	param.TILESIZE_C = (param.C>=16)?(16):(param.C); //// is allowed(not matched with W_L1)
	param.TILESIZE_W = ARRAY_W; //// is allowed(not matched with W_L1)
	param.TILESIZE_H = 1;
	param.TILESIZE_R = 1; //fix
	param.TILESIZE_S = 1; //fix

	param.K_L1 = param.TILESIZE_K;
	param.C_L1 = param.TILESIZE_C;
	param.W_L1 = param.TILESIZE_W;
	param.H_L1 = param.TILESIZE_H;
	param.R_L1 = param.TILESIZE_R;
	param.S_L1 = param.TILESIZE_S;
	param.W_in_L1 = param.TILESIZE_W + param.S_L1-1; // TILESIZE_W + TILESIZE_R/2. and don't need thinking about stride
	param.H_in_L1 = param.TILESIZE_H + param.R_L1-1;

	// L2
	param.L1_TILENUM_K = (param.K>=(ARRAY_K*4))?4:((param.K>=(ARRAY_K*2))?2:1); ///
	param.L1_TILENUM_C = 1;
	param.L1_TILENUM_W = (param.W>=(ARRAY_W*4))?4:((param.W>=(ARRAY_W*2))?2:1);
	param.L1_TILENUM_H = 1;
	param.L1_TILENUM_R = 3;//fix
	param.L1_TILENUM_S = 3;//fix

	param.K_L2 = param.K_L1 * param.L1_TILENUM_K;
	param.C_L2 = param.C_L1 * param.L1_TILENUM_C;
	param.W_L2 = param.W_L1 * param.L1_TILENUM_W;
	param.H_L2 = param.H_L1 * param.L1_TILENUM_H;
	param.R_L2 = param.R_L1*param.L1_TILENUM_R;
	param.S_L2 = param.S_L1*param.L1_TILENUM_S;
	param.W_in_L2 = param.W_L2 + param.S_L2-1; // TILENUM_W + TILENUM_R/2. and don't need thinking about stride
	param.H_in_L2 = param.H_L2 + param.R_L2-1;

	if ((layer_infos[run_case].W)%(param.W_L2)!=0)
	{ param.W=layer_infos[run_case].W += (param.W_L2 - (layer_infos[run_case].W)%(param.W_L2));
	  param.W_in=layer_infos[run_case].W_in = layer_infos[run_case].W+layer_infos[run_case].S-1; } //HW padding
	// DRAM
	param.L2_TILENUM_K = param.K/(param.K_L2); ///
	param.L2_TILENUM_C = param.C/(param.C_L2);
	param.L2_TILENUM_W = param.W/param.W_L2;
	param.L2_TILENUM_H = param.H/param.H_L2;
	param.L2_TILENUM_R = 1;
	param.L2_TILENUM_S = 1;
	*/

    param.K = layer_infos[run_case].K;
    param.C = layer_infos[run_case].C;
    param.H = layer_infos[run_case].H;
    param.W = layer_infos[run_case].W;
    param.H_in = layer_infos[run_case].H_in;
    param.W_in = layer_infos[run_case].W_in;
    param.R = layer_infos[run_case].R;
    param.S = layer_infos[run_case].S;

	// L1
	param.TILESIZE_K = layer_infos[run_case].TK;
	param.TILESIZE_C = layer_infos[run_case].TC;
	param.TILESIZE_W = layer_infos[run_case].TW;
	param.TILESIZE_H = layer_infos[run_case].TH;
	param.TILESIZE_R = layer_infos[run_case].TR;
	param.TILESIZE_S = layer_infos[run_case].TS;

	param.K_L1 = param.TILESIZE_K;
	param.C_L1 = param.TILESIZE_C;
	param.W_L1 = param.TILESIZE_W;
	param.H_L1 = param.TILESIZE_H;
	param.R_L1 = param.TILESIZE_R;
	param.S_L1 = param.TILESIZE_S;
	param.W_in_L1 = param.TILESIZE_W + param.S_L1-1; // TILESIZE_W + TILESIZE_R/2. and don't need thinking about stride
	param.H_in_L1 = param.TILESIZE_H + param.R_L1-1;

	// L2
	param.L1_TILENUM_K = layer_infos[run_case].L1K;
	param.L1_TILENUM_C = layer_infos[run_case].L1C;
	param.L1_TILENUM_W = layer_infos[run_case].L1W;
	param.L1_TILENUM_H = layer_infos[run_case].L1H;
	param.L1_TILENUM_R = layer_infos[run_case].L1R;
	param.L1_TILENUM_S = layer_infos[run_case].L1S;

	param.K_L2 = param.K_L1 * param.L1_TILENUM_K;
	param.C_L2 = param.C_L1 * param.L1_TILENUM_C;
	param.W_L2 = param.W_L1 * param.L1_TILENUM_W;
	param.H_L2 = param.H_L1 * param.L1_TILENUM_H;
	param.R_L2 = param.R_L1*param.L1_TILENUM_R;
	param.S_L2 = param.S_L1*param.L1_TILENUM_S;
	param.W_in_L2 = param.W_L2 + param.S_L2-1; // TILENUM_W + TILENUM_R/2. and don't need thinking about stride
	param.H_in_L2 = param.H_L2 + param.R_L2-1;

	param.L2_TILENUM_K = layer_infos[run_case].L2K;
	param.L2_TILENUM_C = layer_infos[run_case].L2C;
	param.L2_TILENUM_W = layer_infos[run_case].L2W;
	param.L2_TILENUM_H = layer_infos[run_case].L2H;
	param.L2_TILENUM_R = layer_infos[run_case].L2R;
	param.L2_TILENUM_S = layer_infos[run_case].L2S;

	}
	else{ printf("Invalid case\n"); exit(1);}
#define RAND_INPUT
#define SPARSIFYING
#ifdef RAND_INPUT
    for(int k = 0; k < param.K; k++)								bias[k]		= rand()%256-128;
    for(int k = 0; k < param.K*param.C*param.R*param.S; k++)		weight[k]	= rand()%256-128;
    for(int k = 0; k < param.C*param.H_in*param.W_in; k++)		data[k]		= rand()%256-128;
#else
    for(int k = 0; k < param.K; k++)  {
	    bias[k] = rand()%256-128;
	    bias[k] = 1;
    } for(int k = 0; k < param.K*param.C*param.R*param.S; k++) {
	    int lk = k/(param.C*param.R*param.S); int c=(k%(param.C*param.R*param.S))/(param.R*param.S); int rs=k%(param.R*param.S);
	    weight[k] = rand()%256-128;
	    weight[k] = 2;//(0<=c && c<1)?(1):(0);
    } for(int k = 0; k < param.C*param.H_in*param.W_in; k++) {
	    data[k] = rand()%256-128;
	    data[k] = 1;
    }
#endif
#ifdef SPARSIFYING
    printf("Data ");
    sparsify<DPTYPE>(data, param.C*param.H_in*param.W_in, sparsity);
    //printf("Weight ");
    //sparsify<DPTYPE>(weight, param.K*param.C*param.R*param.S, sparsity);
#endif

    weight_buf_size = param.K * param.C * param.R * param.S;
    bias_buf_size = param.K;
    in_buf_size = param.C * param.H_in * CEIL(param.W_in,ARRAY_W)*ARRAY_W; //!!!
    out_buf_size = param.K * param.H * param.W;

    weight_original = (DPTYPE*)malloc(sizeof(DPTYPE)*weight_buf_size);
    data_original = (DPTYPE*)malloc(sizeof(DPTYPE)*in_buf_size);
    memcpy(weight_original, weight, sizeof(DPTYPE)*weight_buf_size);
    memcpy(data_original, data, sizeof(DPTYPE)*in_buf_size);

                    /*printf("original 001\n");
                    int wh = 1;
                    int ko = 0, ki = 0;
                    for(int r=0; r<param.R; r++) {
                        for(int s=0; s<param.S; s++) {
                            for(int c=0; c<param.C; c++) {

                            }
                        }
                    }*/

	printf("===Kernel Info(case %d)===\n", run_case);
	printf("K,C,H,W,R,S : %d %d %d %d %d %d\n", param.K, param.C, param.H, param.W, param.R, param.S);
	printf("L2 Tile K,C,W,H,R(S): %d %d %d %d %d %d\n", param.L2_TILENUM_K, param.L2_TILENUM_C, param.L2_TILENUM_W, param.L2_TILENUM_H, param.L2_TILENUM_R, param.L2_TILENUM_S);
	printf("L1 Tile K,C,W,H,R(S): %d %d %d %d %d %d\n", param.L1_TILENUM_K, param.L1_TILENUM_C, param.L1_TILENUM_W, param.L1_TILENUM_H, param.L1_TILENUM_R, param.L1_TILENUM_S);
	printf("InTile  K,C,W,H,R(S): %d %d %d %d %d %d\n", param.TILESIZE_K, param.TILESIZE_C, param.TILESIZE_W, param.TILESIZE_H, param.TILESIZE_R, param.TILESIZE_S);
    //logger->info("Kernel info");
	printf("==========================\n");
}
void reorder_params() {
	// bias
	DPTYPE* bias_origin = new DPTYPE[bias_buf_size]();
	memcpy(bias_origin, bias, bias_buf_size * sizeof(DPTYPE));
	for (unsigned int ko = 0; ko < param.K/ARRAY_K; ko++) {
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
			unsigned int origin_k = ko*ARRAY_K + ki;
			unsigned int global_k = (ko)*ARRAY_K + ki;
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
		for (unsigned int ko = 0; ko < (param.K_L2 / ARRAY_K); ko++) { //burst read
		for (unsigned int co = 0; co < param.C_L2; co++) { //burst read
		for (unsigned int ro = 0; ro < param.R_L2; ro++) { //burst read
		for (unsigned int so = 0; so < param.S_L2; so++) { //burst read
			for (unsigned int ki = 0; ki < ARRAY_K; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
				/*unsigned int origin_kcsrs = ((kmo*param.K_L2+(ko*ARRAY_K+ki))*param.C*param.R*param.S + (cmo*param.C_L2+co)*param.R*param.S + (rmo*param.R_L2+ro)*param.S + (smo*param.S_L2 + so));
				unsigned int global_kcrs = ((kmo*(param.L2_TILENUM_C)*(param.L2_TILENUM_R)*(param.L2_TILENUM_S)+cmo*(param.L2_TILENUM_R)*(param.L2_TILENUM_S)+rmo*(param.L2_TILENUM_S)+smo)
												*(param.K_L2/ARRAY_K)*param.C_L2*param.R_L2*param.S_L2 + (ko*param.C_L2*param.R_L2*param.S_L2+co*param.S_L2*param.R_L2+ro*param.S_L2+so))*ARRAY_K + ki; //burst read
				weight[global_kcrs] = weight_origin[origin_kcsrs];*/
				/*unsigned int origin_kcsrs = ((kmo*param.K_L2+(ko*ARRAY_K+ki))*param.C*param.R*param.S + (cmo*param.C_L2+co)*param.R*param.S + (rmo*param.R_L2+ro)*param.S + (smo*param.S_L2 + so));
				unsigned int global_kcrs = ((cmo*(param.L2_TILENUM_K)*(param.L2_TILENUM_R)*(param.L2_TILENUM_S)+kmo*(param.L2_TILENUM_R)*(param.L2_TILENUM_S)+rmo*(param.L2_TILENUM_S)+smo)
												*param.C_L2*(param.K_L2/ARRAY_K)*param.R_L2*param.S_L2 + (co*(param.K_L2/ARRAY_K)*param.S_L2*param.R_L2+ko*param.R_L2*param.S_L2+ro*param.S_L2+so))*ARRAY_K + ki; //burst read
				weight[global_kcrs] = weight_origin[origin_kcsrs];*/
				unsigned int origin_kcsrs = ((kmo*param.K_L2+(ko*ARRAY_K+ki))*param.C*param.R*param.S + (cmo*param.C_L2+co)*param.R*param.S + (rmo*param.R_L2+ro)*param.S + (smo*param.S_L2 + so));
				unsigned int global_kcrs = ((kmo*(param.L2_TILENUM_C)*(param.L2_TILENUM_R)*(param.L2_TILENUM_S)+rmo*(param.L2_TILENUM_S)*(param.L2_TILENUM_C)+smo*(param.L2_TILENUM_C)+cmo)
												*(param.K_L2/ARRAY_K)*param.C_L2*param.R_L2*param.S_L2 + (ko*param.C_L2*param.R_L2*param.S_L2+ro*param.S_L2*param.C_L2+so*param.C_L2+co))*ARRAY_K + ki; //burst read
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
	for (unsigned int c = 0; c < param.C; c++) {
		for(unsigned int h = 0; h < param.H_in; h++) {
			for(unsigned int wo = 0; wo < CEIL(param.W_in,ARRAY_W); wo++) {
				for(unsigned int wi = 0; wi < ARRAY_W; wi++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_C) / ARRAY_C
					unsigned int origin_chw = c*param.H_in*param.W_in + h*param.W_in + (wo*ARRAY_W + wi);
					//unsigned int global_chw = (c*param.H_in*CEIL(param.W_in,ARRAY_W) + h*CEIL(param.W_in,ARRAY_W) + wo)*ARRAY_W + wi;
					unsigned int global_chw = (h*CEIL(param.W_in,ARRAY_W)*param.C + (wo)*param.C + c)*ARRAY_W + wi;
					data[global_chw] = data_origin[origin_chw];
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
	for (unsigned int k = 0; k < param.K_L2; k++) {
		for(unsigned int h = 0; h < param.H_L2; h++) {
			for(unsigned int wo = 0; wo < param.W_L2/ARRAY_W; wo++) {
				for(unsigned int wi = 0;wi < ARRAY_W; wi++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_C) / ARRAY_C
					int w = wo * ARRAY_W + wi;
					unsigned int origin_khw = ((kmo*(param.K_L2)+k)*param.H*param.W + (hmo*param.H_L2+h)*param.W + (wmo*param.W_L2+w));
					//unsigned int global_khw = ((kmo*(param.K_L2)+k)*param.H*param.W/ARRAY_W + (hmo*param.H_L2+h)*param.W/ARRAY_W + (wmo*param.W_L2/ARRAY_W+wo))*ARRAY_W + wi;
					unsigned int global_khw = ((hmo*param.H_L2+h)*(param.W/ARRAY_W)*param.K + (wmo*param.W_L2/ARRAY_W+wo)*param.K + (kmo*(param.K_L2)+k))*ARRAY_W + wi;
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
    // Data encl_data->que
    // weight is static
/*	status = clEncl_data->queueMigrateMemObjects(que, 1, &cl_data->weights_buf, 0, 0, NULL, NULL); // 0 means from host
	checkError(status, "Failed to transfer weight");
	status = clEncl_data->queueMigrateMemObjects(que, 1, &cl_data->bias_buf, 0, 0, NULL, NULL);
	checkError(status, "Failed to transfer weight");
    // input is dynamic
	status = clEncl_data->queueWriteBuffer(que, cl_data->dat_buf, CL_TRUE, 0, in_buf_size * sizeof(DPTYPE), data, 0, NULL, NULL);
	checkError(status, "Failed to transfer input image");*/
    status = cl_data->que.enqueueWriteBuffer(cl_data->weights_buf, CL_FALSE, 0, weight_buf_size * sizeof(DPTYPE), weight, nullptr, nullptr);
	checkError(status, "Failed to transfer weight");
    status = cl_data->que.enqueueWriteBuffer(cl_data->bias_buf, CL_FALSE, 0, bias_buf_size * sizeof(DPTYPE), bias, nullptr, nullptr);
	checkError(status, "Failed to transfer weight");
    status = cl_data->que.enqueueWriteBuffer(cl_data->dat_buf, CL_FALSE, 0, in_buf_size * sizeof(DPTYPE), data, nullptr, nullptr);
	checkError(status, "Failed to transfer input image");

    cl_data->que.finish();
}

typedef union NPU_PARAM_TEMP_
{
    NPU_PARAM origin;
    unsigned int dest[/*37*/42];
}NPU_PARAM_TEMP;
void set_args()
{
    cl_int status;
    // Set Kernel Arg
    int argi = 0;
	//status = clSetKernelArg(cl_data->knl_conv, argi++, sizeof(NPU_PARAM), &param);
	//checkError(status, "Failed to set argument %d of kernel", argi - 1);
    /*status = cl_data->knl_conv.setArg(0, param); // OCLC++ origin
	checkError(status, "Failed to set argument %d of kernel", 0);*/
    NPU_PARAM_TEMP tmp;
    tmp.origin = param;
    /*printf("param union tmp : %u,%u,%u,%u,%u,...,%u\n", 
                tmp.origin.K,tmp.origin.C,tmp.origin.WH,tmp.origin.WH_in,tmp.origin.RS,
                tmp.origin.TILESIZE_S);
    printf("param union dst : %u,%u,%u,%u,%u,...,%u\n",
                tmp.dest[0],tmp.dest[1],tmp.dest[2],tmp.dest[3],tmp.dest[4],tmp.dest[36]);*/
    status = 0;
    for(int i=0;i</*37*/42;i++)
        status |= cl_data->knl_conv.setArg(i, tmp.dest[i]);
	checkError(status, "Failed to set argument %d of kernel", 36);

//    argi = 7;
//    status = cl_data->knl_conv.setArg(5, argi);
//	checkError(status, "Failed to set argument %d of kernel", 5);

    //move to createBuffer for OCL2
    /*status = clSetKernelArg(cl_data->knl_conv, argi++, sizeof(cl_mem), &cl_data->bias_buf);
	checkError(status, "Failed to set argument %d of kernel", argi - 1);
    status = clSetKernelArg(cl_data->knl_conv, argi++, sizeof(cl_mem), &cl_data->weights_buf);
	checkError(status, "Failed to set argument %d of kernel", argi - 1);
    status = clSetKernelArg(cl_data->knl_conv, argi++, sizeof(cl_mem), &cl_data->dat_buf);
	checkError(status, "Failed to set argument %d of kernel", argi - 1);
    status = clSetKernelArg(cl_data->knl_conv, argi++, sizeof(cl_mem), &cl_data->output_buf);
	checkError(status, "Failed to set argument %d of kernel", argi - 1);*/
}

void read_data(cl::Event* event)
{
    cl_int status;
	/*status = clEncl_data->queueReadBuffer(que, cl_data->output_buf, CL_FALSE, 0, sizeof(MACTYPE) * out_buf_size, (void *)output, 0, NULL, NULL);
	checkError(status, "Failed to set transfer output data");*/
    status = cl_data->que.enqueueReadBuffer(cl_data->output_buf, CL_FALSE, 0, sizeof(MACTYPE) * out_buf_size, output, &events, event);
    events.push_back(*event);
	checkError(status, "Failed to set transfer output data");
}

void score()
{
    int cnt = 0;
    for(int wh=0;wh<param.H*param.W;wh++) {
	    for (unsigned int k = 0; k < param.K; k++) {
		    unsigned int ptr = k*param.H*param.W + wh;
		    int out = output[ptr];
		    if(out != gold[ptr])
		    {
			printf("Error(%d or %d (CHW:%d,%d,%d)): %d (gold %d), # of correct: %d\n", ptr, ptr, k, wh/param.W, wh%param.W, out, gold[ptr], cnt);
			exit(1);
		    }
		    cnt ++;
	    }
    }
}

// Release all memory resources here
void cleanup()
{
	// Release the opencl runtime resource allocated
	/*if(cl_data->knl_conv) {
		clReleaseKernel(cl_data->knl_conv);
	}
	if(cl_data->que) {
		clReleaseCommandQueue(cl_data->que);
	}
	if(cl_data->dat_buf) {
		clReleaseMemObject(cl_data->dat_buf);
	}
	if(cl_data->weights_buf) {
		clReleaseMemObject(cl_data->weights_buf);
	}
	if(cl_data->bias_buf) {
		clReleaseMemObject(cl_data->bias_buf);
	}
	if(cl_data->output_buf) {
		clReleaseMemObject(cl_data->output_buf);
	}
	if(cl_data->program) {
		clReleaseProgram(cl_data->program);
	}
	if(cl_data->context) {
		clReleaseContext(cl_data->context);
	}*/
    /*delete cl_data->bias_buf;
    delete cl_data->weights_buf;
    delete cl_data->output_buf;
    delete cl_data->dat_buf;
    delete cl_data->knl_conv;
    delete cl_data->que;
    delete cl_data->program;
    delete conetxt;*/

    delete cl_data;

	// Release the memory resource allocated
	alignedFree(weight);
	alignedFree(data);
	alignedFree(bias);
	alignedFree(output);
	alignedFree(weight_original);
	alignedFree(data_original);
}

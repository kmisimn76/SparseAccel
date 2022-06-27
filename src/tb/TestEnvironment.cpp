#define CL_HPP_CL_1_2_DEFAULT_BUILD
#define CL_HPP_TARGET_OPENCL_VERSION 120
#define CL_HPP_MINIMUM_OPENCL_VERSION 120
#define CL_HPP_ENABLE_PROGRAM_CONSTRUCTION_FROM_ARRAY_COMPATIBILITY 1
#define CL_USE_DEPRECATED_OPENCL_1_2_APIS
#define TESTBENCH // for ignore vitis header

#include <stdio.h> //TODO: eliminate unused header
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <iostream>
#include <fstream>
#include <vector>
#include <CL/cl2.hpp>

#include "ocl_util.h"
#include "timer.h"
using namespace std;

#include "hw_param.h"
#include "TestEnvironment.h"


const char *vendor_name = "Xilinx";
#define DEVICE_TYPE CL_DEVICE_TYPE_ACCELERATOR


cl::Event* TestEnvironment::runTaskWithWait() {
	cl::Event* event = &(this->cl_data->task_event);
	cl_uint	status = this->cl_data->que.enqueueTask(this->cl_data->knl_conv, &this->cl_data->event_que, event);
	this->cl_data->event_que.push_back(*event);
	checkError(status, "Failed to cl_data->queue task");
	status = event->wait();
	checkError(status, "Failed to wait event");
	return event;
}
cl_ulong TestEnvironment::computeLatencyOfTask(cl::Event* event) {
	cl_ulong time_start, time_end;
	event->getProfilingInfo(CL_PROFILING_COMMAND_START, &time_start);
	event->getProfilingInfo(CL_PROFILING_COMMAND_END, &time_end);
	cl_ulong time_total = time_end - time_start;
	return time_total;
}
void TestEnvironment::flushEventQue() {
	this->cl_data->event_que.back().wait();
	this->cl_data->event_que.clear();
}


std::vector<cl::Device> TestEnvironment::getDevices(const std::string& vendor_name) {
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
			std::cout << "Found cl_data->platform: " << platformName.c_str() << std::endl;
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
char* TestEnvironment::readBinaryFile(const std::string &xclbin_file_name, unsigned &nb) 
{
	if(access(xclbin_file_name.c_str(), R_OK) != 0) {
		printf("ERROR: %s xclbin not available please build\n", xclbin_file_name.c_str());
		exit(EXIT_FAILURE);
	}
	//Loading XCL Bin into char buffer 
	std::cout << "Loading: '" << xclbin_file_name.c_str() << "'\n";
	std::ifstream bin_file(xclbin_file_name.c_str(), std::ifstream::binary);
	bin_file.seekg (0, bin_file.end);
	nb = bin_file.tellg();
	bin_file.seekg (0, bin_file.beg);
	char *buf = new char [nb];
	bin_file.read(buf, nb);
	return buf;
}


void TestEnvironment::initializeOclEnv()
{
	cl_int status;
	this->cl_data = new ocl_data_();
	std::string vendor_name_s(vendor_name);
	this->cl_data->device = getDevices(vendor_name_s);

	this->cl_data->context = cl::Context(this->cl_data->device[0], NULL, NULL, NULL, &status);
	checkError(status, "Failed to create cl_data->context");
	this->cl_data->que = cl::CommandQueue(this->cl_data->context, this->cl_data->device[0], cl::QueueProperties::Profiling | cl::QueueProperties::OutOfOrder, &status);
	checkError(status, "Failed to create command queue");

	// Create Program Objects
	unsigned fileBufSize;
	char* fileBuf = readBinaryFile(this->kernel_file_name, fileBufSize);
	cl::Program::Binaries bins{{fileBuf, fileBufSize}};
	this->cl_data->program = cl::Program(this->cl_data->context, this->cl_data->device, bins, NULL, &status);
	checkError(status, "Failed to create program");
	status = this->cl_data->program.build(this->cl_data->device);
	checkError(status, "Failed to build program");

	this->cl_data->knl_conv = cl::Kernel(this->cl_data->program, this->knl_name_conv, &status);
	checkError(status, "Failed to create kernel");
}


#define NUM_OF_ARGS 42/*37*/ //# of args of HLS kernel
void TestEnvironment::initializeClBuffers()
{
	cl_int status;
	// Initialize Cl buffer
	this->cl_data->weights_buf = cl::Buffer(this->cl_data->context, CL_MEM_READ_ONLY, this->target_task->cur_layer_info.weight_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for weights");
	this->cl_data->bias_buf = cl::Buffer(this->cl_data->context, CL_MEM_READ_ONLY, this->target_task->cur_layer_info.bias_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for bias");
	this->cl_data->data_buf = cl::Buffer(this->cl_data->context, CL_MEM_READ_ONLY, this->target_task->cur_layer_info.in_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for data");
	this->cl_data->output_buf = cl::Buffer(this->cl_data->context, CL_MEM_WRITE_ONLY, this->target_task->cur_layer_info.out_buf_size*sizeof(MACTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for output");

	status = this->cl_data->que.enqueueMigrateMemObjects({this->cl_data->bias_buf,this->cl_data->weights_buf,this->cl_data->data_buf,this->cl_data->output_buf}, CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED);
	checkError(status, "Failed to migrate buffer");

	this->cl_data->que.finish();
}
typedef union NPU_PARAM_TEMP_
{
	NPU_PARAM origin;
	unsigned int dest[NUM_OF_ARGS];
}NPU_PARAM_TEMP;
void TestEnvironment::setClArgs()
{
	cl_int status;
	// Set Kernel Arg
	int argi = 0;
	NPU_PARAM_TEMP tmp;
	tmp.origin = this->target_task->cur_layer_info.layer_param;
	status = 0;
	for(int i=0;i<NUM_OF_ARGS;i++)
		status |= this->cl_data->knl_conv.setArg(i, tmp.dest[i]);
	checkError(status, "Failed to set argument of kernel");

	status = this->cl_data->knl_conv.setArg(NUM_OF_ARGS+0, this->cl_data->bias_buf);
	status |= this->cl_data->knl_conv.setArg(NUM_OF_ARGS+1, this->cl_data->weights_buf);
	status |= this->cl_data->knl_conv.setArg(NUM_OF_ARGS+2, this->cl_data->data_buf);
	status |= this->cl_data->knl_conv.setArg(NUM_OF_ARGS+3, this->cl_data->output_buf);
	checkError(status, "Failed to set buffer args");
}


void TestEnvironment::enqueDataWithReorder()
{
	this->target_task->reorderInputs(); //data reorder

	cl_int status;
	// Data encl_data->que
	// weight is static
	status = this->cl_data->que.enqueueWriteBuffer(this->cl_data->weights_buf, CL_FALSE, 0, this->target_task->cur_layer_info.weight_buf_size * sizeof(DPTYPE), this->target_task->cur_layer_info.weight, nullptr, nullptr);
	checkError(status, "Failed to transfer weight");
	status = this->cl_data->que.enqueueWriteBuffer(this->cl_data->bias_buf, CL_FALSE, 0, this->target_task->cur_layer_info.bias_buf_size * sizeof(DPTYPE), this->target_task->cur_layer_info.bias, nullptr, nullptr);
	checkError(status, "Failed to transfer weight");
	status = this->cl_data->que.enqueueWriteBuffer(this->cl_data->data_buf, CL_FALSE, 0, this->target_task->cur_layer_info.in_buf_size * sizeof(DPTYPE), this->target_task->cur_layer_info.data, nullptr, nullptr);
	checkError(status, "Failed to transfer input image");

	this->cl_data->que.finish();
}
void TestEnvironment::readDataWithReorder()
{
	cl::Event* event = &(this->cl_data->read_event);
	cl_int status;
	status = this->cl_data->que.enqueueReadBuffer(this->cl_data->output_buf, CL_FALSE, 0, sizeof(MACTYPE) * this->target_task->cur_layer_info.out_buf_size, this->target_task->cur_layer_info.output, &this->cl_data->event_que, event);
	this->cl_data->event_que.push_back(*event);
	checkError(status, "Failed to set transfer output data");

	this->flushEventQue(); //OpenCL synch
	this->target_task->reorderOutput(); //data reorder
}


void TestEnvironment::cleanup()
{
	// Release the opencl runtime resource allocated
	delete this->cl_data;
}

void cleanup() {} //dump function for ocl util

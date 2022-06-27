#ifndef _TEST_ENVIRONMENT_H
#define _TEST_ENVIRONMENT_H

#include <stdio.h> //TODO: eliminate unused header
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <iostream>
#include <fstream>
#include <vector>
#include <CL/cl2.hpp>

using namespace ocl_util;

/*
//Sparsity Table, for group size 4
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
*/

//TODO : temporal moved (used @ TargetTask)
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

	bool is_test_layer;
}LayerInfo;


class ocl_data_ {
	public:
		cl::Event task_event;
		cl::Event read_event;
		cl::Context context;
		cl::Program program;
		std::vector<cl::Device> device;
		cl::Kernel knl_conv;
		cl::CommandQueue que;
		cl::Buffer data_buf;
		cl::Buffer output_buf;
		cl::Buffer weights_buf;
		cl::Buffer bias_buf;
		std::vector<cl::Event> event_que;
};
class CurrentLayerInfo {
	public:
		NPU_PARAM layer_param;
		unsigned int bias_buf_size = 0;
		unsigned int weight_buf_size = 0;
		unsigned int in_buf_size = 0;
		unsigned int out_buf_size = 0;

		DPTYPE* weight;
		DPTYPE* data;
		DPTYPE* weight_original;
		DPTYPE* data_original;
		DPTYPE* bias;
		MACTYPE* output;
		MACTYPE* gold;
};
class TargetTask { //Interface
	public:
		CurrentLayerInfo cur_layer_info;
		ocl_data_* cl_data;

		//TODO: seperate host/cl operation
		virtual void initializeHostBuffer() {}
		virtual void reorderInputs() {}
		virtual void reorderOutput() {}
		virtual void setInput() {}
		virtual void setLayerParam(LayerInfo layer_info) {}
		virtual void setSyntheticInput() {}
		virtual void computeGold() {}
		virtual void sparsify(void* _data, int _len, float _sparsity) {}
		virtual void score() {}
		virtual void cleanup() {}
};
class TestEnvironment {
	private:
	public:
		const char* knl_name_conv = "Conv_sysarr";
		char *kernel_file_name;

		//CurrentLayerInfo cur_layer_info; //TODO: to TargetTask
		ocl_data_* cl_data; //TODO: buffers to TargetTask
		TargetTask* target_task;

		TestEnvironment() {}
		~TestEnvironment() {}

		cl::Event* runTaskWithWait();
		cl_ulong computeLatencyOfTask(cl::Event* event);
		void flushEventQue(); //OpenCl Synch

		std::vector<cl::Device> getDevices(const std::string& vendor_name);
		char* readBinaryFile(const std::string &xclbin_file_name, unsigned &nb);

		void initializeOclEnv();
		void initializeHostBuffer();

		void initializeClBuffers(); //TODO to TargetTask
		void setClArgs(); //TODO to TargetTask

		void enqueDataWithReorder(); //TODO to TargetTask
		void readDataWithReorder(); //TODO to TargetTask

		void cleanup();

};

#endif

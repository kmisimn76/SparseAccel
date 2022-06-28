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

#include "ocl_util.h"
#include "timer.h"
using namespace ocl_util;

//TODO : temporal moved (used @ TargetTask) -> essential?
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
		cl::Context context;
		cl::Program program;
		std::vector<cl::Device> device;
		cl::CommandQueue que;
		std::vector<cl::Event> event_que;

		cl::Kernel knl_conv;
		cl::Kernel knl_maxpool;
};

class TargetTask { //Interface
	public:
		//TODO: seperate host/cl operation
		virtual void initializeHostBuffer() {}
		virtual void initializeClBuffer(ocl_data_*) {}
		virtual void setClArgs(ocl_data_*) {}
		virtual void enqueData(ocl_data_*) {}
		virtual void readData(ocl_data_*) {}
		virtual void runTask(ocl_data_*) {}
		virtual void reorderInputs() {}
		virtual void reorderOutput() {}
		virtual void setLayerParamAndBufSize(LayerInfo layer_info) {}
		virtual void setInputData() {}
		virtual void setSyntheticInput(bool random, bool sparsifying) {}
		virtual void computeGold() {}
		virtual void sparsify(void* _data, int _len, float _sparsity) {}
		virtual void score() {}
		virtual void cleanup() {}
};
class TestEnvironment {
	private:
	public:
		const char* knl_name_conv = "Conv_sysarr";
		const char* knl_name_maxpool = "maxPool";
		char *kernel_file_name;

		ocl_data_* cl_data;
		TargetTask* target_task;

		TestEnvironment() {}
		~TestEnvironment() {}

		cl::Event* runTaskWithWait();
		cl_ulong computeLatencyOfTask(cl::Event* event);
		void flushEventQue(); //OpenCl Synch

		std::vector<cl::Device> getDevices(const std::string& vendor_name);
		char* readBinaryFile(const std::string &xclbin_file_name, unsigned &nb);

		void initializeOclEnv();

		void initializeClBuffer(); //wrapper
		void setClArgs(); //wrapper
		void enqueDataWithReorder(); //wrapper
		void readDataWithReorder(); //wrapper

		void cleanup();

};

#endif

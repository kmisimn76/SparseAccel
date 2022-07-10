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
		virtual void setLayerParamAndBufSize(void* layer_info) {} // using void pointer to increase polymorphism
		virtual void setInputData() {}
		virtual void setSyntheticInput(bool random, bool sparsifying) {}
		virtual void computeGold() {}
		virtual void sparsify(void* _data, int _len, float _sparsity) {}
		virtual int  score() {}
		virtual void cleanup() {}
};

namespace TestEnv {
//Kernel List for initializeOclEnv
const long KNL_NUM_CONV		= 0x00000001; //TODO: rename KNL_NUM_CONV -> KNL_CONV ?
const long KNL_NUM_MAXPOOL	= 0x00000002;
}

class TestEnvironment {
	private:
	public:
		const char* knl_name_conv = "Convolution";
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

		void initializeOclEnv(long compiled_kernel_list);

		void initializeClBuffer(); //wrapper
		void setClArgs(); //wrapper
		void enqueDataWithReorder(); //wrapper
		void readDataWithReorder(); //wrapper

		void cleanup();

};

#endif

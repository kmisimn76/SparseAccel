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

#include "TestEnvironment.h"
#include "Tasks/MaxPoolTask.h"

MaxPoolLayerInfo get_test_layer_info();
long runTestLayerWithMeasure(TestEnvironment& test_env, MaxPoolLayerInfo& layer_info);

int main(int argc, char** argv)
{
	if (argc != 3){
		printf("Error: wrong commad format, usage:\n");
		printf("%s <binaryfile> <test layer info file>\n", argv[0]);
		return EXIT_FAILURE;
	}
	char* kernel_file_name = argv[1];
	char* layer_info_file_name = argv[2];

	TestEnvironment test_env;
	test_env.kernel_file_name = kernel_file_name;

	test_env.initializeOclEnv(TestEnv::KNL_NUM_MAXPOOL);

	MaxPoolLayerInfo layer_info = get_test_layer_info();
	runTestLayerWithMeasure(test_env, layer_info);

	test_env.cleanup();
	printf("End test\n");
	exit(0);
	return 0;
}


//TODO: reuse common test code
long runTestLayerWithMeasure(TestEnvironment& test_env, MaxPoolLayerInfo& layer_info)
{
	MaxPoolTask temp_task;
	test_env.target_task = &temp_task;

	test_env.target_task->initializeHostBuffer();

	test_env.target_task->setLayerParamAndBufSize(&layer_info);

	bool random_input = false;
	bool sparsifying = false;
	test_env.target_task->setSyntheticInput(random_input, sparsifying);
	test_env.target_task->computeGold();

	test_env.initializeClBuffer();
	test_env.enqueDataWithReorder();
	test_env.setClArgs();

	// run
	cl::Event* evt = test_env.runTaskWithWait();

	cl_ulong latency = test_env.computeLatencyOfTask(evt);
	printf("=>Kernel time (ms): \t%lf\n", (double)latency/1000000.0);

	test_env.readDataWithReorder();

	// score
	test_env.target_task->score();
	test_env.target_task->cleanup();
	printf("=>Run complete, No errors!\n");

	return latency;
}

MaxPoolLayerInfo get_test_layer_info()
{
	MaxPoolLayerInfo layer_info;

	layer_info.C = 16;
	layer_info.WH = 4;
	layer_info.WH_in = 8;
	layer_info.RS = 2;
	layer_info.stride = 2;
	layer_info.padding_out = 0;
	layer_info.is_test_layer = true;

	return layer_info;
}

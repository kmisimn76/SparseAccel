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
#include "Tasks/ConvTask.h"
#include "Tasks/MaxPoolTask.h"

void testAllLayers(TestEnvironment& test_env, char* layer_info_file_name);
int get_layer_info(const char* filename, std::vector<ConvLayerInfo> &conv_layer_infos, std::vector<MaxPoolLayerInfo> &maxpool_layer_infos);


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

	test_env.initializeOclEnv(TestEnv::KNL_NUM_CONV | TestEnv::KNL_NUM_MAXPOOL);

	testAllLayers(test_env,layer_info_file_name);

	test_env.cleanup();
	printf("End test\n");
	exit(0);
	return 0;
}


const int ALL_LAYERS=-1;
void testRangeLayers(TestEnvironment& test_env, char* layer_info_file_name, int start_layer_num, int end_layer_num);
long runTestLayerWithMeasure(TestEnvironment& test_env, int run_iter, ConvLayerInfo& conv_layer_info, MaxPoolLayerInfo& maxpool_layer_info);

void testAllLayers(TestEnvironment& test_env, char* layer_info_file_name) {  testRangeLayers(test_env, layer_info_file_name, 0, ALL_LAYERS); }

void testRangeLayers(TestEnvironment& test_env, char* layer_info_file_name, int start_layer_num, int end_layer_num) {
	std::vector<ConvLayerInfo> conv_layer_infos;
	std::vector<MaxPoolLayerInfo> maxpool_layer_infos;
	int len = get_layer_info(layer_info_file_name, conv_layer_infos, maxpool_layer_infos);

	if(len<end_layer_num) { printf("forced all layer: len<end_layer_num"); end_layer_num = len;}
	if(end_layer_num == ALL_LAYERS) { end_layer_num = len; }

	std::vector<double> latency_each_layers;
	for(int run_iter=start_layer_num;run_iter<end_layer_num;run_iter++){
		printf("\nIter %d\n", run_iter);
		long latency = runTestLayerWithMeasure(test_env, run_iter, conv_layer_infos.at(run_iter), maxpool_layer_infos.at(run_iter));
		latency_each_layers.push_back((double)latency/1000000.0);
	}

	printf("latency report\n");
	for(int run_iter=start_layer_num;run_iter<end_layer_num;run_iter++){
		printf("%lf,", latency_each_layers.at(run_iter));
	}
	printf("\n");
}
//TODO: reuse common test code
long runTestLayerWithMeasure(TestEnvironment& test_env, int run_iter, ConvLayerInfo& conv_layer_info, MaxPoolLayerInfo& maxpool_layer_info)
{
	ConvTask conv_task;
	MaxPoolTask maxpool_task;
	bool random_input;
	bool sparsifying;
	cl::Event* evt;
	cl_ulong total_latency = 0.0;
	cl_ulong latency;

	conv_task.initializeHostBuffer();
	conv_task.setLayerParamAndBufSize(&conv_layer_info);
	random_input = true;
	sparsifying = true;
	conv_task.setSyntheticInput(random_input, sparsifying);
	conv_task.computeGold();

	maxpool_task.initializeHostBuffer();
	maxpool_task.setLayerParamAndBufSize(&maxpool_layer_info);
	random_input = true;
	sparsifying = false;
	maxpool_task.setSyntheticInput(random_input, sparsifying);
	maxpool_task.computeGold();

	//run conv task
	test_env.target_task = &conv_task;
	test_env.initializeClBuffer();
	test_env.enqueDataWithReorder();
	test_env.setClArgs();
	evt = test_env.runTaskWithWait();
	latency = test_env.computeLatencyOfTask(evt);
	total_latency += latency;
	printf("=>Conv Kernel time (ms): \t%lf\n", (double)latency/1000000.0);
	test_env.readDataWithReorder();

	//run maxpool task
	test_env.target_task = &maxpool_task;
	test_env.initializeClBuffer();
	test_env.enqueDataWithReorder();
	test_env.setClArgs();
	evt = test_env.runTaskWithWait();
	latency = test_env.computeLatencyOfTask(evt);
	total_latency += latency;
	printf("=>Maxpool Kernel time (ms): \t%lf\n", (double)latency/1000000.0);
	test_env.readDataWithReorder();

	conv_task.score();
	maxpool_task.score();

	conv_task.cleanup();
	maxpool_task.cleanup();
	printf("=>Run complete, No errors!\n");

	return total_latency;
}


int get_layer_info(const char* filename, std::vector<ConvLayerInfo> &conv_layer_infos, std::vector<MaxPoolLayerInfo> &maxpool_layer_infos)
{
	FILE* f = fopen(filename, "r");
	printf("Filename: %s\n", filename);
	int n = 0;
	fscanf(f, "%d", &n);
	printf("N: %d\n", n);
	for (int i=0; i<n; i++)
	{
		{
			ConvLayerInfo new_layer_info;
			uint meanless_data;
			fscanf(f,"%d,%d,%d,%d,%d,%d,", &new_layer_info.K,&new_layer_info.C,&new_layer_info.H,&new_layer_info.W,&new_layer_info.R,&new_layer_info.S);
			fscanf(f,"%f,", &new_layer_info.density);
			fscanf(f,"%d,%d,%d,%d,%d,%d,%d,", &new_layer_info.L2K,&new_layer_info.L2C,&new_layer_info.L2H,&new_layer_info.L2W,&new_layer_info.L2R,&new_layer_info.L2S, &meanless_data);
			fscanf(f,"%d,%d,%d,%d,%d,%d,%d,", &new_layer_info.L1K,&new_layer_info.L1C,&new_layer_info.L1H,&new_layer_info.L1W,&new_layer_info.L1R,&new_layer_info.L1S, &meanless_data);
			fscanf(f,"%d,%d,%d,%d,%d,%d,%d,", &new_layer_info.TK,&new_layer_info.TC,&new_layer_info.TH,&new_layer_info.TW,&new_layer_info.TR,&new_layer_info.TS, &meanless_data);
			new_layer_info.W_in = new_layer_info.W + new_layer_info.S -1;
			new_layer_info.H_in = new_layer_info.H + new_layer_info.R -1;
			new_layer_info.is_test_layer = false;
			conv_layer_infos.push_back(new_layer_info);
		}

		{
			MaxPoolLayerInfo new_layer_info;
			fscanf(f,"%d,%d,%d,%d,%d,%d", &new_layer_info.C, &new_layer_info.WH, &new_layer_info.WH_in, &new_layer_info.RS, &new_layer_info.stride, &new_layer_info.padding_out);
			new_layer_info.is_test_layer = false;
			maxpool_layer_infos.push_back(new_layer_info);
		}

	}
	fclose(f);
	return n;
}


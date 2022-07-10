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
#include "Tasks/ConvOutputStationaryTask.h"

void testFirstLayer(TestEnvironment& test_env, char* layer_info_file_name);
void testFiveLayers(TestEnvironment& test_env, char* layer_info_file_name);
void testAllLayers(TestEnvironment& test_env, char* layer_info_file_name);
void testSampleLayer(TestEnvironment& test_env);
int get_layer_info(const char* filename, std::vector<ConvLayerInfo> &layer_infos);


int main(int argc, char** argv)
{
	if (argc != 3){
		printf("Error: wrong commad format, usage:\n");
		printf("%s <binaryfile> <test layer info file>\n", argv[0]);
		return EXIT_FAILURE;
	}
	char* kernel_file_name = argv[1];
	char* layer_info_file_name = argv[2];
	bool is_sw_emu = (strstr(kernel_file_name, "sw_emu") != NULL)?(true):(false);
	bool is_hw_emu = (strstr(kernel_file_name, "hw_emu") != NULL)?(true):(false);
	bool is_hw = (strstr(kernel_file_name, "hw") != NULL)?(true):(false);

	TestEnvironment test_env;
	test_env.kernel_file_name = kernel_file_name;

	test_env.initializeOclEnv(TestEnv::KNL_NUM_CONV);

	if(is_sw_emu || is_hw) {
		printf("run SW emu testcase\n");
		//testFirstLayer(test_env,layer_info_file_name);
		//testFiveLayers(test_env,layer_info_file_name);
		testAllLayers(test_env,layer_info_file_name);
	}
	if(is_hw_emu) {
		printf("run HW emu testcase\n");
		testSampleLayer(test_env);
	}

	test_env.cleanup();
	printf("End test\n");
	exit(0);
	return 0;
}


const int ALL_LAYERS=-1;
void testRangeLayers(TestEnvironment& test_env, char* layer_info_file_name, int start_layer_num, int end_layer_num);
long runTestLayerWithMeasure(TestEnvironment& test_env, ConvLayerInfo& layer_info);

void testFirstLayer(TestEnvironment& test_env, char* layer_info_file_name) { testRangeLayers(test_env, layer_info_file_name, 0, 1);/*only first layer*/ }
void testFiveLayers(TestEnvironment& test_env, char* layer_info_file_name) { testRangeLayers(test_env, layer_info_file_name, 0, 5); }
void testAllLayers(TestEnvironment& test_env, char* layer_info_file_name) {  testRangeLayers(test_env, layer_info_file_name, 0, ALL_LAYERS); }

void testRangeLayers(TestEnvironment& test_env, char* layer_info_file_name, int start_layer_num, int end_layer_num) {
	std::vector<ConvLayerInfo> layer_infos;
	int len = get_layer_info(layer_info_file_name, layer_infos);

	if(len<end_layer_num) { printf("forced all layer: len<end_layer_num"); end_layer_num = len;}
	if(end_layer_num == ALL_LAYERS) { end_layer_num = len; }

	std::vector<double> latency_each_layers;
	for(int run_iter=start_layer_num;run_iter<end_layer_num;run_iter++){
		printf("\nIter %d\n", run_iter);
		long latency = runTestLayerWithMeasure(test_env, layer_infos.at(run_iter));
		latency_each_layers.push_back((double)latency/1000000.0);
	}

	printf("latency report (ms)\n");
	for(int run_iter=start_layer_num;run_iter<end_layer_num;run_iter++){
		printf("%lf,", latency_each_layers.at(run_iter));
	}
	printf("\n");
}
void testSampleLayer(TestEnvironment& test_env) {
	ConvLayerInfo layer_info;
	layer_info.is_test_layer = true;
	long latency = runTestLayerWithMeasure(test_env, layer_info);
	printf("Test layer latency(ms): %lf\n", (double)latency/1000000.0);
}
//TODO: reuse common test code
long runTestLayerWithMeasure(TestEnvironment& test_env, ConvLayerInfo& layer_info)
{
	ConvTask temp_task;
	test_env.target_task = &temp_task;

	test_env.target_task->initializeHostBuffer();

	test_env.target_task->setLayerParamAndBufSize(&layer_info);

	bool random_input = true;
	bool sparsifying = true;
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
	int assert_error;
	assert_error = test_env.target_task->score();
	if(assert_error == 1) exit(1);
	test_env.target_task->cleanup();
	printf("=>Run complete, No errors!\n");

	return latency;
}


int get_layer_info(const char* filename, std::vector<ConvLayerInfo> &layer_infos)
{
	FILE* f = fopen(filename, "r");
	printf("Filename: %s\n", filename);
	int n = 0;
	fscanf(f, "%d", &n);
	printf("N: %d\n", n);
	for (int i=0; i<n; i++)
	{
		ConvLayerInfo new_layer_info;
		uint meanless_data;
		fscanf(f,"%d,%d,%d,%d,%d,%d,", &new_layer_info.K,&new_layer_info.C,&new_layer_info.H,&new_layer_info.W,&new_layer_info.R,&new_layer_info.S);
		fscanf(f,"%f,", &new_layer_info.density);
		fscanf(f,"%d,%d,%d,%d,%d,%d,%d,", &new_layer_info.L2K,&new_layer_info.L2C,&new_layer_info.L2H,&new_layer_info.L2W,&new_layer_info.L2R,&new_layer_info.L2S, &meanless_data);
		fscanf(f,"%d,%d,%d,%d,%d,%d,%d,", &new_layer_info.L1K,&new_layer_info.L1C,&new_layer_info.L1H,&new_layer_info.L1W,&new_layer_info.L1R,&new_layer_info.L1S, &meanless_data);
		fscanf(f,"%d,%d,%d,%d,%d,%d,%d", &new_layer_info.TK,&new_layer_info.TC,&new_layer_info.TH,&new_layer_info.TW,&new_layer_info.TR,&new_layer_info.TS, &meanless_data);
		new_layer_info.W_in = new_layer_info.W + new_layer_info.S -1;
		new_layer_info.H_in = new_layer_info.H + new_layer_info.R -1;
		new_layer_info.is_test_layer = false;
		layer_infos.push_back(new_layer_info);
	}
	fclose(f);
	return n;
}


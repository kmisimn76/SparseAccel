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

#include "Tasks/MaxPoolTask.h"

#define DMA_ALIGNMENT   4096

void MaxPoolTask::initializeHostBuffer() {
	const int MAX_DATA_SIZE=32688640;
	const int MAX_OUTPUT_SIZE=32112640;
	this->cur_layer_info.data = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_DATA_SIZE, DMA_ALIGNMENT);
	this->cur_layer_info.output = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
	this->cur_layer_info.output_MACTYPE = (MACTYPE*)alignedMalloc(sizeof(MACTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
	this->cur_layer_info.gold = (MACTYPE*)alignedMalloc(sizeof(MACTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
	this->cur_layer_info.data_original = (DPTYPE*)malloc(sizeof(DPTYPE)*MAX_DATA_SIZE);
}

#define NUM_OF_ARGS 42/*37*/ //# of args of HLS kernel
void MaxPoolTask::initializeClBuffer(ocl_data_* cl_data)
{
	cl_int status;
	this->data_buf = cl::Buffer(cl_data->context, CL_MEM_READ_ONLY, this->cur_layer_info.in_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for data");
	this->output_buf = cl::Buffer(cl_data->context, CL_MEM_WRITE_ONLY, this->cur_layer_info.out_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for output");
	this->output_MACTYPE_buf = cl::Buffer(cl_data->context, CL_MEM_WRITE_ONLY, this->cur_layer_info.out_buf_size*sizeof(MACTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for output");

	status = cl_data->que.enqueueMigrateMemObjects({this->data_buf,this->output_buf,this->output_MACTYPE_buf}, CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED);
	checkError(status, "Failed to migrate buffer");

	cl_data->que.finish();
}

void MaxPoolTask::setClArgs(ocl_data_* cl_data)
{
	cl_int status;
	// Set Kernel Arg
	status  = cl_data->knl_maxpool.setArg(0, this->layer_param.C);
	status |= cl_data->knl_maxpool.setArg(1, this->layer_param.WH);
	status |= cl_data->knl_maxpool.setArg(2, this->layer_param.WH_in);
	status |= cl_data->knl_maxpool.setArg(3, this->layer_param.RS);
	status |= cl_data->knl_maxpool.setArg(4, this->layer_param.stride);
	status |= cl_data->knl_maxpool.setArg(5, this->layer_param.padding_out);
	checkError(status, "Failed to set argument of kernel");

	status |= cl_data->knl_maxpool.setArg(6, this->data_buf);
	status |= cl_data->knl_maxpool.setArg(7, this->output_buf);
	status |= cl_data->knl_maxpool.setArg(8, this->output_MACTYPE_buf);
	checkError(status, "Failed to set buffer args");
}


void MaxPoolTask::enqueData(ocl_data_* cl_data)
{
	cl_int status;
	status = cl_data->que.enqueueWriteBuffer(this->data_buf, CL_FALSE, 0, this->cur_layer_info.in_buf_size * sizeof(DPTYPE), this->cur_layer_info.data, nullptr, nullptr);
	checkError(status, "Failed to transfer input image");

}
void MaxPoolTask::readData(ocl_data_* cl_data)
{
	cl_int status;
	status = cl_data->que.enqueueReadBuffer(this->output_buf, CL_FALSE, 0, sizeof(DPTYPE) * this->cur_layer_info.out_buf_size, this->cur_layer_info.output, nullptr, nullptr);
	status = cl_data->que.enqueueReadBuffer(this->output_MACTYPE_buf, CL_FALSE, 0, sizeof(MACTYPE) * this->cur_layer_info.out_buf_size, this->cur_layer_info.output_MACTYPE, nullptr, nullptr);
	checkError(status, "Failed to set transfer output data");
}

void MaxPoolTask::setLayerParamAndBufSize(LayerInfo layer_info)
{
	MaxPoolParam param;

	if(layer_info.is_test_layer){
		param.C     = 16;
		param.WH    = 32;
		param.WH_in = 16;
		param.RS    = 2;
		param.stride= 2;
		param.padding_out = 0;
	}
	else {
		//TODO: implementation
		printf("Unsupported");
		exit(1);
	}

	printf("=>MaxPool Layer Info\n");
	printf(" =>C    : %u\n", param.C);
	printf(" =>WH   : %u\n", param.WH);
	printf(" =>WH in: %u\n", param.WH_in);
	printf(" =>RS   : %u\n", param.RS);
	printf(" =>Strid: %u\n", param.stride);
	printf(" =>Padd : %u\n", param.padding_out);

	this->cur_layer_info.layer_param = param;

	this->cur_layer_info.in_buf_size = param.C * param.H_in * CEIL(param.W_in,ARRAY_W)*ARRAY_W;
	this->cur_layer_info.out_buf_size = param.K * param.H * param.W;
}


void MaxPoolTask::setSyntheticInput(bool random, bool sparsifying) {
	const MaxPoolParam param = this->cur_layer_info.layer_param;

	if(random) {
		for(int idx = 0; idx < param.C*param.WH_in*param.WH_in; idx++)
			this->cur_layer_info.data[idx] = rand()%256-128;
	}
	else {
		for(int idx = 0; idx < param.C*param.WH_in*param.WH_in; idx++) {
			int c = idx/param.H_in*param.W_in;
			int h = (idx%(param.H_in*param.W_in))/param.W_in;
			int w = idx%param.W_in;
			this->cur_layer_info.data[idx] = rand()%256-128;
			this->cur_layer_info.data[idx] = w%2;
		}
	}

	if(sparsifying) {
		float sparsity = 0.8; //TODO: automation
		printf("=>Data sparsifying");
		sparsify(this->cur_layer_info.data, param.C*param.H_in*param.W_in, sparsity);
	}

	memcpy(this->cur_layer_info.data_original, this->cur_layer_info.data, sizeof(DPTYPE)*this->cur_layer_info.in_buf_size);
}

void MaxPoolTask::reorderInputs() {
	const MaxPoolParam param = this->cur_layer_info.layer_param;
	// input
	DPTYPE* data_origin = new DPTYPE[this->cur_layer_info.in_buf_size]();
	memcpy(data_origin, this->cur_layer_info.data, this->cur_layer_info.in_buf_size * sizeof(DPTYPE));
	for (unsigned int co = 0; co < param.C/VEC_SIZE; co++) {
		for(unsigned int h = 0; h < param.WH_in; h++) {
			for(unsigned int w = 0; w < param.WH_in; w++) {
				for (unsigned int ci = 0; ci < VEC_SIZE; ci++) {
					unsigned int origin_chw = (co*VEC_SIZE+ci)*param.WH_in*param.WH_in + h*param.WH_in + w;
					unsigned int device_chw = (co*param.WH_in*param.WH_in + h*param.WH_in + w) * VEC_SIZE + ci;
					this->cur_layer_info.data[device_chw] = data_origin[origin_chw];
				}
			}
		}
	}
	delete data_origin;
}
void MaxPoolTask::reorderOutput()
{
	const MaxPoolParam param = this->cur_layer_info.layer_param;

	DPTYPE* out_origin = new DPTYPE[this->cur_layer_info.out_buf_size]();
	memcpy(out_origin, this->cur_layer_info.output, this->cur_layer_info.out_buf_size * sizeof(DPTYPE));

	MACTYPE* out_MACTYPE_origin = new MACTYPE[this->cur_layer_info.out_buf_size]();
	memcpy(out_MACTYPE_origin, this->cur_layer_info.output_MACTYPE, this->cur_layer_info.out_buf_size * sizeof(MACTYPE));

	for (unsigned int co = 0; co < param.C/VEC_SIZE; co++) {
		for(unsigned int h = 0; h < param.WH; h++) {
			for(unsigned int w = 0; w < param.WH; w++) {
				for (unsigned int ci = 0; ci < VEC_SIZE; ci++) {
					unsigned int device_chw = (co*param.WH*param.WH + h*param.WH + w) * VEC_SIZE + ci;
					unsigned int origin_chw = (co*VEC_SIZE+ci)*param.WH*param.WH + h*param.WH + w;
					this->cur_layer_info.output[device_chw] = out_origin[origin_chw];
					this->cur_layer_info.output_MACTYPE[device_chw] = out_MACTYPE_origin[origin_chw];
				}
			}
		}
	}
	delete out_origin;
}

void MaxPoolTask::sparsify(void* _data_void, int _len, float _sparsity)
{
	DPTYPE* _data = (DPTYPE*)_data_void;
	const int groupsize[3] = {1,1,4}; //W,H,C
	const MaxPoolParam param = this->cur_layer_info.layer_param;

	bool* mask = new bool[_len];
	for(int i=0;i<_len;i++) // zero mask
		mask[i] = (i >= _len*_sparsity)?(true):(false);
	for(int i=_len-1;i>=1;i--) { // suffule
		int r = rand()%i;
		DPTYPE tmp = mask[i];
		mask[i] = mask[r];
		mask[r] = tmp;
	}
	for(int i=0;i<_len;i++) // masking
		_data[i] *= mask[i];

	int cnt = 0;
	for(int i=0;i<_len;i++)
		if(_data[i]==.0) cnt++;
	printf(" =>Eltwise sparsified rate: %lf\n", (float)cnt / (float)_len);

	// input group sparsity
	cnt = 0;
	for(int c=0; c<param.C/groupsize[2];c++) {
		for(int h=0; h<param.WH/groupsize[1];h++) {
			for(int w=0; w<param.WH/groupsize[0];w++) {
				bool non_zero = false;
				for(int ci=0; ci<groupsize[2];ci++) {
					for(int hi=0; hi<groupsize[1];hi++) {
						for(int wi=0; wi<groupsize[0];wi++) {
							if(_data[(c*groupsize[2]+ci)*(param.WH*param.WH) + (h*groupsize[1]+hi)*(param.WH) + (w*groupsize[0]+wi)]!=.0) non_zero = true;
						}
					}
				}
				if(!non_zero) cnt++;
			}
		}
	}
	printf(" =>Group sparsified rate: %lf\n", (float)cnt / (float)((param.C/groupsize[2])*(param.WH/groupsize[1])*(param.WH/groupsize[0])));
	delete[] mask;
}

void MaxPoolTask::computeGold()
{
	const MaxPoolParam param = this->cur_layer_info.layer_param;
	for(int c = 0; c < param.C; c++){
		for(int h=0;h<param.WH-param.Padding_out*2;h++){
			for(int w=0;w<param.WH-param.Padding_out*2;w++){
				DPTYPE max = 0;
				//pool window
				for(int r = 0; r < param.RS; r++){
					for(int s = 0; s < param.RS; s++){
						int data_ptr = c*param.WH_in*param.WH_in + (h*param.stride+r)*param.WH_in  + (w*param.stride+s);
						DPTYPE value = this->cur_layer_info.data[data_ptr];
						if(value > max)
							max = value;
					}
				}
				int output_ptr = c*param.WH*param.WH + (h+param.padding_out)*param.WH + (w+param.padding_out);
				this->cur_layer_info.gold[output_ptr] = max;
				//this->cur_layer_info.gold_MACTYPE[output_ptr] = max;
			}
		}
	}
}

void MaxPoolTask::score()
{
	const NPU_PARAM param = this->cur_layer_info.layer_param;
	int cnt = 0;
	for(int wh=0;wh<param.H*param.W;wh++) {
		for (unsigned int k = 0; k < param.K; k++) {
			unsigned int ptr = k*param.H*param.W + wh;
			int out = this->cur_layer_info.output_MACTYPE[ptr];
			if(out != this->cur_layer_info.gold[ptr])
			{
				printf("Error(%d or %d (CHW:%d,%d,%d)): %d (gold %d), # of correct: %d\n", ptr, ptr, k, wh/param.W, wh%param.W, out, this->cur_layer_info.gold[ptr], cnt);
				exit(1);
			}
			cnt ++;
		}
	}
}

void MaxPoolTask::cleanup() {
	alignedFree(this->cur_layer_info.data);
	alignedFree(this->cur_layer_info.data_original);
	alignedFree(this->cur_layer_info.output);
	alignedFree(this->cur_layer_info.output_MACTYPE);
	alignedFree(this->cur_layer_info.gold);
}

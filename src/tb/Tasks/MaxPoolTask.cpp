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
	this->cur_layer_data.data = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_DATA_SIZE, DMA_ALIGNMENT);
	this->cur_layer_data.output = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
	this->cur_layer_data.output_MACTYPE = (MACTYPE*)alignedMalloc(sizeof(MACTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
	this->cur_layer_data.gold = (MACTYPE*)alignedMalloc(sizeof(MACTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
	this->cur_layer_data.data_original = (DPTYPE*)malloc(sizeof(DPTYPE)*MAX_DATA_SIZE);
}

void MaxPoolTask::initializeClBuffer(ocl_data_* cl_data)
{
	cl_int status;
	this->data_buf = cl::Buffer(cl_data->context, CL_MEM_READ_ONLY, this->cur_layer_data.in_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for data");
	this->output_buf = cl::Buffer(cl_data->context, CL_MEM_WRITE_ONLY, this->cur_layer_data.out_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for output");
	this->output_MACTYPE_buf = cl::Buffer(cl_data->context, CL_MEM_WRITE_ONLY, this->cur_layer_data.out_buf_size*sizeof(MACTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for output");
}

void MaxPoolTask::setClArgs(ocl_data_* cl_data)
{
	cl_int status;
	// Set Kernel Arg
	status  = cl_data->knl_maxpool.setArg(0, this->cur_layer_data.layer_param.C);
	status |= cl_data->knl_maxpool.setArg(1, this->cur_layer_data.layer_param.WH);
	status |= cl_data->knl_maxpool.setArg(2, this->cur_layer_data.layer_param.WH_in);
	status |= cl_data->knl_maxpool.setArg(3, this->cur_layer_data.layer_param.RS);
	status |= cl_data->knl_maxpool.setArg(4, this->cur_layer_data.layer_param.stride);
	status |= cl_data->knl_maxpool.setArg(5, this->cur_layer_data.layer_param.padding_out);
	checkError(status, "Failed to set argument of kernel");

	status |= cl_data->knl_maxpool.setArg(6, this->data_buf);
	status |= cl_data->knl_maxpool.setArg(7, this->output_buf);
	status |= cl_data->knl_maxpool.setArg(8, this->output_MACTYPE_buf);
	checkError(status, "Failed to set buffer args");

	status = cl_data->que_maxpool.enqueueMigrateMemObjects({this->data_buf,this->output_buf,this->output_MACTYPE_buf}, CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED);
	checkError(status, "Failed to migrate buffer");

	cl_data->que_maxpool.finish();
}


void MaxPoolTask::enqueDataAndWait(ocl_data_* cl_data)
{
	cl_int status;
	status = cl_data->que_maxpool.enqueueWriteBuffer(this->data_buf, CL_FALSE, 0, this->cur_layer_data.in_buf_size * sizeof(DPTYPE), this->cur_layer_data.data, nullptr, nullptr);
	checkError(status, "Failed to transfer input image");
	cl_data->que_maxpool.finish();

}
void MaxPoolTask::readDataAndWait(ocl_data_* cl_data)
{
	cl_int status;
	status = cl_data->que_maxpool.enqueueReadBuffer(this->output_buf, CL_FALSE, 0, sizeof(DPTYPE) * this->cur_layer_data.out_buf_size, this->cur_layer_data.output, nullptr, nullptr);
	status = cl_data->que_maxpool.enqueueReadBuffer(this->output_MACTYPE_buf, CL_FALSE, 0, sizeof(MACTYPE) * this->cur_layer_data.out_buf_size, this->cur_layer_data.output_MACTYPE, nullptr, nullptr);
	checkError(status, "Failed to set transfer output data");
	cl_data->que_maxpool.finish();
}

void MaxPoolTask::runTask(ocl_data_* cl_data)
{
	cl::Event* event = &(cl_data->task_event);
	cl_uint	status = cl_data->que_maxpool.enqueueTask(cl_data->knl_maxpool, NULL, event);
	checkError(status, "Failed to cl_data->queue task");
}

void MaxPoolTask::setLayerParamAndBufSize(void* maxpool_layer_info)
{
	MaxPoolLayerInfo layer_info = *((MaxPoolLayerInfo*)maxpool_layer_info);
	MaxPoolParam param;

	if(layer_info.is_test_layer){
		param.C     = 16;
		param.WH    = 8;
		param.WH_in = 16;
		param.RS    = 2;
		param.stride= 2;
		param.padding_out = 0;
	}
	else {
		param.C     = layer_info.C;
		param.WH    = layer_info.WH;
		param.WH_in = layer_info.WH_in;
		param.RS    = layer_info.RS;
		param.stride= layer_info.stride;
		param.padding_out = layer_info.padding_out;
	}

	printf("=>MaxPool Layer Info\n");
	printf(" =>C    : %u\n", param.C);
	printf(" =>WH   : %u\n", param.WH);
	printf(" =>WH in: %u\n", param.WH_in);
	printf(" =>RS   : %u\n", param.RS);
	printf(" =>Strid: %u\n", param.stride);
	printf(" =>Padd : %u\n", param.padding_out);

	this->cur_layer_data.layer_param = param;

	this->cur_layer_data.in_buf_size = param.C * param.WH_in * param.WH_in;
	this->cur_layer_data.out_buf_size = param.C * param.WH * param.WH;
}


void MaxPoolTask::setSyntheticInput(bool random, bool sparsifying) {
	const MaxPoolParam param = this->cur_layer_data.layer_param;

	if(random) {
		for(int idx = 0; idx < param.C*param.WH_in*param.WH_in; idx++)
			this->cur_layer_data.data[idx] = rand()%256-128;
	}
	else {
		for(int idx = 0; idx < param.C*param.WH_in*param.WH_in; idx++) {
			int c = idx/(param.WH_in*param.WH_in);
			int h = (idx%(param.WH_in*param.WH_in))/param.WH_in;
			int w = idx%param.WH_in;
			this->cur_layer_data.data[idx] = rand()%256-128; //
			this->cur_layer_data.data[idx] = w;
		}
	}

	if(sparsifying) {
		float sparsity = 0.8; //TODO: automation
		printf("=>Data sparsifying");
		sparsify(this->cur_layer_data.data, param.C*param.WH_in*param.WH_in, sparsity);
	}

	memcpy(this->cur_layer_data.data_original, this->cur_layer_data.data, sizeof(DPTYPE)*this->cur_layer_data.in_buf_size);
}

void MaxPoolTask::reorderInputs() {
	const MaxPoolParam param = this->cur_layer_data.layer_param;
	// input
	DPTYPE* data_origin = new DPTYPE[this->cur_layer_data.in_buf_size]();
	memcpy(data_origin, this->cur_layer_data.data, this->cur_layer_data.in_buf_size * sizeof(DPTYPE));
	for (unsigned int co = 0; co < param.C/VEC_SIZE; co++) {
		for(unsigned int h = 0; h < param.WH_in; h++) {
			for(unsigned int w = 0; w < param.WH_in; w++) {
				for (unsigned int ci = 0; ci < VEC_SIZE; ci++) {
					unsigned int origin_chw = (co*VEC_SIZE+ci)*param.WH_in*param.WH_in + h*param.WH_in + w;
					unsigned int device_chw = (co*param.WH_in*param.WH_in + h*param.WH_in + w) * VEC_SIZE + ci;
					this->cur_layer_data.data[device_chw] = data_origin[origin_chw];
				}
			}
		}
	}
	delete data_origin;
}
void MaxPoolTask::reorderOutput()
{
	const MaxPoolParam param = this->cur_layer_data.layer_param;

	DPTYPE* out_copy = new DPTYPE[this->cur_layer_data.out_buf_size]();
	MACTYPE* out_MACTYPE_copy = new MACTYPE[this->cur_layer_data.out_buf_size]();

	memcpy(out_copy, this->cur_layer_data.output, this->cur_layer_data.out_buf_size * sizeof(DPTYPE));
	memcpy(out_MACTYPE_copy, this->cur_layer_data.output_MACTYPE, this->cur_layer_data.out_buf_size * sizeof(MACTYPE));

	for (unsigned int co = 0; co < param.C/VEC_SIZE; co++) {
		for(unsigned int h = 0; h < param.WH; h++) {
			for(unsigned int w = 0; w < param.WH; w++) {
				for (unsigned int ci = 0; ci < VEC_SIZE; ci++) {
					unsigned int device_chw = (co*param.WH*param.WH + h*param.WH + w) * VEC_SIZE + ci;
					unsigned int origin_chw = (co*VEC_SIZE+ci)*param.WH*param.WH + h*param.WH + w;
					this->cur_layer_data.output[origin_chw] = out_copy[device_chw];
					this->cur_layer_data.output_MACTYPE[origin_chw] = out_MACTYPE_copy[device_chw];
				}
			}
		}
	}
	delete out_copy;
	delete out_MACTYPE_copy;
}

void MaxPoolTask::sparsify(void* _data_void, int _len, float _sparsity)
{
	DPTYPE* _data = (DPTYPE*)_data_void;
	const int groupsize[3] = {1,1,4}; //W,H,C
	const MaxPoolParam param = this->cur_layer_data.layer_param;

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
	const MaxPoolParam param = this->cur_layer_data.layer_param;
	for(int c = 0; c < param.C; c++){
		for(int h=0;h<param.WH-param.padding_out*2;h++){
			for(int w=0;w<param.WH-param.padding_out*2;w++){
				DPTYPE max = 0;
				//pool window
				for(int r = 0; r < param.RS; r++){
					for(int s = 0; s < param.RS; s++){
						int data_ptr = c*param.WH_in*param.WH_in + (h*param.stride+r)*param.WH_in  + (w*param.stride+s);
						DPTYPE value = this->cur_layer_data.data[data_ptr];
						if(value > max)
							max = value;
					}
				}
				int output_ptr = c*param.WH*param.WH + (h+param.padding_out)*param.WH + (w+param.padding_out);
				this->cur_layer_data.gold[output_ptr] = max;
				//this->cur_layer_data.gold_MACTYPE[output_ptr] = max;
			}
		}
	}
}

int MaxPoolTask::score()
{
	const MaxPoolParam param = this->cur_layer_data.layer_param;
	int cnt = 0;
	bool assert_error = false;
	for(int wh=0;wh<param.WH*param.WH;wh++) {
		for (unsigned int k = 0; k < param.C; k++) {
			unsigned int ptr = k*param.WH*param.WH + wh;
			int out = this->cur_layer_data.output_MACTYPE[ptr];
			if(out != this->cur_layer_data.gold[ptr])
			{
				printf("Error(%d or %d (CHW:%d,%d,%d)): %d (gold %d), # of correct: %d\n", ptr, ptr, k, wh/param.WH, wh%param.WH, out, this->cur_layer_data.gold[ptr], cnt);
				assert_error = true;
			}
			cnt ++;
		}
	}
	if(assert_error) return 1;
	return 0;
}

void MaxPoolTask::cleanup() {
	alignedFree(this->cur_layer_data.data);
	alignedFree(this->cur_layer_data.data_original);
	alignedFree(this->cur_layer_data.output);
	alignedFree(this->cur_layer_data.output_MACTYPE);
	alignedFree(this->cur_layer_data.gold);
}

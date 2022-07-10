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

#include "Tasks/ConvWeightStationaryTask.h"

#define DMA_ALIGNMENT   4096

void ConvTask::initializeHostBuffer() {
	const int MAX_WEIGHT_SIZE=23592960;
	const int MAX_DATA_SIZE=32688640;
	const int MAX_BIAS_SIZE=20480;
	const int MAX_OUTPUT_SIZE=32112640;
	this->cur_layer_data.weight = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_WEIGHT_SIZE, DMA_ALIGNMENT);
	this->cur_layer_data.data = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_DATA_SIZE, DMA_ALIGNMENT);
	this->cur_layer_data.bias = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_BIAS_SIZE, DMA_ALIGNMENT);
	this->cur_layer_data.output = (MACTYPE*)alignedMalloc(sizeof(MACTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
	this->cur_layer_data.gold = (MACTYPE*)alignedMalloc(sizeof(MACTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
	this->cur_layer_data.weight_original = (DPTYPE*)malloc(sizeof(DPTYPE)*MAX_WEIGHT_SIZE);
	this->cur_layer_data.data_original = (DPTYPE*)malloc(sizeof(DPTYPE)*MAX_DATA_SIZE);

}

#define NUM_OF_ARGS 42/*37*/ //# of args of HLS kernel
void ConvTask::initializeClBuffer(ocl_data_* cl_data)
{
	cl_int status;
	this->weights_buf = cl::Buffer(cl_data->context, CL_MEM_READ_ONLY, this->cur_layer_data.weight_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for weights");
	this->bias_buf = cl::Buffer(cl_data->context, CL_MEM_READ_ONLY, this->cur_layer_data.bias_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for bias");
	this->data_buf = cl::Buffer(cl_data->context, CL_MEM_READ_ONLY, this->cur_layer_data.in_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for data");
	this->output_buf = cl::Buffer(cl_data->context, CL_MEM_WRITE_ONLY, this->cur_layer_data.out_buf_size*sizeof(MACTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for output");

	status = cl_data->que.enqueueMigrateMemObjects({this->bias_buf,this->weights_buf,this->data_buf,this->output_buf}, CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED);
	checkError(status, "Failed to migrate buffer");

	cl_data->que.finish();
}

typedef union CONV_PARAM_TEMP_
{
	CONV_PARAM origin;
	unsigned int dest[NUM_OF_ARGS];
}CONV_PARAM_TEMP;
void ConvTask::setClArgs(ocl_data_* cl_data)
{
	cl_int status;
	// Set Kernel Arg
	int argi = 0;
	CONV_PARAM_TEMP tmp;
	tmp.origin = this->cur_layer_data.layer_param;
	status = 0;
	for(int i=0;i<NUM_OF_ARGS;i++)
		status |= cl_data->knl_conv.setArg(i, tmp.dest[i]);
	checkError(status, "Failed to set argument of kernel");

	status = cl_data->knl_conv.setArg(NUM_OF_ARGS+0, this->bias_buf);
	status |= cl_data->knl_conv.setArg(NUM_OF_ARGS+1, this->weights_buf);
	status |= cl_data->knl_conv.setArg(NUM_OF_ARGS+2, this->data_buf);
	status |= cl_data->knl_conv.setArg(NUM_OF_ARGS+3, this->output_buf);
	checkError(status, "Failed to set buffer args");
}


void ConvTask::enqueData(ocl_data_* cl_data)
{
	cl_int status;
	status = cl_data->que.enqueueWriteBuffer(this->weights_buf, CL_FALSE, 0, this->cur_layer_data.weight_buf_size * sizeof(DPTYPE), this->cur_layer_data.weight, nullptr, nullptr);
	checkError(status, "Failed to transfer weight");
	status = cl_data->que.enqueueWriteBuffer(this->bias_buf, CL_FALSE, 0, this->cur_layer_data.bias_buf_size * sizeof(DPTYPE), this->cur_layer_data.bias, nullptr, nullptr);
	checkError(status, "Failed to transfer weight");
	status = cl_data->que.enqueueWriteBuffer(this->data_buf, CL_FALSE, 0, this->cur_layer_data.in_buf_size * sizeof(DPTYPE), this->cur_layer_data.data, nullptr, nullptr);
	checkError(status, "Failed to transfer input image");

}
void ConvTask::readData(ocl_data_* cl_data)
{
	cl_int status;
	status = cl_data->que.enqueueReadBuffer(this->output_buf, CL_FALSE, 0, sizeof(MACTYPE) * this->cur_layer_data.out_buf_size, this->cur_layer_data.output, nullptr, nullptr);
	checkError(status, "Failed to set transfer output data");
}

void ConvTask::runTask(ocl_data_* cl_data)
{
	cl::Event* event = &(cl_data->task_event);
	cl_uint	status = cl_data->que.enqueueTask(cl_data->knl_conv, &cl_data->event_que, event);
	cl_data->event_que.push_back(*event);
	checkError(status, "Failed to cl_data->queue task");
}

void ConvTask::setLayerParamAndBufSize(void* conv_layer_info)
{
	ConvLayerInfo layer_info = *((ConvLayerInfo*)conv_layer_info);
	CONV_PARAM param;

	if(layer_info.is_test_layer){
		param.K = 32;
		param.C = 32;
		param.H = 16;
		param.W = 16;
		param.H_in = 18;
		param.W_in = 18;
		param.R = 3;
		param.S = 3;
		param.L2_TILENUM_K = 1; ///
		param.L2_TILENUM_C = 1;
		param.L2_TILENUM_W = 2;
		param.L2_TILENUM_H = 2;
		param.L2_TILENUM_R = 1;
		param.L2_TILENUM_S = 1;

		param.L1_TILENUM_K = 32/ARRAY_K; ///
		param.L1_TILENUM_C = 32/ARRAY_C;
		param.L1_TILENUM_W = 2;
		param.L1_TILENUM_H = 2;
		param.L1_TILENUM_R = 3;
		param.L1_TILENUM_S = 3;
		param.TILESIZE_K = ARRAY_K; //// is allowed(not matched with W_L1)
		param.TILESIZE_C = ARRAY_C; //// is allowed(not matched with W_L1)
		param.TILESIZE_W = 4;
		param.TILESIZE_H = 4;
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
	else {
		param.K = layer_info.K;
		param.C = layer_info.C;
		param.H = layer_info.H;
		param.W = layer_info.W;
		param.H_in = layer_info.H_in;
		param.W_in = layer_info.W_in;
		param.R = layer_info.R;
		param.S = layer_info.S;

		// L1
		param.TILESIZE_K = layer_info.TK;
		param.TILESIZE_C = layer_info.TC;
		param.TILESIZE_W = layer_info.TW;
		param.TILESIZE_H = layer_info.TH;
		param.TILESIZE_R = layer_info.TR;
		param.TILESIZE_S = layer_info.TS;

		param.K_L1 = param.TILESIZE_K;
		param.C_L1 = param.TILESIZE_C;
		param.W_L1 = param.TILESIZE_W;
		param.H_L1 = param.TILESIZE_H;
		param.R_L1 = param.TILESIZE_R;
		param.S_L1 = param.TILESIZE_S;
		param.W_in_L1 = param.TILESIZE_W + param.S_L1-1; // TILESIZE_W + TILESIZE_R/2. and don't need thinking about stride
		param.H_in_L1 = param.TILESIZE_H + param.R_L1-1;

		// L2
		param.L1_TILENUM_K = layer_info.L1K;
		param.L1_TILENUM_C = layer_info.L1C;
		param.L1_TILENUM_W = layer_info.L1W;
		param.L1_TILENUM_H = layer_info.L1H;
		param.L1_TILENUM_R = layer_info.L1R;
		param.L1_TILENUM_S = layer_info.L1S;

		param.K_L2 = param.K_L1 * param.L1_TILENUM_K;
		param.C_L2 = param.C_L1 * param.L1_TILENUM_C;
		param.W_L2 = param.W_L1 * param.L1_TILENUM_W;
		param.H_L2 = param.H_L1 * param.L1_TILENUM_H;
		param.R_L2 = param.R_L1*param.L1_TILENUM_R;
		param.S_L2 = param.S_L1*param.L1_TILENUM_S;
		param.W_in_L2 = param.W_L2 + param.S_L2-1; // TILENUM_W + TILENUM_R/2. and don't need thinking about stride
		param.H_in_L2 = param.H_L2 + param.R_L2-1;

		param.L2_TILENUM_K = layer_info.L2K;
		param.L2_TILENUM_C = layer_info.L2C;
		param.L2_TILENUM_W = layer_info.L2W;
		param.L2_TILENUM_H = layer_info.L2H;
		param.L2_TILENUM_R = layer_info.L2R;
		param.L2_TILENUM_S = layer_info.L2S;
	}

	printf("=>Kernel Mapping Info\n");
	printf(" =>K,C,H,W,R,S : %d %d %d %d %d %d\n", param.K, param.C, param.H, param.W, param.R, param.S);
	printf(" =>L2 Tile K,C,W,H,R(S): %d %d %d %d %d %d\n", param.L2_TILENUM_K, param.L2_TILENUM_C, param.L2_TILENUM_W, param.L2_TILENUM_H, param.L2_TILENUM_R, param.L2_TILENUM_S);
	printf(" =>L1 Tile K,C,W,H,R(S): %d %d %d %d %d %d\n", param.L1_TILENUM_K, param.L1_TILENUM_C, param.L1_TILENUM_W, param.L1_TILENUM_H, param.L1_TILENUM_R, param.L1_TILENUM_S);
	printf(" =>InTile  K,C,W,H,R(S): %d %d %d %d %d %d\n", param.TILESIZE_K, param.TILESIZE_C, param.TILESIZE_W, param.TILESIZE_H, param.TILESIZE_R, param.TILESIZE_S);

	this->cur_layer_data.layer_param = param;

	this->cur_layer_data.weight_buf_size = param.K * param.C * param.R * param.S;
	this->cur_layer_data.bias_buf_size = param.K;
	this->cur_layer_data.in_buf_size = param.C * param.H_in * param.W_in;
	this->cur_layer_data.out_buf_size = param.K * param.H * param.W;
}


void ConvTask::setSyntheticInput(bool random, bool sparsifying) {
	const CONV_PARAM param = this->cur_layer_data.layer_param;

	if(random) {
		for(int idx = 0; idx < param.K; idx++)
			this->cur_layer_data.bias[idx] = rand()%256-128;
		for(int idx = 0; idx < param.K*param.C*param.R*param.S; idx++)
			this->cur_layer_data.weight[idx] = rand()%256-128;
		for(int idx = 0; idx < param.C*param.H_in*param.W_in; idx++)
			this->cur_layer_data.data[idx] = rand()%256-128;
	}
	else {
		for(int idx = 0; idx < param.K; idx++)  {
			this->cur_layer_data.bias[idx] = rand()%256-128;
			this->cur_layer_data.bias[idx] = 1;
		} for(int idx = 0; idx < param.K*param.C*param.R*param.S; idx++) {
			int lidx = idx/(param.C*param.R*param.S); int c=(idx%(param.C*param.R*param.S))/(param.R*param.S); int rs=idx%(param.R*param.S);
			this->cur_layer_data.weight[idx] = rand()%256-128;
			this->cur_layer_data.weight[idx] = 1;
		} for(int idx = 0; idx < param.C*param.H_in*param.W_in; idx++) {
			int c = idx/param.H_in*param.W_in;
			int h = (idx%(param.H_in*param.W_in))/param.W_in;
			int w = idx%param.W_in;
			this->cur_layer_data.data[idx] = rand()%256-128;
			this->cur_layer_data.data[idx] = 1;
		}
	}

	if(sparsifying) {
		float sparsity = 0.8; //TODO: automation
		printf("=>Data sparsifying");
		sparsify(this->cur_layer_data.data, param.C*param.H_in*param.W_in, sparsity);
		//printf("=>Weight sparsifying");
		//sparsify(test_env.weight, param.K*param.C*param.R*param.S, sparsity);
	}

	memcpy(this->cur_layer_data.weight_original, this->cur_layer_data.weight, sizeof(DPTYPE)*this->cur_layer_data.weight_buf_size);
	memcpy(this->cur_layer_data.data_original, this->cur_layer_data.data, sizeof(DPTYPE)*this->cur_layer_data.in_buf_size);
}

void ConvTask::reorderInputs() {
	const CONV_PARAM param = this->cur_layer_data.layer_param;
	// bias
	DPTYPE* bias_origin = new DPTYPE[this->cur_layer_data.bias_buf_size]();
	memcpy(bias_origin, this->cur_layer_data.bias, this->cur_layer_data.bias_buf_size * sizeof(DPTYPE));
	for (unsigned int ko = 0; ko < param.K/ARRAY_K; ko++) {
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
			unsigned int origin_k = ko*ARRAY_K + ki;
			unsigned int device_k = (ko)*ARRAY_K + ki;
			this->cur_layer_data.bias[device_k] = bias_origin[origin_k];
		}
	}
	delete bias_origin;
	// weight
	DPTYPE* weight_origin = new DPTYPE[this->cur_layer_data.weight_buf_size]();
	memcpy(weight_origin, this->cur_layer_data.weight, this->cur_layer_data.weight_buf_size * sizeof(DPTYPE));
	for (int kmo = 0; kmo < param.L2_TILENUM_K; kmo++) {
	for (int cmo = 0; cmo < param.L2_TILENUM_C; cmo++) {
	for (int hmo = 0; hmo < param.L2_TILENUM_H; hmo++) {
	for (int wmo = 0; wmo < param.L2_TILENUM_W; wmo++) {
	for (int rmo = 0; rmo < param.L2_TILENUM_R; rmo++) {
	for (int smo = 0; smo < param.L2_TILENUM_S; smo++) {
		for (unsigned int ko = 0; ko < (param.K_L2 / ARRAY_K); ko++) {
		for (unsigned int co = 0; co < param.C_L2; co++) {
		for (unsigned int ro = 0; ro < param.R_L2; ro++) {
		for (unsigned int so = 0; so < param.S_L2; so++) {
			for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
				unsigned int origin_kcsrs = ((kmo*param.K_L2+(ko*ARRAY_K+ki))*param.C*param.R*param.S + (cmo*param.C_L2+co)*param.R*param.S + (rmo*param.R_L2+ro)*param.S + (smo*param.S_L2 + so));
				unsigned int device_kcrs = ((kmo*(param.L2_TILENUM_C)*(param.L2_TILENUM_R)*(param.L2_TILENUM_S)+cmo*(param.L2_TILENUM_R)*(param.L2_TILENUM_S)+rmo*(param.L2_TILENUM_S)+smo)
							*(param.K_L2/ARRAY_K)*param.C_L2*param.R_L2*param.S_L2 + (ko*param.C_L2*param.R_L2*param.S_L2+co*param.S_L2*param.R_L2+ro*param.S_L2+so))*ARRAY_K + ki;
				this->cur_layer_data.weight[device_kcrs] = weight_origin[origin_kcsrs];
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
	DPTYPE* data_origin = new DPTYPE[this->cur_layer_data.in_buf_size]();
	memcpy(data_origin, this->cur_layer_data.data, this->cur_layer_data.in_buf_size * sizeof(DPTYPE));
	for (int cmo = 0; cmo < param.L2_TILENUM_C; cmo++) {
	for (unsigned int co = 0; co < param.C_L2/ARRAY_C; co++) {
		for(unsigned int wh = 0; wh < param.H_in*param.W_in; wh++) {
				for(unsigned int ci = 0; ci < ARRAY_C; ci++) {
					unsigned int origin_chw = ((cmo*(param.C_L2)+(co*ARRAY_C+ci))*param.H_in*param.W_in + wh);
					unsigned int device_chw = ((cmo*(param.C_L2/ARRAY_C)+co)*param.H_in*param.W_in + wh)*ARRAY_C + ci;
					this->cur_layer_data.data[device_chw] = data_origin[origin_chw];
				}
		}
	}
	}
	delete data_origin;
}
void ConvTask::reorderOutput()
{
	const CONV_PARAM param = this->cur_layer_data.layer_param;
	MACTYPE* out_origin = new MACTYPE[this->cur_layer_data.out_buf_size]();
	memcpy(out_origin, this->cur_layer_data.output, this->cur_layer_data.out_buf_size * sizeof(MACTYPE));
	for (int kmo = 0; kmo < param.L2_TILENUM_K; kmo++) { // Inner channel
	for (int hmo = 0; hmo < param.L2_TILENUM_H; hmo++) {
	for (int wmo = 0; wmo < param.L2_TILENUM_W; wmo++) {
	for (unsigned int ko = 0; ko < param.K_L2/ARRAY_K; ko++) {
		for(unsigned int h = 0; h < param.H_L2; h++) {
			for(unsigned int w = 0; w < param.W_L2; w++) {
				for(unsigned int ki = 0;ki < ARRAY_K; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_C) / ARRAY_C
					unsigned int origin_khw = ((kmo*(param.K_L2)+(ko*ARRAY_K+ki))*param.H*param.W + (hmo*param.H_L2+h)*param.W + (wmo*param.W_L2+w));
					unsigned int device_khw = ((kmo*(param.K_L2/ARRAY_K)+ko)*param.H*param.W + (hmo*param.H_L2+h)*param.W + (wmo*param.W_L2+w))*ARRAY_K + ki;
					this->cur_layer_data.output[origin_khw] = out_origin[device_khw];
				}
			}
		}
	}
	}
	}
	}
	delete out_origin;

}

void ConvTask::sparsify(void* _data_void, int _len, float _sparsity)
{
	DPTYPE* _data = (DPTYPE*)_data_void;
	const int groupsize[3] = {1,1,4}; //W,H,C
	const CONV_PARAM param = this->cur_layer_data.layer_param;

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
	printf(" =>Group sparsified rate: %lf\n", (float)cnt / (float)((param.C/groupsize[2])*(param.H/groupsize[1])*(param.W/groupsize[0])));
	delete[] mask;
}

void ConvTask::computeGold()
{
	const CONV_PARAM param = this->cur_layer_data.layer_param;
	for(int k=0;k<param.K;k++){
		for(int h=0;h<param.H;h++){
			for(int w=0;w<param.W;w++){
				int output_ptr = k*param.H*param.W + h*param.W + w;
				int bias_ptr = k;
				this->cur_layer_data.gold[output_ptr] = this->cur_layer_data.bias[bias_ptr];
				for(int c=0;c<param.C;c++){
					for(int r=0;r<param.R;r++){
						for(int s=0;s<param.S;s++){
							int data_ptr = c*param.H_in*param.W_in + (h+r)*param.W_in + (w+s);
							int weight_ptr = k*param.C*param.R*param.S + c*param.R*param.S + r*param.S + s;
							this->cur_layer_data.gold[output_ptr] += this->cur_layer_data.data[data_ptr] * this->cur_layer_data.weight[weight_ptr];
						}
					}
				}
			}
		}
	}
}

int ConvTask::score()
{
	const CONV_PARAM param = this->cur_layer_data.layer_param;
	int cnt = 0;
	bool assert_error = false;
	for(int wh=0;wh<param.H*param.W;wh++) {
		for (unsigned int k = 0; k < param.K; k++) {
			unsigned int ptr = k*param.H*param.W + wh;
			int out = this->cur_layer_data.output[ptr];
			if(out != this->cur_layer_data.gold[ptr])
			{
				printf("Error(%d or %d (CHW:%d,%d,%d)): %d (gold %d), # of correct: %d\n", ptr, ptr, k, wh/param.W, wh%param.W, out, this->cur_layer_data.gold[ptr], cnt);
				assert_error = true;
			}
			cnt ++;
		}
	}
	if(assert_error) return 1;
	return 0;
}

void ConvTask::cleanup() {
	alignedFree(this->cur_layer_data.weight);
	alignedFree(this->cur_layer_data.data);
	alignedFree(this->cur_layer_data.bias);
	alignedFree(this->cur_layer_data.output);
	alignedFree(this->cur_layer_data.weight_original);
	alignedFree(this->cur_layer_data.data_original);
	alignedFree(this->cur_layer_data.gold);
}

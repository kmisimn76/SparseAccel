#define CL_HPP_CL_1_2_DEFAULT_BUILD
#define CL_HPP_TARGET_OPENCL_VERSION 120
#define CL_HPP_MINIMUM_OPENCL_VERSION 120
#define CL_HPP_ENABLE_PROGRAM_CONSTRUCTION_FROM_ARRAY_COMPATIBILITY 1
#define CL_USE_DEPRECATED_OPENCL_1_2_APIS
#define TESTBENCH // for ignore vitis header

#include <stdio.h>
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
/*
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
}LayerInfo;*/

//class ConvTask : public TargetTask<LayerInfo, DPTYPE> {
class ConvTask : public TargetTask {
	public:
		void reorderInputs();
		void reorderOutput();
		void setInput() {}
		void setLayerParam(LayerInfo layer_info);
		void setSyntheticInput();
		void computeGold();
		void sparsify(void* _data, int _len, float _sparsity);
		void score();
};

void testFirstLayer();
void testFiveLayers();
void testAllLayers();
int get_layer_info(const char* filename, std::vector<LayerInfo> &layer_infos);

int main(int argc, char** argv)
{
	if (argc != 2){
		printf("Error: wrong commad format, usage:\n");
		printf("%s <binaryfile>\n", argv[0]);
		return EXIT_FAILURE;
	}
	test_env.kernel_file_name=argv[1];

	test_env.initializeOcl();
	test_env.initializeHostBuffer();

	//testFirstLayer();
	testFiveLayers();
	//testAllLayers();

	test_env.cleanup();
	printf("End test\n");
	exit(0);
	return 0;
}

const int ALL_LAYERS=-1;
void testSpecificLayers(int start_layer_num, int end_layer_num);
void testFirstLayer() { testSpecificLayers(0, 1);/*only first layer*/ }
void testFiveLayers() { testSpecificLayers(0, 5); }
void testAllLayers() {  testSpecificLayers(0, ALL_LAYERS); }
void testSpecificLayers(int start_layer_num, int end_layer_num) {
	std::vector<LayerInfo> layer_infos;
	int len = get_layer_info("./../layer_info.txt", layer_infos);

	if(len<end_layer_num) { printf("forced all layer: len<end_layer_num"); end_layer_num = len;}
	if(end_layer_num == ALL_LAYERS) { end_layer_num = len; }

	std::vector<double> latency_each_layers;
	for(int run_iter=start_layer_num;run_iter<end_layer_num;run_iter++){
		printf("\nIter %d\n", run_iter);

		ConvTask temp_task;
		temp_task.cur_layer_info = &test_env.cur_layer_info;
		temp_task.cl_data = test_env.cl_data;
		test_env.target_task = &temp_task;

		test_env.target_task->setLayerParam(layer_infos.at(run_iter));
		test_env.target_task->setSyntheticInput();
		test_env.target_task->computeGold();

		test_env.initializeClBuffers();
		test_env.enqueDataWithReorder();
		test_env.setClArgs();

		// run
		cl::Event* evt = test_env.runTaskWithWait();

		cl_ulong latency = test_env.computeLatencyOfTask(evt);
		printf("=>Kernel time (ms): \t%lf\n", (double)latency/1000000.0);
		latency_each_layers.push_back((double)latency/1000000.0);

		test_env.readDataWithReorder();

		// score
		test_env.target_task->score();
		printf("=>Run complete, No errors!\n");
	}

	printf("latency report\n");
	for(int run_iter=start_layer_num;run_iter<end_layer_num;run_iter++){
		printf("%lf,", latency_each_layers.at(run_iter));
	}
	printf("\n");
}


int get_layer_info(const char* filename, std::vector<LayerInfo> &layer_infos)
{
	FILE* f = fopen(filename, "r");
	printf("Filename: %s\n", filename);
	int n = 0;
	fscanf(f, "%d", &n);
	printf("N: %d\n", n);
	for (int i=0; i<n; i++)
	{
		LayerInfo new_layer_info;
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

void ConvTask::setLayerParam(LayerInfo layer_info)
{
	NPU_PARAM param;

	if(layer_info.is_test_layer){
		param.K = 16;
		param.C = 32;
		param.H = 16;
		param.W = 16;
		param.H_in = 18;
		param.W_in = 18;
		param.R = 3;
		param.S = 3;
		param.L2_TILENUM_K = 1; ///
		param.L2_TILENUM_C = 2;
		param.L2_TILENUM_W = 1;
		param.L2_TILENUM_H = 2;
		param.L2_TILENUM_R = 1;
		param.L2_TILENUM_S = 1;

		param.L1_TILENUM_K = 16/ARRAY_K; ///
		param.L1_TILENUM_C = 2;
		param.L1_TILENUM_W = 16/ARRAY_W;
		param.L1_TILENUM_H = 8;
		param.L1_TILENUM_R = 3;
		param.L1_TILENUM_S = 3;
		param.TILESIZE_K = ARRAY_K; //// is allowed(not matched with W_L1)
		param.TILESIZE_C = 8; //// is allowed(not matched with W_L1)
		param.TILESIZE_W = ARRAY_W; //// is allowed(not matched with W_L1)
		param.TILESIZE_H = 1;
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

	test_env.cur_layer_info.layer_param = param;
}


void ConvTask::setSyntheticInput() {
	const NPU_PARAM param = test_env.cur_layer_info.layer_param;
#define RAND_INPUT
#define SPARSIFYING
#ifdef RAND_INPUT
	for(int k = 0; k < param.K; k++)
		test_env.cur_layer_info.bias[k] = rand()%256-128;
	for(int k = 0; k < param.K*param.C*param.R*param.S; k++)
		test_env.cur_layer_info.weight[k] = rand()%256-128;
	for(int k = 0; k < param.C*param.H_in*param.W_in; k++)
		test_env.cur_layer_info.data[k] = rand()%256-128;
#else
	for(int k = 0; k < param.K; k++)  {
		test_env.cur_layer_info.bias[k] = rand()%256-128;
		test_env.cur_layer_info.bias[k] = 1;
	} for(int k = 0; k < param.K*param.C*param.R*param.S; k++) {
		int lk = k/(param.C*param.R*param.S); int c=(k%(param.C*param.R*param.S))/(param.R*param.S); int rs=k%(param.R*param.S);
		test_env.cur_layer_info.weight[k] = rand()%256-128;
		test_env.cur_layer_info.weight[k] = 1;
	} for(int k = 0; k < param.C*param.H_in*param.W_in; k++) {
		int c = k/param.H_in*param.W_in;
		int h = (k%(param.H_in*param.W_in))/param.W_in;
		int w = k%param.W_in;
		test_env.cur_layer_info.data[k] = rand()%256-128;
		test_env.cur_layer_info.data[k] = w%2;
	}
#endif
#ifdef SPARSIFYING
	float sparsity = 0.8; //TODO: automation
	printf("=>Data sparsifying");
	sparsify(test_env.cur_layer_info.data, param.C*param.H_in*param.W_in, sparsity);
	//printf("=>Weight sparsifying");
	//sparsify(test_env.weight, param.K*param.C*param.R*param.S, sparsity);
#endif

	test_env.cur_layer_info.weight_buf_size = param.K * param.C * param.R * param.S;
	test_env.cur_layer_info.bias_buf_size = param.K;
	test_env.cur_layer_info.in_buf_size = param.C * param.H_in * CEIL(param.W_in,ARRAY_W)*ARRAY_W;
	test_env.cur_layer_info.out_buf_size = param.K * param.H * param.W;

	test_env.cur_layer_info.weight_original = (DPTYPE*)malloc(sizeof(DPTYPE)*test_env.cur_layer_info.weight_buf_size);
	test_env.cur_layer_info.data_original = (DPTYPE*)malloc(sizeof(DPTYPE)*test_env.cur_layer_info.in_buf_size);
	memcpy(test_env.cur_layer_info.weight_original, test_env.cur_layer_info.weight, sizeof(DPTYPE)*test_env.cur_layer_info.weight_buf_size);
	memcpy(test_env.cur_layer_info.data_original, test_env.cur_layer_info.data, sizeof(DPTYPE)*test_env.cur_layer_info.in_buf_size);
}

void ConvTask::reorderInputs() {
	const NPU_PARAM param = test_env.cur_layer_info.layer_param;
	// bias
	DPTYPE* bias_origin = new DPTYPE[test_env.cur_layer_info.bias_buf_size]();
	memcpy(bias_origin, test_env.cur_layer_info.bias, test_env.cur_layer_info.bias_buf_size * sizeof(DPTYPE));
	for (unsigned int ko = 0; ko < param.K/ARRAY_K; ko++) {
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
			unsigned int origin_k = ko*ARRAY_K + ki;
			unsigned int global_k = (ko)*ARRAY_K + ki;
			test_env.cur_layer_info.bias[global_k] = bias_origin[origin_k];
		}
	}
	delete bias_origin;
	// weight
	DPTYPE* weight_origin = new DPTYPE[test_env.cur_layer_info.weight_buf_size]();
	memcpy(weight_origin, test_env.cur_layer_info.weight, test_env.cur_layer_info.weight_buf_size * sizeof(DPTYPE));
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
			unsigned int global_kcrs = ((kmo*(param.L2_TILENUM_C)*(param.L2_TILENUM_R)*(param.L2_TILENUM_S)+rmo*(param.L2_TILENUM_S)*(param.L2_TILENUM_C)+smo*(param.L2_TILENUM_C)+cmo)
				*(param.K_L2/ARRAY_K)*param.C_L2*param.R_L2*param.S_L2 + (ko*param.C_L2*param.R_L2*param.S_L2+ro*param.S_L2*param.C_L2+so*param.C_L2+co))*ARRAY_K + ki;
				test_env.cur_layer_info.weight[global_kcrs] = weight_origin[origin_kcsrs];
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
	DPTYPE* data_origin = new DPTYPE[test_env.cur_layer_info.in_buf_size]();
	memcpy(data_origin, test_env.cur_layer_info.data, test_env.cur_layer_info.in_buf_size * sizeof(DPTYPE));
	for (unsigned int c = 0; c < param.C; c++) {
		for(unsigned int h = 0; h < param.H_in; h++) {
			for(unsigned int wo = 0; wo < CEIL(param.W_in,ARRAY_W); wo++) {
				for(unsigned int wi = 0; wi < ARRAY_W; wi++) { 
					unsigned int origin_chw = c*param.H_in*param.W_in + h*param.W_in + (wo*ARRAY_W + wi);
					unsigned int global_chw = (h*CEIL(param.W_in,ARRAY_W)*param.C + (wo)*param.C + c)*ARRAY_W + wi;
					test_env.cur_layer_info.data[global_chw] = data_origin[origin_chw];
				}
			}
		}
	}
	delete data_origin;
}
void ConvTask::reorderOutput()
{
	const NPU_PARAM param = test_env.cur_layer_info.layer_param;
	MACTYPE* out_origin = new MACTYPE[test_env.cur_layer_info.out_buf_size]();
	memcpy(out_origin, test_env.cur_layer_info.output, test_env.cur_layer_info.out_buf_size * sizeof(MACTYPE));
	for (int kmo = 0; kmo < param.L2_TILENUM_K; kmo++) {
	 for (int hmo = 0; hmo < param.L2_TILENUM_H; hmo++) {
	  for (int wmo = 0; wmo < param.L2_TILENUM_W; wmo++) {
	   for (unsigned int k = 0; k < param.K_L2; k++) {
	    for(unsigned int h = 0; h < param.H_L2; h++) {
	     for(unsigned int wo = 0; wo < param.W_L2/ARRAY_W; wo++) {
	      for(unsigned int wi = 0;wi < ARRAY_W; wi++) {
		int w = wo * ARRAY_W + wi;
		unsigned int origin_khw = ((kmo*(param.K_L2)+k)*param.H*param.W + (hmo*param.H_L2+h)*param.W + (wmo*param.W_L2+w));
		unsigned int global_khw = ((hmo*param.H_L2+h)*(param.W/ARRAY_W)*param.K + (wmo*param.W_L2/ARRAY_W+wo)*param.K + (kmo*(param.K_L2)+k))*ARRAY_W + wi;
		test_env.cur_layer_info.output[origin_khw] = out_origin[global_khw];
	      }
	     }
	    }
	   }
	  }
	 }
	}
}

void ConvTask::sparsify(void* _data_void, int _len, float _sparsity)
{
	DPTYPE* _data = (DPTYPE*)_data_void;
	const int groupsize[3] = {1,1,4}; //W,H,C
	const NPU_PARAM param = test_env.cur_layer_info.layer_param;

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
	const NPU_PARAM param = test_env.cur_layer_info.layer_param;
	for(int k=0;k<param.K;k++){
		for(int h=0;h<param.H;h++){
			for(int w=0;w<param.W;w++){
				int output_ptr = k*param.H*param.W + h*param.W + w;
				int bias_ptr = k;
				test_env.cur_layer_info.gold[output_ptr] = test_env.cur_layer_info.bias[bias_ptr];
				for(int c=0;c<param.C;c++){
					for(int r=0;r<param.R;r++){
						for(int s=0;s<param.S;s++){
							int data_ptr = c*param.H_in*param.W_in + (h+r)*param.W_in + (w+s);
							int weight_ptr = k*param.C*param.R*param.S + c*param.R*param.S + r*param.S + s;
							test_env.cur_layer_info.gold[output_ptr] += test_env.cur_layer_info.data[data_ptr] * test_env.cur_layer_info.weight[weight_ptr];
						}
					}
				}
			}
		}
	}
}

void ConvTask::score()
{
	const NPU_PARAM param = test_env.cur_layer_info.layer_param;
	int cnt = 0;
	for(int wh=0;wh<param.H*param.W;wh++) {
		for (unsigned int k = 0; k < param.K; k++) {
			unsigned int ptr = k*param.H*param.W + wh;
			int out = test_env.cur_layer_info.output[ptr];
			if(out != test_env.cur_layer_info.gold[ptr])
			{
				printf("Error(%d or %d (CHW:%d,%d,%d)): %d (gold %d), # of correct: %d\n", ptr, ptr, k, wh/param.W, wh%param.W, out, test_env.cur_layer_info.gold[ptr], cnt);
				exit(1);
			}
			cnt ++;
		}
	}
}


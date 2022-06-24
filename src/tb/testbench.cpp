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
#include <CL/cl2.hpp>
#include "ocl_util.h"
#include "timer.h"
using namespace std;

#include "hw_param.h"
#include "ocl_adaptor.h"


unsigned int bias_buf_size = 0;
unsigned int weight_buf_size = 0;
unsigned int in_buf_size = 0;
unsigned int out_buf_size = 0;

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
float sparsity = sparsity_set[0][2];
int groupsize[3] = {1,1,4}; //W,H,C

DPTYPE* weight;
DPTYPE* data;
DPTYPE* weight_original;
DPTYPE* data_original;
DPTYPE* bias;
MACTYPE* output;
MACTYPE* gold;
NPU_PARAM param;

void conv_gold();
template<typename T>
void sparsify(T* _data, int _len, float _sparsity);
int get_layer_info(const char* filename);
void reorder_params();
void reorder_output();
void set_param_data(int);
void score();
void array_initialize();


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
}LayerInfo;
LayerInfo layer_infos[200];

//std::shared_ptr<logger> logger;

int main(int argc, char** argv)
{
	if (argc != 2){
		printf("Error: wrong commad format, usage:\n");
		printf("%s <binaryfile>\n", argv[0]);
		return EXIT_FAILURE;
	}
	kernel_file_name=argv[1];
	cl_int status;
	cl_ulong time;
	/*    try 
	      {
	//logger = spdlog::basic_logger_mt("basic_logger", "logs/sa_runtime_log.txt");
	}
	catch (const spdlog::spdlog_ex &ex)
	{
	std::cout << "Log init failed: " << ex.what() << std::endl;
	}*/

	//logger->info("Running host");
	ocl_initialize();
	array_initialize();

	int len = get_layer_info("./../layer_info.txt");

	double time_log[13][17] = {};
	time = 0;
	int i = 0;
	int j = 0;
	for(int i=0, run_case=0;i<0+1;i++, run_case++){
		int j = 10;
		sparsity = sparsity_set[j][2];
		sparsity=0.0;

		printf("<<<<<<<<Iter %d>>>>>>>>>\n", i);
		set_param_data(run_case);
		conv_gold();
		reorder_params();
		initial_buffers(weight, bias, data, output, weight_buf_size, bias_buf_size, in_buf_size, out_buf_size);
		data_enque(weight, bias, data, weight_buf_size, bias_buf_size, in_buf_size);
		set_args(param);

		// run

		cl::Event* evt = runTaskWithWait();

		cl_ulong time_total = computeLatencyOfTask(evt);
		printf("Kernel time (ms): \t%lf\n", (double)time_total/1000000.0);
		time_log[i][j] = (double)time_total/1000000.0;
		printf("end run kernel\n");

		read_data(output, out_buf_size);
		printf("end read_data\n");

		event_que.back().wait();
		event_que.clear();

		printf("===Run Result===\n");
		reorder_output();
		score();
		printf("Run complete, No errors!\n");
		printf("<<<<<<<<<<<<>>>>>>>>>>>>\n");
	}

	printf("time result\n");
	for(int i=0, run_case=0;i<13;i++, run_case++){
		for(int j=0;j<17;j++){
			printf("%lf,", time_log[i][j]);
		}
		printf("\n");
	}

	cleanup(weight, bias, data, output, weight_original, data_original);
	printf("end cleanup\n");
	exit(0);                  // due to opencl object
	return 0;
}

void conv_gold()
{
	for(int k=0;k<param.K;k++){
		for(int h=0;h<param.H;h++){
			for(int w=0;w<param.W;w++){
				int output_ptr = k*param.H*param.W + h*param.W + w;
				int bias_ptr = k;
				gold[output_ptr] = bias[bias_ptr];
				for(int c=0;c<param.C;c++){
					for(int r=0;r<param.R;r++){
						for(int s=0;s<param.S;s++){
							int data_ptr = c*param.H_in*param.W_in + (h+r)*param.W_in + (w+s);
							int weight_ptr = k*param.C*param.R*param.S + c*param.R*param.S + r*param.S + s;
							gold[output_ptr] += data[data_ptr] * weight[weight_ptr];
							// INT8 accumulation
							//gold[output_ptr] = (char)((char)gold[output_ptr] + (char)(data[data_ptr] * weight[weight_ptr])); // for Quantization
						}
					}
				}
			}
		}
	}
}

template<typename T>
void sparsify(T* _data, int _len, float _sparsity)
{
	bool* mask = new bool[_len];
	for(int i=0;i<_len;i++) // zero mask
		mask[i] = (i >= _len*_sparsity)?(true):(false);
	for(int i=_len-1;i>=1;i--) { // suffule
		int r = rand()%i;
		T tmp = mask[i];
		mask[i] = mask[r];
		mask[r] = tmp;
	}
	for(int i=0;i<_len;i++) // masking
		_data[i] *= mask[i];

	int cnt = 0;
	for(int i=0;i<_len;i++)
		if(_data[i]==.0) cnt++;
	printf("Eltwise sparsified rate: %lf\n", (float)cnt / (float)_len);

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
	printf("Group sparsified rate: %lf\n", (float)cnt / (float)((param.C/groupsize[2])*(param.H/groupsize[1])*(param.W/groupsize[0])));
	delete[] mask;
}

int get_layer_info(const char* filename)
{
	FILE* f = fopen(filename, "r");
	printf("Filename: %s\n", filename);
	int n = 0;
	fscanf(f, "%d", &n);
	printf("N: %d\n", n);
	for (int i=0; i<n; i++)
	{
		uint tmp;
		fscanf(f,"%d,%d,%d,%d,%d,%d,", &layer_infos[i].K,&layer_infos[i].C,&layer_infos[i].H,&layer_infos[i].W,&layer_infos[i].R,&layer_infos[i].S);
		fscanf(f,"%f,", &layer_infos[i].density);
		fscanf(f,"%d,%d,%d,%d,%d,%d,%d,", &layer_infos[i].L2K,&layer_infos[i].L2C,&layer_infos[i].L2H,&layer_infos[i].L2W,&layer_infos[i].L2R,&layer_infos[i].L2S, &tmp);
		fscanf(f,"%d,%d,%d,%d,%d,%d,%d,", &layer_infos[i].L1K,&layer_infos[i].L1C,&layer_infos[i].L1H,&layer_infos[i].L1W,&layer_infos[i].L1R,&layer_infos[i].L1S, &tmp);
		fscanf(f,"%d,%d,%d,%d,%d,%d,%d", &layer_infos[i].TK,&layer_infos[i].TC,&layer_infos[i].TH,&layer_infos[i].TW,&layer_infos[i].TR,&layer_infos[i].TS, &tmp);
		layer_infos[i].W_in = layer_infos[i].W + layer_infos[i].S -1;
		layer_infos[i].H_in = layer_infos[i].H + layer_infos[i].R -1;
	}
	fclose(f);
	return n;
}


void array_initialize()
{
#define MAX_WEIGHT_SIZE 23592960
#define MAX_DATA_SIZE 32688640
#define MAX_BIAS_SIZE 20480
#define MAX_OUTPUT_SIZE 32112640
	weight = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_WEIGHT_SIZE, DMA_ALIGNMENT);
	data = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_DATA_SIZE, DMA_ALIGNMENT);
	bias = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_BIAS_SIZE, DMA_ALIGNMENT);
	output = (MACTYPE*)alignedMalloc(sizeof(MACTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
	gold = (MACTYPE*)alignedMalloc(sizeof(MACTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
}



void set_param_data(int run_case)
{
	if(run_case==-1){
	}
	else if(run_case==-2){
	}
	else if(run_case==-3){
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
	else if(run_case==-4){
	}
	else if(run_case==-5){
	}
	else if(run_case>=0 && run_case<1000) { // real vgg case
		param.K = layer_infos[run_case].K;
		param.C = layer_infos[run_case].C;
		param.H = layer_infos[run_case].H;
		param.W = layer_infos[run_case].W;
		param.H_in = layer_infos[run_case].H_in;
		param.W_in = layer_infos[run_case].W_in;
		param.R = layer_infos[run_case].R;
		param.S = layer_infos[run_case].S;

		// L1
		param.TILESIZE_K = layer_infos[run_case].TK;
		param.TILESIZE_C = layer_infos[run_case].TC;
		param.TILESIZE_W = layer_infos[run_case].TW;
		param.TILESIZE_H = layer_infos[run_case].TH;
		param.TILESIZE_R = layer_infos[run_case].TR;
		param.TILESIZE_S = layer_infos[run_case].TS;

		param.K_L1 = param.TILESIZE_K;
		param.C_L1 = param.TILESIZE_C;
		param.W_L1 = param.TILESIZE_W;
		param.H_L1 = param.TILESIZE_H;
		param.R_L1 = param.TILESIZE_R;
		param.S_L1 = param.TILESIZE_S;
		param.W_in_L1 = param.TILESIZE_W + param.S_L1-1; // TILESIZE_W + TILESIZE_R/2. and don't need thinking about stride
		param.H_in_L1 = param.TILESIZE_H + param.R_L1-1;

		// L2
		param.L1_TILENUM_K = layer_infos[run_case].L1K;
		param.L1_TILENUM_C = layer_infos[run_case].L1C;
		param.L1_TILENUM_W = layer_infos[run_case].L1W;
		param.L1_TILENUM_H = layer_infos[run_case].L1H;
		param.L1_TILENUM_R = layer_infos[run_case].L1R;
		param.L1_TILENUM_S = layer_infos[run_case].L1S;

		param.K_L2 = param.K_L1 * param.L1_TILENUM_K;
		param.C_L2 = param.C_L1 * param.L1_TILENUM_C;
		param.W_L2 = param.W_L1 * param.L1_TILENUM_W;
		param.H_L2 = param.H_L1 * param.L1_TILENUM_H;
		param.R_L2 = param.R_L1*param.L1_TILENUM_R;
		param.S_L2 = param.S_L1*param.L1_TILENUM_S;
		param.W_in_L2 = param.W_L2 + param.S_L2-1; // TILENUM_W + TILENUM_R/2. and don't need thinking about stride
		param.H_in_L2 = param.H_L2 + param.R_L2-1;

		param.L2_TILENUM_K = layer_infos[run_case].L2K;
		param.L2_TILENUM_C = layer_infos[run_case].L2C;
		param.L2_TILENUM_W = layer_infos[run_case].L2W;
		param.L2_TILENUM_H = layer_infos[run_case].L2H;
		param.L2_TILENUM_R = layer_infos[run_case].L2R;
		param.L2_TILENUM_S = layer_infos[run_case].L2S;

	}
	else{ printf("Invalid case\n"); exit(1);}
#define RAND_INPUT
#define SPARSIFYING
#ifdef RAND_INPUT
	for(int k = 0; k < param.K; k++)								bias[k]		= rand()%256-128;
	for(int k = 0; k < param.K*param.C*param.R*param.S; k++)		weight[k]	= rand()%256-128;
	for(int k = 0; k < param.C*param.H_in*param.W_in; k++)		data[k]		= rand()%256-128;
#else
	for(int k = 0; k < param.K; k++)  {
		bias[k] = rand()%256-128;
		bias[k] = 1;
	} for(int k = 0; k < param.K*param.C*param.R*param.S; k++) {
		int lk = k/(param.C*param.R*param.S); int c=(k%(param.C*param.R*param.S))/(param.R*param.S); int rs=k%(param.R*param.S);
		weight[k] = rand()%256-128;
		weight[k] = 1;
	} for(int k = 0; k < param.C*param.H_in*param.W_in; k++) {
		int c = k/param.H_in*param.W_in;
		int h = (k%(param.H_in*param.W_in))/param.W_in;
		int w = k%param.W_in;
		data[k] = rand()%256-128;
		data[k] = w%2;
	}
#endif
#ifdef SPARSIFYING
	printf("Data ");
	sparsify<DPTYPE>(data, param.C*param.H_in*param.W_in, sparsity);
	//printf("Weight ");
	//sparsify<DPTYPE>(weight, param.K*param.C*param.R*param.S, sparsity);
#endif

	weight_buf_size = param.K * param.C * param.R * param.S;
	bias_buf_size = param.K;
	in_buf_size = param.C * param.H_in * CEIL(param.W_in,ARRAY_W)*ARRAY_W;
	out_buf_size = param.K * param.H * param.W;

	weight_original = (DPTYPE*)malloc(sizeof(DPTYPE)*weight_buf_size);
	data_original = (DPTYPE*)malloc(sizeof(DPTYPE)*in_buf_size);
	memcpy(weight_original, weight, sizeof(DPTYPE)*weight_buf_size);
	memcpy(data_original, data, sizeof(DPTYPE)*in_buf_size);

	printf("===Kernel Info(case %d)===\n", run_case);
	printf("K,C,H,W,R,S : %d %d %d %d %d %d\n", param.K, param.C, param.H, param.W, param.R, param.S);
	printf("L2 Tile K,C,W,H,R(S): %d %d %d %d %d %d\n", param.L2_TILENUM_K, param.L2_TILENUM_C, param.L2_TILENUM_W, param.L2_TILENUM_H, param.L2_TILENUM_R, param.L2_TILENUM_S);
	printf("L1 Tile K,C,W,H,R(S): %d %d %d %d %d %d\n", param.L1_TILENUM_K, param.L1_TILENUM_C, param.L1_TILENUM_W, param.L1_TILENUM_H, param.L1_TILENUM_R, param.L1_TILENUM_S);
	printf("InTile  K,C,W,H,R(S): %d %d %d %d %d %d\n", param.TILESIZE_K, param.TILESIZE_C, param.TILESIZE_W, param.TILESIZE_H, param.TILESIZE_R, param.TILESIZE_S);
	//logger->info("Kernel info");
	printf("==========================\n");
}
void reorder_params() {
	// bias
	DPTYPE* bias_origin = new DPTYPE[bias_buf_size]();
	memcpy(bias_origin, bias, bias_buf_size * sizeof(DPTYPE));
	for (unsigned int ko = 0; ko < param.K/ARRAY_K; ko++) {
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
			unsigned int origin_k = ko*ARRAY_K + ki;
			unsigned int global_k = (ko)*ARRAY_K + ki;
			bias[global_k] = bias_origin[origin_k];
		}
	}
	delete bias_origin;
	// weight
	DPTYPE* weight_origin = new DPTYPE[weight_buf_size]();
	memcpy(weight_origin, weight, weight_buf_size * sizeof(DPTYPE));
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
				weight[global_kcrs] = weight_origin[origin_kcsrs];
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
	DPTYPE* data_origin = new DPTYPE[in_buf_size]();
	memcpy(data_origin, data, in_buf_size * sizeof(DPTYPE));
	for (unsigned int c = 0; c < param.C; c++) {
		for(unsigned int h = 0; h < param.H_in; h++) {
			for(unsigned int wo = 0; wo < CEIL(param.W_in,ARRAY_W); wo++) {
				for(unsigned int wi = 0; wi < ARRAY_W; wi++) { 
					unsigned int origin_chw = c*param.H_in*param.W_in + h*param.W_in + (wo*ARRAY_W + wi);
					unsigned int global_chw = (h*CEIL(param.W_in,ARRAY_W)*param.C + (wo)*param.C + c)*ARRAY_W + wi;
					data[global_chw] = data_origin[origin_chw];
				}
			}
		}
	}


	delete data_origin;
}
void reorder_output()
{
	MACTYPE* out_origin = new MACTYPE[out_buf_size]();
	memcpy(out_origin, output, out_buf_size * sizeof(MACTYPE));
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
		output[origin_khw] = out_origin[global_khw];
	      }
	     }
	    }
	   }
	  }
	 }
	}
}

void score()
{
	int cnt = 0;
	for(int wh=0;wh<param.H*param.W;wh++) {
		for (unsigned int k = 0; k < param.K; k++) {
			unsigned int ptr = k*param.H*param.W + wh;
			int out = output[ptr];
			if(out != gold[ptr])
			{
				printf("Error(%d or %d (CHW:%d,%d,%d)): %d (gold %d), # of correct: %d\n", ptr, ptr, k, wh/param.W, wh%param.W, out, gold[ptr], cnt);
				exit(1);
			}
			cnt ++;
		}
	}
}


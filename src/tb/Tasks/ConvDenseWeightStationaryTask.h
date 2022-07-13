
#ifndef _CONV_TASK_H
#define _CONV_TASK_H

#include "Convolution.h"
#include "TestEnvironment.h"


//TODO : temporal moved (used @ TargetTask) -> essential?
typedef struct conv_layer_info_ {
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
    	uint Stride;
	uint Padding;
	float scale_factor;

	bool is_test_layer;
}ConvLayerInfo;


typedef struct {
	uint K;
	uint C;
	uint H;
	uint W;
	uint H_in;
	uint W_in;
	uint R;
	uint S;
	uint L2_TILENUM_K;///
	uint L2_TILENUM_C;
	uint L2_TILENUM_W; // W Size of a tile
	uint L2_TILENUM_H;
	uint L2_TILENUM_R;
	uint L2_TILENUM_S;
	uint K_L2;
	uint C_L2;
	uint W_L2;
	uint H_L2;
	uint W_in_L2;
	uint H_in_L2;
	uint R_L2;
	uint S_L2;
	uint L1_TILENUM_K;///
	uint L1_TILENUM_C;
	uint L1_TILENUM_W; // W Size of a tile
	uint L1_TILENUM_H;
	uint L1_TILENUM_R;
	uint L1_TILENUM_S;
	uint K_L1;
	uint C_L1;
	uint W_L1;
	uint H_L1;
	uint W_in_L1;
	uint H_in_L1;
	uint R_L1;
	uint S_L1;
	uint TILESIZE_K; // W Size of a tile
	uint TILESIZE_C;
	uint TILESIZE_W; // W Size of a tile
	uint TILESIZE_H;
	uint TILESIZE_R; //must be 1
	uint TILESIZE_S; //must be 1
	uint Stride;
	uint Padding;
	float scale_factor;
} CONV_PARAM;

class ConvLayerData {
	public:
		CONV_PARAM layer_param;
		unsigned int bias_buf_size = 0;
		unsigned int weight_buf_size = 0;
		unsigned int in_buf_size = 0;
		unsigned int out_buf_size = 0;

		DPTYPE* weight;
		DPTYPE* data;
		DPTYPE* weight_original;
		DPTYPE* data_original;
		DPTYPE* bias;
		DPTYPE* output_quant;
		MACTYPE* output_raw;
		MACTYPE* gold;
		DPTYPE* gold_quant;
};

class ConvTask : public TargetTask {
	public:
		ConvLayerData cur_layer_data;

		cl::Buffer data_buf; //TODO: move to ConvLayerInfo(Data)
		cl::Buffer weights_buf;
		cl::Buffer bias_buf;
		cl::Buffer output_quant_buf;
		cl::Buffer output_raw_buf;

		void initializeHostBuffer();
		void initializeClBuffer(ocl_data_*);
		void setClArgs(ocl_data_*);
		void enqueDataAndWait(ocl_data_*);
		void readDataAndWait(ocl_data_*);
		void runTask(ocl_data_*);

		void reorderInputs();
		void reorderOutput();

		void setInputData() {}
		void setLayerParamAndBufSize(void* conv_layer_info);
		void setSyntheticInput(bool random, bool sparsifying);

		void computeGold();
		int score();

		void sparsify(void* _data, int _len, float _sparsity);

		void cleanup();
};

#endif

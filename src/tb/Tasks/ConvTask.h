
#ifndef _CONV_TASK_H
#define _CONV_TASK_H

#include "Conv_sysarr.h"
#include "TestEnvironment.h"

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
} NPU_PARAM;

class ConvLayerInfo { //TODO: rename ConvLayerInfo -> ConvLayerData?
	public:
		NPU_PARAM layer_param;
		unsigned int bias_buf_size = 0;
		unsigned int weight_buf_size = 0;
		unsigned int in_buf_size = 0;
		unsigned int out_buf_size = 0;

		DPTYPE* weight;
		DPTYPE* data;
		DPTYPE* weight_original;
		DPTYPE* data_original;
		DPTYPE* bias;
		MACTYPE* output;
		MACTYPE* gold;
};

class ConvTask : public TargetTask {
	public:
		ConvLayerInfo cur_layer_info;

		cl::Buffer data_buf; //TODO: move to ConvLayerInfo(Data)
		cl::Buffer output_buf;
		cl::Buffer weights_buf;
		cl::Buffer bias_buf;

		void initializeHostBuffer();
		void initializeClBuffer(ocl_data_*);
		void setClArgs(ocl_data_*);
		void enqueData(ocl_data_*);
		void readData(ocl_data_*);
		void runTask(ocl_data_*);

		void reorderInputs();
		void reorderOutput();

		void setInputData() {}
		void setLayerParamAndBufSize(LayerInfo layer_info);
		void setSyntheticInput(bool random, bool sparsifying);

		void computeGold();
		void score();

		void sparsify(void* _data, int _len, float _sparsity);

		void cleanup();
};

#endif

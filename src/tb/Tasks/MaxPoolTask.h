
#ifndef _MAX_POOL_TASK_H
#define _MAX_POOL_TASK_H

#include "maxPool.h"
#include "TestEnvironment.h"

typedef struct maxpool_layer_info_ {
	unsigned int C;
	unsigned int WH;
	unsigned int WH_in;
	unsigned int RS;
	unsigned int stride;
	unsigned int padding_out;
	bool is_test_layer;
}MaxPoolLayerInfo;

typedef struct maxpool_param_ {
	unsigned int C;
	unsigned int WH;
	unsigned int WH_in;
	unsigned int RS;
	unsigned int stride;
	unsigned int padding_out;
}MaxPoolParam;

class MaxPoolLayerData {
	public:
		MaxPoolParam layer_param;
		unsigned int in_buf_size = 0;
		unsigned int out_buf_size = 0;

		DPTYPE* data;
		DPTYPE* data_original;
		DPTYPE* output; //TODO: rename output -> output_quantized?
		MACTYPE* output_MACTYPE; //TODO: rename output_MACTYPE->output? output_before_quant?
		MACTYPE* gold;
		//MACTYPE* gold_MACTYPE; //TODO
};

class MaxPoolTask : public TargetTask {
	public:
		MaxPoolLayerData cur_layer_data;

		cl::Buffer data_buf;
		cl::Buffer output_buf;
		cl::Buffer output_MACTYPE_buf;

		void initializeHostBuffer();
		void initializeClBuffer(ocl_data_*);
		void setClArgs(ocl_data_*);
		void enqueData(ocl_data_*);
		void readData(ocl_data_*);
		void runTask(ocl_data_*);

		void reorderInputs();
		void reorderOutput();

		void setInputData() {}
		void setLayerParamAndBufSize(void* maxpool_layer_info);
		void setSyntheticInput(bool random, bool sparsifying);

		void computeGold();
		int score();

		void sparsify(void* _data, int _len, float _sparsity);

		void cleanup();

};

#endif

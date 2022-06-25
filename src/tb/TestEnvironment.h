
using namespace ocl_util;

const char *vendor_name = "Xilinx";
#define DEVICE_TYPE CL_DEVICE_TYPE_ACCELERATOR
#define DMA_ALIGNMENT   4096

/*
//Sparsity Table, for group size 4
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
*/

//TODO : temporal moved (used @ TargetTask)
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
}LayerInfo;


class ocl_data_ {
	public:
		cl::Event task_event;
		cl::Event read_event;
		cl::Context context;
		cl::Program program;
		std::vector<cl::Device> device;
		cl::Kernel knl_conv;
		cl::CommandQueue que;
		cl::Buffer data_buf;
		cl::Buffer output_buf;
		cl::Buffer weights_buf;
		cl::Buffer bias_buf;
		std::vector<cl::Event> event_que;
};
class CurrentLayerInfo {
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
class TargetTask { //Interface
	public:
		CurrentLayerInfo* cur_layer_info;
		ocl_data_* cl_data;

		//TODO: seperate host/cl operation
		virtual void reorderInputs() {}
		virtual void reorderOutput() {}
		virtual void setInput() {}
		virtual void setLayerParam(LayerInfo layer_info) {}
		virtual void setSyntheticInput() {}
		virtual void computeGold() {}
		virtual void sparsify(void* _data, int _len, float _sparsity) {}
		virtual void score() {}
};
class TestEnvironment {
	private:
	public:
		const char* knl_name_conv = "Conv_sysarr";
		char *kernel_file_name;

		CurrentLayerInfo cur_layer_info; //TODO: to TargetTask
		ocl_data_* cl_data; //TODO: buffers to TargetTask
		TargetTask* target_task;

		TestEnvironment() {}
		~TestEnvironment() {}

		cl::Event* runTaskWithWait();
		cl_ulong computeLatencyOfTask(cl::Event* event);
		void flushEventQue(); //OpenCl Synch

		std::vector<cl::Device> getDevices(const std::string& vendor_name);
		char* readBinaryFile(const std::string &xclbin_file_name, unsigned &nb);

		void initializeOcl();
		void initializeHostBuffer();

		void initializeClBuffers(); //TODO to TargetTask
		void setClArgs(); //TODO to TargetTask

		void enqueDataWithReorder(); //TODO to TargetTask
		void readDataWithReorder(); //TODO to TargetTask

		void cleanup();

};
TestEnvironment test_env;


cl::Event* TestEnvironment::runTaskWithWait() {
	cl::Event* event = &(this->cl_data->task_event);
	cl_uint	status = this->cl_data->que.enqueueTask(this->cl_data->knl_conv, &this->cl_data->event_que, event);
	this->cl_data->event_que.push_back(*event);
	checkError(status, "Failed to cl_data->queue task");
	status = event->wait();
	checkError(status, "Failed to wait event");
	return event;
}
cl_ulong TestEnvironment::computeLatencyOfTask(cl::Event* event) {
	cl_ulong time_start, time_end;
	event->getProfilingInfo(CL_PROFILING_COMMAND_START, &time_start);
	event->getProfilingInfo(CL_PROFILING_COMMAND_END, &time_end);
	cl_ulong time_total = time_end - time_start;
	return time_total;
}
void TestEnvironment::flushEventQue() {
	this->cl_data->event_que.back().wait();
	this->cl_data->event_que.clear();
}


std::vector<cl::Device> TestEnvironment::getDevices(const std::string& vendor_name) {
	size_t i;
	cl_int err;
	std::vector<cl::Platform> platforms;
	err = cl::Platform::get(&platforms);
	checkError(err, "error");
	cl::Platform platform;
	for (i  = 0 ; i < platforms.size(); i++){
		platform = platforms[i];
		std::string platformName = platform.getInfo<CL_PLATFORM_NAME>(&err);
		checkError(err, "error");
		if (platformName == vendor_name){
			std::cout << "Found cl_data->platform: " << platformName.c_str() << std::endl;
			break;
		}
	}
	if (i == platforms.size()) {
		std::cout << "Error: Failed to find Xilinx platform" << std::endl;
		exit(EXIT_FAILURE);
	}

	//Getting ACCELERATOR Devices and selecting 1st such cl_data->device
	std::vector<cl::Device> devices;
	err = platform.getDevices(CL_DEVICE_TYPE_ACCELERATOR, &devices);
	checkError(err, "error");
	cout<<"Device Nums: "<<devices.size()<<"\n";
	cout<<"Device Name: "<<devices[0].getInfo<CL_DEVICE_NAME>()<<"\n";
	return devices;
}
char* TestEnvironment::readBinaryFile(const std::string &xclbin_file_name, unsigned &nb) 
{
	if(access(xclbin_file_name.c_str(), R_OK) != 0) {
		printf("ERROR: %s xclbin not available please build\n", xclbin_file_name.c_str());
		exit(EXIT_FAILURE);
	}
	//Loading XCL Bin into char buffer 
	std::cout << "Loading: '" << xclbin_file_name.c_str() << "'\n";
	std::ifstream bin_file(xclbin_file_name.c_str(), std::ifstream::binary);
	bin_file.seekg (0, bin_file.end);
	nb = bin_file.tellg();
	bin_file.seekg (0, bin_file.beg);
	char *buf = new char [nb];
	bin_file.read(buf, nb);
	return buf;
}


void TestEnvironment::initializeOcl()
{
	cl_int status;
	this->cl_data = new ocl_data_();
	std::string vendor_name_s(vendor_name);
	this->cl_data->device = getDevices(vendor_name_s);

	this->cl_data->context = cl::Context(this->cl_data->device[0], NULL, NULL, NULL, &status);
	checkError(status, "Failed to create cl_data->context");
	this->cl_data->que = cl::CommandQueue(this->cl_data->context, this->cl_data->device[0], cl::QueueProperties::Profiling | cl::QueueProperties::OutOfOrder, &status);
	checkError(status, "Failed to create command queue");

	// Create Program Objects
	unsigned fileBufSize;
	char* fileBuf = readBinaryFile(this->kernel_file_name, fileBufSize);
	cl::Program::Binaries bins{{fileBuf, fileBufSize}};
	this->cl_data->program = cl::Program(this->cl_data->context, this->cl_data->device, bins, NULL, &status);
	checkError(status, "Failed to create program");
	status = this->cl_data->program.build(this->cl_data->device);
	checkError(status, "Failed to build program");

	this->cl_data->knl_conv = cl::Kernel(this->cl_data->program, this->knl_name_conv, &status);
	checkError(status, "Failed to create kernel");
}

void TestEnvironment::initializeHostBuffer()
{
	const int MAX_WEIGHT_SIZE=23592960;
	const int MAX_DATA_SIZE=32688640;
	const int MAX_BIAS_SIZE=20480;
	const int MAX_OUTPUT_SIZE=32112640;
	this->cur_layer_info.weight = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_WEIGHT_SIZE, DMA_ALIGNMENT);
	this->cur_layer_info.data = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_DATA_SIZE, DMA_ALIGNMENT);
	this->cur_layer_info.bias = (DPTYPE*)alignedMalloc(sizeof(DPTYPE)*MAX_BIAS_SIZE, DMA_ALIGNMENT);
	this->cur_layer_info.output = (MACTYPE*)alignedMalloc(sizeof(MACTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
	this->cur_layer_info.gold = (MACTYPE*)alignedMalloc(sizeof(MACTYPE)*MAX_OUTPUT_SIZE, DMA_ALIGNMENT);
}


#define NUM_OF_ARGS 42/*37*/ //# of args of HLS kernel
void TestEnvironment::initializeClBuffers()
{
	cl_int status;
	// Initialize Cl buffer
	this->cl_data->weights_buf = cl::Buffer(this->cl_data->context, CL_MEM_READ_ONLY, this->cur_layer_info.weight_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for weights");
	this->cl_data->bias_buf = cl::Buffer(this->cl_data->context, CL_MEM_READ_ONLY, this->cur_layer_info.bias_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for bias");
	this->cl_data->data_buf = cl::Buffer(this->cl_data->context, CL_MEM_READ_ONLY, this->cur_layer_info.in_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for data");
	this->cl_data->output_buf = cl::Buffer(this->cl_data->context, CL_MEM_WRITE_ONLY, this->cur_layer_info.out_buf_size*sizeof(MACTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for output");

	status = this->cl_data->que.enqueueMigrateMemObjects({this->cl_data->bias_buf,this->cl_data->weights_buf,this->cl_data->data_buf,this->cl_data->output_buf}, CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED);
	checkError(status, "Failed to migrate buffer");

	this->cl_data->que.finish();
}
typedef union NPU_PARAM_TEMP_
{
	NPU_PARAM origin;
	unsigned int dest[NUM_OF_ARGS];
}NPU_PARAM_TEMP;
void TestEnvironment::setClArgs()
{
	cl_int status;
	// Set Kernel Arg
	int argi = 0;
	NPU_PARAM_TEMP tmp;
	tmp.origin = this->cur_layer_info.layer_param;
	status = 0;
	for(int i=0;i<NUM_OF_ARGS;i++)
		status |= this->cl_data->knl_conv.setArg(i, tmp.dest[i]);
	checkError(status, "Failed to set argument of kernel");

	status = this->cl_data->knl_conv.setArg(NUM_OF_ARGS+0, this->cl_data->bias_buf);
	status |= this->cl_data->knl_conv.setArg(NUM_OF_ARGS+1, this->cl_data->weights_buf);
	status |= this->cl_data->knl_conv.setArg(NUM_OF_ARGS+2, this->cl_data->data_buf);
	status |= this->cl_data->knl_conv.setArg(NUM_OF_ARGS+3, this->cl_data->output_buf);
	checkError(status, "Failed to set buffer args");
}


void TestEnvironment::enqueDataWithReorder()
{
	this->target_task->reorderInputs(); //data reorder

	cl_int status;
	// Data encl_data->que
	// weight is static
	status = this->cl_data->que.enqueueWriteBuffer(this->cl_data->weights_buf, CL_FALSE, 0, this->cur_layer_info.weight_buf_size * sizeof(DPTYPE), this->cur_layer_info.weight, nullptr, nullptr);
	checkError(status, "Failed to transfer weight");
	status = this->cl_data->que.enqueueWriteBuffer(this->cl_data->bias_buf, CL_FALSE, 0, this->cur_layer_info.bias_buf_size * sizeof(DPTYPE), this->cur_layer_info.bias, nullptr, nullptr);
	checkError(status, "Failed to transfer weight");
	status = this->cl_data->que.enqueueWriteBuffer(this->cl_data->data_buf, CL_FALSE, 0, this->cur_layer_info.in_buf_size * sizeof(DPTYPE), this->cur_layer_info.data, nullptr, nullptr);
	checkError(status, "Failed to transfer input image");

	this->cl_data->que.finish();
}
void TestEnvironment::readDataWithReorder()
{
	cl::Event* event = &(this->cl_data->read_event);
	cl_int status;
	status = this->cl_data->que.enqueueReadBuffer(this->cl_data->output_buf, CL_FALSE, 0, sizeof(MACTYPE) * this->cur_layer_info.out_buf_size, this->cur_layer_info.output, &this->cl_data->event_que, event);
	this->cl_data->event_que.push_back(*event);
	checkError(status, "Failed to set transfer output data");

	this->flushEventQue(); //OpenCL synch
	this->target_task->reorderOutput(); //data reorder
}


void TestEnvironment::cleanup()
{
	// Release the opencl runtime resource allocated
	delete this->cl_data;
	// Release the memory resource allocated
	alignedFree(this->cur_layer_info.weight);
	alignedFree(this->cur_layer_info.data);
	alignedFree(this->cur_layer_info.bias);
	alignedFree(this->cur_layer_info.output);
	alignedFree(this->cur_layer_info.weight_original);
	alignedFree(this->cur_layer_info.data_original);
}

void cleanup() {} //dump function for ocl util

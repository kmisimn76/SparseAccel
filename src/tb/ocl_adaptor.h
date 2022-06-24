
using namespace ocl_util;

const char *vendor_name = "Xilinx";
#define DEVICE_TYPE CL_DEVICE_TYPE_ACCELERATOR
#define DMA_ALIGNMENT   4096


class ocl_environment_ {

	private:
	public:
		cl::Event task_event;
		cl::Event read_event;
		cl::Context context;
		cl::Program program;
		std::vector<cl::Device> device;
		cl::Kernel knl_conv;
		cl::CommandQueue que;
		cl::Buffer dat_buf;
		cl::Buffer output_buf;
		cl::Buffer weights_buf;
		cl::Buffer bias_buf;
		ocl_environment_() {}
		~ocl_environment_() {}

};

const char* knl_name_conv = "Conv_sysarr";
char *kernel_file_name;
cl_uint num_devices = 0;
ocl_environment_* cl_data;

std::vector<cl::Event> event_que;


cl::Event* runTaskWithWait() {
	cl::Event* event = &(cl_data->task_event);
	cl_uint	status = cl_data->que.enqueueTask(cl_data->knl_conv, &event_que, event);
	event_que.push_back(*event);
	checkError(status, "Failed to encl_data->queue task");
	status = event->wait();
	checkError(status, "Failed to wait event");
	return event;
}
cl_ulong computeLatencyOfTask(cl::Event* event) {
	cl_ulong time_start, time_end;
	event->getProfilingInfo(CL_PROFILING_COMMAND_START, &time_start);
	event->getProfilingInfo(CL_PROFILING_COMMAND_END, &time_end);
	cl_ulong time_total = time_end - time_start;
	return time_total;
}

std::vector<cl::Device> get_devices(const std::string& vendor_name) {
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
char* read_binary_file(const std::string &xclbin_file_name, unsigned &nb) 
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

void ocl_initialize()
{
	cl_int status;
	cl_data = new ocl_environment_();
	std::string vendor_name_s(vendor_name);
	cl_data->device = get_devices(vendor_name_s);

	cl_data->context = cl::Context(cl_data->device[0], NULL, NULL, NULL, &status);
	checkError(status, "Failed to create cl_data->context");
	cl_data->que = cl::CommandQueue(cl_data->context, cl_data->device[0], cl::QueueProperties::Profiling | cl::QueueProperties::OutOfOrder, &status);
	checkError(status, "Failed to create command queue");

	// Create Program Objects
	unsigned fileBufSize;
	char* fileBuf = read_binary_file(kernel_file_name, fileBufSize);
	cl::Program::Binaries bins{{fileBuf, fileBufSize}};
	cl_data->program = cl::Program(cl_data->context, cl_data->device, bins, NULL, &status);
	checkError(status, "Failed to create program");
	status = cl_data->program.build(cl_data->device);
	checkError(status, "Failed to build program");

	cl_data->knl_conv = cl::Kernel(cl_data->program, knl_name_conv, &status);
	checkError(status, "Failed to create kernel");
}

void initial_buffers(DPTYPE* weight, DPTYPE* bias, DPTYPE* data, MACTYPE* output, unsigned int weight_buf_size, unsigned int bias_buf_size, unsigned int in_buf_size, unsigned int out_buf_size)
{
	cl_int status;
	// Initialize Cl buffer
	printf("weight_buf_size: %d\n", weight_buf_size);
	printf("bias_buf_size: %d\n", bias_buf_size);
	cl_data->weights_buf = cl::Buffer(cl_data->context, CL_MEM_READ_ONLY,  weight_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for weights");
	cl_data->bias_buf = cl::Buffer(cl_data->context, CL_MEM_READ_ONLY,  bias_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for bias");
	cl_data->dat_buf = cl::Buffer(cl_data->context, CL_MEM_READ_ONLY,  in_buf_size*sizeof(DPTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for data");
	cl_data->output_buf = cl::Buffer(cl_data->context, CL_MEM_WRITE_ONLY,  out_buf_size*sizeof(MACTYPE), nullptr, &status);
	checkError(status, "Failed to create buffer for output");

	status = cl_data->knl_conv.setArg(/*36*/41+1, cl_data->bias_buf);
	status |= cl_data->knl_conv.setArg(/*36*/41+2, cl_data->weights_buf);
	status |= cl_data->knl_conv.setArg(/*36*/41+3, cl_data->dat_buf);
	status |= cl_data->knl_conv.setArg(/*36*/41+4, cl_data->output_buf);
	checkError(status, "Failed to set buffer args");

	status = cl_data->que.enqueueMigrateMemObjects({cl_data->bias_buf,cl_data->weights_buf,cl_data->dat_buf,cl_data->output_buf}, CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED);
	checkError(status, "Failed to migrate buffer");

	cl_data->que.finish();
}


void data_enque(DPTYPE* weight, DPTYPE* bias, DPTYPE* data, unsigned int weight_buf_size, unsigned int bias_buf_size, unsigned int in_buf_size)
{
	cl_int status;
	// Data encl_data->que
	// weight is static
	status = cl_data->que.enqueueWriteBuffer(cl_data->weights_buf, CL_FALSE, 0, weight_buf_size * sizeof(DPTYPE), weight, nullptr, nullptr);
	checkError(status, "Failed to transfer weight");
	status = cl_data->que.enqueueWriteBuffer(cl_data->bias_buf, CL_FALSE, 0, bias_buf_size * sizeof(DPTYPE), bias, nullptr, nullptr);
	checkError(status, "Failed to transfer weight");
	status = cl_data->que.enqueueWriteBuffer(cl_data->dat_buf, CL_FALSE, 0, in_buf_size * sizeof(DPTYPE), data, nullptr, nullptr);
	checkError(status, "Failed to transfer input image");

	cl_data->que.finish();
}

#define NUM_OF_ARGS 42/*37*/
typedef union NPU_PARAM_TEMP_
{
	NPU_PARAM origin;
	unsigned int dest[NUM_OF_ARGS];
}NPU_PARAM_TEMP;
void set_args(NPU_PARAM param)
{
	cl_int status;
	// Set Kernel Arg
	int argi = 0;
	NPU_PARAM_TEMP tmp;
	tmp.origin = param;
	status = 0;
	for(int i=0;i<NUM_OF_ARGS;i++)
		status |= cl_data->knl_conv.setArg(i, tmp.dest[i]);
	checkError(status, "Failed to set argument of kernel");
}

void read_data(MACTYPE* output, unsigned int out_buf_size)
{
	cl::Event* event = &(cl_data->read_event);
	cl_int status;
	status = cl_data->que.enqueueReadBuffer(cl_data->output_buf, CL_FALSE, 0, sizeof(MACTYPE) * out_buf_size, output, &event_que, event);
	event_que.push_back(*event);
	checkError(status, "Failed to set transfer output data");
}

void cleanup(DPTYPE* weight, DPTYPE* bias, DPTYPE* data, MACTYPE* output, DPTYPE* weight_original, DPTYPE* data_original)
{
	// Release the opencl runtime resource allocated
	delete cl_data;
	// Release the memory resource allocated
	alignedFree(weight);
	alignedFree(data);
	alignedFree(bias);
	alignedFree(output);
	alignedFree(weight_original);
	alignedFree(data_original);
}
void cleanup(){} //dump function for checkError exit


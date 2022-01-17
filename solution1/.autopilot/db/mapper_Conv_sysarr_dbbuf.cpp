#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_bias_in_V_cap_bc;
static AESL_RUNTIME_BC __xlx_bias_in_V_size_Reader("../tv/stream_size/stream_size_in_bias_in_V.dat");
unsigned int ap_apatb_weight_in_V_cap_bc;
static AESL_RUNTIME_BC __xlx_weight_in_V_size_Reader("../tv/stream_size/stream_size_in_weight_in_V.dat");
unsigned int ap_apatb_data_in_V_cap_bc;
static AESL_RUNTIME_BC __xlx_data_in_V_size_Reader("../tv/stream_size/stream_size_in_data_in_V.dat");
unsigned int ap_apatb_conv_out_V_cap_bc;
static AESL_RUNTIME_BC __xlx_conv_out_V_size_Reader("../tv/stream_size/stream_size_out_conv_out_V.dat");
struct __cosim_s20__ { char data[32]; };
extern "C" void Conv_sysarr_dbbuf(__cosim_s20__*, __cosim_s20__*, __cosim_s20__*, __cosim_s20__*);
extern "C" void apatb_Conv_sysarr_dbbuf_hw(volatile void * __xlx_apatb_param_bias_in, volatile void * __xlx_apatb_param_weight_in, volatile void * __xlx_apatb_param_data_in, volatile void * __xlx_apatb_param_conv_out) {
  // collect __xlx_bias_in_tmp_vec
  unsigned __xlx_bias_in_V_tmp_Count = 0;
  unsigned __xlx_bias_in_V_read_Size = __xlx_bias_in_V_size_Reader.read_size();
  vector<__cosim_s20__> __xlx_bias_in_tmp_vec;
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_bias_in)->empty() && __xlx_bias_in_V_tmp_Count < __xlx_bias_in_V_read_Size) {
    __xlx_bias_in_tmp_vec.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_bias_in)->read());
    __xlx_bias_in_V_tmp_Count++;
  }
  ap_apatb_bias_in_V_cap_bc = __xlx_bias_in_tmp_vec.size();
  // store input buffer
  __cosim_s20__* __xlx_bias_in_input_buffer= new __cosim_s20__[__xlx_bias_in_tmp_vec.size()];
  for (int i = 0; i < __xlx_bias_in_tmp_vec.size(); ++i) {
    __xlx_bias_in_input_buffer[i] = __xlx_bias_in_tmp_vec[i];
  }
  // collect __xlx_weight_in_tmp_vec
  unsigned __xlx_weight_in_V_tmp_Count = 0;
  unsigned __xlx_weight_in_V_read_Size = __xlx_weight_in_V_size_Reader.read_size();
  vector<__cosim_s20__> __xlx_weight_in_tmp_vec;
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_weight_in)->empty() && __xlx_weight_in_V_tmp_Count < __xlx_weight_in_V_read_Size) {
    __xlx_weight_in_tmp_vec.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_weight_in)->read());
    __xlx_weight_in_V_tmp_Count++;
  }
  ap_apatb_weight_in_V_cap_bc = __xlx_weight_in_tmp_vec.size();
  // store input buffer
  __cosim_s20__* __xlx_weight_in_input_buffer= new __cosim_s20__[__xlx_weight_in_tmp_vec.size()];
  for (int i = 0; i < __xlx_weight_in_tmp_vec.size(); ++i) {
    __xlx_weight_in_input_buffer[i] = __xlx_weight_in_tmp_vec[i];
  }
  // collect __xlx_data_in_tmp_vec
  unsigned __xlx_data_in_V_tmp_Count = 0;
  unsigned __xlx_data_in_V_read_Size = __xlx_data_in_V_size_Reader.read_size();
  vector<__cosim_s20__> __xlx_data_in_tmp_vec;
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_data_in)->empty() && __xlx_data_in_V_tmp_Count < __xlx_data_in_V_read_Size) {
    __xlx_data_in_tmp_vec.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_data_in)->read());
    __xlx_data_in_V_tmp_Count++;
  }
  ap_apatb_data_in_V_cap_bc = __xlx_data_in_tmp_vec.size();
  // store input buffer
  __cosim_s20__* __xlx_data_in_input_buffer= new __cosim_s20__[__xlx_data_in_tmp_vec.size()];
  for (int i = 0; i < __xlx_data_in_tmp_vec.size(); ++i) {
    __xlx_data_in_input_buffer[i] = __xlx_data_in_tmp_vec[i];
  }
  //Create input buffer for conv_out
  ap_apatb_conv_out_V_cap_bc = __xlx_conv_out_V_size_Reader.read_size();
  __cosim_s20__* __xlx_conv_out_input_buffer= new __cosim_s20__[ap_apatb_conv_out_V_cap_bc];
  // DUT call
  Conv_sysarr_dbbuf(__xlx_bias_in_input_buffer, __xlx_weight_in_input_buffer, __xlx_data_in_input_buffer, __xlx_conv_out_input_buffer);
  for (unsigned i = 0; i <ap_apatb_conv_out_V_cap_bc; ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_conv_out)->write(__xlx_conv_out_input_buffer[i]);
}

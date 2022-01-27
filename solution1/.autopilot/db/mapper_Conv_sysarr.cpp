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
struct __cosim_s94__ { char data[148]; };
extern "C" void Conv_sysarr(char*, char*, char*, int*, __cosim_s94__*, int, int, int, int);
extern "C" void apatb_Conv_sysarr_hw(__cosim_s94__ __xlx_apatb_param_param, volatile void * __xlx_apatb_param_bias_in, volatile void * __xlx_apatb_param_weight_in, volatile void * __xlx_apatb_param_data_in, volatile void * __xlx_apatb_param_conv_out) {
  // Collect __xlx_bias_in__tmp_vec
  vector<sc_bv<8> >__xlx_bias_in__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_bias_in__tmp_vec.push_back(((char*)__xlx_apatb_param_bias_in)[j]);
  }
  int __xlx_size_param_bias_in = 1;
  int __xlx_offset_param_bias_in = 0;
  int __xlx_offset_byte_param_bias_in = 0*1;
  char* __xlx_bias_in__input_buffer= new char[__xlx_bias_in__tmp_vec.size()];
  for (int i = 0; i < __xlx_bias_in__tmp_vec.size(); ++i) {
    __xlx_bias_in__input_buffer[i] = __xlx_bias_in__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_weight_in__tmp_vec
  vector<sc_bv<8> >__xlx_weight_in__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_weight_in__tmp_vec.push_back(((char*)__xlx_apatb_param_weight_in)[j]);
  }
  int __xlx_size_param_weight_in = 1;
  int __xlx_offset_param_weight_in = 0;
  int __xlx_offset_byte_param_weight_in = 0*1;
  char* __xlx_weight_in__input_buffer= new char[__xlx_weight_in__tmp_vec.size()];
  for (int i = 0; i < __xlx_weight_in__tmp_vec.size(); ++i) {
    __xlx_weight_in__input_buffer[i] = __xlx_weight_in__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_data_in__tmp_vec
  vector<sc_bv<8> >__xlx_data_in__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_data_in__tmp_vec.push_back(((char*)__xlx_apatb_param_data_in)[j]);
  }
  int __xlx_size_param_data_in = 1;
  int __xlx_offset_param_data_in = 0;
  int __xlx_offset_byte_param_data_in = 0*1;
  char* __xlx_data_in__input_buffer= new char[__xlx_data_in__tmp_vec.size()];
  for (int i = 0; i < __xlx_data_in__tmp_vec.size(); ++i) {
    __xlx_data_in__input_buffer[i] = __xlx_data_in__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_conv_out__tmp_vec
  vector<sc_bv<32> >__xlx_conv_out__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    __xlx_conv_out__tmp_vec.push_back(((int*)__xlx_apatb_param_conv_out)[j]);
  }
  int __xlx_size_param_conv_out = 1;
  int __xlx_offset_param_conv_out = 0;
  int __xlx_offset_byte_param_conv_out = 0*4;
  int* __xlx_conv_out__input_buffer= new int[__xlx_conv_out__tmp_vec.size()];
  for (int i = 0; i < __xlx_conv_out__tmp_vec.size(); ++i) {
    __xlx_conv_out__input_buffer[i] = __xlx_conv_out__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  Conv_sysarr(__xlx_bias_in__input_buffer, __xlx_weight_in__input_buffer, __xlx_data_in__input_buffer, __xlx_conv_out__input_buffer, &__xlx_apatb_param_param, __xlx_offset_byte_param_bias_in, __xlx_offset_byte_param_weight_in, __xlx_offset_byte_param_data_in, __xlx_offset_byte_param_conv_out);
// print __xlx_apatb_param_bias_in
  sc_bv<8>*__xlx_bias_in_output_buffer = new sc_bv<8>[__xlx_size_param_bias_in];
  for (int i = 0; i < __xlx_size_param_bias_in; ++i) {
    __xlx_bias_in_output_buffer[i] = __xlx_bias_in__input_buffer[i+__xlx_offset_param_bias_in];
  }
  for (int i = 0; i < __xlx_size_param_bias_in; ++i) {
    ((char*)__xlx_apatb_param_bias_in)[i] = __xlx_bias_in_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_weight_in
  sc_bv<8>*__xlx_weight_in_output_buffer = new sc_bv<8>[__xlx_size_param_weight_in];
  for (int i = 0; i < __xlx_size_param_weight_in; ++i) {
    __xlx_weight_in_output_buffer[i] = __xlx_weight_in__input_buffer[i+__xlx_offset_param_weight_in];
  }
  for (int i = 0; i < __xlx_size_param_weight_in; ++i) {
    ((char*)__xlx_apatb_param_weight_in)[i] = __xlx_weight_in_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_data_in
  sc_bv<8>*__xlx_data_in_output_buffer = new sc_bv<8>[__xlx_size_param_data_in];
  for (int i = 0; i < __xlx_size_param_data_in; ++i) {
    __xlx_data_in_output_buffer[i] = __xlx_data_in__input_buffer[i+__xlx_offset_param_data_in];
  }
  for (int i = 0; i < __xlx_size_param_data_in; ++i) {
    ((char*)__xlx_apatb_param_data_in)[i] = __xlx_data_in_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_conv_out
  sc_bv<32>*__xlx_conv_out_output_buffer = new sc_bv<32>[__xlx_size_param_conv_out];
  for (int i = 0; i < __xlx_size_param_conv_out; ++i) {
    __xlx_conv_out_output_buffer[i] = __xlx_conv_out__input_buffer[i+__xlx_offset_param_conv_out];
  }
  for (int i = 0; i < __xlx_size_param_conv_out; ++i) {
    ((int*)__xlx_apatb_param_conv_out)[i] = __xlx_conv_out_output_buffer[i].to_uint64();
  }
}

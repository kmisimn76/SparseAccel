#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_bias_in_V "../tv/cdatafile/c.Conv_sysarr.autotvin_bias_in_V.dat"
#define AUTOTB_TVOUT_bias_in_V "../tv/cdatafile/c.Conv_sysarr.autotvout_bias_in_V.dat"
#define WRAPC_STREAM_SIZE_IN_bias_in_V "../tv/stream_size/stream_size_in_bias_in_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_bias_in_V "../tv/stream_size/stream_ingress_status_bias_in_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_weight_in_V "../tv/cdatafile/c.Conv_sysarr.autotvin_weight_in_V.dat"
#define AUTOTB_TVOUT_weight_in_V "../tv/cdatafile/c.Conv_sysarr.autotvout_weight_in_V.dat"
#define WRAPC_STREAM_SIZE_IN_weight_in_V "../tv/stream_size/stream_size_in_weight_in_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_weight_in_V "../tv/stream_size/stream_ingress_status_weight_in_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_data_in_V "../tv/cdatafile/c.Conv_sysarr.autotvin_data_in_V.dat"
#define AUTOTB_TVOUT_data_in_V "../tv/cdatafile/c.Conv_sysarr.autotvout_data_in_V.dat"
#define WRAPC_STREAM_SIZE_IN_data_in_V "../tv/stream_size/stream_size_in_data_in_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_data_in_V "../tv/stream_size/stream_ingress_status_data_in_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_conv_out_V "../tv/cdatafile/c.Conv_sysarr.autotvin_conv_out_V.dat"
#define AUTOTB_TVOUT_conv_out_V "../tv/cdatafile/c.Conv_sysarr.autotvout_conv_out_V.dat"
#define WRAPC_STREAM_SIZE_OUT_conv_out_V "../tv/stream_size/stream_size_out_conv_out_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_conv_out_V "../tv/stream_size/stream_egress_status_conv_out_V.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_bias_in_V "../tv/rtldatafile/rtl.Conv_sysarr.autotvout_bias_in_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_weight_in_V "../tv/rtldatafile/rtl.Conv_sysarr.autotvout_weight_in_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_data_in_V "../tv/rtldatafile/rtl.Conv_sysarr.autotvout_data_in_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_conv_out_V "../tv/rtldatafile/rtl.Conv_sysarr.autotvout_conv_out_V.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  bias_in_V_depth = 0;
  weight_in_V_depth = 0;
  data_in_V_depth = 0;
  conv_out_V_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{bias_in_V " << bias_in_V_depth << "}\n";
  total_list << "{weight_in_V " << weight_in_V_depth << "}\n";
  total_list << "{data_in_V " << data_in_V_depth << "}\n";
  total_list << "{conv_out_V " << conv_out_V_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
  public:
    int bias_in_V_depth;
    int weight_in_V_depth;
    int data_in_V_depth;
    int conv_out_V_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_s20__ { char data[32]; };
extern "C" void Conv_sysarr_hw_stub(volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_Conv_sysarr_hw(volatile void * __xlx_apatb_param_bias_in, volatile void * __xlx_apatb_param_weight_in, volatile void * __xlx_apatb_param_data_in, volatile void * __xlx_apatb_param_conv_out) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_bias_in_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_bias_in_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_bias_in_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_bias_in_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s20__>*)__xlx_apatb_param_bias_in)->read();
long __xlx_apatb_param_weight_in_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_weight_in_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_weight_in_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_weight_in_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s20__>*)__xlx_apatb_param_weight_in)->read();
long __xlx_apatb_param_data_in_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_data_in_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_data_in_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_data_in_V_stream_buf_final_size; ++i)((hls::stream<__cosim_s20__>*)__xlx_apatb_param_data_in)->read();
long __xlx_apatb_param_conv_out_V_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_conv_out_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_conv_out_V_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_conv_out_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<256> > conv_out_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "conv_out_V");
  
            // push token into output port buffer
            if (AESL_token != "") {
              conv_out_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s20__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*4+0] = conv_out_V_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*4+1] = conv_out_V_pc_buffer[j].range(127,64).to_int64();
((long long*)&xlx_stream_elt)[0*4+2] = conv_out_V_pc_buffer[j].range(191,128).to_int64();
((long long*)&xlx_stream_elt)[0*4+3] = conv_out_V_pc_buffer[j].range(255,192).to_int64();
((hls::stream<__cosim_s20__>*)__xlx_apatb_param_conv_out)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//bias_in_V
aesl_fh.touch(AUTOTB_TVIN_bias_in_V);
aesl_fh.touch(AUTOTB_TVOUT_bias_in_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_bias_in_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_bias_in_V);
//weight_in_V
aesl_fh.touch(AUTOTB_TVIN_weight_in_V);
aesl_fh.touch(AUTOTB_TVOUT_weight_in_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_weight_in_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_weight_in_V);
//data_in_V
aesl_fh.touch(AUTOTB_TVIN_data_in_V);
aesl_fh.touch(AUTOTB_TVOUT_data_in_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_data_in_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_data_in_V);
//conv_out_V
aesl_fh.touch(AUTOTB_TVIN_conv_out_V);
aesl_fh.touch(AUTOTB_TVOUT_conv_out_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_conv_out_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_conv_out_V);
CodeState = DUMP_INPUTS;
std::vector<__cosim_s20__> __xlx_apatb_param_bias_in_stream_buf;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_bias_in)->empty())
    __xlx_apatb_param_bias_in_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_bias_in)->read());
  for (int i = 0; i < __xlx_apatb_param_bias_in_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_bias_in)->write(__xlx_apatb_param_bias_in_stream_buf[i]);
  }
long __xlx_apatb_param_bias_in_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_bias_in)->size();
std::vector<__cosim_s20__> __xlx_apatb_param_weight_in_stream_buf;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_weight_in)->empty())
    __xlx_apatb_param_weight_in_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_weight_in)->read());
  for (int i = 0; i < __xlx_apatb_param_weight_in_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_weight_in)->write(__xlx_apatb_param_weight_in_stream_buf[i]);
  }
long __xlx_apatb_param_weight_in_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_weight_in)->size();
std::vector<__cosim_s20__> __xlx_apatb_param_data_in_stream_buf;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_data_in)->empty())
    __xlx_apatb_param_data_in_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_data_in)->read());
  for (int i = 0; i < __xlx_apatb_param_data_in_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_data_in)->write(__xlx_apatb_param_data_in_stream_buf[i]);
  }
long __xlx_apatb_param_data_in_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_data_in)->size();
std::vector<__cosim_s20__> __xlx_apatb_param_conv_out_stream_buf;
long __xlx_apatb_param_conv_out_stream_buf_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_conv_out)->size();
CodeState = CALL_C_DUT;
Conv_sysarr_hw_stub(__xlx_apatb_param_bias_in, __xlx_apatb_param_weight_in, __xlx_apatb_param_data_in, __xlx_apatb_param_conv_out);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_bias_in_stream_buf_final_size = __xlx_apatb_param_bias_in_stream_buf_size - ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_bias_in)->size();
// print bias_in_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_bias_in_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_bias_in_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_bias_in_stream_buf[j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_bias_in_stream_buf[j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_bias_in_stream_buf[j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_bias_in_stream_buf[j])[0*4+3];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_bias_in_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_bias_in_stream_buf_final_size, &tcl_file.bias_in_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_bias_in_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_bias_in_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_bias_in_stream_buf_final_size > 0) {
  long bias_in_V_stream_ingress_size = __xlx_apatb_param_bias_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", bias_in_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_bias_in_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_bias_in_stream_buf_final_size; j != e; j++) {
    bias_in_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", bias_in_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_bias_in_V, __xlx_sprintf_buffer.data());
  }
} else {
  long bias_in_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", bias_in_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_bias_in_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_bias_in_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_bias_in_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_bias_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_bias_in_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_bias_in_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_weight_in_stream_buf_final_size = __xlx_apatb_param_weight_in_stream_buf_size - ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_weight_in)->size();
// print weight_in_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_weight_in_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_weight_in_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_weight_in_stream_buf[j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_weight_in_stream_buf[j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_weight_in_stream_buf[j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_weight_in_stream_buf[j])[0*4+3];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_weight_in_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_weight_in_stream_buf_final_size, &tcl_file.weight_in_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_weight_in_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_weight_in_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_weight_in_stream_buf_final_size > 0) {
  long weight_in_V_stream_ingress_size = __xlx_apatb_param_weight_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", weight_in_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_weight_in_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_weight_in_stream_buf_final_size; j != e; j++) {
    weight_in_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", weight_in_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_weight_in_V, __xlx_sprintf_buffer.data());
  }
} else {
  long weight_in_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", weight_in_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_weight_in_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_weight_in_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_weight_in_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_weight_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_weight_in_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_weight_in_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_data_in_stream_buf_final_size = __xlx_apatb_param_data_in_stream_buf_size - ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_data_in)->size();
// print data_in_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_data_in_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_data_in_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_data_in_stream_buf[j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_data_in_stream_buf[j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_data_in_stream_buf[j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_data_in_stream_buf[j])[0*4+3];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_data_in_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_data_in_stream_buf_final_size, &tcl_file.data_in_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_data_in_V, __xlx_sprintf_buffer.data());
}

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_data_in_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_data_in_stream_buf_final_size > 0) {
  long data_in_V_stream_ingress_size = __xlx_apatb_param_data_in_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", data_in_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_data_in_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_data_in_stream_buf_final_size; j != e; j++) {
    data_in_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", data_in_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_data_in_V, __xlx_sprintf_buffer.data());
  }
} else {
  long data_in_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", data_in_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_data_in_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_data_in_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_data_in_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_data_in_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_data_in_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_data_in_V, __xlx_sprintf_buffer.data());
}long __xlx_apatb_param_conv_out_stream_buf_final_size = ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_conv_out)->size() - __xlx_apatb_param_conv_out_stream_buf_size;
{
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_conv_out)->empty())
    __xlx_apatb_param_conv_out_stream_buf.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_conv_out)->read());
  for (int i = 0; i < __xlx_apatb_param_conv_out_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_conv_out)->write(__xlx_apatb_param_conv_out_stream_buf[i]);
  }
// print conv_out_V Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_conv_out_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_conv_out_stream_buf_final_size; j != e; ++j) {
sc_bv<256> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_conv_out_stream_buf[__xlx_apatb_param_conv_out_stream_buf_size+j])[0*4+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_conv_out_stream_buf[__xlx_apatb_param_conv_out_stream_buf_size+j])[0*4+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_conv_out_stream_buf[__xlx_apatb_param_conv_out_stream_buf_size+j])[0*4+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_conv_out_stream_buf[__xlx_apatb_param_conv_out_stream_buf_size+j])[0*4+3];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_conv_out_V, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_conv_out_stream_buf_final_size, &tcl_file.conv_out_V_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_conv_out_V, __xlx_sprintf_buffer.data());
}
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_conv_out_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_conv_out_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_conv_out_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_conv_out_V, __xlx_sprintf_buffer.data());
}CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}

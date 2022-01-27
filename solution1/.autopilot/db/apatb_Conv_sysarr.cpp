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
#define AUTOTB_TVIN_gmem0 "../tv/cdatafile/c.Conv_sysarr.autotvin_gmem0.dat"
#define AUTOTB_TVOUT_gmem0 "../tv/cdatafile/c.Conv_sysarr.autotvout_gmem0.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem1 "../tv/cdatafile/c.Conv_sysarr.autotvin_gmem1.dat"
#define AUTOTB_TVOUT_gmem1 "../tv/cdatafile/c.Conv_sysarr.autotvout_gmem1.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem2 "../tv/cdatafile/c.Conv_sysarr.autotvin_gmem2.dat"
#define AUTOTB_TVOUT_gmem2 "../tv/cdatafile/c.Conv_sysarr.autotvout_gmem2.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem3 "../tv/cdatafile/c.Conv_sysarr.autotvin_gmem3.dat"
#define AUTOTB_TVOUT_gmem3 "../tv/cdatafile/c.Conv_sysarr.autotvout_gmem3.dat"
// wrapc file define:
#define AUTOTB_TVIN_param "../tv/cdatafile/c.Conv_sysarr.autotvin_param.dat"
#define AUTOTB_TVOUT_param "../tv/cdatafile/c.Conv_sysarr.autotvout_param.dat"
// wrapc file define:
#define AUTOTB_TVIN_bias_in "../tv/cdatafile/c.Conv_sysarr.autotvin_bias_in.dat"
#define AUTOTB_TVOUT_bias_in "../tv/cdatafile/c.Conv_sysarr.autotvout_bias_in.dat"
// wrapc file define:
#define AUTOTB_TVIN_weight_in "../tv/cdatafile/c.Conv_sysarr.autotvin_weight_in.dat"
#define AUTOTB_TVOUT_weight_in "../tv/cdatafile/c.Conv_sysarr.autotvout_weight_in.dat"
// wrapc file define:
#define AUTOTB_TVIN_data_in "../tv/cdatafile/c.Conv_sysarr.autotvin_data_in.dat"
#define AUTOTB_TVOUT_data_in "../tv/cdatafile/c.Conv_sysarr.autotvout_data_in.dat"
// wrapc file define:
#define AUTOTB_TVIN_conv_out "../tv/cdatafile/c.Conv_sysarr.autotvin_conv_out.dat"
#define AUTOTB_TVOUT_conv_out "../tv/cdatafile/c.Conv_sysarr.autotvout_conv_out.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem0 "../tv/rtldatafile/rtl.Conv_sysarr.autotvout_gmem0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem1 "../tv/rtldatafile/rtl.Conv_sysarr.autotvout_gmem1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem2 "../tv/rtldatafile/rtl.Conv_sysarr.autotvout_gmem2.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem3 "../tv/rtldatafile/rtl.Conv_sysarr.autotvout_gmem3.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_param "../tv/rtldatafile/rtl.Conv_sysarr.autotvout_param.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_bias_in "../tv/rtldatafile/rtl.Conv_sysarr.autotvout_bias_in.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_weight_in "../tv/rtldatafile/rtl.Conv_sysarr.autotvout_weight_in.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_data_in "../tv/rtldatafile/rtl.Conv_sysarr.autotvout_data_in.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_conv_out "../tv/rtldatafile/rtl.Conv_sysarr.autotvout_conv_out.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem0_depth = 0;
  gmem1_depth = 0;
  gmem2_depth = 0;
  gmem3_depth = 0;
  param_depth = 0;
  bias_in_depth = 0;
  weight_in_depth = 0;
  data_in_depth = 0;
  conv_out_depth = 0;
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
  total_list << "{gmem0 " << gmem0_depth << "}\n";
  total_list << "{gmem1 " << gmem1_depth << "}\n";
  total_list << "{gmem2 " << gmem2_depth << "}\n";
  total_list << "{gmem3 " << gmem3_depth << "}\n";
  total_list << "{param " << param_depth << "}\n";
  total_list << "{bias_in " << bias_in_depth << "}\n";
  total_list << "{weight_in " << weight_in_depth << "}\n";
  total_list << "{data_in " << data_in_depth << "}\n";
  total_list << "{conv_out " << conv_out_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
  public:
    int gmem0_depth;
    int gmem1_depth;
    int gmem2_depth;
    int gmem3_depth;
    int param_depth;
    int bias_in_depth;
    int weight_in_depth;
    int data_in_depth;
    int conv_out_depth;
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
struct __cosim_s94__ { char data[148]; };
extern "C" void Conv_sysarr_hw_stub(__cosim_s94__, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_Conv_sysarr_hw(__cosim_s94__ __xlx_apatb_param_param, volatile void * __xlx_apatb_param_bias_in, volatile void * __xlx_apatb_param_weight_in, volatile void * __xlx_apatb_param_data_in, volatile void * __xlx_apatb_param_conv_out) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem3);
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
          std::vector<sc_bv<32> > gmem3_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "gmem3");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 1; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_conv_out)[j] = gmem3_pc_buffer[i].to_int64();
          }}}
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
//gmem0
aesl_fh.touch(AUTOTB_TVIN_gmem0);
aesl_fh.touch(AUTOTB_TVOUT_gmem0);
//gmem1
aesl_fh.touch(AUTOTB_TVIN_gmem1);
aesl_fh.touch(AUTOTB_TVOUT_gmem1);
//gmem2
aesl_fh.touch(AUTOTB_TVIN_gmem2);
aesl_fh.touch(AUTOTB_TVOUT_gmem2);
//gmem3
aesl_fh.touch(AUTOTB_TVIN_gmem3);
aesl_fh.touch(AUTOTB_TVOUT_gmem3);
//param
aesl_fh.touch(AUTOTB_TVIN_param);
aesl_fh.touch(AUTOTB_TVOUT_param);
//bias_in
aesl_fh.touch(AUTOTB_TVIN_bias_in);
aesl_fh.touch(AUTOTB_TVOUT_bias_in);
//weight_in
aesl_fh.touch(AUTOTB_TVIN_weight_in);
aesl_fh.touch(AUTOTB_TVOUT_weight_in);
//data_in
aesl_fh.touch(AUTOTB_TVIN_data_in);
aesl_fh.touch(AUTOTB_TVOUT_data_in);
//conv_out
aesl_fh.touch(AUTOTB_TVIN_conv_out);
aesl_fh.touch(AUTOTB_TVOUT_conv_out);
CodeState = DUMP_INPUTS;
// print gmem0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem0, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_bias_in) {
    for (int j = 0, e = 1; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_bias_in)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem0, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.gmem0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem0, __xlx_sprintf_buffer.data());
}
// print gmem1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_weight_in) {
    for (int j = 0, e = 1; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_weight_in)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.gmem1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data());
}
// print gmem2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem2, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_data_in) {
    for (int j = 0, e = 1; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_data_in)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem2, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.gmem2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem2, __xlx_sprintf_buffer.data());
}
// print gmem3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem3, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_conv_out) {
    for (int j = 0, e = 1; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_conv_out)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem3, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.gmem3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem3, __xlx_sprintf_buffer.data());
}
// print param Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_param, __xlx_sprintf_buffer.data());
  {
    sc_bv<1184> __xlx_tmp_lv;__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_param)[0*18+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_param)[0*18+1];
__xlx_tmp_lv.range(191,128) = ((long long*)&__xlx_apatb_param_param)[0*18+2];
__xlx_tmp_lv.range(255,192) = ((long long*)&__xlx_apatb_param_param)[0*18+3];
__xlx_tmp_lv.range(319,256) = ((long long*)&__xlx_apatb_param_param)[0*18+4];
__xlx_tmp_lv.range(383,320) = ((long long*)&__xlx_apatb_param_param)[0*18+5];
__xlx_tmp_lv.range(447,384) = ((long long*)&__xlx_apatb_param_param)[0*18+6];
__xlx_tmp_lv.range(511,448) = ((long long*)&__xlx_apatb_param_param)[0*18+7];
__xlx_tmp_lv.range(575,512) = ((long long*)&__xlx_apatb_param_param)[0*18+8];
__xlx_tmp_lv.range(639,576) = ((long long*)&__xlx_apatb_param_param)[0*18+9];
__xlx_tmp_lv.range(703,640) = ((long long*)&__xlx_apatb_param_param)[0*18+10];
__xlx_tmp_lv.range(767,704) = ((long long*)&__xlx_apatb_param_param)[0*18+11];
__xlx_tmp_lv.range(831,768) = ((long long*)&__xlx_apatb_param_param)[0*18+12];
__xlx_tmp_lv.range(895,832) = ((long long*)&__xlx_apatb_param_param)[0*18+13];
__xlx_tmp_lv.range(959,896) = ((long long*)&__xlx_apatb_param_param)[0*18+14];
__xlx_tmp_lv.range(1023,960) = ((long long*)&__xlx_apatb_param_param)[0*18+15];
__xlx_tmp_lv.range(1087,1024) = ((long long*)&__xlx_apatb_param_param)[0*18+16];
__xlx_tmp_lv.range(1151,1088) = ((long long*)&__xlx_apatb_param_param)[0*18+17];
__xlx_tmp_lv.range(1183,1152) = ((long long*)&__xlx_apatb_param_param)[0*18+18];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_param, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.param_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_param, __xlx_sprintf_buffer.data());
}
// print bias_in Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_bias_in, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_bias_in, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.bias_in_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_bias_in, __xlx_sprintf_buffer.data());
}
// print weight_in Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_weight_in, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_weight_in, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.weight_in_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_weight_in, __xlx_sprintf_buffer.data());
}
// print data_in Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_data_in, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_data_in, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.data_in_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_data_in, __xlx_sprintf_buffer.data());
}
// print conv_out Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_conv_out, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv;
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_conv_out, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.conv_out_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_conv_out, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
Conv_sysarr_hw_stub(__xlx_apatb_param_param, __xlx_apatb_param_bias_in, __xlx_apatb_param_weight_in, __xlx_apatb_param_data_in, __xlx_apatb_param_conv_out);
CodeState = DUMP_OUTPUTS;
// print gmem3 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_gmem3, __xlx_sprintf_buffer.data());
  {  if (__xlx_apatb_param_conv_out) {
    for (int j = 0, e = 1; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_conv_out)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_gmem3, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(1, &tcl_file.gmem3_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_gmem3, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}

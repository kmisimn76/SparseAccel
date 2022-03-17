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
#define AUTOTB_TVIN_a_0 "../tv/cdatafile/c.adder_tree_large.autotvin_a_0.dat"
#define AUTOTB_TVOUT_a_0 "../tv/cdatafile/c.adder_tree_large.autotvout_a_0.dat"
#define AUTOTB_TVIN_a_1 "../tv/cdatafile/c.adder_tree_large.autotvin_a_1.dat"
#define AUTOTB_TVOUT_a_1 "../tv/cdatafile/c.adder_tree_large.autotvout_a_1.dat"
#define AUTOTB_TVIN_a_2 "../tv/cdatafile/c.adder_tree_large.autotvin_a_2.dat"
#define AUTOTB_TVOUT_a_2 "../tv/cdatafile/c.adder_tree_large.autotvout_a_2.dat"
#define AUTOTB_TVIN_a_3 "../tv/cdatafile/c.adder_tree_large.autotvin_a_3.dat"
#define AUTOTB_TVOUT_a_3 "../tv/cdatafile/c.adder_tree_large.autotvout_a_3.dat"
#define AUTOTB_TVIN_a_4 "../tv/cdatafile/c.adder_tree_large.autotvin_a_4.dat"
#define AUTOTB_TVOUT_a_4 "../tv/cdatafile/c.adder_tree_large.autotvout_a_4.dat"
#define AUTOTB_TVIN_a_5 "../tv/cdatafile/c.adder_tree_large.autotvin_a_5.dat"
#define AUTOTB_TVOUT_a_5 "../tv/cdatafile/c.adder_tree_large.autotvout_a_5.dat"
#define AUTOTB_TVIN_a_6 "../tv/cdatafile/c.adder_tree_large.autotvin_a_6.dat"
#define AUTOTB_TVOUT_a_6 "../tv/cdatafile/c.adder_tree_large.autotvout_a_6.dat"
#define AUTOTB_TVIN_a_7 "../tv/cdatafile/c.adder_tree_large.autotvin_a_7.dat"
#define AUTOTB_TVOUT_a_7 "../tv/cdatafile/c.adder_tree_large.autotvout_a_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_b_0 "../tv/cdatafile/c.adder_tree_large.autotvin_b_0.dat"
#define AUTOTB_TVOUT_b_0 "../tv/cdatafile/c.adder_tree_large.autotvout_b_0.dat"
#define AUTOTB_TVIN_b_1 "../tv/cdatafile/c.adder_tree_large.autotvin_b_1.dat"
#define AUTOTB_TVOUT_b_1 "../tv/cdatafile/c.adder_tree_large.autotvout_b_1.dat"
#define AUTOTB_TVIN_b_2 "../tv/cdatafile/c.adder_tree_large.autotvin_b_2.dat"
#define AUTOTB_TVOUT_b_2 "../tv/cdatafile/c.adder_tree_large.autotvout_b_2.dat"
#define AUTOTB_TVIN_b_3 "../tv/cdatafile/c.adder_tree_large.autotvin_b_3.dat"
#define AUTOTB_TVOUT_b_3 "../tv/cdatafile/c.adder_tree_large.autotvout_b_3.dat"
#define AUTOTB_TVIN_b_4 "../tv/cdatafile/c.adder_tree_large.autotvin_b_4.dat"
#define AUTOTB_TVOUT_b_4 "../tv/cdatafile/c.adder_tree_large.autotvout_b_4.dat"
#define AUTOTB_TVIN_b_5 "../tv/cdatafile/c.adder_tree_large.autotvin_b_5.dat"
#define AUTOTB_TVOUT_b_5 "../tv/cdatafile/c.adder_tree_large.autotvout_b_5.dat"
#define AUTOTB_TVIN_b_6 "../tv/cdatafile/c.adder_tree_large.autotvin_b_6.dat"
#define AUTOTB_TVOUT_b_6 "../tv/cdatafile/c.adder_tree_large.autotvout_b_6.dat"
#define AUTOTB_TVIN_b_7 "../tv/cdatafile/c.adder_tree_large.autotvin_b_7.dat"
#define AUTOTB_TVOUT_b_7 "../tv/cdatafile/c.adder_tree_large.autotvout_b_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_c_0 "../tv/cdatafile/c.adder_tree_large.autotvin_c_0.dat"
#define AUTOTB_TVOUT_c_0 "../tv/cdatafile/c.adder_tree_large.autotvout_c_0.dat"
#define AUTOTB_TVIN_c_1 "../tv/cdatafile/c.adder_tree_large.autotvin_c_1.dat"
#define AUTOTB_TVOUT_c_1 "../tv/cdatafile/c.adder_tree_large.autotvout_c_1.dat"
#define AUTOTB_TVIN_c_2 "../tv/cdatafile/c.adder_tree_large.autotvin_c_2.dat"
#define AUTOTB_TVOUT_c_2 "../tv/cdatafile/c.adder_tree_large.autotvout_c_2.dat"
#define AUTOTB_TVIN_c_3 "../tv/cdatafile/c.adder_tree_large.autotvin_c_3.dat"
#define AUTOTB_TVOUT_c_3 "../tv/cdatafile/c.adder_tree_large.autotvout_c_3.dat"
#define AUTOTB_TVIN_c_4 "../tv/cdatafile/c.adder_tree_large.autotvin_c_4.dat"
#define AUTOTB_TVOUT_c_4 "../tv/cdatafile/c.adder_tree_large.autotvout_c_4.dat"
#define AUTOTB_TVIN_c_5 "../tv/cdatafile/c.adder_tree_large.autotvin_c_5.dat"
#define AUTOTB_TVOUT_c_5 "../tv/cdatafile/c.adder_tree_large.autotvout_c_5.dat"
#define AUTOTB_TVIN_c_6 "../tv/cdatafile/c.adder_tree_large.autotvin_c_6.dat"
#define AUTOTB_TVOUT_c_6 "../tv/cdatafile/c.adder_tree_large.autotvout_c_6.dat"
#define AUTOTB_TVIN_c_7 "../tv/cdatafile/c.adder_tree_large.autotvin_c_7.dat"
#define AUTOTB_TVOUT_c_7 "../tv/cdatafile/c.adder_tree_large.autotvout_c_7.dat"
// wrapc file define:
#define AUTOTB_TVIN_n "../tv/cdatafile/c.adder_tree_large.autotvin_n.dat"
#define AUTOTB_TVOUT_n "../tv/cdatafile/c.adder_tree_large.autotvout_n.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_a_0 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_a_0.dat"
#define AUTOTB_TVOUT_PC_a_1 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_a_1.dat"
#define AUTOTB_TVOUT_PC_a_2 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_a_2.dat"
#define AUTOTB_TVOUT_PC_a_3 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_a_3.dat"
#define AUTOTB_TVOUT_PC_a_4 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_a_4.dat"
#define AUTOTB_TVOUT_PC_a_5 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_a_5.dat"
#define AUTOTB_TVOUT_PC_a_6 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_a_6.dat"
#define AUTOTB_TVOUT_PC_a_7 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_a_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_b_0 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_b_0.dat"
#define AUTOTB_TVOUT_PC_b_1 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_b_1.dat"
#define AUTOTB_TVOUT_PC_b_2 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_b_2.dat"
#define AUTOTB_TVOUT_PC_b_3 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_b_3.dat"
#define AUTOTB_TVOUT_PC_b_4 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_b_4.dat"
#define AUTOTB_TVOUT_PC_b_5 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_b_5.dat"
#define AUTOTB_TVOUT_PC_b_6 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_b_6.dat"
#define AUTOTB_TVOUT_PC_b_7 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_b_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_c_0 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_c_0.dat"
#define AUTOTB_TVOUT_PC_c_1 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_c_1.dat"
#define AUTOTB_TVOUT_PC_c_2 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_c_2.dat"
#define AUTOTB_TVOUT_PC_c_3 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_c_3.dat"
#define AUTOTB_TVOUT_PC_c_4 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_c_4.dat"
#define AUTOTB_TVOUT_PC_c_5 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_c_5.dat"
#define AUTOTB_TVOUT_PC_c_6 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_c_6.dat"
#define AUTOTB_TVOUT_PC_c_7 "../tv/rtldatafile/rtl.adder_tree_large.autotvout_c_7.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_n "../tv/rtldatafile/rtl.adder_tree_large.autotvout_n.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  a_0_depth = 0;
  a_1_depth = 0;
  a_2_depth = 0;
  a_3_depth = 0;
  a_4_depth = 0;
  a_5_depth = 0;
  a_6_depth = 0;
  a_7_depth = 0;
  b_0_depth = 0;
  b_1_depth = 0;
  b_2_depth = 0;
  b_3_depth = 0;
  b_4_depth = 0;
  b_5_depth = 0;
  b_6_depth = 0;
  b_7_depth = 0;
  c_0_depth = 0;
  c_1_depth = 0;
  c_2_depth = 0;
  c_3_depth = 0;
  c_4_depth = 0;
  c_5_depth = 0;
  c_6_depth = 0;
  c_7_depth = 0;
  n_depth = 0;
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
  total_list << "{a_0 " << a_0_depth << "}\n";
  total_list << "{a_1 " << a_1_depth << "}\n";
  total_list << "{a_2 " << a_2_depth << "}\n";
  total_list << "{a_3 " << a_3_depth << "}\n";
  total_list << "{a_4 " << a_4_depth << "}\n";
  total_list << "{a_5 " << a_5_depth << "}\n";
  total_list << "{a_6 " << a_6_depth << "}\n";
  total_list << "{a_7 " << a_7_depth << "}\n";
  total_list << "{b_0 " << b_0_depth << "}\n";
  total_list << "{b_1 " << b_1_depth << "}\n";
  total_list << "{b_2 " << b_2_depth << "}\n";
  total_list << "{b_3 " << b_3_depth << "}\n";
  total_list << "{b_4 " << b_4_depth << "}\n";
  total_list << "{b_5 " << b_5_depth << "}\n";
  total_list << "{b_6 " << b_6_depth << "}\n";
  total_list << "{b_7 " << b_7_depth << "}\n";
  total_list << "{c_0 " << c_0_depth << "}\n";
  total_list << "{c_1 " << c_1_depth << "}\n";
  total_list << "{c_2 " << c_2_depth << "}\n";
  total_list << "{c_3 " << c_3_depth << "}\n";
  total_list << "{c_4 " << c_4_depth << "}\n";
  total_list << "{c_5 " << c_5_depth << "}\n";
  total_list << "{c_6 " << c_6_depth << "}\n";
  total_list << "{c_7 " << c_7_depth << "}\n";
  total_list << "{n " << n_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
  public:
    int a_0_depth;
    int a_1_depth;
    int a_2_depth;
    int a_3_depth;
    int a_4_depth;
    int a_5_depth;
    int a_6_depth;
    int a_7_depth;
    int b_0_depth;
    int b_1_depth;
    int b_2_depth;
    int b_3_depth;
    int b_4_depth;
    int b_5_depth;
    int b_6_depth;
    int b_7_depth;
    int c_0_depth;
    int c_1_depth;
    int c_2_depth;
    int c_3_depth;
    int c_4_depth;
    int c_5_depth;
    int c_6_depth;
    int c_7_depth;
    int n_depth;
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
extern "C" void adder_tree_large_hw_stub(volatile void *, volatile void *, volatile void *, int);

extern "C" void apatb_adder_tree_large_hw(volatile void * __xlx_apatb_param_a, volatile void * __xlx_apatb_param_b, volatile void * __xlx_apatb_param_c, int __xlx_apatb_param_n) {
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
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_c_0);
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
          std::vector<sc_bv<32> > c_0_pc_buffer(512);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "c");
  
            // push token into output port buffer
            if (AESL_token != "") {
              c_0_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 64; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_c)[j] = c_0_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_c_1);
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
          std::vector<sc_bv<32> > c_1_pc_buffer(512);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "c");
  
            // push token into output port buffer
            if (AESL_token != "") {
              c_1_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 64, e = 128; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_c)[j] = c_1_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_c_2);
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
          std::vector<sc_bv<32> > c_2_pc_buffer(512);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "c");
  
            // push token into output port buffer
            if (AESL_token != "") {
              c_2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 128, e = 192; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_c)[j] = c_2_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_c_3);
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
          std::vector<sc_bv<32> > c_3_pc_buffer(512);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "c");
  
            // push token into output port buffer
            if (AESL_token != "") {
              c_3_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 192, e = 256; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_c)[j] = c_3_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_c_4);
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
          std::vector<sc_bv<32> > c_4_pc_buffer(512);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "c");
  
            // push token into output port buffer
            if (AESL_token != "") {
              c_4_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 256, e = 320; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_c)[j] = c_4_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_c_5);
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
          std::vector<sc_bv<32> > c_5_pc_buffer(512);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "c");
  
            // push token into output port buffer
            if (AESL_token != "") {
              c_5_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 320, e = 384; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_c)[j] = c_5_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_c_6);
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
          std::vector<sc_bv<32> > c_6_pc_buffer(512);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "c");
  
            // push token into output port buffer
            if (AESL_token != "") {
              c_6_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 384, e = 448; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_c)[j] = c_6_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_c_7);
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
          std::vector<sc_bv<32> > c_7_pc_buffer(512);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "c");
  
            // push token into output port buffer
            if (AESL_token != "") {
              c_7_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 448, e = 512; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_c)[j] = c_7_pc_buffer[i].to_int64();
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
//a
aesl_fh.touch(AUTOTB_TVIN_a_0);
aesl_fh.touch(AUTOTB_TVOUT_a_0);
aesl_fh.touch(AUTOTB_TVIN_a_1);
aesl_fh.touch(AUTOTB_TVOUT_a_1);
aesl_fh.touch(AUTOTB_TVIN_a_2);
aesl_fh.touch(AUTOTB_TVOUT_a_2);
aesl_fh.touch(AUTOTB_TVIN_a_3);
aesl_fh.touch(AUTOTB_TVOUT_a_3);
aesl_fh.touch(AUTOTB_TVIN_a_4);
aesl_fh.touch(AUTOTB_TVOUT_a_4);
aesl_fh.touch(AUTOTB_TVIN_a_5);
aesl_fh.touch(AUTOTB_TVOUT_a_5);
aesl_fh.touch(AUTOTB_TVIN_a_6);
aesl_fh.touch(AUTOTB_TVOUT_a_6);
aesl_fh.touch(AUTOTB_TVIN_a_7);
aesl_fh.touch(AUTOTB_TVOUT_a_7);
//b
aesl_fh.touch(AUTOTB_TVIN_b_0);
aesl_fh.touch(AUTOTB_TVOUT_b_0);
aesl_fh.touch(AUTOTB_TVIN_b_1);
aesl_fh.touch(AUTOTB_TVOUT_b_1);
aesl_fh.touch(AUTOTB_TVIN_b_2);
aesl_fh.touch(AUTOTB_TVOUT_b_2);
aesl_fh.touch(AUTOTB_TVIN_b_3);
aesl_fh.touch(AUTOTB_TVOUT_b_3);
aesl_fh.touch(AUTOTB_TVIN_b_4);
aesl_fh.touch(AUTOTB_TVOUT_b_4);
aesl_fh.touch(AUTOTB_TVIN_b_5);
aesl_fh.touch(AUTOTB_TVOUT_b_5);
aesl_fh.touch(AUTOTB_TVIN_b_6);
aesl_fh.touch(AUTOTB_TVOUT_b_6);
aesl_fh.touch(AUTOTB_TVIN_b_7);
aesl_fh.touch(AUTOTB_TVOUT_b_7);
//c
aesl_fh.touch(AUTOTB_TVIN_c_0);
aesl_fh.touch(AUTOTB_TVOUT_c_0);
aesl_fh.touch(AUTOTB_TVIN_c_1);
aesl_fh.touch(AUTOTB_TVOUT_c_1);
aesl_fh.touch(AUTOTB_TVIN_c_2);
aesl_fh.touch(AUTOTB_TVOUT_c_2);
aesl_fh.touch(AUTOTB_TVIN_c_3);
aesl_fh.touch(AUTOTB_TVOUT_c_3);
aesl_fh.touch(AUTOTB_TVIN_c_4);
aesl_fh.touch(AUTOTB_TVOUT_c_4);
aesl_fh.touch(AUTOTB_TVIN_c_5);
aesl_fh.touch(AUTOTB_TVOUT_c_5);
aesl_fh.touch(AUTOTB_TVIN_c_6);
aesl_fh.touch(AUTOTB_TVOUT_c_6);
aesl_fh.touch(AUTOTB_TVIN_c_7);
aesl_fh.touch(AUTOTB_TVOUT_c_7);
//n
aesl_fh.touch(AUTOTB_TVIN_n);
aesl_fh.touch(AUTOTB_TVOUT_n);
CodeState = DUMP_INPUTS;

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_0, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_a) {
for (int j = 0, e = 64; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_a_0, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.a_0_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_0, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_1, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_a) {
for (int j = 64, e = 128; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_a_1, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.a_1_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_1, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_2, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_a) {
for (int j = 128, e = 192; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_a_2, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.a_2_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_2, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_3, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_a) {
for (int j = 192, e = 256; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_a_3, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.a_3_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_3, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_4, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_a) {
for (int j = 256, e = 320; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_a_4, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.a_4_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_4, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_5, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_a) {
for (int j = 320, e = 384; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_a_5, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.a_5_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_5, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_6, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_a) {
for (int j = 384, e = 448; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_a_6, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.a_6_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_6, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_a_7, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_a) {
for (int j = 448, e = 512; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_a)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_a_7, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.a_7_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_a_7, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_0, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_b) {
for (int j = 0, e = 64; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_b)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_b_0, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.b_0_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_0, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_1, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_b) {
for (int j = 64, e = 128; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_b)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_b_1, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.b_1_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_1, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_2, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_b) {
for (int j = 128, e = 192; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_b)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_b_2, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.b_2_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_2, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_3, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_b) {
for (int j = 192, e = 256; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_b)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_b_3, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.b_3_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_3, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_4, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_b) {
for (int j = 256, e = 320; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_b)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_b_4, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.b_4_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_4, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_5, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_b) {
for (int j = 320, e = 384; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_b)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_b_5, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.b_5_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_5, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_6, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_b) {
for (int j = 384, e = 448; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_b)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_b_6, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.b_6_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_6, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_b_7, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_b) {
for (int j = 448, e = 512; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_b)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_b_7, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.b_7_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_b_7, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_c_0, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 0, e = 64; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_c_0, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_0_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_c_0, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_c_1, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 64, e = 128; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_c_1, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_1_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_c_1, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_c_2, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 128, e = 192; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_c_2, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_2_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_c_2, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_c_3, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 192, e = 256; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_c_3, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_3_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_c_3, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_c_4, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 256, e = 320; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_c_4, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_4_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_c_4, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_c_5, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 320, e = 384; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_c_5, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_5_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_c_5, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_c_6, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 384, e = 448; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_c_6, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_6_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_c_6, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_c_7, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 448, e = 512; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_c_7, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_7_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_c_7, __xlx_sprintf_buffer.data());
// print n Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_n, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_n);
    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_n, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.n_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_n, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
adder_tree_large_hw_stub(__xlx_apatb_param_a, __xlx_apatb_param_b, __xlx_apatb_param_c, __xlx_apatb_param_n);
CodeState = DUMP_OUTPUTS;

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_c_0, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 0, e = 64; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_c_0, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_0_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_c_0, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_c_1, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 64, e = 128; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_c_1, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_1_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_c_1, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_c_2, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 128, e = 192; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_c_2, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_2_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_c_2, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_c_3, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 192, e = 256; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_c_3, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_3_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_c_3, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_c_4, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 256, e = 320; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_c_4, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_4_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_c_4, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_c_5, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 320, e = 384; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_c_5, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_5_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_c_5, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_c_6, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 384, e = 448; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_c_6, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_6_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_c_6, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_c_7, __xlx_sprintf_buffer.data());
  {if (__xlx_apatb_param_c) {
for (int j = 448, e = 512; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_c)[j];
sprintf(__xlx_sprintf_buffer.data(), "%s\n",__xlx_tmp_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_c_7, __xlx_sprintf_buffer.data());
}
}}tcl_file.set_num(64, &tcl_file.c_7_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_c_7, __xlx_sprintf_buffer.data());
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}

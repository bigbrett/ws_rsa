// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "ModExp.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic ModExp::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic ModExp::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> ModExp::ap_ST_st1_fsm_0 = "1";
const sc_lv<5> ModExp::ap_ST_st2_fsm_1 = "10";
const sc_lv<5> ModExp::ap_ST_st3_fsm_2 = "100";
const sc_lv<5> ModExp::ap_ST_st4_fsm_3 = "1000";
const sc_lv<5> ModExp::ap_ST_st5_fsm_4 = "10000";
const sc_lv<32> ModExp::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> ModExp::ap_const_lv1_1 = "1";
const sc_lv<32> ModExp::ap_const_lv32_1 = "1";
const sc_lv<1> ModExp::ap_const_lv1_0 = "0";
const sc_lv<32> ModExp::ap_const_lv32_2 = "10";
const sc_lv<32> ModExp::ap_const_lv32_3 = "11";
const sc_lv<11> ModExp::ap_const_lv11_3FF = "1111111111";
const sc_lv<32> ModExp::ap_const_lv32_4 = "100";
const sc_lv<1024> ModExp::ap_const_lv1024_lc_3 = "1";
const sc_lv<32> ModExp::ap_const_lv32_A = "1010";
const sc_lv<11> ModExp::ap_const_lv11_7FF = "11111111111";

ModExp::ModExp(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_ModExp_montMult_fu_95 = new ModExp_montMult("grp_ModExp_montMult_fu_95");
    grp_ModExp_montMult_fu_95->ap_clk(ap_clk);
    grp_ModExp_montMult_fu_95->ap_rst(ap_rst);
    grp_ModExp_montMult_fu_95->ap_start(grp_ModExp_montMult_fu_95_ap_start);
    grp_ModExp_montMult_fu_95->ap_done(grp_ModExp_montMult_fu_95_ap_done);
    grp_ModExp_montMult_fu_95->ap_idle(grp_ModExp_montMult_fu_95_ap_idle);
    grp_ModExp_montMult_fu_95->ap_ready(grp_ModExp_montMult_fu_95_ap_ready);
    grp_ModExp_montMult_fu_95->X_V(grp_ModExp_montMult_fu_95_X_V);
    grp_ModExp_montMult_fu_95->Y_V(grp_ModExp_montMult_fu_95_Y_V);
    grp_ModExp_montMult_fu_95->M_V(n_V);
    grp_ModExp_montMult_fu_95->ap_return(grp_ModExp_montMult_fu_95_ap_return);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( grp_ModExp_montMult_fu_95_ap_done );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( grp_ModExp_montMult_fu_95_ap_done );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );

    SC_METHOD(thread_ap_sig_108);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_20);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_41);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_68);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_81);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_20 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_41 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_68 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_3);
    sensitive << ( ap_sig_81 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_4);
    sensitive << ( ap_sig_108 );

    SC_METHOD(thread_grp_ModExp_montMult_fu_95_X_V);
    sensitive << ( Mbar_V );
    sensitive << ( reg_134 );
    sensitive << ( tmp_8_reg_195 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );

    SC_METHOD(thread_grp_ModExp_montMult_fu_95_Y_V);
    sensitive << ( reg_134 );
    sensitive << ( tmp_8_reg_195 );
    sensitive << ( call_ret_reg_199 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );

    SC_METHOD(thread_grp_ModExp_montMult_fu_95_ap_start);
    sensitive << ( ap_reg_grp_ModExp_montMult_fu_95_ap_start );

    SC_METHOD(thread_i_fu_164_p2);
    sensitive << ( bvh_d_index_reg_83 );

    SC_METHOD(thread_index_assign_cast_fu_145_p1);
    sensitive << ( bvh_d_index_reg_83 );

    SC_METHOD(thread_out_V);
    sensitive << ( grp_ModExp_montMult_fu_95_ap_return );
    sensitive << ( grp_ModExp_montMult_fu_95_ap_done );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );

    SC_METHOD(thread_out_V_ap_vld);
    sensitive << ( grp_ModExp_montMult_fu_95_ap_done );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );

    SC_METHOD(thread_tmp_8_fu_157_p3);
    sensitive << ( e_V );
    sensitive << ( index_assign_cast_fu_145_p1 );

    SC_METHOD(thread_tmp_fu_149_p3);
    sensitive << ( bvh_d_index_reg_83 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_fu_149_p3 );
    sensitive << ( tmp_8_reg_195 );
    sensitive << ( grp_ModExp_montMult_fu_95_ap_done );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "00001";
    ap_reg_grp_ModExp_montMult_fu_95_ap_start = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "ModExp_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, M_V, "(port)M_V");
    sc_trace(mVcdFile, e_V, "(port)e_V");
    sc_trace(mVcdFile, n_V, "(port)n_V");
    sc_trace(mVcdFile, Mbar_V, "(port)Mbar_V");
    sc_trace(mVcdFile, xbar_V, "(port)xbar_V");
    sc_trace(mVcdFile, out_V, "(port)out_V");
    sc_trace(mVcdFile, out_V_ap_vld, "(port)out_V_ap_vld");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_20, "ap_sig_20");
    sc_trace(mVcdFile, reg_134, "reg_134");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_41, "ap_sig_41");
    sc_trace(mVcdFile, tmp_fu_149_p3, "tmp_fu_149_p3");
    sc_trace(mVcdFile, tmp_8_fu_157_p3, "tmp_8_fu_157_p3");
    sc_trace(mVcdFile, tmp_8_reg_195, "tmp_8_reg_195");
    sc_trace(mVcdFile, grp_ModExp_montMult_fu_95_ap_return, "grp_ModExp_montMult_fu_95_ap_return");
    sc_trace(mVcdFile, call_ret_reg_199, "call_ret_reg_199");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_68, "ap_sig_68");
    sc_trace(mVcdFile, grp_ModExp_montMult_fu_95_ap_done, "grp_ModExp_montMult_fu_95_ap_done");
    sc_trace(mVcdFile, i_fu_164_p2, "i_fu_164_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_3, "ap_sig_cseq_ST_st4_fsm_3");
    sc_trace(mVcdFile, ap_sig_81, "ap_sig_81");
    sc_trace(mVcdFile, grp_ModExp_montMult_fu_95_ap_start, "grp_ModExp_montMult_fu_95_ap_start");
    sc_trace(mVcdFile, grp_ModExp_montMult_fu_95_ap_idle, "grp_ModExp_montMult_fu_95_ap_idle");
    sc_trace(mVcdFile, grp_ModExp_montMult_fu_95_ap_ready, "grp_ModExp_montMult_fu_95_ap_ready");
    sc_trace(mVcdFile, grp_ModExp_montMult_fu_95_X_V, "grp_ModExp_montMult_fu_95_X_V");
    sc_trace(mVcdFile, grp_ModExp_montMult_fu_95_Y_V, "grp_ModExp_montMult_fu_95_Y_V");
    sc_trace(mVcdFile, bvh_d_index_reg_83, "bvh_d_index_reg_83");
    sc_trace(mVcdFile, ap_reg_grp_ModExp_montMult_fu_95_ap_start, "ap_reg_grp_ModExp_montMult_fu_95_ap_start");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_4, "ap_sig_cseq_ST_st5_fsm_4");
    sc_trace(mVcdFile, ap_sig_108, "ap_sig_108");
    sc_trace(mVcdFile, xbar_V_buf_fu_48, "xbar_V_buf_fu_48");
    sc_trace(mVcdFile, index_assign_cast_fu_145_p1, "index_assign_cast_fu_145_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("ModExp.hdltvin.dat");
    mHdltvoutHandle.open("ModExp.hdltvout.dat");
}

ModExp::~ModExp() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete grp_ModExp_montMult_fu_95;
}

void ModExp::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_grp_ModExp_montMult_fu_95_ap_start = ap_const_logic_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
              esl_seteq<1,1,1>(tmp_fu_149_p3.read(), ap_const_lv1_0)) || 
             (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
              !esl_seteq<1,1,1>(tmp_fu_149_p3.read(), ap_const_lv1_0)) || 
             (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
              !esl_seteq<1,1,1>(ap_const_logic_0, grp_ModExp_montMult_fu_95_ap_done.read()) && 
              !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_reg_195.read())))) {
            ap_reg_grp_ModExp_montMult_fu_95_ap_start = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_ModExp_montMult_fu_95_ap_ready.read())) {
            ap_reg_grp_ModExp_montMult_fu_95_ap_start = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, grp_ModExp_montMult_fu_95_ap_done.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_reg_195.read())))) {
        bvh_d_index_reg_83 = i_fu_164_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        bvh_d_index_reg_83 = ap_const_lv11_3FF;
    }
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
          !esl_seteq<1,1,1>(ap_const_logic_0, grp_ModExp_montMult_fu_95_ap_done.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_reg_195.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_reg_195.read()) && 
          !(esl_seteq<1,1,1>(ap_const_logic_0, grp_ModExp_montMult_fu_95_ap_done.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_reg_195.read()))))) {
        xbar_V_buf_fu_48 = grp_ModExp_montMult_fu_95_ap_return.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        xbar_V_buf_fu_48 = xbar_V.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && !esl_seteq<1,1,1>(ap_const_logic_0, grp_ModExp_montMult_fu_95_ap_done.read()))) {
        call_ret_reg_199 = grp_ModExp_montMult_fu_95_ap_return.read();
    }
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
  esl_seteq<1,1,1>(tmp_fu_149_p3.read(), ap_const_lv1_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
  !esl_seteq<1,1,1>(tmp_fu_149_p3.read(), ap_const_lv1_0)))) {
        reg_134 = xbar_V_buf_fu_48.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && esl_seteq<1,1,1>(tmp_fu_149_p3.read(), ap_const_lv1_0))) {
        tmp_8_reg_195 = tmp_8_fu_157_p3.read();
    }
}

void ModExp::thread_ap_done() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_0, grp_ModExp_montMult_fu_95_ap_done.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void ModExp::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void ModExp::thread_ap_ready() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_0, grp_ModExp_montMult_fu_95_ap_done.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void ModExp::thread_ap_sig_108() {
    ap_sig_108 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void ModExp::thread_ap_sig_20() {
    ap_sig_20 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void ModExp::thread_ap_sig_41() {
    ap_sig_41 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void ModExp::thread_ap_sig_68() {
    ap_sig_68 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void ModExp::thread_ap_sig_81() {
    ap_sig_81 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void ModExp::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_20.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void ModExp::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_41.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void ModExp::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_68.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void ModExp::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_81.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void ModExp::thread_ap_sig_cseq_ST_st5_fsm_4() {
    if (ap_sig_108.read()) {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    }
}

void ModExp::thread_grp_ModExp_montMult_fu_95_X_V() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_reg_195.read()))) {
        grp_ModExp_montMult_fu_95_X_V = Mbar_V.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()))) {
        grp_ModExp_montMult_fu_95_X_V = reg_134.read();
    } else {
        grp_ModExp_montMult_fu_95_X_V = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void ModExp::thread_grp_ModExp_montMult_fu_95_Y_V() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_reg_195.read()))) {
        grp_ModExp_montMult_fu_95_Y_V = call_ret_reg_199.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read())) {
        grp_ModExp_montMult_fu_95_Y_V = ap_const_lv1024_lc_3;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        grp_ModExp_montMult_fu_95_Y_V = reg_134.read();
    } else {
        grp_ModExp_montMult_fu_95_Y_V = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void ModExp::thread_grp_ModExp_montMult_fu_95_ap_start() {
    grp_ModExp_montMult_fu_95_ap_start = ap_reg_grp_ModExp_montMult_fu_95_ap_start.read();
}

void ModExp::thread_i_fu_164_p2() {
    i_fu_164_p2 = (!bvh_d_index_reg_83.read().is_01() || !ap_const_lv11_7FF.is_01())? sc_lv<11>(): (sc_biguint<11>(bvh_d_index_reg_83.read()) + sc_bigint<11>(ap_const_lv11_7FF));
}

void ModExp::thread_index_assign_cast_fu_145_p1() {
    index_assign_cast_fu_145_p1 = esl_sext<32,11>(bvh_d_index_reg_83.read());
}

void ModExp::thread_out_V() {
    out_V = grp_ModExp_montMult_fu_95_ap_return.read();
}

void ModExp::thread_out_V_ap_vld() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_0, grp_ModExp_montMult_fu_95_ap_done.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()))) {
        out_V_ap_vld = ap_const_logic_1;
    } else {
        out_V_ap_vld = ap_const_logic_0;
    }
}

void ModExp::thread_tmp_8_fu_157_p3() {
    tmp_8_fu_157_p3 = (!index_assign_cast_fu_145_p1.read().is_01() || sc_biguint<32>(index_assign_cast_fu_145_p1.read()).to_uint() >= 1024)? sc_lv<1>(): e_V.read().range(sc_biguint<32>(index_assign_cast_fu_145_p1.read()).to_uint(), sc_biguint<32>(index_assign_cast_fu_145_p1.read()).to_uint());
}

void ModExp::thread_tmp_fu_149_p3() {
    tmp_fu_149_p3 = bvh_d_index_reg_83.read().range(10, 10);
}

void ModExp::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(tmp_fu_149_p3.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st5_fsm_4;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 4 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, grp_ModExp_montMult_fu_95_ap_done.read())) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 8 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_0, grp_ModExp_montMult_fu_95_ap_done.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_reg_195.read()))) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            }
            break;
        case 16 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, grp_ModExp_montMult_fu_95_ap_done.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st5_fsm_4;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<5>) ("XXXXX");
            break;
    }
}

void ModExp::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"M_V\" :  \"" << M_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"e_V\" :  \"" << e_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"n_V\" :  \"" << n_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"Mbar_V\" :  \"" << Mbar_V.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"xbar_V\" :  \"" << xbar_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_V\" :  \"" << out_V.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_V_ap_vld\" :  \"" << out_V_ap_vld.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}


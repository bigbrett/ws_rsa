// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _interleaveModMult_HH_
#define _interleaveModMult_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "rsaModExp_add_205bkb.h"
#include "rsaModExp_sub_205cud.h"

namespace ap_rtl {

struct interleaveModMult : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<2048> > Y_V;
    sc_in< sc_lv<2048> > M_V;
    sc_out< sc_lv<2048> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    interleaveModMult(sc_module_name name);
    SC_HAS_PROCESS(interleaveModMult);

    ~interleaveModMult();

    sc_trace_file* mVcdFile;

    rsaModExp_add_205bkb<1,4,2052,2052,2052>* rsaModExp_add_205bkb_U1;
    rsaModExp_sub_205cud<1,4,2052,2052,2052>* rsaModExp_sub_205cud_U2;
    rsaModExp_sub_205cud<1,4,2052,2052,2052>* rsaModExp_sub_205cud_U3;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<2052> > tmp_fu_60_p1;
    sc_signal< sc_lv<2052> > tmp_reg_143;
    sc_signal< sc_lv<2052> > tmp_s_fu_64_p1;
    sc_signal< sc_lv<2052> > tmp_s_reg_151;
    sc_signal< sc_lv<2052> > r_V_fu_80_p2;
    sc_signal< sc_lv<2052> > r_V_reg_159;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_10_fu_72_p3;
    sc_signal< sc_lv<1> > tmp_13_fu_86_p3;
    sc_signal< sc_lv<1> > tmp_13_reg_165;
    sc_signal< sc_lv<13> > i_fu_99_p2;
    sc_signal< sc_lv<13> > i_reg_170;
    sc_signal< sc_lv<2052> > P_V_4_fu_109_p3;
    sc_signal< sc_lv<2052> > P_V_4_reg_175;
    sc_signal< sc_lv<1> > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > tmp_4_fu_119_p2;
    sc_signal< sc_lv<1> > tmp_4_reg_182;
    sc_signal< sc_lv<1> > ap_CS_fsm_state8;
    sc_signal< sc_lv<2052> > p_036_1_P_V_2_fu_123_p3;
    sc_signal< sc_lv<2052> > p_036_1_P_V_2_reg_187;
    sc_signal< sc_lv<1> > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > tmp_5_fu_129_p2;
    sc_signal< sc_lv<1> > tmp_5_reg_194;
    sc_signal< sc_lv<1> > ap_CS_fsm_state10;
    sc_signal< sc_lv<2052> > P_V_5_fu_137_p3;
    sc_signal< sc_lv<1> > ap_CS_fsm_state13;
    sc_signal< sc_lv<2052> > p_Val2_s_reg_38;
    sc_signal< sc_lv<13> > i_assign_reg_49;
    sc_signal< sc_lv<32> > i_assign_cast_fu_68_p1;
    sc_signal< sc_lv<2052> > grp_fu_94_p0;
    sc_signal< sc_lv<2052> > grp_fu_94_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state6;
    sc_signal< sc_lv<2052> > grp_fu_115_p2;
    sc_signal< sc_lv<2052> > grp_fu_133_p2;
    sc_signal< sc_lv<2048> > tmp_11_fu_105_p1;
    sc_signal< sc_lv<2048> > ap_return_preg;
    sc_signal< sc_lv<13> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<13> ap_ST_fsm_state1;
    static const sc_lv<13> ap_ST_fsm_state2;
    static const sc_lv<13> ap_ST_fsm_state3;
    static const sc_lv<13> ap_ST_fsm_state4;
    static const sc_lv<13> ap_ST_fsm_state5;
    static const sc_lv<13> ap_ST_fsm_state6;
    static const sc_lv<13> ap_ST_fsm_state7;
    static const sc_lv<13> ap_ST_fsm_state8;
    static const sc_lv<13> ap_ST_fsm_state9;
    static const sc_lv<13> ap_ST_fsm_state10;
    static const sc_lv<13> ap_ST_fsm_state11;
    static const sc_lv<13> ap_ST_fsm_state12;
    static const sc_lv<13> ap_ST_fsm_state13;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<2052> ap_const_lv2052_lc_1;
    static const sc_lv<13> ap_const_lv13_800;
    static const sc_lv<2052> ap_const_lv2052_lc_2;
    static const sc_lv<2049> ap_const_lv2049_lc_3;
    static const sc_lv<13> ap_const_lv13_1FFF;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<2048> ap_const_lv2048_lc_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_P_V_4_fu_109_p3();
    void thread_P_V_5_fu_137_p3();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_fu_94_p0();
    void thread_i_assign_cast_fu_68_p1();
    void thread_i_fu_99_p2();
    void thread_p_036_1_P_V_2_fu_123_p3();
    void thread_r_V_fu_80_p2();
    void thread_tmp_10_fu_72_p3();
    void thread_tmp_11_fu_105_p1();
    void thread_tmp_13_fu_86_p3();
    void thread_tmp_4_fu_119_p2();
    void thread_tmp_5_fu_129_p2();
    void thread_tmp_fu_60_p1();
    void thread_tmp_s_fu_64_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
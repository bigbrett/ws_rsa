// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _montMult_HH_
#define _montMult_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "rsaModExp_add_205dEe.h"
#include "rsaModExp_sub_204eOg.h"

namespace ap_rtl {

struct montMult : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<2048> > X0_V;
    sc_in< sc_lv<2048> > Y0_V;
    sc_in< sc_lv<2048> > M0_V;
    sc_out< sc_lv<2048> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    montMult(sc_module_name name);
    SC_HAS_PROCESS(montMult);

    ~montMult();

    sc_trace_file* mVcdFile;

    rsaModExp_add_205dEe<1,4,2050,2050,2050>* rsaModExp_add_205dEe_U6;
    rsaModExp_sub_204eOg<1,4,2048,2048,2048>* rsaModExp_sub_204eOg_U7;
    rsaModExp_add_205dEe<1,4,2050,2050,2050>* rsaModExp_add_205dEe_U8;
    sc_signal< sc_lv<12> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<2048> > M0_V_read_reg_180;
    sc_signal< sc_lv<2050> > X_V_fu_68_p1;
    sc_signal< sc_lv<2050> > X_V_reg_185;
    sc_signal< sc_lv<2050> > Y_V_fu_72_p1;
    sc_signal< sc_lv<2050> > Y_V_reg_190;
    sc_signal< sc_lv<2050> > M_V_fu_76_p1;
    sc_signal< sc_lv<2050> > M_V_reg_195;
    sc_signal< sc_lv<2049> > M_V_cast_fu_80_p1;
    sc_signal< sc_lv<2049> > M_V_cast_reg_200;
    sc_signal< sc_lv<2050> > p_cast_fu_84_p1;
    sc_signal< sc_lv<2050> > p_cast_reg_205;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<12> > i_fu_98_p2;
    sc_signal< sc_lv<12> > i_reg_214;
    sc_signal< sc_lv<1> > tmp_8_fu_104_p3;
    sc_signal< sc_lv<1> > tmp_8_reg_219;
    sc_signal< sc_lv<1> > exitcond_fu_92_p2;
    sc_signal< sc_lv<1> > tmp_fu_116_p2;
    sc_signal< sc_lv<1> > tmp_reg_224;
    sc_signal< sc_lv<2048> > tmp_6_fu_125_p1;
    sc_signal< sc_lv<2048> > tmp_6_reg_234;
    sc_signal< sc_lv<2050> > p_Val2_1_fu_134_p3;
    sc_signal< sc_lv<2050> > p_Val2_1_reg_239;
    sc_signal< sc_lv<1> > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > tmp_9_fu_140_p1;
    sc_signal< sc_lv<1> > tmp_9_reg_244;
    sc_signal< sc_lv<2049> > tmp_4_reg_249;
    sc_signal< sc_lv<2049> > tmp_5_fu_168_p3;
    sc_signal< sc_lv<1> > ap_CS_fsm_state9;
    sc_signal< sc_lv<2049> > p_s_reg_46;
    sc_signal< sc_lv<12> > i_assign_reg_57;
    sc_signal< sc_lv<32> > i_assign_cast1_fu_88_p1;
    sc_signal< sc_lv<2050> > grp_fu_111_p1;
    sc_signal< sc_lv<2048> > grp_fu_129_p0;
    sc_signal< sc_lv<2050> > grp_fu_111_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state6;
    sc_signal< sc_lv<2050> > grp_fu_154_p2;
    sc_signal< sc_lv<2049> > tmp_3_fu_158_p4;
    sc_signal< sc_lv<2048> > grp_fu_129_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state12;
    sc_signal< sc_lv<2048> > ssdm_int_V_write_ass_fu_174_p3;
    sc_signal< sc_lv<2048> > ap_return_preg;
    sc_signal< sc_lv<12> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<12> ap_ST_fsm_state1;
    static const sc_lv<12> ap_ST_fsm_state2;
    static const sc_lv<12> ap_ST_fsm_state3;
    static const sc_lv<12> ap_ST_fsm_state4;
    static const sc_lv<12> ap_ST_fsm_state5;
    static const sc_lv<12> ap_ST_fsm_state6;
    static const sc_lv<12> ap_ST_fsm_state7;
    static const sc_lv<12> ap_ST_fsm_state8;
    static const sc_lv<12> ap_ST_fsm_state9;
    static const sc_lv<12> ap_ST_fsm_state10;
    static const sc_lv<12> ap_ST_fsm_state11;
    static const sc_lv<12> ap_ST_fsm_state12;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<2049> ap_const_lv2049_lc_1;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<12> ap_const_lv12_800;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<32> ap_const_lv32_801;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<2048> ap_const_lv2048_lc_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_M_V_cast_fu_80_p1();
    void thread_M_V_fu_76_p1();
    void thread_X_V_fu_68_p1();
    void thread_Y_V_fu_72_p1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond_fu_92_p2();
    void thread_grp_fu_111_p1();
    void thread_grp_fu_129_p0();
    void thread_i_assign_cast1_fu_88_p1();
    void thread_i_fu_98_p2();
    void thread_p_Val2_1_fu_134_p3();
    void thread_p_cast_fu_84_p1();
    void thread_ssdm_int_V_write_ass_fu_174_p3();
    void thread_tmp_3_fu_158_p4();
    void thread_tmp_5_fu_168_p3();
    void thread_tmp_6_fu_125_p1();
    void thread_tmp_8_fu_104_p3();
    void thread_tmp_9_fu_140_p1();
    void thread_tmp_fu_116_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif

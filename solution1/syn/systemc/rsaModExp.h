// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _rsaModExp_HH_
#define _rsaModExp_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "montMult.h"
#include "rsaModExp_add_205dEe.h"
#include "rsaModExp_sub_205eOg.h"

namespace ap_rtl {

struct rsaModExp : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<2048> > M_V;
    sc_in< sc_lv<2048> > e_V;
    sc_in< sc_lv<2048> > n_V;
    sc_out< sc_lv<2048> > out_V;
    sc_out< sc_logic > out_V_ap_vld;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    rsaModExp(sc_module_name name);
    SC_HAS_PROCESS(rsaModExp);

    ~rsaModExp();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    montMult* grp_montMult_fu_143;
    rsaModExp_add_205dEe<1,4,2052,2052,2052>* rsaModExp_add_205dEe_U7;
    rsaModExp_sub_205eOg<1,4,2052,2052,2052>* rsaModExp_sub_205eOg_U8;
    rsaModExp_sub_205eOg<1,4,2052,2052,2052>* rsaModExp_sub_205eOg_U9;
    rsaModExp_sub_205eOg<1,4,2052,2052,2052>* rsaModExp_sub_205eOg_U10;
    rsaModExp_sub_205eOg<1,4,2052,2052,2052>* rsaModExp_sub_205eOg_U11;
    sc_signal< sc_lv<25> > ap_CS_fsm;
    sc_signal< sc_lv<1> > ap_CS_fsm_state1;
    sc_signal< sc_lv<2048> > reg_163;
    sc_signal< sc_lv<1> > ap_CS_fsm_state22;
    sc_signal< sc_lv<1> > tmp_8_fu_332_p3;
    sc_signal< sc_lv<2052> > tmp_i_fu_169_p1;
    sc_signal< sc_lv<2052> > tmp_i_reg_363;
    sc_signal< sc_lv<2052> > tmp_i_5_fu_173_p1;
    sc_signal< sc_lv<2052> > tmp_i_5_reg_375;
    sc_signal< sc_lv<2052> > r_V_fu_189_p2;
    sc_signal< sc_lv<2052> > r_V_reg_383;
    sc_signal< sc_lv<1> > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_fu_181_p3;
    sc_signal< sc_lv<1> > tmp_3_fu_195_p3;
    sc_signal< sc_lv<1> > tmp_3_reg_389;
    sc_signal< sc_lv<13> > i_1_fu_208_p2;
    sc_signal< sc_lv<13> > i_1_reg_394;
    sc_signal< sc_lv<2048> > Mbar_V_fu_214_p1;
    sc_signal< sc_lv<2048> > Mbar_V_reg_399;
    sc_signal< sc_lv<2052> > P_V_2_fu_218_p3;
    sc_signal< sc_lv<2052> > P_V_2_reg_404;
    sc_signal< sc_lv<1> > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > tmp_4_i_fu_228_p2;
    sc_signal< sc_lv<1> > tmp_4_i_reg_411;
    sc_signal< sc_lv<1> > ap_CS_fsm_state8;
    sc_signal< sc_lv<2052> > p_036_1_P_V_2_i_fu_232_p3;
    sc_signal< sc_lv<2052> > p_036_1_P_V_2_i_reg_416;
    sc_signal< sc_lv<1> > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > tmp_5_i_fu_238_p2;
    sc_signal< sc_lv<1> > tmp_5_i_reg_423;
    sc_signal< sc_lv<1> > ap_CS_fsm_state10;
    sc_signal< sc_lv<2052> > P_V_5_fu_246_p3;
    sc_signal< sc_lv<1> > ap_CS_fsm_state13;
    sc_signal< sc_lv<2052> > P_V_6_fu_276_p3;
    sc_signal< sc_lv<2052> > P_V_6_reg_436;
    sc_signal< sc_lv<1> > ap_CS_fsm_state14;
    sc_signal< sc_lv<1> > tmp_4_fu_256_p3;
    sc_signal< sc_lv<13> > i_2_fu_289_p2;
    sc_signal< sc_lv<13> > i_2_reg_443;
    sc_signal< sc_lv<1> > tmp_4_i1_fu_304_p2;
    sc_signal< sc_lv<1> > tmp_4_i1_reg_455;
    sc_signal< sc_lv<1> > ap_CS_fsm_state16;
    sc_signal< sc_lv<2052> > p_036_1_P_V_2_i1_fu_308_p3;
    sc_signal< sc_lv<2052> > p_036_1_P_V_2_i1_reg_460;
    sc_signal< sc_lv<1> > ap_CS_fsm_state17;
    sc_signal< sc_lv<1> > tmp_5_i1_fu_318_p2;
    sc_signal< sc_lv<1> > tmp_5_i1_reg_467;
    sc_signal< sc_lv<1> > ap_CS_fsm_state20;
    sc_signal< sc_lv<2052> > P_V_9_fu_322_p3;
    sc_signal< sc_lv<1> > ap_CS_fsm_state21;
    sc_signal< sc_lv<1> > tmp_9_fu_340_p3;
    sc_signal< sc_lv<1> > tmp_9_reg_480;
    sc_signal< sc_lv<2048> > grp_montMult_fu_143_ap_return;
    sc_signal< sc_lv<2048> > xbar_V_2_reg_484;
    sc_signal< sc_lv<1> > ap_CS_fsm_state23;
    sc_signal< sc_logic > grp_montMult_fu_143_ap_done;
    sc_signal< sc_lv<12> > i_fu_347_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state24;
    sc_signal< sc_logic > grp_montMult_fu_143_ap_start;
    sc_signal< sc_logic > grp_montMult_fu_143_ap_idle;
    sc_signal< sc_logic > grp_montMult_fu_143_ap_ready;
    sc_signal< sc_lv<2048> > grp_montMult_fu_143_X0_V;
    sc_signal< sc_lv<2048> > grp_montMult_fu_143_Y0_V;
    sc_signal< sc_lv<2052> > p_Val2_s_reg_87;
    sc_signal< sc_lv<13> > i_assign_1_reg_98;
    sc_signal< sc_lv<2052> > p_Val2_1_reg_109;
    sc_signal< sc_lv<13> > i_assign_2_reg_120;
    sc_signal< sc_lv<12> > i_assign_reg_131;
    sc_signal< sc_logic > ap_reg_grp_montMult_fu_143_ap_start;
    sc_signal< sc_lv<1> > ap_CS_fsm_state25;
    sc_signal< sc_lv<2048> > xbar_V_fu_58;
    sc_signal< sc_lv<2048> > xbar_V_1_fu_295_p1;
    sc_signal< sc_lv<32> > i_assign_1_cast_fu_177_p1;
    sc_signal< sc_lv<2052> > grp_fu_203_p0;
    sc_signal< sc_lv<2052> > grp_fu_203_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state6;
    sc_signal< sc_lv<2052> > grp_fu_224_p2;
    sc_signal< sc_lv<2052> > grp_fu_242_p2;
    sc_signal< sc_lv<32> > i_assign_2_cast_fu_252_p1;
    sc_signal< sc_lv<2051> > tmp_7_fu_272_p1;
    sc_signal< sc_lv<1> > tmp_6_fu_264_p3;
    sc_signal< sc_lv<2052> > grp_fu_284_p0;
    sc_signal< sc_lv<2052> > grp_fu_284_p2;
    sc_signal< sc_lv<1> > ap_CS_fsm_state18;
    sc_signal< sc_lv<2052> > grp_fu_314_p2;
    sc_signal< sc_lv<32> > i_assign_cast_fu_328_p1;
    sc_signal< sc_lv<25> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<25> ap_ST_fsm_state1;
    static const sc_lv<25> ap_ST_fsm_state2;
    static const sc_lv<25> ap_ST_fsm_state3;
    static const sc_lv<25> ap_ST_fsm_state4;
    static const sc_lv<25> ap_ST_fsm_state5;
    static const sc_lv<25> ap_ST_fsm_state6;
    static const sc_lv<25> ap_ST_fsm_state7;
    static const sc_lv<25> ap_ST_fsm_state8;
    static const sc_lv<25> ap_ST_fsm_state9;
    static const sc_lv<25> ap_ST_fsm_state10;
    static const sc_lv<25> ap_ST_fsm_state11;
    static const sc_lv<25> ap_ST_fsm_state12;
    static const sc_lv<25> ap_ST_fsm_state13;
    static const sc_lv<25> ap_ST_fsm_state14;
    static const sc_lv<25> ap_ST_fsm_state15;
    static const sc_lv<25> ap_ST_fsm_state16;
    static const sc_lv<25> ap_ST_fsm_state17;
    static const sc_lv<25> ap_ST_fsm_state18;
    static const sc_lv<25> ap_ST_fsm_state19;
    static const sc_lv<25> ap_ST_fsm_state20;
    static const sc_lv<25> ap_ST_fsm_state21;
    static const sc_lv<25> ap_ST_fsm_state22;
    static const sc_lv<25> ap_ST_fsm_state23;
    static const sc_lv<25> ap_ST_fsm_state24;
    static const sc_lv<25> ap_ST_fsm_state25;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<2052> ap_const_lv2052_lc_1;
    static const sc_lv<13> ap_const_lv13_800;
    static const sc_lv<12> ap_const_lv12_7FF;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<2048> ap_const_lv2048_lc_2;
    static const sc_lv<2052> ap_const_lv2052_lc_2;
    static const sc_lv<2049> ap_const_lv2049_lc_3;
    static const sc_lv<13> ap_const_lv13_1FFF;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<12> ap_const_lv12_FFF;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_Mbar_V_fu_214_p1();
    void thread_P_V_2_fu_218_p3();
    void thread_P_V_5_fu_246_p3();
    void thread_P_V_6_fu_276_p3();
    void thread_P_V_9_fu_322_p3();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_fu_203_p0();
    void thread_grp_fu_284_p0();
    void thread_grp_montMult_fu_143_X0_V();
    void thread_grp_montMult_fu_143_Y0_V();
    void thread_grp_montMult_fu_143_ap_start();
    void thread_i_1_fu_208_p2();
    void thread_i_2_fu_289_p2();
    void thread_i_assign_1_cast_fu_177_p1();
    void thread_i_assign_2_cast_fu_252_p1();
    void thread_i_assign_cast_fu_328_p1();
    void thread_i_fu_347_p2();
    void thread_out_V();
    void thread_out_V_ap_vld();
    void thread_p_036_1_P_V_2_i1_fu_308_p3();
    void thread_p_036_1_P_V_2_i_fu_232_p3();
    void thread_r_V_fu_189_p2();
    void thread_tmp_3_fu_195_p3();
    void thread_tmp_4_fu_256_p3();
    void thread_tmp_4_i1_fu_304_p2();
    void thread_tmp_4_i_fu_228_p2();
    void thread_tmp_5_i1_fu_318_p2();
    void thread_tmp_5_i_fu_238_p2();
    void thread_tmp_6_fu_264_p3();
    void thread_tmp_7_fu_272_p1();
    void thread_tmp_8_fu_332_p3();
    void thread_tmp_9_fu_340_p3();
    void thread_tmp_fu_181_p3();
    void thread_tmp_i_5_fu_173_p1();
    void thread_tmp_i_fu_169_p1();
    void thread_xbar_V_1_fu_295_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif

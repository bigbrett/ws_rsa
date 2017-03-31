// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __rsaModExp_sub_2052ns_2052ns_2052_4__HH__
#define __rsaModExp_sub_2052ns_2052ns_2052_4__HH__
#include "ACMP_sub.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(rsaModExp_sub_2052ns_2052ns_2052_4) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_sub<ID, 4, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_sub_U;

    SC_CTOR(rsaModExp_sub_2052ns_2052ns_2052_4):  ACMP_sub_U ("ACMP_sub_U") {
        ACMP_sub_U.clk(clk);
        ACMP_sub_U.reset(reset);
        ACMP_sub_U.ce(ce);
        ACMP_sub_U.din0(din0);
        ACMP_sub_U.din1(din1);
        ACMP_sub_U.dout(dout);

    }

};

#endif //
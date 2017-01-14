// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="ModExp,hls_ip_2016_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=20.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=17.010000,HLS_SYN_LAT=9452550,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=27703,HLS_SYN_LUT=12236}" *)

module ModExp (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        M_V,
        e_V,
        n_V,
        Mbar_V,
        xbar_V,
        out_V,
        out_V_ap_vld
);

parameter    ap_ST_st1_fsm_0 = 5'b1;
parameter    ap_ST_st2_fsm_1 = 5'b10;
parameter    ap_ST_st3_fsm_2 = 5'b100;
parameter    ap_ST_st4_fsm_3 = 5'b1000;
parameter    ap_ST_st5_fsm_4 = 5'b10000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv11_3FF = 11'b1111111111;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv1024_lc_3 = 1024'b1;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv11_7FF = 11'b11111111111;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [1023:0] M_V;
input  [1023:0] e_V;
input  [1023:0] n_V;
input  [1023:0] Mbar_V;
input  [1023:0] xbar_V;
output  [1023:0] out_V;
output   out_V_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_V_ap_vld;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_20;
reg   [1023:0] reg_134;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_41;
wire   [0:0] tmp_fu_149_p3;
wire   [0:0] tmp_8_fu_157_p3;
reg   [0:0] tmp_8_reg_195;
wire   [1023:0] grp_ModExp_montMult_fu_95_ap_return;
reg   [1023:0] call_ret_reg_199;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_68;
wire    grp_ModExp_montMult_fu_95_ap_done;
wire   [10:0] i_fu_164_p2;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_81;
wire    grp_ModExp_montMult_fu_95_ap_start;
wire    grp_ModExp_montMult_fu_95_ap_idle;
wire    grp_ModExp_montMult_fu_95_ap_ready;
reg   [1023:0] grp_ModExp_montMult_fu_95_X_V;
reg   [1023:0] grp_ModExp_montMult_fu_95_Y_V;
reg   [10:0] bvh_d_index_reg_83;
reg    ap_reg_grp_ModExp_montMult_fu_95_ap_start;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_108;
reg   [1023:0] xbar_V_buf_fu_48;
wire  signed [31:0] index_assign_cast_fu_145_p1;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'b1;
#0 ap_reg_grp_ModExp_montMult_fu_95_ap_start = 1'b0;
end

ModExp_montMult grp_ModExp_montMult_fu_95(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_ModExp_montMult_fu_95_ap_start),
    .ap_done(grp_ModExp_montMult_fu_95_ap_done),
    .ap_idle(grp_ModExp_montMult_fu_95_ap_idle),
    .ap_ready(grp_ModExp_montMult_fu_95_ap_ready),
    .X_V(grp_ModExp_montMult_fu_95_X_V),
    .Y_V(grp_ModExp_montMult_fu_95_Y_V),
    .M_V(n_V),
    .ap_return(grp_ModExp_montMult_fu_95_ap_return)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_ModExp_montMult_fu_95_ap_start <= 1'b0;
    end else begin
        if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (tmp_fu_149_p3 == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_fu_149_p3 == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == grp_ModExp_montMult_fu_95_ap_done) & ~(1'b0 == tmp_8_reg_195)))) begin
            ap_reg_grp_ModExp_montMult_fu_95_ap_start <= 1'b1;
        end else if ((1'b1 == grp_ModExp_montMult_fu_95_ap_ready)) begin
            ap_reg_grp_ModExp_montMult_fu_95_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~((1'b0 == grp_ModExp_montMult_fu_95_ap_done) & ~(1'b0 == tmp_8_reg_195)))) begin
        bvh_d_index_reg_83 <= i_fu_164_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        bvh_d_index_reg_83 <= ap_const_lv11_3FF;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == grp_ModExp_montMult_fu_95_ap_done) & (1'b0 == tmp_8_reg_195)) | ((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == tmp_8_reg_195) & ~((1'b0 == grp_ModExp_montMult_fu_95_ap_done) & ~(1'b0 == tmp_8_reg_195))))) begin
        xbar_V_buf_fu_48 <= grp_ModExp_montMult_fu_95_ap_return;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        xbar_V_buf_fu_48 <= xbar_V;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == grp_ModExp_montMult_fu_95_ap_done))) begin
        call_ret_reg_199 <= grp_ModExp_montMult_fu_95_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (tmp_fu_149_p3 == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(tmp_fu_149_p3 == 1'b0)))) begin
        reg_134 <= xbar_V_buf_fu_48;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (tmp_fu_149_p3 == 1'b0))) begin
        tmp_8_reg_195 <= tmp_8_fu_157_p3;
    end
end

always @ (*) begin
    if ((~(1'b0 == grp_ModExp_montMult_fu_95_ap_done) & (1'b1 == ap_sig_cseq_ST_st5_fsm_4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~(1'b0 == grp_ModExp_montMult_fu_95_ap_done) & (1'b1 == ap_sig_cseq_ST_st5_fsm_4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_41) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_68) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_81) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_108) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == tmp_8_reg_195))) begin
        grp_ModExp_montMult_fu_95_X_V = Mbar_V;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4))) begin
        grp_ModExp_montMult_fu_95_X_V = reg_134;
    end else begin
        grp_ModExp_montMult_fu_95_X_V = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == tmp_8_reg_195))) begin
        grp_ModExp_montMult_fu_95_Y_V = call_ret_reg_199;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        grp_ModExp_montMult_fu_95_Y_V = ap_const_lv1024_lc_3;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        grp_ModExp_montMult_fu_95_Y_V = reg_134;
    end else begin
        grp_ModExp_montMult_fu_95_Y_V = 'bx;
    end
end

always @ (*) begin
    if ((~(1'b0 == grp_ModExp_montMult_fu_95_ap_done) & (1'b1 == ap_sig_cseq_ST_st5_fsm_4))) begin
        out_V_ap_vld = 1'b1;
    end else begin
        out_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~(tmp_fu_149_p3 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(1'b0 == grp_ModExp_montMult_fu_95_ap_done)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st4_fsm_3 : begin
            if (~((1'b0 == grp_ModExp_montMult_fu_95_ap_done) & ~(1'b0 == tmp_8_reg_195))) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st5_fsm_4 : begin
            if (~(1'b0 == grp_ModExp_montMult_fu_95_ap_done)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_108 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_20 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_41 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_68 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_81 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

assign grp_ModExp_montMult_fu_95_ap_start = ap_reg_grp_ModExp_montMult_fu_95_ap_start;

assign i_fu_164_p2 = ($signed(bvh_d_index_reg_83) + $signed(ap_const_lv11_7FF));

assign index_assign_cast_fu_145_p1 = $signed(bvh_d_index_reg_83);

assign out_V = grp_ModExp_montMult_fu_95_ap_return;

assign tmp_8_fu_157_p3 = e_V[index_assign_cast_fu_145_p1];

assign tmp_fu_149_p3 = bvh_d_index_reg_83[ap_const_lv32_A];

endmodule //ModExp
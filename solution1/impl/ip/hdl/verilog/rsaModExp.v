// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="rsaModExp,hls_ip_2016_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=25.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=19.831000,HLS_SYN_LAT=6316055,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=43158,HLS_SYN_LUT=21606}" *)

module rsaModExp (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        M_V,
        e_V,
        n_V,
        out_V,
        out_V_ap_vld
);

parameter    ap_ST_st1_fsm_0 = 7'b1;
parameter    ap_ST_st2_fsm_1 = 7'b10;
parameter    ap_ST_st3_fsm_2 = 7'b100;
parameter    ap_ST_st4_fsm_3 = 7'b1000;
parameter    ap_ST_st5_fsm_4 = 7'b10000;
parameter    ap_ST_st6_fsm_5 = 7'b100000;
parameter    ap_ST_st7_fsm_6 = 7'b1000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv11_3FF = 11'b1111111111;
parameter    ap_const_lv1024_lc_2 = 1024'b1;
parameter    ap_const_lv32_6 = 32'b110;
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
output  [1023:0] out_V;
output   out_V_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_V_ap_vld;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_22;
reg   [1023:0] reg_151;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_41;
wire   [0:0] tmp_fu_166_p3;
wire   [1023:0] grp_rsaModExp_interleaveModMult_fu_89_ap_return;
reg   [1023:0] Mbar_V_reg_205;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_64;
wire    grp_rsaModExp_interleaveModMult_fu_89_ap_done;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_77;
wire   [0:0] tmp_1_fu_174_p3;
reg   [0:0] tmp_1_reg_218;
wire   [1023:0] grp_rsaModExp_montMult_fu_112_ap_return;
reg   [1023:0] xbar_V_2_reg_222;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_89;
wire    grp_rsaModExp_montMult_fu_112_ap_done;
wire   [10:0] i_fu_181_p2;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_102;
wire    grp_rsaModExp_interleaveModMult_fu_89_ap_start;
wire    grp_rsaModExp_interleaveModMult_fu_89_ap_idle;
wire    grp_rsaModExp_interleaveModMult_fu_89_ap_ready;
reg   [1023:0] grp_rsaModExp_interleaveModMult_fu_89_Y_V;
wire    grp_rsaModExp_montMult_fu_112_ap_start;
wire    grp_rsaModExp_montMult_fu_112_ap_idle;
wire    grp_rsaModExp_montMult_fu_112_ap_ready;
reg   [1023:0] grp_rsaModExp_montMult_fu_112_X0_V;
reg   [1023:0] grp_rsaModExp_montMult_fu_112_Y0_V;
reg   [10:0] i_assign_reg_77;
reg    ap_reg_grp_rsaModExp_interleaveModMult_fu_89_ap_start;
reg    ap_reg_grp_rsaModExp_montMult_fu_112_ap_start;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_141;
reg   [1023:0] xbar_V_1_fu_48;
wire  signed [31:0] i_assign_cast_fu_162_p1;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'b1;
#0 ap_reg_grp_rsaModExp_interleaveModMult_fu_89_ap_start = 1'b0;
#0 ap_reg_grp_rsaModExp_montMult_fu_112_ap_start = 1'b0;
end

rsaModExp_interleaveModMult grp_rsaModExp_interleaveModMult_fu_89(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_rsaModExp_interleaveModMult_fu_89_ap_start),
    .ap_done(grp_rsaModExp_interleaveModMult_fu_89_ap_done),
    .ap_idle(grp_rsaModExp_interleaveModMult_fu_89_ap_idle),
    .ap_ready(grp_rsaModExp_interleaveModMult_fu_89_ap_ready),
    .Y_V(grp_rsaModExp_interleaveModMult_fu_89_Y_V),
    .M_V(n_V),
    .ap_return(grp_rsaModExp_interleaveModMult_fu_89_ap_return)
);

rsaModExp_montMult grp_rsaModExp_montMult_fu_112(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_rsaModExp_montMult_fu_112_ap_start),
    .ap_done(grp_rsaModExp_montMult_fu_112_ap_done),
    .ap_idle(grp_rsaModExp_montMult_fu_112_ap_idle),
    .ap_ready(grp_rsaModExp_montMult_fu_112_ap_ready),
    .X0_V(grp_rsaModExp_montMult_fu_112_X0_V),
    .Y0_V(grp_rsaModExp_montMult_fu_112_Y0_V),
    .M0_V(n_V),
    .ap_return(grp_rsaModExp_montMult_fu_112_ap_return)
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
        ap_reg_grp_rsaModExp_interleaveModMult_fu_89_ap_start <= 1'b0;
    end else begin
        if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == grp_rsaModExp_interleaveModMult_fu_89_ap_done)))) begin
            ap_reg_grp_rsaModExp_interleaveModMult_fu_89_ap_start <= 1'b1;
        end else if ((1'b1 == grp_rsaModExp_interleaveModMult_fu_89_ap_ready)) begin
            ap_reg_grp_rsaModExp_interleaveModMult_fu_89_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_rsaModExp_montMult_fu_112_ap_start <= 1'b0;
    end else begin
        if ((((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (tmp_fu_166_p3 == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(tmp_fu_166_p3 == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == grp_rsaModExp_montMult_fu_112_ap_done) & ~(1'b0 == tmp_1_reg_218)))) begin
            ap_reg_grp_rsaModExp_montMult_fu_112_ap_start <= 1'b1;
        end else if ((1'b1 == grp_rsaModExp_montMult_fu_112_ap_ready)) begin
            ap_reg_grp_rsaModExp_montMult_fu_112_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~((1'b0 == grp_rsaModExp_montMult_fu_112_ap_done) & ~(1'b0 == tmp_1_reg_218)))) begin
        i_assign_reg_77 <= i_fu_181_p2;
    end else if ((~(1'b0 == grp_rsaModExp_interleaveModMult_fu_89_ap_done) & (1'b1 == ap_sig_cseq_ST_st3_fsm_2))) begin
        i_assign_reg_77 <= ap_const_lv11_3FF;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == grp_rsaModExp_montMult_fu_112_ap_done) & (1'b0 == tmp_1_reg_218)) | ((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == tmp_1_reg_218) & ~((1'b0 == grp_rsaModExp_montMult_fu_112_ap_done) & ~(1'b0 == tmp_1_reg_218))))) begin
        xbar_V_1_fu_48 <= grp_rsaModExp_montMult_fu_112_ap_return;
    end else if ((~(1'b0 == grp_rsaModExp_interleaveModMult_fu_89_ap_done) & (1'b1 == ap_sig_cseq_ST_st3_fsm_2))) begin
        xbar_V_1_fu_48 <= grp_rsaModExp_interleaveModMult_fu_89_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == grp_rsaModExp_interleaveModMult_fu_89_ap_done))) begin
        Mbar_V_reg_205 <= grp_rsaModExp_interleaveModMult_fu_89_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (tmp_fu_166_p3 == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(tmp_fu_166_p3 == 1'b0)))) begin
        reg_151 <= xbar_V_1_fu_48;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (tmp_fu_166_p3 == 1'b0))) begin
        tmp_1_reg_218 <= tmp_1_fu_174_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == grp_rsaModExp_montMult_fu_112_ap_done))) begin
        xbar_V_2_reg_222 <= grp_rsaModExp_montMult_fu_112_ap_return;
    end
end

always @ (*) begin
    if ((~(1'b0 == grp_rsaModExp_montMult_fu_112_ap_done) & (1'b1 == ap_sig_cseq_ST_st7_fsm_6))) begin
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
    if ((~(1'b0 == grp_rsaModExp_montMult_fu_112_ap_done) & (1'b1 == ap_sig_cseq_ST_st7_fsm_6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_22) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_64) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_77) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_41) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_89) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_102) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_141) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        grp_rsaModExp_interleaveModMult_fu_89_Y_V = ap_const_lv1024_lc_2;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        grp_rsaModExp_interleaveModMult_fu_89_Y_V = M_V;
    end else begin
        grp_rsaModExp_interleaveModMult_fu_89_Y_V = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == tmp_1_reg_218))) begin
        grp_rsaModExp_montMult_fu_112_X0_V = Mbar_V_reg_205;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6))) begin
        grp_rsaModExp_montMult_fu_112_X0_V = reg_151;
    end else begin
        grp_rsaModExp_montMult_fu_112_X0_V = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == tmp_1_reg_218))) begin
        grp_rsaModExp_montMult_fu_112_Y0_V = xbar_V_2_reg_222;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        grp_rsaModExp_montMult_fu_112_Y0_V = ap_const_lv1024_lc_2;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        grp_rsaModExp_montMult_fu_112_Y0_V = reg_151;
    end else begin
        grp_rsaModExp_montMult_fu_112_Y0_V = 'bx;
    end
end

always @ (*) begin
    if ((~(1'b0 == grp_rsaModExp_montMult_fu_112_ap_done) & (1'b1 == ap_sig_cseq_ST_st7_fsm_6))) begin
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
            if (~(1'b0 == grp_rsaModExp_interleaveModMult_fu_89_ap_done)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(1'b0 == grp_rsaModExp_interleaveModMult_fu_89_ap_done)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st4_fsm_3 : begin
            if (~(tmp_fu_166_p3 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st5_fsm_4 : begin
            if (~(1'b0 == grp_rsaModExp_montMult_fu_112_ap_done)) begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st6_fsm_5 : begin
            if (~((1'b0 == grp_rsaModExp_montMult_fu_112_ap_done) & ~(1'b0 == tmp_1_reg_218))) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end
        end
        ap_ST_st7_fsm_6 : begin
            if (~(1'b0 == grp_rsaModExp_montMult_fu_112_ap_done)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_102 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_141 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_22 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_41 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_64 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_77 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_89 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

assign grp_rsaModExp_interleaveModMult_fu_89_ap_start = ap_reg_grp_rsaModExp_interleaveModMult_fu_89_ap_start;

assign grp_rsaModExp_montMult_fu_112_ap_start = ap_reg_grp_rsaModExp_montMult_fu_112_ap_start;

assign i_assign_cast_fu_162_p1 = $signed(i_assign_reg_77);

assign i_fu_181_p2 = ($signed(i_assign_reg_77) + $signed(ap_const_lv11_7FF));

assign out_V = grp_rsaModExp_montMult_fu_112_ap_return;

assign tmp_1_fu_174_p3 = e_V[i_assign_cast_fu_162_p1];

assign tmp_fu_166_p3 = i_assign_reg_77[ap_const_lv32_A];

endmodule //rsaModExp
// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

module rsa_toplevel_mul_6ns_1024ns_1029_44_MulnS_0(clk, ce, a, b, p);
input clk;
input ce;
input[6 - 1 : 0] a; // synthesis attribute keep a "true"
input[1024 - 1 : 0] b; // synthesis attribute keep b "true"
output[1029 - 1 : 0] p;

reg [6 - 1 : 0] a_reg0;
reg [1024 - 1 : 0] b_reg0;
wire [1029 - 1 : 0] tmp_product;
reg [1029 - 1 : 0] buff0;
reg [1029 - 1 : 0] buff1;
reg [1029 - 1 : 0] buff2;
reg [1029 - 1 : 0] buff3;
reg [1029 - 1 : 0] buff4;
reg [1029 - 1 : 0] buff5;
reg [1029 - 1 : 0] buff6;
reg [1029 - 1 : 0] buff7;
reg [1029 - 1 : 0] buff8;
reg [1029 - 1 : 0] buff9;
reg [1029 - 1 : 0] buff10;
reg [1029 - 1 : 0] buff11;
reg [1029 - 1 : 0] buff12;
reg [1029 - 1 : 0] buff13;
reg [1029 - 1 : 0] buff14;
reg [1029 - 1 : 0] buff15;
reg [1029 - 1 : 0] buff16;
reg [1029 - 1 : 0] buff17;
reg [1029 - 1 : 0] buff18;
reg [1029 - 1 : 0] buff19;
reg [1029 - 1 : 0] buff20;
reg [1029 - 1 : 0] buff21;
reg [1029 - 1 : 0] buff22;
reg [1029 - 1 : 0] buff23;
reg [1029 - 1 : 0] buff24;
reg [1029 - 1 : 0] buff25;
reg [1029 - 1 : 0] buff26;
reg [1029 - 1 : 0] buff27;
reg [1029 - 1 : 0] buff28;
reg [1029 - 1 : 0] buff29;
reg [1029 - 1 : 0] buff30;
reg [1029 - 1 : 0] buff31;
reg [1029 - 1 : 0] buff32;
reg [1029 - 1 : 0] buff33;
reg [1029 - 1 : 0] buff34;
reg [1029 - 1 : 0] buff35;
reg [1029 - 1 : 0] buff36;
reg [1029 - 1 : 0] buff37;
reg [1029 - 1 : 0] buff38;
reg [1029 - 1 : 0] buff39;
reg [1029 - 1 : 0] buff40;
reg [1029 - 1 : 0] buff41;

assign p = buff41;
assign tmp_product = a_reg0 * b_reg0;
always @ (posedge clk) begin
    if (ce) begin
        a_reg0 <= a;
        b_reg0 <= b;
        buff0 <= tmp_product;
        buff1 <= buff0;
        buff2 <= buff1;
        buff3 <= buff2;
        buff4 <= buff3;
        buff5 <= buff4;
        buff6 <= buff5;
        buff7 <= buff6;
        buff8 <= buff7;
        buff9 <= buff8;
        buff10 <= buff9;
        buff11 <= buff10;
        buff12 <= buff11;
        buff13 <= buff12;
        buff14 <= buff13;
        buff15 <= buff14;
        buff16 <= buff15;
        buff17 <= buff16;
        buff18 <= buff17;
        buff19 <= buff18;
        buff20 <= buff19;
        buff21 <= buff20;
        buff22 <= buff21;
        buff23 <= buff22;
        buff24 <= buff23;
        buff25 <= buff24;
        buff26 <= buff25;
        buff27 <= buff26;
        buff28 <= buff27;
        buff29 <= buff28;
        buff30 <= buff29;
        buff31 <= buff30;
        buff32 <= buff31;
        buff33 <= buff32;
        buff34 <= buff33;
        buff35 <= buff34;
        buff36 <= buff35;
        buff37 <= buff36;
        buff38 <= buff37;
        buff39 <= buff38;
        buff40 <= buff39;
        buff41 <= buff40;
    end
end
endmodule

`timescale 1 ns / 1 ps
module rsa_toplevel_mul_6ns_1024ns_1029_44(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



rsa_toplevel_mul_6ns_1024ns_1029_44_MulnS_0 rsa_toplevel_mul_6ns_1024ns_1029_44_MulnS_0_U(
    .clk( clk ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule


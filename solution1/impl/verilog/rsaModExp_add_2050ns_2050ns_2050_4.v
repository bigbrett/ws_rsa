// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

module rsaModExp_add_2050ns_2050ns_2050_4_AddSubnS_2(clk, reset, ce, a, b, s);

// ---- input/output ports list here ----
input clk;
input reset;
input ce;
input [2050 - 1 : 0] a;
input [2050 - 1 : 0] b;
output [2050 - 1 : 0] s;

// ---- register and wire type variables list here ----

// wire for the primary inputs
wire [2050 - 1 : 0] a_reg;
wire [2050 - 1 : 0] b_reg;

// wires for each small adder
wire [513 - 1 : 0] a0_cb;
wire [513 - 1 : 0] b0_cb;
wire [1026 - 1 : 513] a1_cb;
wire [1026 - 1 : 513] b1_cb;
wire [1539 - 1 : 1026] a2_cb;
wire [1539 - 1 : 1026] b2_cb;
wire [2050 - 1 : 1539] a3_cb;
wire [2050 - 1 : 1539] b3_cb;

// registers for input register array
reg [513 - 1 : 0] a1_cb_regi1[1 - 1 : 0]; 
reg [513 - 1 : 0] b1_cb_regi1[1 - 1 : 0]; 
reg [513 - 1 : 0] a2_cb_regi2[2 - 1 : 0]; 
reg [513 - 1 : 0] b2_cb_regi2[2 - 1 : 0]; 
reg [511 - 1 : 0] a3_cb_regi3[3 - 1 : 0];
reg [511 - 1 : 0] b3_cb_regi3[3 - 1 : 0];

// wires for each full adder sum
wire [2050 - 1 : 0] fas;

// wires and register for carry out bit
wire faccout_ini;
wire faccout0_co0; 
wire faccout1_co1; 
wire faccout2_co2; 
wire faccout3_co3;

reg faccout0_co0_reg; 
reg faccout1_co1_reg; 
reg faccout2_co2_reg; 

// registers for output register array
reg [513 - 1 : 0] s0_ca_rego0[2 - 0 : 0]; 
reg [513 - 1 : 0] s1_ca_rego1[2 - 1 : 0]; 
reg [513 - 1 : 0] s2_ca_rego2[2 - 2 : 0]; 

// wire for the temporary output
wire [2050 - 1 : 0] s_tmp;

// ---- RTL code for assignment statements/always blocks/module instantiations here ----
assign a_reg = a;
assign b_reg = b;

// small adder input assigments
assign a0_cb = a_reg[513 - 1 : 0];
assign b0_cb = b_reg[513 - 1 : 0];
assign a1_cb = a_reg[1026 - 1 : 513];
assign b1_cb = b_reg[1026 - 1 : 513];
assign a2_cb = a_reg[1539 - 1 : 1026];
assign b2_cb = b_reg[1539 - 1 : 1026];
assign a3_cb = a_reg[2050 - 1 : 1539];
assign b3_cb = b_reg[2050 - 1 : 1539];

// input register array
always @ (posedge clk) begin
    if (ce) begin
        a1_cb_regi1 [0] <= a1_cb;
        b1_cb_regi1 [0] <= b1_cb;
        a2_cb_regi2 [0] <= a2_cb;
        b2_cb_regi2 [0] <= b2_cb;
        a3_cb_regi3 [0] <= a3_cb;
        b3_cb_regi3 [0] <= b3_cb;
        a2_cb_regi2 [1] <= a2_cb_regi2 [0];
        b2_cb_regi2 [1] <= b2_cb_regi2 [0];
        a3_cb_regi3 [1] <= a3_cb_regi3 [0];
        b3_cb_regi3 [1] <= b3_cb_regi3 [0];
        a3_cb_regi3 [2] <= a3_cb_regi3 [1];
        b3_cb_regi3 [2] <= b3_cb_regi3 [1];
    end
end

// carry out bit processing
always @ (posedge clk) begin
    if (ce) begin
        faccout0_co0_reg <= faccout0_co0;
        faccout1_co1_reg <= faccout1_co1;
        faccout2_co2_reg <= faccout2_co2;
    end
end

// small adder generation 
        rsaModExp_add_2050ns_2050ns_2050_4_AddSubnS_2_fadder u0 (
            .faa    ( a0_cb ),
            .fab    ( b0_cb ),
            .facin  ( faccout_ini ),
            .fas    ( fas[512:0] ),
            .facout ( faccout0_co0 )
        );
        rsaModExp_add_2050ns_2050ns_2050_4_AddSubnS_2_fadder u1 (
            .faa    ( a1_cb_regi1[0] ),
            .fab    ( b1_cb_regi1[0] ),
            .facin  ( faccout0_co0_reg),
            .fas    ( fas[1025:513] ),
            .facout ( faccout1_co1 )
        );
        rsaModExp_add_2050ns_2050ns_2050_4_AddSubnS_2_fadder u2 (
            .faa    ( a2_cb_regi2[1] ),
            .fab    ( b2_cb_regi2[1] ),
            .facin  ( faccout1_co1_reg),
            .fas    ( fas[1538:1026] ),
            .facout ( faccout2_co2 )
        );
        rsaModExp_add_2050ns_2050ns_2050_4_AddSubnS_2_fadder_f u3 (
            .faa    ( a3_cb_regi3[2] ),
            .fab    ( b3_cb_regi3[2] ),
            .facin  ( faccout2_co2_reg ),
            .fas    ( fas[2049 :1539] ),
            .facout ( faccout3_co3 )
        );

assign faccout_ini = 1'b0;

// output register array
always @ (posedge clk) begin
    if (ce) begin
        s0_ca_rego0 [0] <= fas[513-1 : 0];
        s1_ca_rego1 [0] <= fas[1026-1 : 513];
        s2_ca_rego2 [0] <= fas[1539-1 : 1026];
        s0_ca_rego0 [1] <= s0_ca_rego0 [0];
        s0_ca_rego0 [2] <= s0_ca_rego0 [1];
        s1_ca_rego1 [1] <= s1_ca_rego1 [0];
    end
end

// get the s_tmp, assign it to the primary output
assign s_tmp[513-1 : 0] = s0_ca_rego0[2];
assign s_tmp[1026-1 : 513] = s1_ca_rego1[1];
assign s_tmp[1539-1 : 1026] = s2_ca_rego2[0];
assign s_tmp[2050 - 1 : 1539] = fas[2049 :1539];

assign s = s_tmp;

endmodule

// short adder
module rsaModExp_add_2050ns_2050ns_2050_4_AddSubnS_2_fadder 
#(parameter
    N = 513
)(
    input  [N-1 : 0]  faa,
    input  [N-1 : 0]  fab,
    input  wire  facin,
    output [N-1 : 0]  fas,
    output wire  facout
);
assign {facout, fas} = faa + fab + facin;

endmodule

// the final stage short adder
module rsaModExp_add_2050ns_2050ns_2050_4_AddSubnS_2_fadder_f 
#(parameter
    N = 511
)(
    input  [N-1 : 0]  faa,
    input  [N-1 : 0]  fab,
    input  wire  facin,
    output [N-1 : 0]  fas,
    output wire  facout
);
assign {facout, fas} = faa + fab + facin;

endmodule

`timescale 1 ns / 1 ps
module rsaModExp_add_2050ns_2050ns_2050_4(
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



rsaModExp_add_2050ns_2050ns_2050_4_AddSubnS_2 rsaModExp_add_2050ns_2050ns_2050_4_AddSubnS_2_U(
    .clk( clk ),
    .reset( reset ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .s( dout ));

endmodule

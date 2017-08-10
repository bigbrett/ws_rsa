############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -limit 1 -type function "rsaModExp" montMult
set_directive_interface -mode s_axilite "rsaModExp"
set_directive_interface -mode s_axilite "rsaModExp" e
set_directive_interface -mode s_axilite "rsaModExp" n
set_directive_interface -mode s_axilite "rsaModExp" out
set_directive_interface -mode s_axilite "rsaModExp" Mbar
set_directive_interface -mode s_axilite "rsaModExp" xbar
set_directive_resource -core AddSub_DSP "montMult" S
set_directive_resource -core DSP48 "montMult" tmp

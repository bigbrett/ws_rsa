############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -limit 1 -type function "rsaModExp" montMult
set_directive_allocation -limit 1 -type function "rsaModExp" interleaveModMult
set_directive_interface -mode s_axilite "rsaModExp"
set_directive_interface -mode s_axilite "rsaModExp"
set_directive_interface -mode ap_fifo "rsaModExp" M
set_directive_interface -mode ap_fifo "rsaModExp" e
set_directive_interface -mode ap_fifo "rsaModExp" n
set_directive_interface -mode s_axilite "rsaModExp" out

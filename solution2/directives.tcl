############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -limit 1 -type function "rsaModExp" montMult
set_directive_resource -core AddSub_DSP "montMult" S
set_directive_resource -core DSP48 "montMult" tmp
set_directive_interface -mode ap_ctrl_hs "rsaModExp"

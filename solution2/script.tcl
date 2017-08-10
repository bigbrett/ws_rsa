############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ws_rsa
set_top rsaModExp
add_files ws_rsa/src/rsaModExp.hpp
add_files ws_rsa/src/rsaModExp.cpp
add_files ws_rsa/src/montMult.hpp
add_files ws_rsa/src/montMult.cpp
add_files ws_rsa/src/interleaveModMult.hpp
add_files ws_rsa/src/interleaveModMult.cpp
add_files ws_rsa/src/globals.hpp
add_files -tb ws_rsa/src/rsa_tb.cpp
open_solution "solution2"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./ws_rsa/solution2/directives.tcl"
csim_design -clean -compiler gcc
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog

############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ws_rsa64bit
set_top rsaModExp
add_files ws_rsa64bit/solution1/ModExp.cpp
add_files ws_rsa64bit/solution1/ModExp.hpp
add_files ws_rsa64bit/solution1/globals.hpp
add_files ws_rsa64bit/solution1/interleaveModMult.cpp
add_files ws_rsa64bit/solution1/interleaveModMult.hpp
add_files ws_rsa64bit/solution1/montMult.cpp
add_files ws_rsa64bit/solution1/montMult.hpp
add_files ws_rsa64bit/solution1/rsaModExp.cpp
add_files ws_rsa64bit/solution1/rsaModExp.hpp
add_files -tb ws_rsa64bit/solution1/rsa_tb.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 25 -name default
#source "./ws_rsa64bit/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog

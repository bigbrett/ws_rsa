# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2016.2
# Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
# 
# ==============================================================

__SIM_FPO__ = 1
__SIM_OPENCV__ = 1
__SIM_FFT__ = 1
__SIM_FIR__ = 1
__SIM_DDS__ = 1

TARGET := cosim.tv.exe

AUTOPILOT_ROOT := /opt/Xilinx/Vivado_HLS/2016.2
AUTOPILOT_MACH := lnx64

ifdef COSIM_M32
  AUTOPILOT_MACH := lnx32
  IFLAG += -m32
endif
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /opt/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/bin
endif

IFLAG += -g

IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/auto_cc/include"
IFLAG += -I "/usr/include/x86_64-linux-gnu"
IFLAG += -D__SIM_FPO__
IFLAG += -D__SIM_OPENCV__
IFLAG += -D__SIM_FFT__
IFLAG += -D__SIM_FIR__
IFLAG += -D__SIM_DDS__
LFLAG += -L "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/systemc/lib" -lsystemc -lpthread
IFLAG += -D__RTL_SIMULATION__
IFLAG += -D__xilinx_ip_top=
DFLAG += -DAESL_PIPELINE

include ./Makefile.rules

all : $(TARGET)

$(ObjDir)/rsa_tb.cpp_pre.cpp.tb.o : rsa_tb.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling rsa_tb.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) gcc -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG)  $< -o $@; \

$(ObjDir)/rsaModExp.cpp_pre.cpp.tb.o : rsaModExp.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling rsaModExp.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) gcc -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG)  $< -o $@; \

$(ObjDir)/montMult.cpp_pre.cpp.tb.o : montMult.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling montMult.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) gcc -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG)  $< -o $@; \

$(ObjDir)/interleaveModMult.cpp_pre.cpp.tb.o : interleaveModMult.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling interleaveModMult.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) gcc -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG)  $< -o $@; \

$(ObjDir)/ModExp.cpp_pre.cpp.tb.o : ModExp.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ModExp.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) gcc -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG)  $< -o $@; \


/opt/Xilinx/Vivado/2016.4/bin/xelab xil_defaultlib.apatb_rsaModExp_top -prj rsaModExp.prj --initfile "/opt/Xilinx/Vivado/2016.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s rsaModExp 
/opt/Xilinx/Vivado/2016.4/bin/xsim --noieeewarnings rsaModExp -tclbatch rsaModExp.tcl


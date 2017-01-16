
xelab xil_defaultlib.apatb_rsaModExp_top -prj rsaModExp.prj --initfile "/opt/Xilinx/Vivado/2016.2/bin/../data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s rsaModExp 
xsim --noieeewarnings rsaModExp -tclbatch rsaModExp.tcl


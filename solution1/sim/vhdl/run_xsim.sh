
xelab xil_defaultlib.apatb_ModExp_top -prj ModExp.prj --initfile "/opt/Xilinx/Vivado/2016.2/bin/../data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s ModExp 
xsim --noieeewarnings ModExp -tclbatch ModExp.tcl


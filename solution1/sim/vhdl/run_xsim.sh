
xelab xil_defaultlib.apatb_rsa_toplevel_top -prj rsa_toplevel.prj --initfile "/opt/Xilinx/Vivado/2016.2/bin/../data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s rsa_toplevel 
xsim --noieeewarnings rsa_toplevel -tclbatch rsa_toplevel.tcl


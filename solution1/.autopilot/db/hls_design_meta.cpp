#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("M_V", 2048, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("e_V", 2048, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("n_V", 2048, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("out_V", 2048, hls_out, 3, "ap_vld", "out_data", 1),
	Port_Property("out_V_ap_vld", 1, hls_out, 3, "ap_vld", "out_vld", 1),
};
const char* HLS_Design_Meta::dut_name = "rsaModExp";

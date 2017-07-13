set C_TypeInfoList {{ 
"rsaModExp" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"M": [[],"0"] }, {"e": [[],"0"] }, {"n": [[],"0"] }, {"out": [[],{ "pointer": "0"}] }],[],""], 
"0": [ "uintRSA_t", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_uint<2048>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 2048}}]],""]}}]
}}
set moduleName rsaModExp
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {rsaModExp}
set C_modelType { void 0 }
set C_modelArgList {
	{ M_V int 2048 regular {axi_slave 0}  }
	{ e_V int 2048 regular {axi_slave 0}  }
	{ n_V int 2048 regular {axi_slave 0}  }
	{ out_V int 2048 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "M_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 2048, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2047,"cElement": [{"cName": "M.V","cData": "uint2048","bit_use": { "low": 0,"up": 2047},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":275}} , 
 	{ "Name" : "e_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 2048, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2047,"cElement": [{"cName": "e.V","cData": "uint2048","bit_use": { "low": 0,"up": 2047},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":276}, "offset_end" : {"in":535}} , 
 	{ "Name" : "n_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 2048, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2047,"cElement": [{"cName": "n.V","cData": "uint2048","bit_use": { "low": 0,"up": 2047},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":536}, "offset_end" : {"in":795}} , 
 	{ "Name" : "out_V", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 2048, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2047,"cElement": [{"cName": "out.V","cData": "uint2048","bit_use": { "low": 0,"up": 2047},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":796}, "offset_end" : {"out":1055}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 11 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 11 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"rsaModExp","role":"start","value":"0","valid_bit":"0"},{"name":"rsaModExp","role":"continue","value":"0","valid_bit":"4"},{"name":"rsaModExp","role":"auto_start","value":"0","valid_bit":"7"},{"name":"M_V","role":"data","value":"16"},{"name":"e_V","role":"data","value":"276"},{"name":"n_V","role":"data","value":"536"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"rsaModExp","role":"start","value":"0","valid_bit":"0"},{"name":"rsaModExp","role":"done","value":"0","valid_bit":"1"},{"name":"rsaModExp","role":"idle","value":"0","valid_bit":"2"},{"name":"rsaModExp","role":"ready","value":"0","valid_bit":"3"},{"name":"rsaModExp","role":"auto_start","value":"0","valid_bit":"7"},{"name":"out_V","role":"data","value":"796"}, {"name":"out_V","role":"valid","value":"1052","valid_bit":"0"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "6"],
		"CDFG" : "rsaModExp",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "M_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "e_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "n_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "out_V", "Type" : "Vld", "Direction" : "O"}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_interleaveModMult_fu_95"},
		{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_interleaveModMult_fu_95"},
		{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montMult_fu_118"},
		{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montMult_fu_118"},
		{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montMult_fu_118"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rsaModExp_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_interleaveModMult_fu_95", "Parent" : "0", "Child" : ["3", "4", "5"],
		"CDFG" : "interleaveModMult",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "Y_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "M_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_interleaveModMult_fu_95.rsaModExp_add_205bkb_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_interleaveModMult_fu_95.rsaModExp_sub_205cud_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_interleaveModMult_fu_95.rsaModExp_sub_205cud_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_fu_118", "Parent" : "0", "Child" : ["7", "8", "9"],
		"CDFG" : "montMult",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "X0_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "Y0_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "M0_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_fu_118.rsaModExp_add_205dEe_U6", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_fu_118.rsaModExp_sub_204eOg_U7", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_fu_118.rsaModExp_add_205dEe_U8", "Parent" : "6"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33636389", "Max" : "67201061"}
	, {"Name" : "Interval", "Min" : "33636390", "Max" : "67201062"}
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}

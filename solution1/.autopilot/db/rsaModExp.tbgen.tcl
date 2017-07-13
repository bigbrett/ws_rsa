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
	{ M_V int 2048 regular  }
	{ e_V int 2048 regular  }
	{ n_V int 2048 regular  }
	{ out_V int 2048 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "M_V", "interface" : "wire", "bitwidth" : 2048, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2047,"cElement": [{"cName": "M.V","cData": "uint2048","bit_use": { "low": 0,"up": 2047},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "e_V", "interface" : "wire", "bitwidth" : 2048, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2047,"cElement": [{"cName": "e.V","cData": "uint2048","bit_use": { "low": 0,"up": 2047},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "n_V", "interface" : "wire", "bitwidth" : 2048, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2047,"cElement": [{"cName": "n.V","cData": "uint2048","bit_use": { "low": 0,"up": 2047},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "out_V", "interface" : "wire", "bitwidth" : 2048, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":2047,"cElement": [{"cName": "out.V","cData": "uint2048","bit_use": { "low": 0,"up": 2047},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ M_V sc_in sc_lv 2048 signal 0 } 
	{ e_V sc_in sc_lv 2048 signal 1 } 
	{ n_V sc_in sc_lv 2048 signal 2 } 
	{ out_V sc_out sc_lv 2048 signal 3 } 
	{ out_V_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "M_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2048, "type": "signal", "bundle":{"name": "M_V", "role": "default" }} , 
 	{ "name": "e_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2048, "type": "signal", "bundle":{"name": "e_V", "role": "default" }} , 
 	{ "name": "n_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2048, "type": "signal", "bundle":{"name": "n_V", "role": "default" }} , 
 	{ "name": "out_V", "direction": "out", "datatype": "sc_lv", "bitwidth":2048, "type": "signal", "bundle":{"name": "out_V", "role": "default" }} , 
 	{ "name": "out_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_V", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5", "6", "7", "8", "9"],
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
		{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montMult_fu_143"},
		{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montMult_fu_143"},
		{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_montMult_fu_143"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_montMult_fu_143", "Parent" : "0", "Child" : ["2", "3", "4"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_fu_143.rsaModExp_add_205bkb_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_fu_143.rsaModExp_sub_204cud_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_montMult_fu_143.rsaModExp_add_205bkb_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rsaModExp_add_205dEe_U7", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rsaModExp_sub_205eOg_U8", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rsaModExp_sub_205eOg_U9", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rsaModExp_sub_205eOg_U10", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rsaModExp_sub_205eOg_U11", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "33628189", "Max" : "67192861"}
	, {"Name" : "Interval", "Min" : "33628190", "Max" : "67192862"}
]}

set Spec2ImplPortList { 
	M_V { ap_none {  { M_V in_data 0 2048 } } }
	e_V { ap_none {  { e_V in_data 0 2048 } } }
	n_V { ap_none {  { n_V in_data 0 2048 } } }
	out_V { ap_vld {  { out_V out_data 1 2048 }  { out_V_ap_vld out_vld 1 1 } } }
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

set C_TypeInfoList {{ 
"ModExp" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"M": [[],"0"] }, {"e": [[],"0"] }, {"n": [[],"0"] }, {"Mbar": [[],"0"] }, {"xbar": [[],"0"] }, {"out": [[],{ "pointer": "0"}] }],[],""], 
"0": [ "uint1024_t", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_uint<1024>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1024}}]],""]}}]
}}
set moduleName ModExp
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {ModExp}
set C_modelType { void 0 }
set C_modelArgList {
	{ M_V int 1024 unused  }
	{ e_V int 1024 regular  }
	{ n_V int 1024 regular  }
	{ Mbar_V int 1024 regular  }
	{ xbar_V int 1024 regular  }
	{ out_V int 1024 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "M_V", "interface" : "wire", "bitwidth" : 1024, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1023,"cElement": [{"cName": "M.V","cData": "uint1024","bit_use": { "low": 0,"up": 1023},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "e_V", "interface" : "wire", "bitwidth" : 1024, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1023,"cElement": [{"cName": "e.V","cData": "uint1024","bit_use": { "low": 0,"up": 1023},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "n_V", "interface" : "wire", "bitwidth" : 1024, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1023,"cElement": [{"cName": "n.V","cData": "uint1024","bit_use": { "low": 0,"up": 1023},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Mbar_V", "interface" : "wire", "bitwidth" : 1024, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1023,"cElement": [{"cName": "Mbar.V","cData": "uint1024","bit_use": { "low": 0,"up": 1023},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "xbar_V", "interface" : "wire", "bitwidth" : 1024, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1023,"cElement": [{"cName": "xbar.V","cData": "uint1024","bit_use": { "low": 0,"up": 1023},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "out_V", "interface" : "wire", "bitwidth" : 1024, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":1023,"cElement": [{"cName": "out.V","cData": "uint1024","bit_use": { "low": 0,"up": 1023},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ M_V sc_in sc_lv 1024 signal 0 } 
	{ e_V sc_in sc_lv 1024 signal 1 } 
	{ n_V sc_in sc_lv 1024 signal 2 } 
	{ Mbar_V sc_in sc_lv 1024 signal 3 } 
	{ xbar_V sc_in sc_lv 1024 signal 4 } 
	{ out_V sc_out sc_lv 1024 signal 5 } 
	{ out_V_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "M_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "M_V", "role": "default" }} , 
 	{ "name": "e_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "e_V", "role": "default" }} , 
 	{ "name": "n_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "n_V", "role": "default" }} , 
 	{ "name": "Mbar_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "Mbar_V", "role": "default" }} , 
 	{ "name": "xbar_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "xbar_V", "role": "default" }} , 
 	{ "name": "out_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "out_V", "role": "default" }} , 
 	{ "name": "out_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_V", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"], "CDFG" : "ModExp", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "M_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "e_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "n_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "Mbar_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "xbar_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "out_V", "Type" : "Vld", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [
		{"State" : "ap_ST_st3_fsm_2", "FSM" : "ap_CS_fsm", "SubInst" : "grp_ModExp_montMult_fu_95"},
		{"State" : "ap_ST_st5_fsm_4", "FSM" : "ap_CS_fsm", "SubInst" : "grp_ModExp_montMult_fu_95"},
		{"State" : "ap_ST_st4_fsm_3", "FSM" : "ap_CS_fsm", "SubInst" : "grp_ModExp_montMult_fu_95"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ModExp_montMult_fu_95", "Parent" : "0", "Child" : ["2", "3", "4", "5"], "CDFG" : "ModExp_montMult", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "X_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "Y_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "M_V", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ModExp_montMult_fu_95.ModExp_sub_1024ns_1024ns_1024_2_U1", "Parent" : "1", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ModExp_montMult_fu_95.ModExp_add_1024ns_1024ns_1024_2_U2", "Parent" : "1", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ModExp_montMult_fu_95.ModExp_add_1025ns_1025ns_1025_2_U3", "Parent" : "1", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ModExp_montMult_fu_95.ModExp_add_1025ns_1025ns_1025_2_U4", "Parent" : "1", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6304774", "Max" : "12600326"}
	, {"Name" : "Interval", "Min" : "6304775", "Max" : "12600327"}
]}

set Spec2ImplPortList { 
	M_V { ap_none {  { M_V in_data 0 1024 } } }
	e_V { ap_none {  { e_V in_data 0 1024 } } }
	n_V { ap_none {  { n_V in_data 0 1024 } } }
	Mbar_V { ap_none {  { Mbar_V in_data 0 1024 } } }
	xbar_V { ap_none {  { xbar_V in_data 0 1024 } } }
	out_V { ap_vld {  { out_V out_data 1 1024 }  { out_V_ap_vld out_vld 1 1 } } }
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

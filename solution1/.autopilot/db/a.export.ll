; ModuleID = '/home/brett/workspace/Vivado_WS/ws_rsa64bit/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rsaModExp_str = internal unnamed_addr constant [10 x i8] c"rsaModExp\00"
@llvm_global_ctors_1 = appending global [4 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a11, void ()* @_GLOBAL__I_a18, void ()* @_GLOBAL__I_a25]
@llvm_global_ctors_0 = appending global [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535]
@p_str4 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@p_str2 = private unnamed_addr constant [18 x i8] c"interleaveModMult\00", align 1
@p_str15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [9 x i8] c"montMult\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rsaModExp_interleaveModMult.str = internal unnamed_addr constant [28 x i8] c"rsaModExp_interleaveModMult\00"
@rsaModExp_montMult.str = internal unnamed_addr constant [19 x i8] c"rsaModExp_montMult\00"

define void @rsaModExp(i1024 %M_V, i1024 %e_V, i1024 %n_V, i1024* %out_V) {
  %xbar_V_1 = alloca i1024
  call void (...)* @_ssdm_op_SpecBitsMap(i1024 %M_V), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(i1024 %e_V), !map !92
  call void (...)* @_ssdm_op_SpecBitsMap(i1024 %n_V), !map !96
  call void (...)* @_ssdm_op_SpecBitsMap(i1024* %out_V), !map !100
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @rsaModExp_str) nounwind
  %n_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %n_V)
  %e_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %e_V)
  %M_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %M_V)
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, [19 x i8]* @rsaModExp_montMult.str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, [28 x i8]* @rsaModExp_interleaveModMult.str, [1 x i8]* @p_str) nounwind
  %Mbar_V = call fastcc i1024 @rsaModExp_interleaveModMult(i1024 %M_V_read, i1024 %n_V_read)
  %xbar_V = call fastcc i1024 @rsaModExp_interleaveModMult(i1024 1, i1024 %n_V_read)
  store i1024 %xbar_V, i1024* %xbar_V_1
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %i_assign = phi i11 [ 1023, %0 ], [ %i, %._crit_edge ]
  %i_assign_cast = sext i11 %i_assign to i32
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %i_assign, i32 10)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  br i1 %tmp, label %4, label %2

; <label>:2                                       ; preds = %1
  %xbar_V_1_load_1 = load i1024* %xbar_V_1
  %xbar_V_2 = call fastcc i1024 @rsaModExp_montMult(i1024 %xbar_V_1_load_1, i1024 %xbar_V_1_load_1, i1024 %n_V_read)
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i1024.i32(i1024 %e_V_read, i32 %i_assign_cast)
  br i1 %tmp_1, label %3, label %._crit_edge.pre

; <label>:3                                       ; preds = %2
  %xbar_V_3 = call fastcc i1024 @rsaModExp_montMult(i1024 %Mbar_V, i1024 %xbar_V_2, i1024 %n_V_read)
  store i1024 %xbar_V_3, i1024* %xbar_V_1
  br label %._crit_edge

._crit_edge.pre:                                  ; preds = %2
  store i1024 %xbar_V_2, i1024* %xbar_V_1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.pre, %3
  %i = add i11 %i_assign, -1
  br label %1

; <label>:4                                       ; preds = %1
  %xbar_V_1_load = load i1024* %xbar_V_1
  %call_ret = call fastcc i1024 @rsaModExp_montMult(i1024 %xbar_V_1_load, i1024 1, i1024 %n_V_read)
  call void @_ssdm_op_Write.ap_auto.i1024P(i1024* %out_V, i1024 %call_ret)
  ret void
}

define internal fastcc i1024 @rsaModExp_montMult(i1024 %X0_V, i1024 %Y0_V, i1024 %M0_V) readnone {
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 256, [4 x i8]* @p_str4, [1 x i8]* @p_str15, [1 x i8]* @p_str15, [1 x i8]* @p_str15) nounwind
  %M0_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %M0_V)
  %Y0_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %Y0_V)
  %X0_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %X0_V)
  %X_V = zext i1024 %X0_V_read to i1026
  %Y_V = zext i1024 %Y0_V_read to i1026
  %M_V = zext i1024 %M0_V_read to i1026
  %M_V_cast = zext i1024 %M0_V_read to i1025
  br label %1

; <label>:1                                       ; preds = %_ZrsILi1026ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit, %0
  %p_s = phi i1025 [ 0, %0 ], [ %tmp_5, %_ZrsILi1026ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ]
  %i_assign = phi i11 [ 0, %0 ], [ %i, %_ZrsILi1026ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ]
  %p_cast = zext i1025 %p_s to i1026
  %i_assign_cast1 = zext i11 %i_assign to i32
  %exitcond = icmp eq i11 %i_assign, -1024
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %i = add i11 %i_assign, 1
  br i1 %exitcond, label %2, label %_ZrsILi1026ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit

_ZrsILi1026ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit: ; preds = %1
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i1026.i32(i1026 %X_V, i32 %i_assign_cast1)
  %S_V = add i1026 %Y_V, %p_cast
  %p_Val2_1 = select i1 %tmp_8, i1026 %S_V, i1026 %p_cast
  %tmp_9 = trunc i1026 %p_Val2_1 to i1
  %S_V_1 = add i1026 %M_V, %p_Val2_1
  %tmp_3 = call i1025 @_ssdm_op_PartSelect.i1025.i1026.i32.i32(i1026 %S_V_1, i32 1, i32 1025)
  %tmp_4 = call i1025 @_ssdm_op_PartSelect.i1025.i1026.i32.i32(i1026 %p_Val2_1, i32 1, i32 1025)
  %tmp_5 = select i1 %tmp_9, i1025 %tmp_3, i1025 %tmp_4
  br label %1

; <label>:2                                       ; preds = %1
  %tmp = icmp ult i1025 %p_s, %M_V_cast
  %tmp_2 = trunc i1025 %p_s to i1024
  %tmp_6 = trunc i1025 %p_s to i1024
  %tmp_7 = sub i1024 %tmp_2, %M0_V_read
  %ssdm_int_V_write_assign = select i1 %tmp, i1024 %tmp_6, i1024 %tmp_7
  ret i1024 %ssdm_int_V_write_assign
}

declare i1026 @llvm.part.select.i1026(i1026, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc i1024 @rsaModExp_interleaveModMult(i1024 %Y_V, i1024 %M_V) readnone {
  %M_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %M_V)
  %Y_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %Y_V)
  %tmp = zext i1024 %M_V_read to i1028
  %tmp_s = zext i1024 %Y_V_read to i1028
  br label %1

; <label>:1                                       ; preds = %_ZlsILi1028ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit, %0
  %p_Val2_s = phi i1028 [ 0, %0 ], [ %P_V_5, %_ZlsILi1028ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ]
  %i_assign = phi i12 [ 1024, %0 ], [ %i, %_ZlsILi1028ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ]
  %i_assign_cast = sext i12 %i_assign to i32
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %i_assign, i32 11)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1025, i64 1025, i64 1025)
  br i1 %tmp_10, label %2, label %_ZlsILi1028ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit

_ZlsILi1028ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit: ; preds = %1
  %r_V = shl i1028 %p_Val2_s, 1
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i1025.i32(i1025 -179769313486231590772930519078902473361797697894230657273430081157732675805500963132708477322407536021120113879871393357658789768814416622492847430639474124377767893424865485276302219601246094119453082952085005768838150682342462881473913110540827237163350510684586298239947245938479716304835356329624224137216, i32 %i_assign_cast)
  %P_V_1 = add i1028 %r_V, %tmp_s
  %P_V_4 = select i1 %tmp_13, i1028 %P_V_1, i1028 %r_V
  %tmp_4 = icmp ult i1028 %P_V_4, %tmp
  %P_V_2 = sub i1028 %P_V_4, %tmp
  %p_036_1_P_V_2 = select i1 %tmp_4, i1028 %P_V_4, i1028 %P_V_2
  %tmp_5 = icmp ult i1028 %p_036_1_P_V_2, %tmp
  %P_V_3 = sub i1028 %p_036_1_P_V_2, %tmp
  %P_V_5 = select i1 %tmp_5, i1028 %p_036_1_P_V_2, i1028 %P_V_3
  %i = add i12 -1, %i_assign
  br label %1

; <label>:2                                       ; preds = %1
  %tmp_11 = trunc i1028 %p_Val2_s to i1024
  ret i1024 %tmp_11
}

define weak void @_ssdm_op_Write.ap_auto.i1024P(i1024*, i1024) {
entry:
  store i1024 %1, i1024* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecResourceLimit(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1024 @_ssdm_op_Read.ap_auto.i1024(i1024) {
entry:
  ret i1024 %0
}

declare i1027 @_ssdm_op_PartSelect.i1027.i1028.i32.i32(i1028, i32, i32) nounwind readnone

define weak i1025 @_ssdm_op_PartSelect.i1025.i1026.i32.i32(i1026, i32, i32) nounwind readnone {
entry:
  %empty = call i1026 @llvm.part.select.i1026(i1026 %0, i32 %1, i32 %2)
  %empty_5 = trunc i1026 %empty to i1025
  ret i1025 %empty_5
}

declare i1024 @_ssdm_op_PartSelect.i1024.i1028.i32.i32(i1028, i32, i32) nounwind readnone

declare i1024 @_ssdm_op_PartSelect.i1024.i1025.i32.i32(i1025, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i1026.i32.i32(i1026, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_6 = shl i12 1, %empty
  %empty_7 = and i12 %0, %empty_6
  %empty_8 = icmp ne i12 %empty_7, 0
  ret i1 %empty_8
}

define weak i1 @_ssdm_op_BitSelect.i1.i11.i32(i11, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i11
  %empty_9 = shl i11 1, %empty
  %empty_10 = and i11 %0, %empty_9
  %empty_11 = icmp ne i11 %empty_10, 0
  ret i1 %empty_11
}

define weak i1 @_ssdm_op_BitSelect.i1.i1026.i32(i1026, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i1026
  %empty_12 = shl i1026 1, %empty
  %empty_13 = and i1026 %0, %empty_12
  %empty_14 = icmp ne i1026 %empty_13, 0
  ret i1 %empty_14
}

define weak i1 @_ssdm_op_BitSelect.i1.i1025.i32(i1025, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i1025
  %empty_15 = shl i1025 1, %empty
  %empty_16 = and i1025 %0, %empty_15
  %empty_17 = icmp ne i1025 %empty_16, 0
  ret i1 %empty_17
}

define weak i1 @_ssdm_op_BitSelect.i1.i1024.i32(i1024, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i1024
  %empty_18 = shl i1024 1, %empty
  %empty_19 = and i1024 %0, %empty_18
  %empty_20 = icmp ne i1024 %empty_19, 0
  ret i1 %empty_20
}

declare i1028 @_ssdm_op_BitConcatenate.i1028.i1027.i1(i1027, i1) nounwind readnone

declare void @_GLOBAL__I_a25() nounwind section ".text.startup"

declare void @_GLOBAL__I_a18() nounwind section ".text.startup"

declare void @_GLOBAL__I_a11() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !15, !15, !21, !21, !15, !15, !15, !15, !24, !24, !24, !30, !32, !32, !32, !15, !15, !15, !15, !15, !35, !37, !42, !42, !48, !48, !50, !50, !51, !53, !48, !7, !21, !21, !13, !13, !56, !59, !59, !59, !15, !15, !15, !15, !15, !35, !37, !61, !61, !63, !63, !65, !7, !67, !67, !69, !71, !13, !13, !73, !13, !13, !15, !15, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!79}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uintRSA_t", metadata !"uintRSA_t", metadata !"uintRSA_t", metadata !"uintRSA_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"M", metadata !"e", metadata !"n", metadata !"out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"i"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space"}
!17 = metadata !{metadata !"kernel_arg_access_qual"}
!18 = metadata !{metadata !"kernel_arg_type"}
!19 = metadata !{metadata !"kernel_arg_type_qual"}
!20 = metadata !{metadata !"kernel_arg_name"}
!21 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !23, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1024> &"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!24 = metadata !{null, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !6}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!26 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!28 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!30 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !31, metadata !6}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"X0", metadata !"Y0", metadata !"M0", metadata !"outData"}
!32 = metadata !{null, metadata !8, metadata !9, metadata !33, metadata !11, metadata !34, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<1026, false> &"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !36, metadata !6}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!37 = metadata !{null, metadata !38, metadata !26, metadata !39, metadata !40, metadata !41, metadata !6}
!38 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!40 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!42 = metadata !{null, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !6}
!43 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!44 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1026, false>*", metadata !"int", metadata !"int"}
!46 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !36, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1026, false> &"}
!50 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !23, metadata !6}
!51 = metadata !{null, metadata !8, metadata !9, metadata !52, metadata !11, metadata !36, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1026> &"}
!53 = metadata !{null, metadata !38, metadata !26, metadata !54, metadata !40, metadata !55, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1026, false> &", metadata !"int"}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!56 = metadata !{null, metadata !1, metadata !2, metadata !57, metadata !4, metadata !58, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<1024 + 1>", metadata !"ap_uint<1024 + 1>", metadata !"ap_uint<1024>", metadata !"uintRSA_t*"}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"Y", metadata !"M", metadata !"Pout"}
!59 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !34, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<1028, false> &"}
!61 = metadata !{null, metadata !43, metadata !44, metadata !62, metadata !46, metadata !47, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1028, false>*", metadata !"int", metadata !"int"}
!63 = metadata !{null, metadata !8, metadata !9, metadata !64, metadata !11, metadata !36, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1024, false> &"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !36, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1025, false> &"}
!67 = metadata !{null, metadata !8, metadata !9, metadata !68, metadata !11, metadata !23, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1028, false> &"}
!69 = metadata !{null, metadata !8, metadata !9, metadata !70, metadata !11, metadata !36, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1028> &"}
!71 = metadata !{null, metadata !38, metadata !26, metadata !72, metadata !40, metadata !55, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1028, false> &", metadata !"int"}
!73 = metadata !{null, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !6}
!74 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 1}
!75 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"uintRSA_t", metadata !"uintRSA_t", metadata !"uintRSA_t", metadata !"uintRSA_t", metadata !"uintRSA_t", metadata !"uintRSA_t*"}
!77 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"M", metadata !"e", metadata !"n", metadata !"Mbar", metadata !"xbar_in", metadata !"out"}
!79 = metadata !{metadata !80, [4 x i32]* @llvm_global_ctors_0}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 31, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"llvm.global_ctors.0", metadata !84, metadata !"", i32 0, i32 31}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 3, i32 1}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 1023, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"M.V", metadata !90, metadata !"uint1024", i32 0, i32 1023}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 0, i32 0}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 0, i32 1023, metadata !94}
!94 = metadata !{metadata !95}
!95 = metadata !{metadata !"e.V", metadata !90, metadata !"uint1024", i32 0, i32 1023}
!96 = metadata !{metadata !97}
!97 = metadata !{i32 0, i32 1023, metadata !98}
!98 = metadata !{metadata !99}
!99 = metadata !{metadata !"n.V", metadata !90, metadata !"uint1024", i32 0, i32 1023}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 1023, metadata !102}
!102 = metadata !{metadata !103}
!103 = metadata !{metadata !"out.V", metadata !104, metadata !"uint1024", i32 0, i32 1023}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 0, i32 1}

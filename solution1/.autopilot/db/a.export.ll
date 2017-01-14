; ModuleID = '/home/brett/workspace/Vivado_WS/ws_rsa64bit/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [4 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a7, void ()* @_GLOBAL__I_a12, void ()* @_GLOBAL__I_a19]
@llvm_global_ctors_0 = appending global [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535]
@ModExp_str = internal unnamed_addr constant [7 x i8] c"ModExp\00"
@p_str2 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@p_str14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str115 = private unnamed_addr constant [9 x i8] c"montMult\00", align 1
@ModExp_montMult.str = internal unnamed_addr constant [16 x i8] c"ModExp_montMult\00"

define internal fastcc i1024 @ModExp_montMult(i1024 %X0_V, i1024 %Y0_V, i1024 %M0_V) readnone {
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 256, [4 x i8]* @p_str2, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13) nounwind
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
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i1026.i32(i1026 %X_V, i32 %i_assign_cast1)
  %S_V = add i1026 %Y_V, %p_cast
  %p_Val2_1 = select i1 %tmp_7, i1026 %S_V, i1026 %p_cast
  %tmp_8 = trunc i1026 %p_Val2_1 to i1
  %S_V_1 = add i1026 %M_V, %p_Val2_1
  %tmp_2 = call i1025 @_ssdm_op_PartSelect.i1025.i1026.i32.i32(i1026 %S_V_1, i32 1, i32 1025)
  %tmp_3 = call i1025 @_ssdm_op_PartSelect.i1025.i1026.i32.i32(i1026 %p_Val2_1, i32 1, i32 1025)
  %tmp_5 = select i1 %tmp_8, i1025 %tmp_2, i1025 %tmp_3
  br label %1

; <label>:2                                       ; preds = %1
  %tmp = icmp ult i1025 %p_s, %M_V_cast
  %tmp_1 = trunc i1025 %p_s to i1024
  %tmp_4 = trunc i1025 %p_s to i1024
  %tmp_6 = sub i1024 %tmp_1, %M0_V_read
  %ssdm_int_V_write_assign = select i1 %tmp, i1024 %tmp_4, i1024 %tmp_6
  ret i1024 %ssdm_int_V_write_assign
}

declare i1026 @llvm.part.select.i1026(i1026, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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

define weak i1025 @_ssdm_op_PartSelect.i1025.i1026.i32.i32(i1026, i32, i32) nounwind readnone {
entry:
  %empty = call i1026 @llvm.part.select.i1026(i1026 %0, i32 %1, i32 %2)
  %empty_5 = trunc i1026 %empty to i1025
  ret i1025 %empty_5
}

declare i1024 @_ssdm_op_PartSelect.i1024.i1025.i32.i32(i1025, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i1026.i32.i32(i1026, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i11.i32(i11, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i11
  %empty_6 = shl i11 1, %empty
  %empty_7 = and i11 %0, %empty_6
  %empty_8 = icmp ne i11 %empty_7, 0
  ret i1 %empty_8
}

define weak i1 @_ssdm_op_BitSelect.i1.i1026.i32(i1026, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i1026
  %empty_9 = shl i1026 1, %empty
  %empty_10 = and i1026 %0, %empty_9
  %empty_11 = icmp ne i1026 %empty_10, 0
  ret i1 %empty_11
}

define weak i1 @_ssdm_op_BitSelect.i1.i1024.i32(i1024, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i1024
  %empty_12 = shl i1024 1, %empty
  %empty_13 = and i1024 %0, %empty_12
  %empty_14 = icmp ne i1024 %empty_13, 0
  ret i1 %empty_14
}

declare void @_GLOBAL__I_a7() nounwind section ".text.startup"

declare void @_GLOBAL__I_a19() nounwind section ".text.startup"

declare void @_GLOBAL__I_a12() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define void @ModExp(i1024 %M_V, i1024 %e_V, i1024 %n_V, i1024 %Mbar_V, i1024 %xbar_in_V, i1024* %out_V) {
  %xbar_V = alloca i1024
  call void (...)* @_ssdm_op_SpecBitsMap(i1024 %M_V), !map !112
  call void (...)* @_ssdm_op_SpecBitsMap(i1024 %e_V), !map !118
  call void (...)* @_ssdm_op_SpecBitsMap(i1024 %n_V), !map !122
  call void (...)* @_ssdm_op_SpecBitsMap(i1024 %Mbar_V), !map !126
  call void (...)* @_ssdm_op_SpecBitsMap(i1024 %xbar_in_V), !map !130
  call void (...)* @_ssdm_op_SpecBitsMap(i1024* %out_V), !map !134
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @ModExp_str) nounwind
  %xbar_in_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %xbar_in_V)
  %Mbar_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %Mbar_V)
  %n_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %n_V)
  %e_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %e_V)
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [16 x i8]* @ModExp_montMult.str, [1 x i8]* @p_str14) nounwind
  store i1024 %xbar_in_V_read, i1024* %xbar_V
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %i_assign = phi i11 [ 1023, %0 ], [ %i, %._crit_edge ]
  %i_assign_cast = sext i11 %i_assign to i32
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %i_assign, i32 10)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  br i1 %tmp, label %4, label %2

; <label>:2                                       ; preds = %1
  %xbar_V_load_1 = load i1024* %xbar_V
  %xbar_V_1 = call fastcc i1024 @ModExp_montMult(i1024 %xbar_V_load_1, i1024 %xbar_V_load_1, i1024 %n_V_read)
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i1024.i32(i1024 %e_V_read, i32 %i_assign_cast)
  br i1 %tmp_9, label %3, label %._crit_edge.pre

; <label>:3                                       ; preds = %2
  %xbar_V_2 = call fastcc i1024 @ModExp_montMult(i1024 %Mbar_V_read, i1024 %xbar_V_1, i1024 %n_V_read)
  store i1024 %xbar_V_2, i1024* %xbar_V
  br label %._crit_edge

._crit_edge.pre:                                  ; preds = %2
  store i1024 %xbar_V_1, i1024* %xbar_V
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.pre, %3
  %i = add i11 %i_assign, -1
  br label %1

; <label>:4                                       ; preds = %1
  %xbar_V_load = load i1024* %xbar_V
  %call_ret3 = call fastcc i1024 @ModExp_montMult(i1024 %xbar_V_load, i1024 1, i1024 %n_V_read)
  call void @_ssdm_op_Write.ap_auto.i1024P(i1024* %out_V, i1024 %call_ret3)
  ret void
}

!opencl.kernels = !{!0, !7, !7, !7, !13, !13, !13, !13, !13, !19, !22, !28, !28, !34, !36, !38, !38, !40, !34, !43, !13, !45, !48, !48, !36, !13, !52, !55, !55, !13, !57, !59, !59, !60, !60, !45, !62, !62, !64, !64, !66, !13, !13, !68, !7, !7, !7, !13, !13, !13, !13, !13, !71, !22, !28, !28, !36, !36, !38, !38, !66, !40, !36, !73, !75, !75, !64, !64, !76, !82, !82, !13, !13, !84, !13, !13, !13, !86, !88, !88, !13, !89, !13, !13, !13, !59, !59, !91, !91, !93, !93, !71, !95, !13, !97, !13, !13, !13, !59, !59, !93, !93, !99, !73, !64, !64, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!105}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<1024 + 1>", metadata !"ap_uint<1024 + 1>", metadata !"ap_uint<1024 + 1>", metadata !"ap_uint<1024 + 1>*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"Y", metadata !"M", metadata !"outData"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<1026, false> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1025> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!22 = metadata !{null, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!24 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!26 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!28 = metadata !{null, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !6}
!29 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!30 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1026, false>*", metadata !"int", metadata !"int"}
!32 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!34 = metadata !{null, metadata !8, metadata !9, metadata !35, metadata !11, metadata !21, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1025, false> &"}
!36 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !21, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1026, false> &"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !39, metadata !6}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!40 = metadata !{null, metadata !23, metadata !24, metadata !41, metadata !26, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1026, false> &", metadata !"int"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!43 = metadata !{null, metadata !23, metadata !24, metadata !44, metadata !26, metadata !42, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<1026, false> &", metadata !"int"}
!45 = metadata !{null, metadata !8, metadata !9, metadata !46, metadata !11, metadata !47, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!48 = metadata !{null, metadata !49, metadata !24, metadata !50, metadata !26, metadata !51, metadata !6}
!49 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1026, false>*", metadata !"int"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!52 = metadata !{null, metadata !23, metadata !24, metadata !53, metadata !26, metadata !54, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"const ap_int_base<1025, false> &"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!55 = metadata !{null, metadata !8, metadata !9, metadata !56, metadata !11, metadata !39, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!57 = metadata !{null, metadata !23, metadata !24, metadata !58, metadata !26, metadata !42, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<1025, false> &"}
!59 = metadata !{null, metadata !8, metadata !9, metadata !35, metadata !11, metadata !39, metadata !6}
!60 = metadata !{null, metadata !8, metadata !9, metadata !61, metadata !11, metadata !39, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!62 = metadata !{null, metadata !49, metadata !24, metadata !63, metadata !26, metadata !51, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1025, false>*", metadata !"int"}
!64 = metadata !{null, metadata !8, metadata !9, metadata !46, metadata !11, metadata !65, metadata !6}
!65 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!66 = metadata !{null, metadata !8, metadata !9, metadata !67, metadata !11, metadata !21, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1026> &"}
!68 = metadata !{null, metadata !1, metadata !2, metadata !69, metadata !4, metadata !70, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"uint1024_t", metadata !"uint1024_t", metadata !"uint1024_t", metadata !"uint1024_t*"}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"X0", metadata !"Y0", metadata !"M0", metadata !"outData"}
!71 = metadata !{null, metadata !8, metadata !9, metadata !72, metadata !11, metadata !21, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1024> &"}
!73 = metadata !{null, metadata !8, metadata !9, metadata !46, metadata !11, metadata !74, metadata !6}
!74 = metadata !{metadata !"kernel_arg_name", metadata !"i"}
!75 = metadata !{null, metadata !8, metadata !9, metadata !72, metadata !11, metadata !39, metadata !6}
!76 = metadata !{null, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !6}
!77 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1, i32 1}
!78 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"uint1024_t", metadata !"ap_uint<1024 + 1>", metadata !"uint1024_t", metadata !"uint1024_t*", metadata !"uint1024_t*"}
!80 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!81 = metadata !{metadata !"kernel_arg_name", metadata !"M", metadata !"r", metadata !"n", metadata !"Mbar", metadata !"xbar"}
!82 = metadata !{null, metadata !8, metadata !9, metadata !83, metadata !11, metadata !39, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1025, true> &"}
!84 = metadata !{null, metadata !23, metadata !24, metadata !85, metadata !26, metadata !42, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1057, true> &", metadata !"const ap_int_base<1024, false> &"}
!86 = metadata !{null, metadata !23, metadata !24, metadata !87, metadata !26, metadata !54, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<1025, false> &"}
!88 = metadata !{null, metadata !8, metadata !9, metadata !46, metadata !11, metadata !39, metadata !6}
!89 = metadata !{null, metadata !23, metadata !24, metadata !90, metadata !26, metadata !42, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<1025, false> &"}
!91 = metadata !{null, metadata !8, metadata !9, metadata !92, metadata !11, metadata !39, metadata !6}
!92 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!93 = metadata !{null, metadata !8, metadata !9, metadata !94, metadata !11, metadata !39, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1024, false> &"}
!95 = metadata !{null, metadata !23, metadata !24, metadata !96, metadata !26, metadata !42, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2049, false> &", metadata !"const ap_int_base<1024, false> &"}
!97 = metadata !{null, metadata !23, metadata !24, metadata !98, metadata !26, metadata !42, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1024, false> &", metadata !"const ap_int_base<1025, false> &"}
!99 = metadata !{null, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !6}
!100 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 1}
!101 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"uint1024_t", metadata !"uint1024_t", metadata !"uint1024_t", metadata !"uint1024_t", metadata !"uint1024_t", metadata !"uint1024_t*"}
!103 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!104 = metadata !{metadata !"kernel_arg_name", metadata !"M", metadata !"e", metadata !"n", metadata !"Mbar", metadata !"xbar_in", metadata !"out"}
!105 = metadata !{metadata !106, [4 x i32]* @llvm_global_ctors_0}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 0, i32 31, metadata !108}
!108 = metadata !{metadata !109}
!109 = metadata !{metadata !"llvm.global_ctors.0", metadata !110, metadata !"", i32 0, i32 31}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 3, i32 1}
!112 = metadata !{metadata !113}
!113 = metadata !{i32 0, i32 1023, metadata !114}
!114 = metadata !{metadata !115}
!115 = metadata !{metadata !"M.V", metadata !116, metadata !"uint1024", i32 0, i32 1023}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 0, i32 0}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 0, i32 1023, metadata !120}
!120 = metadata !{metadata !121}
!121 = metadata !{metadata !"e.V", metadata !116, metadata !"uint1024", i32 0, i32 1023}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 0, i32 1023, metadata !124}
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !"n.V", metadata !116, metadata !"uint1024", i32 0, i32 1023}
!126 = metadata !{metadata !127}
!127 = metadata !{i32 0, i32 1023, metadata !128}
!128 = metadata !{metadata !129}
!129 = metadata !{metadata !"Mbar.V", metadata !116, metadata !"uint1024", i32 0, i32 1023}
!130 = metadata !{metadata !131}
!131 = metadata !{i32 0, i32 1023, metadata !132}
!132 = metadata !{metadata !133}
!133 = metadata !{metadata !"xbar_in.V", metadata !116, metadata !"uint1024", i32 0, i32 1023}
!134 = metadata !{metadata !135}
!135 = metadata !{i32 0, i32 1023, metadata !136}
!136 = metadata !{metadata !137}
!137 = metadata !{metadata !"out.V", metadata !138, metadata !"uint1024", i32 0, i32 1023}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 0, i32 0, i32 1}

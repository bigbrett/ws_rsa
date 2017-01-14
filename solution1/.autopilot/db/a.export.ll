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

define internal fastcc i1024 @ModExp_montMult(i1024 %X_V, i1024 %Y_V, i1024 %M_V) readnone {
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 256, [4 x i8]* @p_str2, [1 x i8]* @p_str13, [1 x i8]* @p_str13, [1 x i8]* @p_str13) nounwind
  %M_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %M_V)
  %Y_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %Y_V)
  %X_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %X_V)
  %tmp_1 = zext i1024 %M_V_read to i1025
  br label %1

; <label>:1                                       ; preds = %_ZrsILi1025ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit, %0
  %p_s = phi i1024 [ 0, %0 ], [ %tmp_4, %_ZrsILi1025ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ]
  %bvh_d_index = phi i11 [ 0, %0 ], [ %i, %_ZrsILi1025ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ]
  %p_cast = zext i1024 %p_s to i1025
  %index_assign_cast1 = zext i11 %bvh_d_index to i32
  %exitcond = icmp eq i11 %bvh_d_index, -1024
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %i = add i11 %bvh_d_index, 1
  br i1 %exitcond, label %._crit_edge, label %_ZrsILi1025ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit

_ZrsILi1025ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit: ; preds = %1
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i1024.i32(i1024 %X_V_read, i32 %index_assign_cast1)
  %tmp_cast = select i1 %tmp_5, i1024 -1, i1024 0
  %r_V = and i1024 %tmp_cast, %Y_V_read
  %r_V_cast = zext i1024 %r_V to i1025
  %tmp_6 = add i1024 %p_s, %r_V
  %S_V_3 = add i1025 %r_V_cast, %p_cast
  %tmp_7 = trunc i1024 %tmp_6 to i1
  %S_V_1 = add i1025 %tmp_1, %S_V_3
  %tmp = call i1024 @_ssdm_op_PartSelect.i1024.i1025.i32.i32(i1025 %S_V_1, i32 1, i32 1024)
  %tmp_3 = call i1024 @_ssdm_op_PartSelect.i1024.i1025.i32.i32(i1025 %S_V_3, i32 1, i32 1024)
  %tmp_4 = select i1 %tmp_7, i1024 %tmp, i1024 %tmp_3
  br label %1

._crit_edge:                                      ; preds = %1
  %tmp_2 = icmp ult i1024 %p_s, %M_V_read
  %S_V = sub i1024 %p_s, %M_V_read
  %ssdm_int_V_write_assign = select i1 %tmp_2, i1024 %p_s, i1024 %S_V
  ret i1024 %ssdm_int_V_write_assign
}

declare i1025 @llvm.part.select.i1025(i1025, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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

define weak i1024 @_ssdm_op_PartSelect.i1024.i1025.i32.i32(i1025, i32, i32) nounwind readnone {
entry:
  %empty = call i1025 @llvm.part.select.i1025(i1025 %0, i32 %1, i32 %2)
  %empty_4 = trunc i1025 %empty to i1024
  ret i1024 %empty_4
}

declare i1 @_ssdm_op_PartSelect.i1.i1025.i32.i32(i1025, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i1024.i32.i32(i1024, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i11.i32(i11, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i11
  %empty_5 = shl i11 1, %empty
  %empty_6 = and i11 %0, %empty_5
  %empty_7 = icmp ne i11 %empty_6, 0
  ret i1 %empty_7
}

define weak i1 @_ssdm_op_BitSelect.i1.i1024.i32(i1024, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i1024
  %empty_8 = shl i1024 1, %empty
  %empty_9 = and i1024 %0, %empty_8
  %empty_10 = icmp ne i1024 %empty_9, 0
  ret i1 %empty_10
}

declare void @_GLOBAL__I_a7() nounwind section ".text.startup"

declare void @_GLOBAL__I_a19() nounwind section ".text.startup"

declare void @_GLOBAL__I_a12() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define void @ModExp(i1024 %M_V, i1024 %e_V, i1024 %n_V, i1024 %Mbar_V, i1024 %xbar_V, i1024* %out_V) {
  %xbar_V_buf = alloca i1024
  call void (...)* @_ssdm_op_SpecBitsMap(i1024 %M_V), !map !125
  call void (...)* @_ssdm_op_SpecBitsMap(i1024 %e_V), !map !131
  call void (...)* @_ssdm_op_SpecBitsMap(i1024 %n_V), !map !135
  call void (...)* @_ssdm_op_SpecBitsMap(i1024 %Mbar_V), !map !139
  call void (...)* @_ssdm_op_SpecBitsMap(i1024 %xbar_V), !map !143
  call void (...)* @_ssdm_op_SpecBitsMap(i1024* %out_V), !map !147
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @ModExp_str) nounwind
  %xbar_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %xbar_V)
  %Mbar_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %Mbar_V)
  %n_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %n_V)
  %e_V_read = call i1024 @_ssdm_op_Read.ap_auto.i1024(i1024 %e_V)
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str14, [1 x i8]* @p_str14, [16 x i8]* @ModExp_montMult.str, [1 x i8]* @p_str14) nounwind
  store i1024 %xbar_V_read, i1024* %xbar_V_buf
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %bvh_d_index = phi i11 [ 1023, %0 ], [ %i, %._crit_edge ]
  %index_assign_cast = sext i11 %bvh_d_index to i32
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %bvh_d_index, i32 10)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  br i1 %tmp, label %4, label %2

; <label>:2                                       ; preds = %1
  %xbar_V_buf_load_1 = load i1024* %xbar_V_buf
  %call_ret = call fastcc i1024 @ModExp_montMult(i1024 %xbar_V_buf_load_1, i1024 %xbar_V_buf_load_1, i1024 %n_V_read)
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i1024.i32(i1024 %e_V_read, i32 %index_assign_cast)
  br i1 %tmp_8, label %3, label %._crit_edge.pre

; <label>:3                                       ; preds = %2
  %call_ret1 = call fastcc i1024 @ModExp_montMult(i1024 %Mbar_V_read, i1024 %call_ret, i1024 %n_V_read)
  store i1024 %call_ret1, i1024* %xbar_V_buf
  br label %._crit_edge

._crit_edge.pre:                                  ; preds = %2
  store i1024 %call_ret, i1024* %xbar_V_buf
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.pre, %3
  %i = add i11 %bvh_d_index, -1
  br label %1

; <label>:4                                       ; preds = %1
  %xbar_V_buf_load = load i1024* %xbar_V_buf
  %call_ret3 = call fastcc i1024 @ModExp_montMult(i1024 %xbar_V_buf_load, i1024 1, i1024 %n_V_read)
  call void @_ssdm_op_Write.ap_auto.i1024P(i1024* %out_V, i1024 %call_ret3)
  ret void
}

!opencl.kernels = !{!0, !7, !7, !7, !13, !13, !13, !13, !13, !19, !22, !28, !28, !34, !36, !38, !38, !40, !34, !43, !13, !45, !48, !48, !36, !13, !52, !55, !55, !13, !57, !59, !59, !60, !60, !45, !62, !62, !64, !64, !66, !13, !13, !68, !70, !70, !70, !13, !13, !13, !13, !13, !72, !22, !74, !74, !76, !76, !59, !59, !19, !78, !76, !80, !34, !13, !82, !55, !55, !13, !84, !86, !86, !60, !60, !45, !87, !87, !64, !64, !89, !95, !95, !13, !13, !97, !13, !13, !13, !99, !101, !101, !13, !102, !13, !13, !13, !59, !59, !104, !104, !86, !86, !72, !106, !13, !108, !13, !13, !13, !59, !59, !86, !86, !110, !64, !64, !13, !13, !116, !13, !45, !87, !87}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!118}

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
!68 = metadata !{null, metadata !1, metadata !2, metadata !69, metadata !4, metadata !5, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"uint1024_t", metadata !"uint1024_t", metadata !"uint1024_t", metadata !"uint1024_t*"}
!70 = metadata !{null, metadata !8, metadata !9, metadata !71, metadata !11, metadata !12, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<1025, false> &"}
!72 = metadata !{null, metadata !8, metadata !9, metadata !73, metadata !11, metadata !21, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1024> &"}
!74 = metadata !{null, metadata !29, metadata !30, metadata !75, metadata !32, metadata !33, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1025, false>*", metadata !"int", metadata !"int"}
!76 = metadata !{null, metadata !8, metadata !9, metadata !77, metadata !11, metadata !21, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1024, false> &"}
!78 = metadata !{null, metadata !23, metadata !24, metadata !79, metadata !26, metadata !42, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1025, false> &", metadata !"int"}
!80 = metadata !{null, metadata !8, metadata !9, metadata !46, metadata !11, metadata !81, metadata !6}
!81 = metadata !{metadata !"kernel_arg_name", metadata !"i"}
!82 = metadata !{null, metadata !23, metadata !24, metadata !83, metadata !26, metadata !54, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"const ap_int_base<1024, false> &"}
!84 = metadata !{null, metadata !23, metadata !24, metadata !85, metadata !26, metadata !42, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<1024, false> &"}
!86 = metadata !{null, metadata !8, metadata !9, metadata !77, metadata !11, metadata !39, metadata !6}
!87 = metadata !{null, metadata !49, metadata !24, metadata !88, metadata !26, metadata !51, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<1024, false>*", metadata !"int"}
!89 = metadata !{null, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !6}
!90 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1, i32 1}
!91 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!92 = metadata !{metadata !"kernel_arg_type", metadata !"uint1024_t", metadata !"ap_uint<1024 + 1>", metadata !"uint1024_t", metadata !"uint1024_t*", metadata !"uint1024_t*"}
!93 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!94 = metadata !{metadata !"kernel_arg_name", metadata !"M", metadata !"r", metadata !"n", metadata !"Mbar", metadata !"xbar"}
!95 = metadata !{null, metadata !8, metadata !9, metadata !96, metadata !11, metadata !39, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1025, true> &"}
!97 = metadata !{null, metadata !23, metadata !24, metadata !98, metadata !26, metadata !42, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1057, true> &", metadata !"const ap_int_base<1024, false> &"}
!99 = metadata !{null, metadata !23, metadata !24, metadata !100, metadata !26, metadata !54, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<1025, false> &"}
!101 = metadata !{null, metadata !8, metadata !9, metadata !46, metadata !11, metadata !39, metadata !6}
!102 = metadata !{null, metadata !23, metadata !24, metadata !103, metadata !26, metadata !42, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<1025, false> &"}
!104 = metadata !{null, metadata !8, metadata !9, metadata !105, metadata !11, metadata !39, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!106 = metadata !{null, metadata !23, metadata !24, metadata !107, metadata !26, metadata !42, metadata !6}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2049, false> &", metadata !"const ap_int_base<1024, false> &"}
!108 = metadata !{null, metadata !23, metadata !24, metadata !109, metadata !26, metadata !42, metadata !6}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1024, false> &", metadata !"const ap_int_base<1025, false> &"}
!110 = metadata !{null, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !6}
!111 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 1}
!112 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"uint1024_t", metadata !"uint1024_t", metadata !"uint1024_t", metadata !"uint1024_t", metadata !"uint1024_t", metadata !"uint1024_t*"}
!114 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!115 = metadata !{metadata !"kernel_arg_name", metadata !"M", metadata !"e", metadata !"n", metadata !"Mbar", metadata !"xbar", metadata !"out"}
!116 = metadata !{null, metadata !23, metadata !24, metadata !117, metadata !26, metadata !42, metadata !6}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<1024, false> &", metadata !"int"}
!118 = metadata !{metadata !119, [4 x i32]* @llvm_global_ctors_0}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 31, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"llvm.global_ctors.0", metadata !123, metadata !"", i32 0, i32 31}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 3, i32 1}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 1023, metadata !127}
!127 = metadata !{metadata !128}
!128 = metadata !{metadata !"M.V", metadata !129, metadata !"uint1024", i32 0, i32 1023}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 0, i32 0, i32 0}
!131 = metadata !{metadata !132}
!132 = metadata !{i32 0, i32 1023, metadata !133}
!133 = metadata !{metadata !134}
!134 = metadata !{metadata !"e.V", metadata !129, metadata !"uint1024", i32 0, i32 1023}
!135 = metadata !{metadata !136}
!136 = metadata !{i32 0, i32 1023, metadata !137}
!137 = metadata !{metadata !138}
!138 = metadata !{metadata !"n.V", metadata !129, metadata !"uint1024", i32 0, i32 1023}
!139 = metadata !{metadata !140}
!140 = metadata !{i32 0, i32 1023, metadata !141}
!141 = metadata !{metadata !142}
!142 = metadata !{metadata !"Mbar.V", metadata !129, metadata !"uint1024", i32 0, i32 1023}
!143 = metadata !{metadata !144}
!144 = metadata !{i32 0, i32 1023, metadata !145}
!145 = metadata !{metadata !146}
!146 = metadata !{metadata !"xbar.V", metadata !129, metadata !"uint1024", i32 0, i32 1023}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 0, i32 1023, metadata !149}
!149 = metadata !{metadata !150}
!150 = metadata !{metadata !"out.V", metadata !151, metadata !"uint1024", i32 0, i32 1023}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 0, i32 0, i32 1}

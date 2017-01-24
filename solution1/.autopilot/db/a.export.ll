; ModuleID = '/home/brett/workspace/Vivado_WS/ws_rsa64bit/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rsaModExp_str = internal unnamed_addr constant [10 x i8] c"rsaModExp\00"
@llvm_global_ctors_1 = appending global [4 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a5, void ()* @_GLOBAL__I_a14, void ()* @_GLOBAL__I_a21]
@llvm_global_ctors_0 = appending global [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535]
@p_str7 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@p_str2 = private unnamed_addr constant [18 x i8] c"interleaveModMult\00", align 1
@p_str18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str117 = private unnamed_addr constant [9 x i8] c"montMult\00", align 1
@rsaModExp_interleaveModMult.str = internal unnamed_addr constant [28 x i8] c"rsaModExp_interleaveModMult\00"
@rsaModExp_montMult.str = internal unnamed_addr constant [19 x i8] c"rsaModExp_montMult\00"

define void @rsaModExp(i2048 %M_V, i2048 %e_V, i2048 %n_V, i2048* %out_V) {
  %xbar_V_1 = alloca i2048
  call void (...)* @_ssdm_op_SpecBitsMap(i2048 %M_V), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(i2048 %e_V), !map !92
  call void (...)* @_ssdm_op_SpecBitsMap(i2048 %n_V), !map !96
  call void (...)* @_ssdm_op_SpecBitsMap(i2048* %out_V), !map !100
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @rsaModExp_str) nounwind
  %n_V_read = call i2048 @_ssdm_op_Read.ap_auto.i2048(i2048 %n_V)
  %e_V_read = call i2048 @_ssdm_op_Read.ap_auto.i2048(i2048 %e_V)
  %M_V_read = call i2048 @_ssdm_op_Read.ap_auto.i2048(i2048 %M_V)
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [19 x i8]* @rsaModExp_montMult.str, [1 x i8]* @p_str16) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [1 x i8]* @p_str16, [1 x i8]* @p_str16, [28 x i8]* @rsaModExp_interleaveModMult.str, [1 x i8]* @p_str16) nounwind
  %Mbar_V = call fastcc i2048 @rsaModExp_interleaveModMult(i2048 %M_V_read, i2048 %n_V_read)
  %xbar_V = call fastcc i2048 @rsaModExp_interleaveModMult(i2048 1, i2048 %n_V_read)
  store i2048 %xbar_V, i2048* %xbar_V_1
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %i_assign = phi i12 [ 2047, %0 ], [ %i, %._crit_edge ]
  %i_assign_cast = sext i12 %i_assign to i32
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i12.i32(i12 %i_assign, i32 11)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048)
  br i1 %tmp, label %4, label %2

; <label>:2                                       ; preds = %1
  %xbar_V_1_load_1 = load i2048* %xbar_V_1
  %xbar_V_2 = call fastcc i2048 @rsaModExp_montMult(i2048 %xbar_V_1_load_1, i2048 %xbar_V_1_load_1, i2048 %n_V_read)
  %tmp_1 = call i1 @_ssdm_op_BitSelect.i1.i2048.i32(i2048 %e_V_read, i32 %i_assign_cast)
  br i1 %tmp_1, label %3, label %._crit_edge.pre

; <label>:3                                       ; preds = %2
  %xbar_V_3 = call fastcc i2048 @rsaModExp_montMult(i2048 %Mbar_V, i2048 %xbar_V_2, i2048 %n_V_read)
  store i2048 %xbar_V_3, i2048* %xbar_V_1
  br label %._crit_edge

._crit_edge.pre:                                  ; preds = %2
  store i2048 %xbar_V_2, i2048* %xbar_V_1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.pre, %3
  %i = add i12 %i_assign, -1
  br label %1

; <label>:4                                       ; preds = %1
  %xbar_V_1_load = load i2048* %xbar_V_1
  %call_ret = call fastcc i2048 @rsaModExp_montMult(i2048 %xbar_V_1_load, i2048 1, i2048 %n_V_read)
  call void @_ssdm_op_Write.ap_auto.i2048P(i2048* %out_V, i2048 %call_ret)
  ret void
}

define internal fastcc i2048 @rsaModExp_montMult(i2048 %X0_V, i2048 %Y0_V, i2048 %M0_V) readnone {
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 256, [4 x i8]* @p_str7, [1 x i8]* @p_str18, [1 x i8]* @p_str18, [1 x i8]* @p_str18) nounwind
  %M0_V_read = call i2048 @_ssdm_op_Read.ap_auto.i2048(i2048 %M0_V)
  %Y0_V_read = call i2048 @_ssdm_op_Read.ap_auto.i2048(i2048 %Y0_V)
  %X0_V_read = call i2048 @_ssdm_op_Read.ap_auto.i2048(i2048 %X0_V)
  %X_V = zext i2048 %X0_V_read to i2050
  %Y_V = zext i2048 %Y0_V_read to i2050
  %M_V = zext i2048 %M0_V_read to i2050
  %M_V_cast = zext i2048 %M0_V_read to i2049
  br label %1

; <label>:1                                       ; preds = %_ZrsILi2050ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit, %0
  %p_s = phi i2049 [ 0, %0 ], [ %tmp_5, %_ZrsILi2050ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ]
  %i_assign = phi i12 [ 0, %0 ], [ %i, %_ZrsILi2050ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ]
  %p_cast = zext i2049 %p_s to i2050
  %i_assign_cast1 = zext i12 %i_assign to i32
  %exitcond = icmp eq i12 %i_assign, -2048
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048)
  %i = add i12 %i_assign, 1
  br i1 %exitcond, label %2, label %_ZrsILi2050ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit

_ZrsILi2050ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit: ; preds = %1
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i2050.i32(i2050 %X_V, i32 %i_assign_cast1)
  %S_V = add i2050 %Y_V, %p_cast
  %p_Val2_1 = select i1 %tmp_8, i2050 %S_V, i2050 %p_cast
  %tmp_9 = trunc i2050 %p_Val2_1 to i1
  %S_V_1 = add i2050 %M_V, %p_Val2_1
  %tmp_3 = call i2049 @_ssdm_op_PartSelect.i2049.i2050.i32.i32(i2050 %S_V_1, i32 1, i32 2049)
  %tmp_4 = call i2049 @_ssdm_op_PartSelect.i2049.i2050.i32.i32(i2050 %p_Val2_1, i32 1, i32 2049)
  %tmp_5 = select i1 %tmp_9, i2049 %tmp_3, i2049 %tmp_4
  br label %1

; <label>:2                                       ; preds = %1
  %tmp = icmp ult i2049 %p_s, %M_V_cast
  %tmp_2 = trunc i2049 %p_s to i2048
  %tmp_6 = trunc i2049 %p_s to i2048
  %tmp_7 = sub i2048 %tmp_2, %M0_V_read
  %ssdm_int_V_write_assign = select i1 %tmp, i2048 %tmp_6, i2048 %tmp_7
  ret i2048 %ssdm_int_V_write_assign
}

declare i2050 @llvm.part.select.i2050(i2050, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc i2048 @rsaModExp_interleaveModMult(i2048 %Y_V, i2048 %M_V) readnone {
  %M_V_read = call i2048 @_ssdm_op_Read.ap_auto.i2048(i2048 %M_V)
  %Y_V_read = call i2048 @_ssdm_op_Read.ap_auto.i2048(i2048 %Y_V)
  %tmp = zext i2048 %M_V_read to i2052
  %tmp_s = zext i2048 %Y_V_read to i2052
  br label %1

; <label>:1                                       ; preds = %_ZlsILi2052ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit, %0
  %p_Val2_s = phi i2052 [ 0, %0 ], [ %P_V_5, %_ZlsILi2052ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ]
  %i_assign = phi i13 [ 2048, %0 ], [ %i, %_ZlsILi2052ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ]
  %i_assign_cast = sext i13 %i_assign to i32
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %i_assign, i32 12)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2049, i64 2049, i64 2049)
  br i1 %tmp_10, label %2, label %_ZlsILi2052ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit

_ZlsILi2052ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit: ; preds = %1
  %r_V = shl i2052 %p_Val2_s, 1
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i2049.i32(i2049 -32317006071311007300714876688669951960444102669715484032130345427524655138867890893197201411522913463688717960921898019494119559150490921095088152386448283120630877367300996091750197750389652106796057638384067568276792218642619756161838094338476170470581645852036305042887575891541065808607552399123930385521914333389668342420684974786564569494856176035326322058077805659331026192708460314150258592864177116725943603718461857357598351152301645904403697613233287231227125684710820209725157101726931323469678542580656697935045997268352998638215525166389437335543602135433229604645318478604952148193555853611059596230656, i32 %i_assign_cast)
  %P_V_1 = add i2052 %r_V, %tmp_s
  %P_V_4 = select i1 %tmp_13, i2052 %P_V_1, i2052 %r_V
  %tmp_4 = icmp ult i2052 %P_V_4, %tmp
  %P_V_2 = sub i2052 %P_V_4, %tmp
  %p_036_1_P_V_2 = select i1 %tmp_4, i2052 %P_V_4, i2052 %P_V_2
  %tmp_5 = icmp ult i2052 %p_036_1_P_V_2, %tmp
  %P_V_3 = sub i2052 %p_036_1_P_V_2, %tmp
  %P_V_5 = select i1 %tmp_5, i2052 %p_036_1_P_V_2, i2052 %P_V_3
  %i = add i13 -1, %i_assign
  br label %1

; <label>:2                                       ; preds = %1
  %tmp_11 = trunc i2052 %p_Val2_s to i2048
  ret i2048 %tmp_11
}

define weak void @_ssdm_op_Write.ap_auto.i2048P(i2048*, i2048) {
entry:
  store i2048 %1, i2048* %0
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

define weak i2048 @_ssdm_op_Read.ap_auto.i2048(i2048) {
entry:
  ret i2048 %0
}

declare i2051 @_ssdm_op_PartSelect.i2051.i2052.i32.i32(i2052, i32, i32) nounwind readnone

define weak i2049 @_ssdm_op_PartSelect.i2049.i2050.i32.i32(i2050, i32, i32) nounwind readnone {
entry:
  %empty = call i2050 @llvm.part.select.i2050(i2050 %0, i32 %1, i32 %2)
  %empty_5 = trunc i2050 %empty to i2049
  ret i2049 %empty_5
}

declare i2048 @_ssdm_op_PartSelect.i2048.i2052.i32.i32(i2052, i32, i32) nounwind readnone

declare i2048 @_ssdm_op_PartSelect.i2048.i2049.i32.i32(i2049, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i2050.i32.i32(i2050, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i2050.i32(i2050, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i2050
  %empty_6 = shl i2050 1, %empty
  %empty_7 = and i2050 %0, %empty_6
  %empty_8 = icmp ne i2050 %empty_7, 0
  ret i1 %empty_8
}

define weak i1 @_ssdm_op_BitSelect.i1.i2049.i32(i2049, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i2049
  %empty_9 = shl i2049 1, %empty
  %empty_10 = and i2049 %0, %empty_9
  %empty_11 = icmp ne i2049 %empty_10, 0
  ret i1 %empty_11
}

define weak i1 @_ssdm_op_BitSelect.i1.i2048.i32(i2048, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i2048
  %empty_12 = shl i2048 1, %empty
  %empty_13 = and i2048 %0, %empty_12
  %empty_14 = icmp ne i2048 %empty_13, 0
  ret i1 %empty_14
}

define weak i1 @_ssdm_op_BitSelect.i1.i13.i32(i13, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i13
  %empty_15 = shl i13 1, %empty
  %empty_16 = and i13 %0, %empty_15
  %empty_17 = icmp ne i13 %empty_16, 0
  ret i1 %empty_17
}

define weak i1 @_ssdm_op_BitSelect.i1.i12.i32(i12, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i12
  %empty_18 = shl i12 1, %empty
  %empty_19 = and i12 %0, %empty_18
  %empty_20 = icmp ne i12 %empty_19, 0
  ret i1 %empty_20
}

declare i2052 @_ssdm_op_BitConcatenate.i2052.i2051.i1(i2051, i1) nounwind readnone

declare void @_GLOBAL__I_a5() nounwind section ".text.startup"

declare void @_GLOBAL__I_a21() nounwind section ".text.startup"

declare void @_GLOBAL__I_a14() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !7, !13, !13, !19, !21, !27, !27, !27, !13, !13, !13, !13, !13, !30, !33, !39, !39, !45, !45, !47, !19, !49, !49, !52, !54, !7, !7, !57, !60, !60, !60, !13, !13, !13, !13, !13, !30, !33, !62, !62, !64, !64, !66, !66, !67, !69, !64, !19, !71, !71, !7, !7, !72, !19, !7, !7, !13, !13, !71, !71, !13, !13, !13, !13, !74, !74, !74}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!79}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"uintRSA_t", metadata !"uintRSA_t", metadata !"uintRSA_t", metadata !"uintRSA_t", metadata !"uintRSA_t", metadata !"uintRSA_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"M", metadata !"e", metadata !"n", metadata !"Mbar", metadata !"xbar_in", metadata !"out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !20, metadata !6}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"i"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!23 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<2048 + 1>", metadata !"ap_uint<2048 + 1>", metadata !"ap_uint<2048>", metadata !"uintRSA_t*"}
!25 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"X", metadata !"Y", metadata !"M", metadata !"Pout"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !29, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<2052, false> &"}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!30 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !32, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2048> &"}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!33 = metadata !{null, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !6}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!35 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!37 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!39 = metadata !{null, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !6}
!40 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!41 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<2052, false>*", metadata !"int", metadata !"int"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!45 = metadata !{null, metadata !8, metadata !9, metadata !46, metadata !11, metadata !32, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2048, false> &"}
!47 = metadata !{null, metadata !8, metadata !9, metadata !48, metadata !11, metadata !32, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2049, false> &"}
!49 = metadata !{null, metadata !8, metadata !9, metadata !50, metadata !11, metadata !51, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2052, false> &"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!52 = metadata !{null, metadata !8, metadata !9, metadata !53, metadata !11, metadata !32, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2052> &"}
!54 = metadata !{null, metadata !34, metadata !35, metadata !55, metadata !37, metadata !56, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2052, false> &", metadata !"int"}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!57 = metadata !{null, metadata !22, metadata !23, metadata !58, metadata !25, metadata !59, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"uintRSA_t", metadata !"uintRSA_t", metadata !"uintRSA_t", metadata !"uintRSA_t*"}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"X0", metadata !"Y0", metadata !"M0", metadata !"outData"}
!60 = metadata !{null, metadata !8, metadata !9, metadata !61, metadata !11, metadata !29, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<2050, false> &"}
!62 = metadata !{null, metadata !40, metadata !41, metadata !63, metadata !43, metadata !44, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<2050, false>*", metadata !"int", metadata !"int"}
!64 = metadata !{null, metadata !8, metadata !9, metadata !65, metadata !11, metadata !32, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2050, false> &"}
!66 = metadata !{null, metadata !8, metadata !9, metadata !65, metadata !11, metadata !51, metadata !6}
!67 = metadata !{null, metadata !8, metadata !9, metadata !68, metadata !11, metadata !32, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2050> &"}
!69 = metadata !{null, metadata !34, metadata !35, metadata !70, metadata !37, metadata !56, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<2050, false> &", metadata !"int"}
!71 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !51, metadata !6}
!72 = metadata !{null, metadata !22, metadata !23, metadata !58, metadata !25, metadata !73, metadata !6}
!73 = metadata !{metadata !"kernel_arg_name", metadata !"M", metadata !"e", metadata !"n", metadata !"out"}
!74 = metadata !{null, metadata !75, metadata !35, metadata !76, metadata !77, metadata !78, metadata !6}
!75 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!77 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!79 = metadata !{metadata !80, [4 x i32]* @llvm_global_ctors_0}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 31, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"llvm.global_ctors.0", metadata !84, metadata !"", i32 0, i32 31}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 3, i32 1}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 2047, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"M.V", metadata !90, metadata !"uint2048", i32 0, i32 2047}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 0, i32 0}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 0, i32 2047, metadata !94}
!94 = metadata !{metadata !95}
!95 = metadata !{metadata !"e.V", metadata !90, metadata !"uint2048", i32 0, i32 2047}
!96 = metadata !{metadata !97}
!97 = metadata !{i32 0, i32 2047, metadata !98}
!98 = metadata !{metadata !99}
!99 = metadata !{metadata !"n.V", metadata !90, metadata !"uint2048", i32 0, i32 2047}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 2047, metadata !102}
!102 = metadata !{metadata !103}
!103 = metadata !{metadata !"out.V", metadata !104, metadata !"uint2048", i32 0, i32 2047}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 0, i32 1}

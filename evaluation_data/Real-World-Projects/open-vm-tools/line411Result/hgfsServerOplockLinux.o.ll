; ModuleID = './hgfsServerOplockLinux.o.i'
source_filename = "./hgfsServerOplockLinux.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.HgfsSessionInfo = type { %struct.DblLnkLst_Links, i8, i32, i64, i32, %struct.HgfsTransportSessionInfo*, i32, %struct.MXUserExclLock*, i32, %struct.Atomic_uint32, %struct.MXUserExclLock*, %struct.HgfsFileNode*, i32, %struct.DblLnkLst_Links, %struct.DblLnkLst_Links, i32, i32, %struct.MXUserExclLock*, %struct.HgfsSearch*, i32, %struct.DblLnkLst_Links, [65 x %struct.HgfsOpCapability], i32, %struct.HgfsAsyncRequestInfo }
%struct.HgfsTransportSessionInfo = type opaque
%struct.Atomic_uint32 = type { i32 }
%struct.HgfsFileNode = type { %struct.DblLnkLst_Links, i32, i8*, i64, i8*, i64, %struct.HgfsLocalId, i32, i32, i32, i32, i32, i32, i8*, %struct.HgfsShareInfo }
%struct.HgfsLocalId = type { i64, i64 }
%struct.HgfsShareInfo = type { i8*, i64, i8, i8, i32 }
%struct.MXUserExclLock = type opaque
%struct.HgfsSearch = type { %struct.DblLnkLst_Links, i32, i32, i8*, i64, i8*, i64, %struct.DirectoryEntry**, i32, i32, %struct.HgfsShareInfo }
%struct.DirectoryEntry = type opaque
%struct.DblLnkLst_Links = type { %struct.DblLnkLst_Links*, %struct.DblLnkLst_Links* }
%struct.HgfsOpCapability = type { i32, i32 }
%struct.HgfsAsyncRequestInfo = type { %struct.Atomic_uint32, %struct.MXUserExclLock*, %struct.MXUserCondVar* }
%struct.MXUserCondVar = type opaque

; Function Attrs: nounwind uwtable
define signext i8 @HgfsPlatformOplockInit() #0 !dbg !99 {
  ret i8 1, !dbg !107
}

; Function Attrs: nounwind uwtable
define void @HgfsPlatformOplockDestroy() #0 !dbg !108 {
  ret void, !dbg !111
}

; Function Attrs: nounwind uwtable
define signext i8 @HgfsAcquireServerLock(i32, %struct.HgfsSessionInfo*, i32*) #0 !dbg !112 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.HgfsSessionInfo*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !256, metadata !257), !dbg !258
  store %struct.HgfsSessionInfo* %1, %struct.HgfsSessionInfo** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.HgfsSessionInfo** %5, metadata !259, metadata !257), !dbg !260
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !261, metadata !257), !dbg !262
  ret i8 0, !dbg !263
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!96, !97}
!llvm.ident = !{!98}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "hgfsServerOplockLinux.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line411")
!2 = !{!3, !8, !17, !22, !27}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 297, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "hgfsServerInt.h", directory: "/home/lichi/Desktop/open-vm-tools/line411")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "HGFS_SESSION_STATE_OPEN", value: 0)
!7 = !DIEnumerator(name: "HGFS_SESSION_STATE_CLOSED", value: 1)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 294, size: 32, align: 32, elements: !10)
!9 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsProto.h", directory: "/home/lichi/Desktop/open-vm-tools/line411")
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !DIEnumerator(name: "HGFS_LOCK_NONE", value: 0)
!12 = !DIEnumerator(name: "HGFS_LOCK_OPPORTUNISTIC", value: 1)
!13 = !DIEnumerator(name: "HGFS_LOCK_EXCLUSIVE", value: 2)
!14 = !DIEnumerator(name: "HGFS_LOCK_SHARED", value: 3)
!15 = !DIEnumerator(name: "HGFS_LOCK_BATCH", value: 4)
!16 = !DIEnumerator(name: "HGFS_LOCK_LEASE", value: 5)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 111, size: 32, align: 32, elements: !18)
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "FILENODE_STATE_UNUSED", value: 0)
!20 = !DIEnumerator(name: "FILENODE_STATE_IN_USE_CACHED", value: 1)
!21 = !DIEnumerator(name: "FILENODE_STATE_IN_USE_NOT_CACHED", value: 2)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 118, size: 32, align: 32, elements: !23)
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "DIRECTORY_SEARCH_TYPE_DIR", value: 0)
!25 = !DIEnumerator(name: "DIRECTORY_SEARCH_TYPE_BASE", value: 1)
!26 = !DIEnumerator(name: "DIRECTORY_SEARCH_TYPE_OTHER", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 68, size: 32, align: 32, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!29 = !DIEnumerator(name: "HGFS_OP_OPEN", value: 0)
!30 = !DIEnumerator(name: "HGFS_OP_READ", value: 1)
!31 = !DIEnumerator(name: "HGFS_OP_WRITE", value: 2)
!32 = !DIEnumerator(name: "HGFS_OP_CLOSE", value: 3)
!33 = !DIEnumerator(name: "HGFS_OP_SEARCH_OPEN", value: 4)
!34 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ", value: 5)
!35 = !DIEnumerator(name: "HGFS_OP_SEARCH_CLOSE", value: 6)
!36 = !DIEnumerator(name: "HGFS_OP_GETATTR", value: 7)
!37 = !DIEnumerator(name: "HGFS_OP_SETATTR", value: 8)
!38 = !DIEnumerator(name: "HGFS_OP_CREATE_DIR", value: 9)
!39 = !DIEnumerator(name: "HGFS_OP_DELETE_FILE", value: 10)
!40 = !DIEnumerator(name: "HGFS_OP_DELETE_DIR", value: 11)
!41 = !DIEnumerator(name: "HGFS_OP_RENAME", value: 12)
!42 = !DIEnumerator(name: "HGFS_OP_QUERY_VOLUME_INFO", value: 13)
!43 = !DIEnumerator(name: "HGFS_OP_OPEN_V2", value: 14)
!44 = !DIEnumerator(name: "HGFS_OP_GETATTR_V2", value: 15)
!45 = !DIEnumerator(name: "HGFS_OP_SETATTR_V2", value: 16)
!46 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ_V2", value: 17)
!47 = !DIEnumerator(name: "HGFS_OP_CREATE_SYMLINK", value: 18)
!48 = !DIEnumerator(name: "HGFS_OP_SERVER_LOCK_CHANGE", value: 19)
!49 = !DIEnumerator(name: "HGFS_OP_CREATE_DIR_V2", value: 20)
!50 = !DIEnumerator(name: "HGFS_OP_DELETE_FILE_V2", value: 21)
!51 = !DIEnumerator(name: "HGFS_OP_DELETE_DIR_V2", value: 22)
!52 = !DIEnumerator(name: "HGFS_OP_RENAME_V2", value: 23)
!53 = !DIEnumerator(name: "HGFS_OP_OPEN_V3", value: 24)
!54 = !DIEnumerator(name: "HGFS_OP_READ_V3", value: 25)
!55 = !DIEnumerator(name: "HGFS_OP_WRITE_V3", value: 26)
!56 = !DIEnumerator(name: "HGFS_OP_CLOSE_V3", value: 27)
!57 = !DIEnumerator(name: "HGFS_OP_SEARCH_OPEN_V3", value: 28)
!58 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ_V3", value: 29)
!59 = !DIEnumerator(name: "HGFS_OP_SEARCH_CLOSE_V3", value: 30)
!60 = !DIEnumerator(name: "HGFS_OP_GETATTR_V3", value: 31)
!61 = !DIEnumerator(name: "HGFS_OP_SETATTR_V3", value: 32)
!62 = !DIEnumerator(name: "HGFS_OP_CREATE_DIR_V3", value: 33)
!63 = !DIEnumerator(name: "HGFS_OP_DELETE_FILE_V3", value: 34)
!64 = !DIEnumerator(name: "HGFS_OP_DELETE_DIR_V3", value: 35)
!65 = !DIEnumerator(name: "HGFS_OP_RENAME_V3", value: 36)
!66 = !DIEnumerator(name: "HGFS_OP_QUERY_VOLUME_INFO_V3", value: 37)
!67 = !DIEnumerator(name: "HGFS_OP_CREATE_SYMLINK_V3", value: 38)
!68 = !DIEnumerator(name: "HGFS_OP_SERVER_LOCK_CHANGE_V3", value: 39)
!69 = !DIEnumerator(name: "HGFS_OP_WRITE_WIN32_STREAM_V3", value: 40)
!70 = !DIEnumerator(name: "HGFS_OP_CREATE_SESSION_V4", value: 41)
!71 = !DIEnumerator(name: "HGFS_OP_DESTROY_SESSION_V4", value: 42)
!72 = !DIEnumerator(name: "HGFS_OP_READ_FAST_V4", value: 43)
!73 = !DIEnumerator(name: "HGFS_OP_WRITE_FAST_V4", value: 44)
!74 = !DIEnumerator(name: "HGFS_OP_SET_WATCH_V4", value: 45)
!75 = !DIEnumerator(name: "HGFS_OP_REMOVE_WATCH_V4", value: 46)
!76 = !DIEnumerator(name: "HGFS_OP_NOTIFY_V4", value: 47)
!77 = !DIEnumerator(name: "HGFS_OP_SEARCH_READ_V4", value: 48)
!78 = !DIEnumerator(name: "HGFS_OP_OPEN_V4", value: 49)
!79 = !DIEnumerator(name: "HGFS_OP_ENUMERATE_STREAMS_V4", value: 50)
!80 = !DIEnumerator(name: "HGFS_OP_GETATTR_V4", value: 51)
!81 = !DIEnumerator(name: "HGFS_OP_SETATTR_V4", value: 52)
!82 = !DIEnumerator(name: "HGFS_OP_DELETE_V4", value: 53)
!83 = !DIEnumerator(name: "HGFS_OP_LINKMOVE_V4", value: 54)
!84 = !DIEnumerator(name: "HGFS_OP_FSCTL_V4", value: 55)
!85 = !DIEnumerator(name: "HGFS_OP_ACCESS_CHECK_V4", value: 56)
!86 = !DIEnumerator(name: "HGFS_OP_FSYNC_V4", value: 57)
!87 = !DIEnumerator(name: "HGFS_OP_QUERY_VOLUME_INFO_V4", value: 58)
!88 = !DIEnumerator(name: "HGFS_OP_OPLOCK_ACQUIRE_V4", value: 59)
!89 = !DIEnumerator(name: "HGFS_OP_OPLOCK_BREAK_V4", value: 60)
!90 = !DIEnumerator(name: "HGFS_OP_LOCK_BYTE_RANGE_V4", value: 61)
!91 = !DIEnumerator(name: "HGFS_OP_UNLOCK_BYTE_RANGE_V4", value: 62)
!92 = !DIEnumerator(name: "HGFS_OP_QUERY_EAS_V4", value: 63)
!93 = !DIEnumerator(name: "HGFS_OP_SET_EAS_V4", value: 64)
!94 = !DIEnumerator(name: "HGFS_OP_MAX", value: 65)
!95 = !DIEnumerator(name: "HGFS_OP_NEW_HEADER", value: 255)
!96 = !{i32 2, !"Dwarf Version", i32 4}
!97 = !{i32 2, !"Debug Info Version", i32 3}
!98 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!99 = distinct !DISubprogram(name: "HgfsPlatformOplockInit", scope: !100, file: !100, line: 81, type: !101, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!100 = !DIFile(filename: "hgfsServerOplockLinux.c", directory: "/home/lichi/Desktop/open-vm-tools/line411")
!101 = !DISubroutineType(types: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !104, line: 230, baseType: !105)
!104 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line411")
!105 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!106 = !{}
!107 = !DILocation(line: 87, column: 4, scope: !99)
!108 = distinct !DISubprogram(name: "HgfsPlatformOplockDestroy", scope: !100, file: !100, line: 108, type: !109, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!109 = !DISubroutineType(types: !110)
!110 = !{null}
!111 = !DILocation(line: 114, column: 1, scope: !108)
!112 = distinct !DISubprogram(name: "HgfsAcquireServerLock", scope: !100, file: !100, line: 140, type: !113, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !106)
!113 = !DISubroutineType(types: !114)
!114 = !{!103, !115, !117, !255}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "fileDesc", file: !4, line: 28, baseType: !116)
!116 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSessionInfo", file: !4, line: 389, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsSessionInfo", file: !4, line: 309, size: 5824, align: 64, elements: !120)
!120 = !{!121, !129, !130, !136, !140, !141, !145, !147, !152, !153, !160, !161, !205, !206, !207, !208, !209, !210, !211, !231, !232, !233, !244, !245}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !119, file: !4, line: 311, baseType: !122, size: 128, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "DblLnkLst_Links", file: !123, line: 94, baseType: !124)
!123 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/dbllnklst.h", directory: "/home/lichi/Desktop/open-vm-tools/line411")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "DblLnkLst_Links", file: !123, line: 91, size: 128, align: 64, elements: !125)
!125 = !{!126, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !124, file: !123, line: 92, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !123, line: 93, baseType: !127, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "isInactive", scope: !119, file: !4, line: 313, baseType: !103, size: 8, align: 8, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !4, line: 316, baseType: !131, size: 32, align: 32, offset: 160)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSessionFlags", file: !9, line: 1834, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !104, line: 173, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !134, line: 51, baseType: !135)
!134 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line411")
!135 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sessionId", scope: !119, file: !4, line: 319, baseType: !137, size: 64, align: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64", file: !104, line: 171, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !134, line: 55, baseType: !139)
!139 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "maxPacketSize", scope: !119, file: !4, line: 322, baseType: !132, size: 32, align: 32, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "transportSession", scope: !119, file: !4, line: 325, baseType: !142, size: 64, align: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsTransportSessionInfo", file: !4, line: 96, baseType: !144)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsTransportSessionInfo", file: !4, line: 96, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !119, file: !4, line: 328, baseType: !146, size: 32, align: 32, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSessionInfoState", file: !4, line: 300, baseType: !3)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "fileIOLock", scope: !119, file: !4, line: 331, baseType: !148, size: 64, align: 64, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserExclLock", file: !150, line: 38, baseType: !151)
!150 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/userlock.h", directory: "/home/lichi/Desktop/open-vm-tools/line411")
!151 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserExclLock", file: !150, line: 38, flags: DIFlagFwdDecl)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "numInvalidationAttempts", scope: !119, file: !4, line: 333, baseType: !116, size: 32, align: 32, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "refCount", scope: !119, file: !4, line: 335, baseType: !154, size: 32, align: 32, offset: 544)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "Atomic_uint32", file: !155, line: 135, baseType: !156)
!155 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_atomic.h", directory: "/home/lichi/Desktop/open-vm-tools/line411")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Atomic_uint32", file: !155, line: 133, size: 32, align: 32, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !156, file: !155, line: 134, baseType: !159, size: 32, align: 32)
!159 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !132)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nodeArrayLock", scope: !119, file: !4, line: 343, baseType: !148, size: 64, align: 64, offset: 576)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nodeArray", scope: !119, file: !4, line: 346, baseType: !162, size: 64, align: 64, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsFileNode", file: !4, line: 227, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsFileNode", file: !4, line: 177, size: 1024, align: 64, elements: !165)
!165 = !{!166, !167, !169, !171, !174, !175, !176, !182, !183, !184, !185, !187, !189, !190, !192}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !164, file: !4, line: 179, baseType: !122, size: 128, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !164, file: !4, line: 182, baseType: !168, size: 32, align: 32, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsHandle", file: !9, line: 58, baseType: !132)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "utf8Name", scope: !164, file: !4, line: 185, baseType: !170, size: 64, align: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "utf8NameLen", scope: !164, file: !4, line: 188, baseType: !172, size: 64, align: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !173, line: 216, baseType: !139)
!173 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line411")
!174 = !DIDerivedType(tag: DW_TAG_member, name: "shareName", scope: !164, file: !4, line: 191, baseType: !170, size: 64, align: 64, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "shareNameLen", scope: !164, file: !4, line: 194, baseType: !172, size: 64, align: 64, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "localId", scope: !164, file: !4, line: 197, baseType: !177, size: 128, align: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsLocalId", file: !4, line: 102, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsLocalId", file: !4, line: 99, size: 128, align: 64, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "volumeId", scope: !178, file: !4, line: 100, baseType: !137, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "fileId", scope: !178, file: !4, line: 101, baseType: !137, size: 64, align: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "fileDesc", scope: !164, file: !4, line: 200, baseType: !115, size: 32, align: 32, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !164, file: !4, line: 203, baseType: !132, size: 32, align: 32, offset: 608)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "shareAccess", scope: !164, file: !4, line: 206, baseType: !132, size: 32, align: 32, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "serverLock", scope: !164, file: !4, line: 209, baseType: !186, size: 32, align: 32, offset: 672)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsLockType", file: !9, line: 301, baseType: !8)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !164, file: !4, line: 212, baseType: !188, size: 32, align: 32, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "FileNodeState", file: !4, line: 115, baseType: !17)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !4, line: 215, baseType: !132, size: 32, align: 32, offset: 736)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "fileCtx", scope: !164, file: !4, line: 223, baseType: !191, size: 64, align: 64, offset: 768)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "shareInfo", scope: !164, file: !4, line: 226, baseType: !193, size: 192, align: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsShareInfo", file: !4, line: 163, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsShareInfo", file: !4, line: 145, size: 192, align: 64, elements: !195)
!195 = !{!196, !199, !200, !201, !202}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "rootDir", scope: !194, file: !4, line: 147, baseType: !197, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rootDirLen", scope: !194, file: !4, line: 150, baseType: !172, size: 64, align: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "readPermissions", scope: !194, file: !4, line: 153, baseType: !103, size: 8, align: 8, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "writePermissions", scope: !194, file: !4, line: 156, baseType: !103, size: 8, align: 8, offset: 136)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !194, file: !4, line: 162, baseType: !203, size: 32, align: 32, offset: 160)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSharedFolderHandle", file: !204, line: 134, baseType: !132)
!204 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hgfsServer.h", directory: "/home/lichi/Desktop/open-vm-tools/line411")
!205 = !DIDerivedType(tag: DW_TAG_member, name: "numNodes", scope: !119, file: !4, line: 349, baseType: !132, size: 32, align: 32, offset: 704)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "nodeFreeList", scope: !119, file: !4, line: 352, baseType: !122, size: 128, align: 64, offset: 768)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "nodeCachedList", scope: !119, file: !4, line: 355, baseType: !122, size: 128, align: 64, offset: 896)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "numCachedOpenNodes", scope: !119, file: !4, line: 358, baseType: !135, size: 32, align: 32, offset: 1024)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "numCachedLockedNodes", scope: !119, file: !4, line: 361, baseType: !135, size: 32, align: 32, offset: 1056)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "searchArrayLock", scope: !119, file: !4, line: 370, baseType: !148, size: 64, align: 64, offset: 1088)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "searchArray", scope: !119, file: !4, line: 373, baseType: !212, size: 64, align: 64, offset: 1152)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsSearch", file: !4, line: 283, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsSearch", file: !4, line: 246, size: 768, align: 64, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !227, !228, !230}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !214, file: !4, line: 248, baseType: !122, size: 128, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !214, file: !4, line: 251, baseType: !132, size: 32, align: 32, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !214, file: !4, line: 254, baseType: !168, size: 32, align: 32, offset: 160)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "utf8Dir", scope: !214, file: !4, line: 257, baseType: !170, size: 64, align: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "utf8DirLen", scope: !214, file: !4, line: 260, baseType: !172, size: 64, align: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "utf8ShareName", scope: !214, file: !4, line: 263, baseType: !170, size: 64, align: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "utf8ShareNameLen", scope: !214, file: !4, line: 266, baseType: !172, size: 64, align: 64, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "dents", scope: !214, file: !4, line: 269, baseType: !224, size: 64, align: 64, offset: 448)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "DirectoryEntry", file: !4, line: 25, flags: DIFlagFwdDecl)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "numDents", scope: !214, file: !4, line: 272, baseType: !132, size: 32, align: 32, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !214, file: !4, line: 279, baseType: !229, size: 32, align: 32, offset: 544)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "DirectorySearchType", file: !4, line: 123, baseType: !22)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "shareInfo", scope: !214, file: !4, line: 282, baseType: !193, size: 192, align: 64, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "numSearches", scope: !119, file: !4, line: 376, baseType: !132, size: 32, align: 32, offset: 1216)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "searchFreeList", scope: !119, file: !4, line: 379, baseType: !122, size: 128, align: 64, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "hgfsSessionCapabilities", scope: !119, file: !4, line: 383, baseType: !234, size: 4160, align: 8, offset: 1408)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 4160, align: 8, elements: !242)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOpCapability", file: !9, line: 1808, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsOpCapability", file: !9, line: 1803, size: 64, align: 8, elements: !237)
!237 = !{!238, !240}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !236, file: !9, line: 1804, baseType: !239, size: 32, align: 32)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOp", file: !9, line: 152, baseType: !27)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !236, file: !9, line: 1805, baseType: !241, size: 32, align: 32, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsOpCapFlags", file: !9, line: 1702, baseType: !132)
!242 = !{!243}
!243 = !DISubrange(count: 65)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "numberOfCapabilities", scope: !119, file: !4, line: 385, baseType: !132, size: 32, align: 32, offset: 5568)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "asyncRequestsInfo", scope: !119, file: !4, line: 388, baseType: !246, size: 192, align: 64, offset: 5632)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "HgfsAsyncRequestInfo", file: !4, line: 307, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HgfsAsyncRequestInfo", file: !4, line: 302, size: 192, align: 64, elements: !248)
!248 = !{!249, !250, !251}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "requestCount", scope: !247, file: !4, line: 304, baseType: !154, size: 32, align: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !247, file: !4, line: 305, baseType: !148, size: 64, align: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "requestCountIsZero", scope: !247, file: !4, line: 306, baseType: !252, size: 64, align: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "MXUserCondVar", file: !150, line: 42, baseType: !254)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "MXUserCondVar", file: !150, line: 42, flags: DIFlagFwdDecl)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!256 = !DILocalVariable(name: "fileDesc", arg: 1, scope: !112, file: !100, line: 140, type: !115)
!257 = !DIExpression()
!258 = !DILocation(line: 140, column: 32, scope: !112)
!259 = !DILocalVariable(name: "session", arg: 2, scope: !112, file: !100, line: 141, type: !117)
!260 = !DILocation(line: 141, column: 40, scope: !112)
!261 = !DILocalVariable(name: "serverLock", arg: 3, scope: !112, file: !100, line: 142, type: !255)
!262 = !DILocation(line: 142, column: 37, scope: !112)
!263 = !DILocation(line: 222, column: 4, scope: !112)

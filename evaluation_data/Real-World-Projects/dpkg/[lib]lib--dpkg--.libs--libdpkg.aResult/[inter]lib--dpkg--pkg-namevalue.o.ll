; ModuleID = './[inter]lib--dpkg--pkg-namevalue.o.i'
source_filename = "./[inter]lib--dpkg--pkg-namevalue.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.namevalue = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@booleaninfos = constant [3 x %struct.namevalue] [%struct.namevalue { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 0, i32 2 }, %struct.namevalue { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 1, i32 3 }, %struct.namevalue zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"same\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"allowed\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"foreign\00", align 1
@multiarchinfos = constant [5 x %struct.namevalue] [%struct.namevalue { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 0, i32 2 }, %struct.namevalue { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 1, i32 4 }, %struct.namevalue { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 2, i32 7 }, %struct.namevalue { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 3, i32 7 }, %struct.namevalue zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"required\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"important\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"extra\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@priorityinfos = constant [8 x %struct.namevalue] [%struct.namevalue { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 8 }, %struct.namevalue { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 9 }, %struct.namevalue { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 2, i32 8 }, %struct.namevalue { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 3, i32 8 }, %struct.namevalue { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 4, i32 5 }, %struct.namevalue zeroinitializer, %struct.namevalue { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 6, i32 7 }, %struct.namevalue zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [8 x i8] c"install\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"hold\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"deinstall\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"purge\00", align 1
@wantinfos = constant [6 x %struct.namevalue] [%struct.namevalue { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 7 }, %struct.namevalue { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 1, i32 7 }, %struct.namevalue { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 2, i32 4 }, %struct.namevalue { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 3, i32 9 }, %struct.namevalue { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 4, i32 5 }, %struct.namevalue zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"reinstreq\00", align 1
@eflaginfos = constant [3 x %struct.namevalue] [%struct.namevalue { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 2 }, %struct.namevalue { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 9 }, %struct.namevalue zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [14 x i8] c"not-installed\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"config-files\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"half-installed\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"unpacked\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"half-configured\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"triggers-awaited\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"triggers-pending\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"installed\00", align 1
@statusinfos = constant [9 x %struct.namevalue] [%struct.namevalue { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 13 }, %struct.namevalue { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 1, i32 12 }, %struct.namevalue { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 2, i32 14 }, %struct.namevalue { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 3, i32 8 }, %struct.namevalue { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i32 4, i32 15 }, %struct.namevalue { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 5, i32 16 }, %struct.namevalue { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), i32 6, i32 16 }, %struct.namevalue { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 7, i32 9 }, %struct.namevalue zeroinitializer], align 16

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38}
!llvm.ident = !{!39}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "[inter]lib--dpkg--pkg-namevalue.o.i", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!2 = !{}
!3 = !{!4, !20, !24, !28, !32, !33}
!4 = distinct !DIGlobalVariable(name: "booleaninfos", scope: !0, file: !5, line: 28, type: !6, isLocal: false, isDefinition: true, variable: [3 x %struct.namevalue]* @booleaninfos)
!5 = !DIFile(filename: "pkg-namevalue.c", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 384, align: 64, elements: !18)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "namevalue", file: !9, line: 35, size: 128, align: 64, elements: !10)
!9 = !DIFile(filename: "../../lib/dpkg/namevalue.h", directory: "/home/lichi/Desktop/dpkg/[lib]lib--dpkg--.libs--libdpkg.a")
!10 = !{!11, !15, !17}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !8, file: !9, line: 36, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !8, file: !9, line: 37, baseType: !16, size: 32, align: 32, offset: 64)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !8, file: !9, line: 38, baseType: !16, size: 32, align: 32, offset: 96)
!18 = !{!19}
!19 = !DISubrange(count: 3)
!20 = distinct !DIGlobalVariable(name: "multiarchinfos", scope: !0, file: !5, line: 34, type: !21, isLocal: false, isDefinition: true, variable: [5 x %struct.namevalue]* @multiarchinfos)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 640, align: 64, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 5)
!24 = distinct !DIGlobalVariable(name: "priorityinfos", scope: !0, file: !5, line: 42, type: !25, isLocal: false, isDefinition: true, variable: [8 x %struct.namevalue]* @priorityinfos)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, align: 64, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 8)
!28 = distinct !DIGlobalVariable(name: "wantinfos", scope: !0, file: !5, line: 52, type: !29, isLocal: false, isDefinition: true, variable: [6 x %struct.namevalue]* @wantinfos)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 768, align: 64, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 6)
!32 = distinct !DIGlobalVariable(name: "eflaginfos", scope: !0, file: !5, line: 61, type: !6, isLocal: false, isDefinition: true, variable: [3 x %struct.namevalue]* @eflaginfos)
!33 = distinct !DIGlobalVariable(name: "statusinfos", scope: !0, file: !5, line: 67, type: !34, isLocal: false, isDefinition: true, variable: [9 x %struct.namevalue]* @statusinfos)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1152, align: 64, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 9)
!37 = !{i32 2, !"Dwarf Version", i32 4}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}

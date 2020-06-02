; ModuleID = 'output/phase-cfa/cfa-merged/cfa.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.aes_key_st = type { [60 x i32], i32 }

; Function Attrs: nounwind uwtable
define void @AES_cfb128_encrypt(i8*, i8*, i64, %struct.aes_key_st*, i8*, i32*, i32) #0 !dbg !18 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.aes_key_st*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !40, metadata !41), !dbg !42
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !43, metadata !41), !dbg !44
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !45, metadata !41), !dbg !46
  store %struct.aes_key_st* %3, %struct.aes_key_st** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.aes_key_st** %11, metadata !47, metadata !41), !dbg !48
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !49, metadata !41), !dbg !50
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !51, metadata !41), !dbg !52
  store i32 %6, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !53, metadata !41), !dbg !54
  %15 = load i8*, i8** %8, align 8, !dbg !55
  %16 = load i8*, i8** %9, align 8, !dbg !56
  %17 = load i64, i64* %10, align 8, !dbg !57
  %18 = load %struct.aes_key_st*, %struct.aes_key_st** %11, align 8, !dbg !58
  %19 = bitcast %struct.aes_key_st* %18 to i8*, !dbg !58
  %20 = load i8*, i8** %12, align 8, !dbg !59
  %21 = load i32*, i32** %13, align 8, !dbg !60
  %22 = load i32, i32* %14, align 4, !dbg !61
  call void @CRYPTO_cfb128_encrypt(i8* %15, i8* %16, i64 %17, i8* %19, i8* %20, i32* %21, i32 %22, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*)), !dbg !62
  ret void, !dbg !63
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @AES_encrypt(i8*, i8*, %struct.aes_key_st*) #2

declare void @CRYPTO_cfb128_encrypt(i8*, i8*, i64, i8*, i8*, i32*, i32, void (i8*, i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define void @AES_cfb1_encrypt(i8*, i8*, i64, %struct.aes_key_st*, i8*, i32*, i32) #0 !dbg !64 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.aes_key_st*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !65, metadata !41), !dbg !66
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !67, metadata !41), !dbg !68
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !69, metadata !41), !dbg !70
  store %struct.aes_key_st* %3, %struct.aes_key_st** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.aes_key_st** %11, metadata !71, metadata !41), !dbg !72
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !73, metadata !41), !dbg !74
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !75, metadata !41), !dbg !76
  store i32 %6, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !77, metadata !41), !dbg !78
  %15 = load i8*, i8** %8, align 8, !dbg !79
  %16 = load i8*, i8** %9, align 8, !dbg !80
  %17 = load i64, i64* %10, align 8, !dbg !81
  %18 = load %struct.aes_key_st*, %struct.aes_key_st** %11, align 8, !dbg !82
  %19 = bitcast %struct.aes_key_st* %18 to i8*, !dbg !82
  %20 = load i8*, i8** %12, align 8, !dbg !83
  %21 = load i32*, i32** %13, align 8, !dbg !84
  %22 = load i32, i32* %14, align 4, !dbg !85
  call void @CRYPTO_cfb128_1_encrypt(i8* %15, i8* %16, i64 %17, i8* %19, i8* %20, i32* %21, i32 %22, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*)), !dbg !86
  ret void, !dbg !87
}

declare void @CRYPTO_cfb128_1_encrypt(i8*, i8*, i64, i8*, i8*, i32*, i32, void (i8*, i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define void @AES_cfb8_encrypt(i8*, i8*, i64, %struct.aes_key_st*, i8*, i32*, i32) #0 !dbg !88 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.aes_key_st*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !89, metadata !41), !dbg !90
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !91, metadata !41), !dbg !92
  store i64 %2, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !93, metadata !41), !dbg !94
  store %struct.aes_key_st* %3, %struct.aes_key_st** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.aes_key_st** %11, metadata !95, metadata !41), !dbg !96
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !97, metadata !41), !dbg !98
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !99, metadata !41), !dbg !100
  store i32 %6, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !101, metadata !41), !dbg !102
  %15 = load i8*, i8** %8, align 8, !dbg !103
  %16 = load i8*, i8** %9, align 8, !dbg !104
  %17 = load i64, i64* %10, align 8, !dbg !105
  %18 = load %struct.aes_key_st*, %struct.aes_key_st** %11, align 8, !dbg !106
  %19 = bitcast %struct.aes_key_st* %18 to i8*, !dbg !106
  %20 = load i8*, i8** %12, align 8, !dbg !107
  %21 = load i32*, i32** %13, align 8, !dbg !108
  %22 = load i32, i32* %14, align 4, !dbg !109
  call void @CRYPTO_cfb128_8_encrypt(i8* %15, i8* %16, i64 %17, i8* %19, i8* %20, i32* %21, i32 %22, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, %struct.aes_key_st*)* @AES_encrypt to void (i8*, i8*, i8*)*)), !dbg !110
  ret void, !dbg !111
}

declare void @CRYPTO_cfb128_8_encrypt(i8*, i8*, i64, i8*, i8*, i32*, i32, void (i8*, i8*, i8*)*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!15}
!llvm.module.flags = !{!16, !17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "[inter]crypto--aes--libcrypto-shlib-aes_cfb.o.i", directory: "/home/lichi/Desktop/openssl/[lib]libcrypto.so.3")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "block128_f", file: !5, line: 19, baseType: !6)
!5 = !DIFile(filename: "include/openssl/modes.h", directory: "/home/lichi/Desktop/openssl/[lib]libcrypto.so.3")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !12, !13}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!15 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = distinct !DISubprogram(name: "AES_cfb128_encrypt", scope: !19, file: !19, line: 19, type: !20, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!19 = !DIFile(filename: "crypto/aes/aes_cfb.c", directory: "/home/lichi/Desktop/openssl/[lib]libcrypto.so.3")
!20 = !DISubroutineType(types: !21)
!21 = !{null, !9, !12, !22, !25, !12, !38, !39}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 216, baseType: !24)
!23 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/openssl/[lib]libcrypto.so.3")
!24 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "AES_KEY", file: !28, line: 39, baseType: !29)
!28 = !DIFile(filename: "include/openssl/aes.h", directory: "/home/lichi/Desktop/openssl/[lib]libcrypto.so.3")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aes_key_st", file: !28, line: 31, size: 1952, align: 32, elements: !30)
!30 = !{!31, !36}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "rd_key", scope: !29, file: !28, line: 35, baseType: !32, size: 1920, align: 32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1920, align: 32, elements: !34)
!33 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!34 = !{!35}
!35 = !DISubrange(count: 60)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "rounds", scope: !29, file: !28, line: 37, baseType: !37, size: 32, align: 32, offset: 1920)
!37 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!40 = !DILocalVariable(name: "in", arg: 1, scope: !18, file: !19, line: 19, type: !9)
!41 = !DIExpression()
!42 = !DILocation(line: 19, column: 46, scope: !18)
!43 = !DILocalVariable(name: "out", arg: 2, scope: !18, file: !19, line: 19, type: !12)
!44 = !DILocation(line: 19, column: 65, scope: !18)
!45 = !DILocalVariable(name: "length", arg: 3, scope: !18, file: !19, line: 20, type: !22)
!46 = !DILocation(line: 20, column: 32, scope: !18)
!47 = !DILocalVariable(name: "key", arg: 4, scope: !18, file: !19, line: 20, type: !25)
!48 = !DILocation(line: 20, column: 55, scope: !18)
!49 = !DILocalVariable(name: "ivec", arg: 5, scope: !18, file: !19, line: 21, type: !12)
!50 = !DILocation(line: 21, column: 40, scope: !18)
!51 = !DILocalVariable(name: "num", arg: 6, scope: !18, file: !19, line: 21, type: !38)
!52 = !DILocation(line: 21, column: 51, scope: !18)
!53 = !DILocalVariable(name: "enc", arg: 7, scope: !18, file: !19, line: 21, type: !39)
!54 = !DILocation(line: 21, column: 66, scope: !18)
!55 = !DILocation(line: 24, column: 27, scope: !18)
!56 = !DILocation(line: 24, column: 31, scope: !18)
!57 = !DILocation(line: 24, column: 36, scope: !18)
!58 = !DILocation(line: 24, column: 44, scope: !18)
!59 = !DILocation(line: 24, column: 49, scope: !18)
!60 = !DILocation(line: 24, column: 55, scope: !18)
!61 = !DILocation(line: 24, column: 60, scope: !18)
!62 = !DILocation(line: 24, column: 5, scope: !18)
!63 = !DILocation(line: 26, column: 1, scope: !18)
!64 = distinct !DISubprogram(name: "AES_cfb1_encrypt", scope: !19, file: !19, line: 29, type: !20, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!65 = !DILocalVariable(name: "in", arg: 1, scope: !64, file: !19, line: 29, type: !9)
!66 = !DILocation(line: 29, column: 44, scope: !64)
!67 = !DILocalVariable(name: "out", arg: 2, scope: !64, file: !19, line: 29, type: !12)
!68 = !DILocation(line: 29, column: 63, scope: !64)
!69 = !DILocalVariable(name: "length", arg: 3, scope: !64, file: !19, line: 30, type: !22)
!70 = !DILocation(line: 30, column: 30, scope: !64)
!71 = !DILocalVariable(name: "key", arg: 4, scope: !64, file: !19, line: 30, type: !25)
!72 = !DILocation(line: 30, column: 53, scope: !64)
!73 = !DILocalVariable(name: "ivec", arg: 5, scope: !64, file: !19, line: 31, type: !12)
!74 = !DILocation(line: 31, column: 38, scope: !64)
!75 = !DILocalVariable(name: "num", arg: 6, scope: !64, file: !19, line: 31, type: !38)
!76 = !DILocation(line: 31, column: 49, scope: !64)
!77 = !DILocalVariable(name: "enc", arg: 7, scope: !64, file: !19, line: 31, type: !39)
!78 = !DILocation(line: 31, column: 64, scope: !64)
!79 = !DILocation(line: 33, column: 29, scope: !64)
!80 = !DILocation(line: 33, column: 33, scope: !64)
!81 = !DILocation(line: 33, column: 38, scope: !64)
!82 = !DILocation(line: 33, column: 46, scope: !64)
!83 = !DILocation(line: 33, column: 51, scope: !64)
!84 = !DILocation(line: 33, column: 57, scope: !64)
!85 = !DILocation(line: 33, column: 62, scope: !64)
!86 = !DILocation(line: 33, column: 5, scope: !64)
!87 = !DILocation(line: 35, column: 1, scope: !64)
!88 = distinct !DISubprogram(name: "AES_cfb8_encrypt", scope: !19, file: !19, line: 37, type: !20, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!89 = !DILocalVariable(name: "in", arg: 1, scope: !88, file: !19, line: 37, type: !9)
!90 = !DILocation(line: 37, column: 44, scope: !88)
!91 = !DILocalVariable(name: "out", arg: 2, scope: !88, file: !19, line: 37, type: !12)
!92 = !DILocation(line: 37, column: 63, scope: !88)
!93 = !DILocalVariable(name: "length", arg: 3, scope: !88, file: !19, line: 38, type: !22)
!94 = !DILocation(line: 38, column: 30, scope: !88)
!95 = !DILocalVariable(name: "key", arg: 4, scope: !88, file: !19, line: 38, type: !25)
!96 = !DILocation(line: 38, column: 53, scope: !88)
!97 = !DILocalVariable(name: "ivec", arg: 5, scope: !88, file: !19, line: 39, type: !12)
!98 = !DILocation(line: 39, column: 38, scope: !88)
!99 = !DILocalVariable(name: "num", arg: 6, scope: !88, file: !19, line: 39, type: !38)
!100 = !DILocation(line: 39, column: 49, scope: !88)
!101 = !DILocalVariable(name: "enc", arg: 7, scope: !88, file: !19, line: 39, type: !39)
!102 = !DILocation(line: 39, column: 64, scope: !88)
!103 = !DILocation(line: 41, column: 29, scope: !88)
!104 = !DILocation(line: 41, column: 33, scope: !88)
!105 = !DILocation(line: 41, column: 38, scope: !88)
!106 = !DILocation(line: 41, column: 46, scope: !88)
!107 = !DILocation(line: 41, column: 51, scope: !88)
!108 = !DILocation(line: 41, column: 57, scope: !88)
!109 = !DILocation(line: 41, column: 62, scope: !88)
!110 = !DILocation(line: 41, column: 5, scope: !88)
!111 = !DILocation(line: 43, column: 1, scope: !88)

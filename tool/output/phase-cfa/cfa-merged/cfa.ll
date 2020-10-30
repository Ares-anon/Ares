; ModuleID = 'output/phase-cfa/cfa-merged/cfa.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sLinkedList = type { i8*, %struct.sLinkedList* }

; Function Attrs: nounwind uwtable
define %struct.sLinkedList* @LinkedList_getLastElement(%struct.sLinkedList*) #0 !dbg !15 {
  %2 = alloca %struct.sLinkedList*, align 8
  store %struct.sLinkedList* %0, %struct.sLinkedList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %2, metadata !19, metadata !20), !dbg !21
  br label %3, !dbg !22

; <label>:3:                                      ; preds = %8, %1
  %4 = load %struct.sLinkedList*, %struct.sLinkedList** %2, align 8, !dbg !23
  %5 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %4, i32 0, i32 1, !dbg !25
  %6 = load %struct.sLinkedList*, %struct.sLinkedList** %5, align 8, !dbg !25
  %7 = icmp ne %struct.sLinkedList* %6, null, !dbg !26
  br i1 %7, label %8, label %12, !dbg !27

; <label>:8:                                      ; preds = %3
  %9 = load %struct.sLinkedList*, %struct.sLinkedList** %2, align 8, !dbg !28
  %10 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %9, i32 0, i32 1, !dbg !30
  %11 = load %struct.sLinkedList*, %struct.sLinkedList** %10, align 8, !dbg !30
  store %struct.sLinkedList* %11, %struct.sLinkedList** %2, align 8, !dbg !31
  br label %3, !dbg !32, !llvm.loop !34

; <label>:12:                                     ; preds = %3
  %13 = load %struct.sLinkedList*, %struct.sLinkedList** %2, align 8, !dbg !35
  ret %struct.sLinkedList* %13, !dbg !36
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define %struct.sLinkedList* @LinkedList_create() #0 !dbg !37 {
  %1 = alloca %struct.sLinkedList*, align 8
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %1, metadata !40, metadata !20), !dbg !41
  %2 = call i8* @Memory_malloc(i64 16), !dbg !42
  %3 = bitcast i8* %2 to %struct.sLinkedList*, !dbg !43
  store %struct.sLinkedList* %3, %struct.sLinkedList** %1, align 8, !dbg !44
  %4 = load %struct.sLinkedList*, %struct.sLinkedList** %1, align 8, !dbg !45
  %5 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %4, i32 0, i32 0, !dbg !46
  store i8* null, i8** %5, align 8, !dbg !47
  %6 = load %struct.sLinkedList*, %struct.sLinkedList** %1, align 8, !dbg !48
  %7 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %6, i32 0, i32 1, !dbg !49
  store %struct.sLinkedList* null, %struct.sLinkedList** %7, align 8, !dbg !50
  %8 = load %struct.sLinkedList*, %struct.sLinkedList** %1, align 8, !dbg !51
  ret %struct.sLinkedList* %8, !dbg !52
}

declare i8* @Memory_malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @LinkedList_destroyDeep(%struct.sLinkedList*, void (i8*)*) #0 !dbg !53 {
  %3 = alloca %struct.sLinkedList*, align 8
  %4 = alloca void (i8*)*, align 8
  %5 = alloca %struct.sLinkedList*, align 8
  %6 = alloca %struct.sLinkedList*, align 8
  store %struct.sLinkedList* %0, %struct.sLinkedList** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %3, metadata !60, metadata !20), !dbg !61
  store void (i8*)* %1, void (i8*)** %4, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %4, metadata !62, metadata !20), !dbg !63
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %5, metadata !64, metadata !20), !dbg !65
  %7 = load %struct.sLinkedList*, %struct.sLinkedList** %3, align 8, !dbg !66
  store %struct.sLinkedList* %7, %struct.sLinkedList** %5, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %6, metadata !67, metadata !20), !dbg !68
  br label %8, !dbg !69, !llvm.loop !70

; <label>:8:                                      ; preds = %25, %2
  %9 = load %struct.sLinkedList*, %struct.sLinkedList** %5, align 8, !dbg !71
  store %struct.sLinkedList* %9, %struct.sLinkedList** %6, align 8, !dbg !73
  %10 = load %struct.sLinkedList*, %struct.sLinkedList** %6, align 8, !dbg !74
  %11 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %10, i32 0, i32 1, !dbg !75
  %12 = load %struct.sLinkedList*, %struct.sLinkedList** %11, align 8, !dbg !75
  store %struct.sLinkedList* %12, %struct.sLinkedList** %5, align 8, !dbg !76
  %13 = load %struct.sLinkedList*, %struct.sLinkedList** %6, align 8, !dbg !77
  %14 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %13, i32 0, i32 0, !dbg !79
  %15 = load i8*, i8** %14, align 8, !dbg !79
  %16 = icmp ne i8* %15, null, !dbg !80
  br i1 %16, label %17, label %22, !dbg !81

; <label>:17:                                     ; preds = %8
  %18 = load void (i8*)*, void (i8*)** %4, align 8, !dbg !82
  %19 = load %struct.sLinkedList*, %struct.sLinkedList** %6, align 8, !dbg !83
  %20 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %19, i32 0, i32 0, !dbg !84
  %21 = load i8*, i8** %20, align 8, !dbg !84
  call void %18(i8* %21), !dbg !82
  br label %22, !dbg !82

; <label>:22:                                     ; preds = %17, %8
  %23 = load %struct.sLinkedList*, %struct.sLinkedList** %6, align 8, !dbg !85
  %24 = bitcast %struct.sLinkedList* %23 to i8*, !dbg !85
  call void @Memory_free(i8* %24), !dbg !86
  br label %25, !dbg !87

; <label>:25:                                     ; preds = %22
  %26 = load %struct.sLinkedList*, %struct.sLinkedList** %5, align 8, !dbg !88
  %27 = icmp ne %struct.sLinkedList* %26, null, !dbg !89
  br i1 %27, label %8, label %28, !dbg !90, !llvm.loop !70

; <label>:28:                                     ; preds = %25
  ret void, !dbg !92
}

declare void @Memory_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @LinkedList_destroy(%struct.sLinkedList*) #0 !dbg !93 {
  %2 = alloca %struct.sLinkedList*, align 8
  store %struct.sLinkedList* %0, %struct.sLinkedList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %2, metadata !96, metadata !20), !dbg !97
  %3 = load %struct.sLinkedList*, %struct.sLinkedList** %2, align 8, !dbg !98
  call void @LinkedList_destroyDeep(%struct.sLinkedList* %3, void (i8*)* @Memory_free), !dbg !99
  ret void, !dbg !100
}

; Function Attrs: nounwind uwtable
define void @LinkedList_destroyStatic(%struct.sLinkedList*) #0 !dbg !101 {
  %2 = alloca %struct.sLinkedList*, align 8
  %3 = alloca %struct.sLinkedList*, align 8
  %4 = alloca %struct.sLinkedList*, align 8
  store %struct.sLinkedList* %0, %struct.sLinkedList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %2, metadata !102, metadata !20), !dbg !103
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %3, metadata !104, metadata !20), !dbg !105
  %5 = load %struct.sLinkedList*, %struct.sLinkedList** %2, align 8, !dbg !106
  store %struct.sLinkedList* %5, %struct.sLinkedList** %3, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %4, metadata !107, metadata !20), !dbg !108
  br label %6, !dbg !109, !llvm.loop !110

; <label>:6:                                      ; preds = %13, %1
  %7 = load %struct.sLinkedList*, %struct.sLinkedList** %3, align 8, !dbg !111
  store %struct.sLinkedList* %7, %struct.sLinkedList** %4, align 8, !dbg !113
  %8 = load %struct.sLinkedList*, %struct.sLinkedList** %4, align 8, !dbg !114
  %9 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %8, i32 0, i32 1, !dbg !115
  %10 = load %struct.sLinkedList*, %struct.sLinkedList** %9, align 8, !dbg !115
  store %struct.sLinkedList* %10, %struct.sLinkedList** %3, align 8, !dbg !116
  %11 = load %struct.sLinkedList*, %struct.sLinkedList** %4, align 8, !dbg !117
  %12 = bitcast %struct.sLinkedList* %11 to i8*, !dbg !117
  call void @Memory_free(i8* %12), !dbg !118
  br label %13, !dbg !119

; <label>:13:                                     ; preds = %6
  %14 = load %struct.sLinkedList*, %struct.sLinkedList** %3, align 8, !dbg !120
  %15 = icmp ne %struct.sLinkedList* %14, null, !dbg !121
  br i1 %15, label %6, label %16, !dbg !122, !llvm.loop !110

; <label>:16:                                     ; preds = %13
  ret void, !dbg !124
}

; Function Attrs: nounwind uwtable
define i32 @LinkedList_size(%struct.sLinkedList*) #0 !dbg !125 {
  %2 = alloca %struct.sLinkedList*, align 8
  %3 = alloca %struct.sLinkedList*, align 8
  %4 = alloca i32, align 4
  store %struct.sLinkedList* %0, %struct.sLinkedList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %2, metadata !129, metadata !20), !dbg !130
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %3, metadata !131, metadata !20), !dbg !132
  %5 = load %struct.sLinkedList*, %struct.sLinkedList** %2, align 8, !dbg !133
  store %struct.sLinkedList* %5, %struct.sLinkedList** %3, align 8, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %4, metadata !134, metadata !20), !dbg !135
  store i32 0, i32* %4, align 4, !dbg !135
  br label %6, !dbg !136

; <label>:6:                                      ; preds = %11, %1
  %7 = load %struct.sLinkedList*, %struct.sLinkedList** %3, align 8, !dbg !137
  %8 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %7, i32 0, i32 1, !dbg !139
  %9 = load %struct.sLinkedList*, %struct.sLinkedList** %8, align 8, !dbg !139
  %10 = icmp ne %struct.sLinkedList* %9, null, !dbg !140
  br i1 %10, label %11, label %17, !dbg !141

; <label>:11:                                     ; preds = %6
  %12 = load %struct.sLinkedList*, %struct.sLinkedList** %3, align 8, !dbg !142
  %13 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %12, i32 0, i32 1, !dbg !144
  %14 = load %struct.sLinkedList*, %struct.sLinkedList** %13, align 8, !dbg !144
  store %struct.sLinkedList* %14, %struct.sLinkedList** %3, align 8, !dbg !145
  %15 = load i32, i32* %4, align 4, !dbg !146
  %16 = add nsw i32 %15, 1, !dbg !146
  store i32 %16, i32* %4, align 4, !dbg !146
  br label %6, !dbg !147, !llvm.loop !149

; <label>:17:                                     ; preds = %6
  %18 = load i32, i32* %4, align 4, !dbg !150
  ret i32 %18, !dbg !151
}

; Function Attrs: nounwind uwtable
define void @LinkedList_add(%struct.sLinkedList*, i8*) #0 !dbg !152 {
  %3 = alloca %struct.sLinkedList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sLinkedList*, align 8
  %6 = alloca %struct.sLinkedList*, align 8
  store %struct.sLinkedList* %0, %struct.sLinkedList** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %3, metadata !155, metadata !20), !dbg !156
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !157, metadata !20), !dbg !158
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %5, metadata !159, metadata !20), !dbg !160
  %7 = call %struct.sLinkedList* @LinkedList_create(), !dbg !161
  store %struct.sLinkedList* %7, %struct.sLinkedList** %5, align 8, !dbg !160
  %8 = load i8*, i8** %4, align 8, !dbg !162
  %9 = load %struct.sLinkedList*, %struct.sLinkedList** %5, align 8, !dbg !163
  %10 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %9, i32 0, i32 0, !dbg !164
  store i8* %8, i8** %10, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %6, metadata !166, metadata !20), !dbg !167
  %11 = load %struct.sLinkedList*, %struct.sLinkedList** %3, align 8, !dbg !168
  %12 = call %struct.sLinkedList* @LinkedList_getLastElement(%struct.sLinkedList* %11), !dbg !169
  store %struct.sLinkedList* %12, %struct.sLinkedList** %6, align 8, !dbg !167
  %13 = load %struct.sLinkedList*, %struct.sLinkedList** %5, align 8, !dbg !170
  %14 = load %struct.sLinkedList*, %struct.sLinkedList** %6, align 8, !dbg !171
  %15 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %14, i32 0, i32 1, !dbg !172
  store %struct.sLinkedList* %13, %struct.sLinkedList** %15, align 8, !dbg !173
  ret void, !dbg !174
}

; Function Attrs: nounwind uwtable
define zeroext i1 @LinkedList_remove(%struct.sLinkedList*, i8*) #0 !dbg !175 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.sLinkedList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sLinkedList*, align 8
  %7 = alloca %struct.sLinkedList*, align 8
  store %struct.sLinkedList* %0, %struct.sLinkedList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %4, metadata !179, metadata !20), !dbg !180
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !181, metadata !20), !dbg !182
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %6, metadata !183, metadata !20), !dbg !184
  %8 = load %struct.sLinkedList*, %struct.sLinkedList** %4, align 8, !dbg !185
  store %struct.sLinkedList* %8, %struct.sLinkedList** %6, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %7, metadata !186, metadata !20), !dbg !187
  %9 = load %struct.sLinkedList*, %struct.sLinkedList** %4, align 8, !dbg !188
  %10 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %9, i32 0, i32 1, !dbg !189
  %11 = load %struct.sLinkedList*, %struct.sLinkedList** %10, align 8, !dbg !189
  store %struct.sLinkedList* %11, %struct.sLinkedList** %7, align 8, !dbg !187
  br label %12, !dbg !190

; <label>:12:                                     ; preds = %29, %2
  %13 = load %struct.sLinkedList*, %struct.sLinkedList** %7, align 8, !dbg !191
  %14 = icmp ne %struct.sLinkedList* %13, null, !dbg !193
  br i1 %14, label %15, label %34, !dbg !194

; <label>:15:                                     ; preds = %12
  %16 = load %struct.sLinkedList*, %struct.sLinkedList** %7, align 8, !dbg !195
  %17 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %16, i32 0, i32 0, !dbg !198
  %18 = load i8*, i8** %17, align 8, !dbg !198
  %19 = load i8*, i8** %5, align 8, !dbg !199
  %20 = icmp eq i8* %18, %19, !dbg !200
  br i1 %20, label %21, label %29, !dbg !201

; <label>:21:                                     ; preds = %15
  %22 = load %struct.sLinkedList*, %struct.sLinkedList** %7, align 8, !dbg !202
  %23 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %22, i32 0, i32 1, !dbg !204
  %24 = load %struct.sLinkedList*, %struct.sLinkedList** %23, align 8, !dbg !204
  %25 = load %struct.sLinkedList*, %struct.sLinkedList** %6, align 8, !dbg !205
  %26 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %25, i32 0, i32 1, !dbg !206
  store %struct.sLinkedList* %24, %struct.sLinkedList** %26, align 8, !dbg !207
  %27 = load %struct.sLinkedList*, %struct.sLinkedList** %7, align 8, !dbg !208
  %28 = bitcast %struct.sLinkedList* %27 to i8*, !dbg !208
  call void @Memory_free(i8* %28), !dbg !209
  store i1 true, i1* %3, align 1, !dbg !210
  br label %35, !dbg !210

; <label>:29:                                     ; preds = %15
  %30 = load %struct.sLinkedList*, %struct.sLinkedList** %7, align 8, !dbg !211
  store %struct.sLinkedList* %30, %struct.sLinkedList** %6, align 8, !dbg !212
  %31 = load %struct.sLinkedList*, %struct.sLinkedList** %7, align 8, !dbg !213
  %32 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %31, i32 0, i32 1, !dbg !214
  %33 = load %struct.sLinkedList*, %struct.sLinkedList** %32, align 8, !dbg !214
  store %struct.sLinkedList* %33, %struct.sLinkedList** %7, align 8, !dbg !215
  br label %12, !dbg !216, !llvm.loop !218

; <label>:34:                                     ; preds = %12
  store i1 false, i1* %3, align 1, !dbg !219
  br label %35, !dbg !219

; <label>:35:                                     ; preds = %34, %21
  %36 = load i1, i1* %3, align 1, !dbg !220
  ret i1 %36, !dbg !220
}

; Function Attrs: nounwind uwtable
define %struct.sLinkedList* @LinkedList_insertAfter(%struct.sLinkedList*, i8*) #0 !dbg !221 {
  %3 = alloca %struct.sLinkedList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sLinkedList*, align 8
  %6 = alloca %struct.sLinkedList*, align 8
  store %struct.sLinkedList* %0, %struct.sLinkedList** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %3, metadata !224, metadata !20), !dbg !225
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !226, metadata !20), !dbg !227
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %5, metadata !228, metadata !20), !dbg !229
  %7 = load %struct.sLinkedList*, %struct.sLinkedList** %3, align 8, !dbg !230
  %8 = call %struct.sLinkedList* @LinkedList_getNext(%struct.sLinkedList* %7), !dbg !231
  store %struct.sLinkedList* %8, %struct.sLinkedList** %5, align 8, !dbg !229
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %6, metadata !232, metadata !20), !dbg !233
  %9 = call %struct.sLinkedList* @LinkedList_create(), !dbg !234
  store %struct.sLinkedList* %9, %struct.sLinkedList** %6, align 8, !dbg !233
  %10 = load i8*, i8** %4, align 8, !dbg !235
  %11 = load %struct.sLinkedList*, %struct.sLinkedList** %6, align 8, !dbg !236
  %12 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %11, i32 0, i32 0, !dbg !237
  store i8* %10, i8** %12, align 8, !dbg !238
  %13 = load %struct.sLinkedList*, %struct.sLinkedList** %5, align 8, !dbg !239
  %14 = load %struct.sLinkedList*, %struct.sLinkedList** %6, align 8, !dbg !240
  %15 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %14, i32 0, i32 1, !dbg !241
  store %struct.sLinkedList* %13, %struct.sLinkedList** %15, align 8, !dbg !242
  %16 = load %struct.sLinkedList*, %struct.sLinkedList** %6, align 8, !dbg !243
  %17 = load %struct.sLinkedList*, %struct.sLinkedList** %3, align 8, !dbg !244
  %18 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %17, i32 0, i32 1, !dbg !245
  store %struct.sLinkedList* %16, %struct.sLinkedList** %18, align 8, !dbg !246
  %19 = load %struct.sLinkedList*, %struct.sLinkedList** %6, align 8, !dbg !247
  ret %struct.sLinkedList* %19, !dbg !248
}

; Function Attrs: nounwind uwtable
define %struct.sLinkedList* @LinkedList_getNext(%struct.sLinkedList*) #0 !dbg !249 {
  %2 = alloca %struct.sLinkedList*, align 8
  store %struct.sLinkedList* %0, %struct.sLinkedList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %2, metadata !250, metadata !20), !dbg !251
  %3 = load %struct.sLinkedList*, %struct.sLinkedList** %2, align 8, !dbg !252
  %4 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %3, i32 0, i32 1, !dbg !253
  %5 = load %struct.sLinkedList*, %struct.sLinkedList** %4, align 8, !dbg !253
  ret %struct.sLinkedList* %5, !dbg !254
}

; Function Attrs: nounwind uwtable
define %struct.sLinkedList* @LinkedList_get(%struct.sLinkedList*, i32) #0 !dbg !255 {
  %3 = alloca %struct.sLinkedList*, align 8
  %4 = alloca %struct.sLinkedList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sLinkedList*, align 8
  %7 = alloca i32, align 4
  store %struct.sLinkedList* %0, %struct.sLinkedList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %4, metadata !258, metadata !20), !dbg !259
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !260, metadata !20), !dbg !261
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %6, metadata !262, metadata !20), !dbg !263
  %8 = load %struct.sLinkedList*, %struct.sLinkedList** %4, align 8, !dbg !264
  %9 = call %struct.sLinkedList* @LinkedList_getNext(%struct.sLinkedList* %8), !dbg !265
  store %struct.sLinkedList* %9, %struct.sLinkedList** %6, align 8, !dbg !263
  call void @llvm.dbg.declare(metadata i32* %7, metadata !266, metadata !20), !dbg !267
  store i32 0, i32* %7, align 4, !dbg !267
  br label %10, !dbg !268

; <label>:10:                                     ; preds = %20, %2
  %11 = load i32, i32* %7, align 4, !dbg !269
  %12 = load i32, i32* %5, align 4, !dbg !271
  %13 = icmp slt i32 %11, %12, !dbg !272
  br i1 %13, label %14, label %23, !dbg !273

; <label>:14:                                     ; preds = %10
  %15 = load %struct.sLinkedList*, %struct.sLinkedList** %6, align 8, !dbg !274
  %16 = call %struct.sLinkedList* @LinkedList_getNext(%struct.sLinkedList* %15), !dbg !276
  store %struct.sLinkedList* %16, %struct.sLinkedList** %6, align 8, !dbg !277
  %17 = load %struct.sLinkedList*, %struct.sLinkedList** %6, align 8, !dbg !278
  %18 = icmp eq %struct.sLinkedList* %17, null, !dbg !280
  br i1 %18, label %19, label %20, !dbg !281

; <label>:19:                                     ; preds = %14
  store %struct.sLinkedList* null, %struct.sLinkedList** %3, align 8, !dbg !282
  br label %25, !dbg !282

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %7, align 4, !dbg !283
  %22 = add nsw i32 %21, 1, !dbg !283
  store i32 %22, i32* %7, align 4, !dbg !283
  br label %10, !dbg !284, !llvm.loop !286

; <label>:23:                                     ; preds = %10
  %24 = load %struct.sLinkedList*, %struct.sLinkedList** %6, align 8, !dbg !287
  store %struct.sLinkedList* %24, %struct.sLinkedList** %3, align 8, !dbg !288
  br label %25, !dbg !288

; <label>:25:                                     ; preds = %23, %19
  %26 = load %struct.sLinkedList*, %struct.sLinkedList** %3, align 8, !dbg !289
  ret %struct.sLinkedList* %26, !dbg !289
}

; Function Attrs: nounwind uwtable
define i8* @LinkedList_getData(%struct.sLinkedList*) #0 !dbg !290 {
  %2 = alloca %struct.sLinkedList*, align 8
  store %struct.sLinkedList* %0, %struct.sLinkedList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.sLinkedList** %2, metadata !292, metadata !20), !dbg !293
  %3 = load %struct.sLinkedList*, %struct.sLinkedList** %2, align 8, !dbg !294
  %4 = getelementptr inbounds %struct.sLinkedList, %struct.sLinkedList* %3, i32 0, i32 0, !dbg !295
  %5 = load i8*, i8** %4, align 8, !dbg !295
  ret i8* %5, !dbg !296
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!12}
!llvm.module.flags = !{!13, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/home/lichi/lichi/industry-protocol/lib60870/lib60870-C/bcmake_outputs/[inter]build--src--common--linked_list.o.i", directory: "/home/lichi/lichi/Ares/tool")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedList", file: !6, line: 50, baseType: !7)
!6 = !DIFile(filename: "src/common/inc/linked_list.h", directory: "/home/lichi/lichi/Ares/tool")
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sLinkedList", file: !6, line: 42, size: 128, align: 64, elements: !9)
!9 = !{!10, !11}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !8, file: !6, line: 43, baseType: !4, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !8, file: !6, line: 44, baseType: !7, size: 64, align: 64, offset: 64)
!12 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = distinct !DISubprogram(name: "LinkedList_getLastElement", scope: !16, file: !16, line: 28, type: !17, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!16 = !DIFile(filename: "src/common/linked_list.c", directory: "/home/lichi/lichi/Ares/tool")
!17 = !DISubroutineType(types: !18)
!18 = !{!5, !5}
!19 = !DILocalVariable(name: "list", arg: 1, scope: !15, file: !16, line: 28, type: !5)
!20 = !DIExpression()
!21 = !DILocation(line: 28, column: 38, scope: !15)
!22 = !DILocation(line: 30, column: 5, scope: !15)
!23 = !DILocation(line: 30, column: 12, scope: !24)
!24 = !DILexicalBlockFile(scope: !15, file: !16, discriminator: 1)
!25 = !DILocation(line: 30, column: 18, scope: !24)
!26 = !DILocation(line: 30, column: 23, scope: !24)
!27 = !DILocation(line: 30, column: 5, scope: !24)
!28 = !DILocation(line: 31, column: 16, scope: !29)
!29 = distinct !DILexicalBlock(scope: !15, file: !16, line: 30, column: 31)
!30 = !DILocation(line: 31, column: 22, scope: !29)
!31 = !DILocation(line: 31, column: 14, scope: !29)
!32 = !DILocation(line: 30, column: 5, scope: !33)
!33 = !DILexicalBlockFile(scope: !15, file: !16, discriminator: 2)
!34 = distinct !{!34, !22}
!35 = !DILocation(line: 33, column: 12, scope: !15)
!36 = !DILocation(line: 33, column: 5, scope: !15)
!37 = distinct !DISubprogram(name: "LinkedList_create", scope: !16, file: !16, line: 37, type: !38, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{!5}
!40 = !DILocalVariable(name: "newList", scope: !37, file: !16, line: 39, type: !5)
!41 = !DILocation(line: 39, column: 16, scope: !37)
!42 = !DILocation(line: 41, column: 28, scope: !37)
!43 = !DILocation(line: 41, column: 15, scope: !37)
!44 = !DILocation(line: 41, column: 13, scope: !37)
!45 = !DILocation(line: 42, column: 5, scope: !37)
!46 = !DILocation(line: 42, column: 14, scope: !37)
!47 = !DILocation(line: 42, column: 19, scope: !37)
!48 = !DILocation(line: 43, column: 5, scope: !37)
!49 = !DILocation(line: 43, column: 14, scope: !37)
!50 = !DILocation(line: 43, column: 19, scope: !37)
!51 = !DILocation(line: 45, column: 12, scope: !37)
!52 = !DILocation(line: 45, column: 5, scope: !37)
!53 = distinct !DISubprogram(name: "LinkedList_destroyDeep", scope: !16, file: !16, line: 52, type: !54, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !5, !56}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedListValueDeleteFunction", file: !6, line: 73, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !4}
!60 = !DILocalVariable(name: "list", arg: 1, scope: !53, file: !16, line: 52, type: !5)
!61 = !DILocation(line: 52, column: 35, scope: !53)
!62 = !DILocalVariable(name: "valueDeleteFunction", arg: 2, scope: !53, file: !16, line: 52, type: !56)
!63 = !DILocation(line: 52, column: 71, scope: !53)
!64 = !DILocalVariable(name: "nextElement", scope: !53, file: !16, line: 54, type: !5)
!65 = !DILocation(line: 54, column: 16, scope: !53)
!66 = !DILocation(line: 54, column: 30, scope: !53)
!67 = !DILocalVariable(name: "currentElement", scope: !53, file: !16, line: 55, type: !5)
!68 = !DILocation(line: 55, column: 16, scope: !53)
!69 = !DILocation(line: 57, column: 5, scope: !53)
!70 = distinct !{!70, !69}
!71 = !DILocation(line: 58, column: 26, scope: !72)
!72 = distinct !DILexicalBlock(scope: !53, file: !16, line: 57, column: 8)
!73 = !DILocation(line: 58, column: 24, scope: !72)
!74 = !DILocation(line: 59, column: 23, scope: !72)
!75 = !DILocation(line: 59, column: 39, scope: !72)
!76 = !DILocation(line: 59, column: 21, scope: !72)
!77 = !DILocation(line: 61, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !72, file: !16, line: 61, column: 13)
!79 = !DILocation(line: 61, column: 29, scope: !78)
!80 = !DILocation(line: 61, column: 34, scope: !78)
!81 = !DILocation(line: 61, column: 13, scope: !72)
!82 = !DILocation(line: 62, column: 13, scope: !78)
!83 = !DILocation(line: 62, column: 33, scope: !78)
!84 = !DILocation(line: 62, column: 49, scope: !78)
!85 = !DILocation(line: 64, column: 21, scope: !72)
!86 = !DILocation(line: 64, column: 9, scope: !72)
!87 = !DILocation(line: 65, column: 5, scope: !72)
!88 = !DILocation(line: 66, column: 12, scope: !53)
!89 = !DILocation(line: 66, column: 24, scope: !53)
!90 = !DILocation(line: 65, column: 5, scope: !91)
!91 = !DILexicalBlockFile(scope: !72, file: !16, discriminator: 1)
!92 = !DILocation(line: 67, column: 1, scope: !53)
!93 = distinct !DISubprogram(name: "LinkedList_destroy", scope: !16, file: !16, line: 70, type: !94, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !5}
!96 = !DILocalVariable(name: "list", arg: 1, scope: !93, file: !16, line: 70, type: !5)
!97 = !DILocation(line: 70, column: 31, scope: !93)
!98 = !DILocation(line: 72, column: 28, scope: !93)
!99 = !DILocation(line: 72, column: 5, scope: !93)
!100 = !DILocation(line: 73, column: 1, scope: !93)
!101 = distinct !DISubprogram(name: "LinkedList_destroyStatic", scope: !16, file: !16, line: 79, type: !94, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!102 = !DILocalVariable(name: "list", arg: 1, scope: !101, file: !16, line: 79, type: !5)
!103 = !DILocation(line: 79, column: 37, scope: !101)
!104 = !DILocalVariable(name: "nextElement", scope: !101, file: !16, line: 81, type: !5)
!105 = !DILocation(line: 81, column: 16, scope: !101)
!106 = !DILocation(line: 81, column: 30, scope: !101)
!107 = !DILocalVariable(name: "currentElement", scope: !101, file: !16, line: 82, type: !5)
!108 = !DILocation(line: 82, column: 16, scope: !101)
!109 = !DILocation(line: 84, column: 5, scope: !101)
!110 = distinct !{!110, !109}
!111 = !DILocation(line: 85, column: 26, scope: !112)
!112 = distinct !DILexicalBlock(scope: !101, file: !16, line: 84, column: 8)
!113 = !DILocation(line: 85, column: 24, scope: !112)
!114 = !DILocation(line: 86, column: 23, scope: !112)
!115 = !DILocation(line: 86, column: 39, scope: !112)
!116 = !DILocation(line: 86, column: 21, scope: !112)
!117 = !DILocation(line: 87, column: 21, scope: !112)
!118 = !DILocation(line: 87, column: 9, scope: !112)
!119 = !DILocation(line: 88, column: 5, scope: !112)
!120 = !DILocation(line: 89, column: 12, scope: !101)
!121 = !DILocation(line: 89, column: 24, scope: !101)
!122 = !DILocation(line: 88, column: 5, scope: !123)
!123 = !DILexicalBlockFile(scope: !112, file: !16, discriminator: 1)
!124 = !DILocation(line: 90, column: 1, scope: !101)
!125 = distinct !DISubprogram(name: "LinkedList_size", scope: !16, file: !16, line: 93, type: !126, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !5}
!128 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!129 = !DILocalVariable(name: "list", arg: 1, scope: !125, file: !16, line: 93, type: !5)
!130 = !DILocation(line: 93, column: 28, scope: !125)
!131 = !DILocalVariable(name: "nextElement", scope: !125, file: !16, line: 95, type: !5)
!132 = !DILocation(line: 95, column: 16, scope: !125)
!133 = !DILocation(line: 95, column: 30, scope: !125)
!134 = !DILocalVariable(name: "size", scope: !125, file: !16, line: 96, type: !128)
!135 = !DILocation(line: 96, column: 9, scope: !125)
!136 = !DILocation(line: 98, column: 5, scope: !125)
!137 = !DILocation(line: 98, column: 12, scope: !138)
!138 = !DILexicalBlockFile(scope: !125, file: !16, discriminator: 1)
!139 = !DILocation(line: 98, column: 25, scope: !138)
!140 = !DILocation(line: 98, column: 30, scope: !138)
!141 = !DILocation(line: 98, column: 5, scope: !138)
!142 = !DILocation(line: 99, column: 23, scope: !143)
!143 = distinct !DILexicalBlock(scope: !125, file: !16, line: 98, column: 38)
!144 = !DILocation(line: 99, column: 36, scope: !143)
!145 = !DILocation(line: 99, column: 21, scope: !143)
!146 = !DILocation(line: 100, column: 13, scope: !143)
!147 = !DILocation(line: 98, column: 5, scope: !148)
!148 = !DILexicalBlockFile(scope: !125, file: !16, discriminator: 2)
!149 = distinct !{!149, !136}
!150 = !DILocation(line: 103, column: 12, scope: !125)
!151 = !DILocation(line: 103, column: 5, scope: !125)
!152 = distinct !DISubprogram(name: "LinkedList_add", scope: !16, file: !16, line: 107, type: !153, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !5, !4}
!155 = !DILocalVariable(name: "list", arg: 1, scope: !152, file: !16, line: 107, type: !5)
!156 = !DILocation(line: 107, column: 27, scope: !152)
!157 = !DILocalVariable(name: "data", arg: 2, scope: !152, file: !16, line: 107, type: !4)
!158 = !DILocation(line: 107, column: 39, scope: !152)
!159 = !DILocalVariable(name: "newElement", scope: !152, file: !16, line: 109, type: !5)
!160 = !DILocation(line: 109, column: 16, scope: !152)
!161 = !DILocation(line: 109, column: 29, scope: !152)
!162 = !DILocation(line: 111, column: 24, scope: !152)
!163 = !DILocation(line: 111, column: 5, scope: !152)
!164 = !DILocation(line: 111, column: 17, scope: !152)
!165 = !DILocation(line: 111, column: 22, scope: !152)
!166 = !DILocalVariable(name: "listEnd", scope: !152, file: !16, line: 113, type: !5)
!167 = !DILocation(line: 113, column: 16, scope: !152)
!168 = !DILocation(line: 113, column: 52, scope: !152)
!169 = !DILocation(line: 113, column: 26, scope: !152)
!170 = !DILocation(line: 115, column: 21, scope: !152)
!171 = !DILocation(line: 115, column: 5, scope: !152)
!172 = !DILocation(line: 115, column: 14, scope: !152)
!173 = !DILocation(line: 115, column: 19, scope: !152)
!174 = !DILocation(line: 116, column: 1, scope: !152)
!175 = distinct !DISubprogram(name: "LinkedList_remove", scope: !16, file: !16, line: 119, type: !176, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!176 = !DISubroutineType(types: !177)
!177 = !{!178, !5, !4}
!178 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!179 = !DILocalVariable(name: "list", arg: 1, scope: !175, file: !16, line: 119, type: !5)
!180 = !DILocation(line: 119, column: 30, scope: !175)
!181 = !DILocalVariable(name: "data", arg: 2, scope: !175, file: !16, line: 119, type: !4)
!182 = !DILocation(line: 119, column: 42, scope: !175)
!183 = !DILocalVariable(name: "lastElement", scope: !175, file: !16, line: 121, type: !5)
!184 = !DILocation(line: 121, column: 16, scope: !175)
!185 = !DILocation(line: 121, column: 30, scope: !175)
!186 = !DILocalVariable(name: "currentElement", scope: !175, file: !16, line: 123, type: !5)
!187 = !DILocation(line: 123, column: 16, scope: !175)
!188 = !DILocation(line: 123, column: 33, scope: !175)
!189 = !DILocation(line: 123, column: 39, scope: !175)
!190 = !DILocation(line: 125, column: 5, scope: !175)
!191 = !DILocation(line: 125, column: 12, scope: !192)
!192 = !DILexicalBlockFile(scope: !175, file: !16, discriminator: 1)
!193 = !DILocation(line: 125, column: 27, scope: !192)
!194 = !DILocation(line: 125, column: 5, scope: !192)
!195 = !DILocation(line: 126, column: 13, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !16, line: 126, column: 13)
!197 = distinct !DILexicalBlock(scope: !175, file: !16, line: 125, column: 35)
!198 = !DILocation(line: 126, column: 29, scope: !196)
!199 = !DILocation(line: 126, column: 37, scope: !196)
!200 = !DILocation(line: 126, column: 34, scope: !196)
!201 = !DILocation(line: 126, column: 13, scope: !197)
!202 = !DILocation(line: 127, column: 33, scope: !203)
!203 = distinct !DILexicalBlock(scope: !196, file: !16, line: 126, column: 43)
!204 = !DILocation(line: 127, column: 49, scope: !203)
!205 = !DILocation(line: 127, column: 13, scope: !203)
!206 = !DILocation(line: 127, column: 26, scope: !203)
!207 = !DILocation(line: 127, column: 31, scope: !203)
!208 = !DILocation(line: 128, column: 25, scope: !203)
!209 = !DILocation(line: 128, column: 13, scope: !203)
!210 = !DILocation(line: 129, column: 13, scope: !203)
!211 = !DILocation(line: 132, column: 23, scope: !197)
!212 = !DILocation(line: 132, column: 21, scope: !197)
!213 = !DILocation(line: 133, column: 26, scope: !197)
!214 = !DILocation(line: 133, column: 42, scope: !197)
!215 = !DILocation(line: 133, column: 24, scope: !197)
!216 = !DILocation(line: 125, column: 5, scope: !217)
!217 = !DILexicalBlockFile(scope: !175, file: !16, discriminator: 2)
!218 = distinct !{!218, !190}
!219 = !DILocation(line: 136, column: 5, scope: !175)
!220 = !DILocation(line: 137, column: 1, scope: !175)
!221 = distinct !DISubprogram(name: "LinkedList_insertAfter", scope: !16, file: !16, line: 140, type: !222, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!222 = !DISubroutineType(types: !223)
!223 = !{!5, !5, !4}
!224 = !DILocalVariable(name: "list", arg: 1, scope: !221, file: !16, line: 140, type: !5)
!225 = !DILocation(line: 140, column: 35, scope: !221)
!226 = !DILocalVariable(name: "data", arg: 2, scope: !221, file: !16, line: 140, type: !4)
!227 = !DILocation(line: 140, column: 47, scope: !221)
!228 = !DILocalVariable(name: "originalNextElement", scope: !221, file: !16, line: 142, type: !5)
!229 = !DILocation(line: 142, column: 16, scope: !221)
!230 = !DILocation(line: 142, column: 57, scope: !221)
!231 = !DILocation(line: 142, column: 38, scope: !221)
!232 = !DILocalVariable(name: "newElement", scope: !221, file: !16, line: 144, type: !5)
!233 = !DILocation(line: 144, column: 16, scope: !221)
!234 = !DILocation(line: 144, column: 29, scope: !221)
!235 = !DILocation(line: 146, column: 24, scope: !221)
!236 = !DILocation(line: 146, column: 5, scope: !221)
!237 = !DILocation(line: 146, column: 17, scope: !221)
!238 = !DILocation(line: 146, column: 22, scope: !221)
!239 = !DILocation(line: 147, column: 24, scope: !221)
!240 = !DILocation(line: 147, column: 5, scope: !221)
!241 = !DILocation(line: 147, column: 17, scope: !221)
!242 = !DILocation(line: 147, column: 22, scope: !221)
!243 = !DILocation(line: 149, column: 18, scope: !221)
!244 = !DILocation(line: 149, column: 5, scope: !221)
!245 = !DILocation(line: 149, column: 11, scope: !221)
!246 = !DILocation(line: 149, column: 16, scope: !221)
!247 = !DILocation(line: 151, column: 12, scope: !221)
!248 = !DILocation(line: 151, column: 5, scope: !221)
!249 = distinct !DISubprogram(name: "LinkedList_getNext", scope: !16, file: !16, line: 155, type: !17, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!250 = !DILocalVariable(name: "list", arg: 1, scope: !249, file: !16, line: 155, type: !5)
!251 = !DILocation(line: 155, column: 31, scope: !249)
!252 = !DILocation(line: 157, column: 12, scope: !249)
!253 = !DILocation(line: 157, column: 18, scope: !249)
!254 = !DILocation(line: 157, column: 5, scope: !249)
!255 = distinct !DISubprogram(name: "LinkedList_get", scope: !16, file: !16, line: 161, type: !256, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!256 = !DISubroutineType(types: !257)
!257 = !{!5, !5, !128}
!258 = !DILocalVariable(name: "list", arg: 1, scope: !255, file: !16, line: 161, type: !5)
!259 = !DILocation(line: 161, column: 27, scope: !255)
!260 = !DILocalVariable(name: "index", arg: 2, scope: !255, file: !16, line: 161, type: !128)
!261 = !DILocation(line: 161, column: 37, scope: !255)
!262 = !DILocalVariable(name: "element", scope: !255, file: !16, line: 163, type: !5)
!263 = !DILocation(line: 163, column: 16, scope: !255)
!264 = !DILocation(line: 163, column: 45, scope: !255)
!265 = !DILocation(line: 163, column: 26, scope: !255)
!266 = !DILocalVariable(name: "i", scope: !255, file: !16, line: 165, type: !128)
!267 = !DILocation(line: 165, column: 9, scope: !255)
!268 = !DILocation(line: 167, column: 5, scope: !255)
!269 = !DILocation(line: 167, column: 12, scope: !270)
!270 = !DILexicalBlockFile(scope: !255, file: !16, discriminator: 1)
!271 = !DILocation(line: 167, column: 16, scope: !270)
!272 = !DILocation(line: 167, column: 14, scope: !270)
!273 = !DILocation(line: 167, column: 5, scope: !270)
!274 = !DILocation(line: 168, column: 38, scope: !275)
!275 = distinct !DILexicalBlock(scope: !255, file: !16, line: 167, column: 23)
!276 = !DILocation(line: 168, column: 19, scope: !275)
!277 = !DILocation(line: 168, column: 17, scope: !275)
!278 = !DILocation(line: 170, column: 13, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !16, line: 170, column: 13)
!280 = !DILocation(line: 170, column: 21, scope: !279)
!281 = !DILocation(line: 170, column: 13, scope: !275)
!282 = !DILocation(line: 171, column: 13, scope: !279)
!283 = !DILocation(line: 173, column: 10, scope: !275)
!284 = !DILocation(line: 167, column: 5, scope: !285)
!285 = !DILexicalBlockFile(scope: !255, file: !16, discriminator: 2)
!286 = distinct !{!286, !268}
!287 = !DILocation(line: 176, column: 12, scope: !255)
!288 = !DILocation(line: 176, column: 5, scope: !255)
!289 = !DILocation(line: 177, column: 1, scope: !255)
!290 = distinct !DISubprogram(name: "LinkedList_getData", scope: !16, file: !16, line: 180, type: !291, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!291 = !DISubroutineType(types: !3)
!292 = !DILocalVariable(name: "self", arg: 1, scope: !290, file: !16, line: 180, type: !5)
!293 = !DILocation(line: 180, column: 31, scope: !290)
!294 = !DILocation(line: 182, column: 12, scope: !290)
!295 = !DILocation(line: 182, column: 18, scope: !290)
!296 = !DILocation(line: 182, column: 5, scope: !290)

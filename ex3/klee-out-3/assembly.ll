; ModuleID = 'treetable_get_greater_than_linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treetable_conf_s = type { ptr, ptr, ptr, ptr }
%struct.rbnode_s = type { ptr, ptr, i8, ptr, ptr, ptr }
%struct.treetable_s = type { ptr, ptr, i64, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"k1\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"k2\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [3 x i8] c"k3\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [3 x i8] c"v1\00", align 1, !dbg !11
@.str.4 = private unnamed_addr constant [3 x i8] c"v2\00", align 1, !dbg !13
@.str.5 = private unnamed_addr constant [3 x i8] c"v3\00", align 1, !dbg !15
@.str.6 = private unnamed_addr constant [10 x i8] c"sorted(t)\00", align 1, !dbg !17
@.str.7 = private unnamed_addr constant [51 x i8] c"Ex3SymbTestSuite/treetable_get_greater_than_symb.c\00", align 1, !dbg !22
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !27
@.str.8 = private unnamed_addr constant [12 x i8] c"balanced(t)\00", align 1, !dbg !33
@.str.9 = private unnamed_addr constant [15 x i8] c"successor > k1\00", align 1, !dbg !38
@.str.10 = private unnamed_addr constant [54 x i8] c"successor == k1 || successor == k2 || successor == k3\00", align 1, !dbg !41
@.str.11 = private unnamed_addr constant [31 x i8] c"result == CC_ERR_KEY_NOT_FOUND\00", align 1, !dbg !46

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cmp(ptr noundef %e1, ptr noundef %e2) #0 !dbg !82 {
entry:
  %retval = alloca i32, align 4
  %e1.addr = alloca ptr, align 8
  %e2.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %e1, ptr %e1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e1.addr, metadata !88, metadata !DIExpression()), !dbg !89
  store ptr %e2, ptr %e2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e2.addr, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata ptr %i, metadata !92, metadata !DIExpression()), !dbg !93
  %0 = load ptr, ptr %e1.addr, align 8, !dbg !94
  %1 = load i32, ptr %0, align 4, !dbg !95
  store i32 %1, ptr %i, align 4, !dbg !93
  call void @llvm.dbg.declare(metadata ptr %j, metadata !96, metadata !DIExpression()), !dbg !97
  %2 = load ptr, ptr %e2.addr, align 8, !dbg !98
  %3 = load i32, ptr %2, align 4, !dbg !99
  store i32 %3, ptr %j, align 4, !dbg !97
  %4 = load i32, ptr %i, align 4, !dbg !100
  %5 = load i32, ptr %j, align 4, !dbg !102
  %cmp = icmp slt i32 %4, %5, !dbg !103
  br i1 %cmp, label %if.then, label %if.end, !dbg !104

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !105
  br label %return, !dbg !105

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %i, align 4, !dbg !106
  %7 = load i32, ptr %j, align 4, !dbg !108
  %cmp1 = icmp eq i32 %6, %7, !dbg !109
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !110

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !111
  br label %return, !dbg !111

if.end3:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !112
  br label %return, !dbg !112

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !113
  ret i32 %8, !dbg !113
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @treetable_conf_init(ptr noundef %conf) #0 !dbg !114 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !141
  %mem_alloc = getelementptr inbounds %struct.treetable_conf_s, ptr %0, i32 0, i32 1, !dbg !142
  store ptr @malloc, ptr %mem_alloc, align 8, !dbg !143
  %1 = load ptr, ptr %conf.addr, align 8, !dbg !144
  %mem_calloc = getelementptr inbounds %struct.treetable_conf_s, ptr %1, i32 0, i32 2, !dbg !145
  store ptr @calloc, ptr %mem_calloc, align 8, !dbg !146
  %2 = load ptr, ptr %conf.addr, align 8, !dbg !147
  %mem_free = getelementptr inbounds %struct.treetable_conf_s, ptr %2, i32 0, i32 3, !dbg !148
  store ptr @free, ptr %mem_free, align 8, !dbg !149
  %3 = load ptr, ptr %conf.addr, align 8, !dbg !150
  %cmp = getelementptr inbounds %struct.treetable_conf_s, ptr %3, i32 0, i32 0, !dbg !151
  store ptr @cmp, ptr %cmp, align 8, !dbg !152
  ret void, !dbg !153
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_new(ptr noundef %tt) #0 !dbg !154 {
entry:
  %tt.addr = alloca ptr, align 8
  %conf = alloca %struct.treetable_conf_s, align 8
  store ptr %tt, ptr %tt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tt.addr, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata ptr %conf, metadata !182, metadata !DIExpression()), !dbg !183
  call void @treetable_conf_init(ptr noundef %conf), !dbg !184
  %0 = load ptr, ptr %tt.addr, align 8, !dbg !185
  %call = call i32 @treetable_new_conf(ptr noundef %conf, ptr noundef %0), !dbg !186
  ret i32 %call, !dbg !187
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_new_conf(ptr noundef %conf, ptr noundef %tt) #0 !dbg !188 {
entry:
  %retval = alloca i32, align 4
  %conf.addr = alloca ptr, align 8
  %tt.addr = alloca ptr, align 8
  %table = alloca ptr, align 8
  %sentinel = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !194, metadata !DIExpression()), !dbg !195
  store ptr %tt, ptr %tt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tt.addr, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata ptr %table, metadata !198, metadata !DIExpression()), !dbg !199
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !200
  %mem_calloc = getelementptr inbounds %struct.treetable_conf_s, ptr %0, i32 0, i32 2, !dbg !201
  %1 = load ptr, ptr %mem_calloc, align 8, !dbg !201
  %call = call ptr %1(i64 noundef 1, i64 noundef 56), !dbg !200
  store ptr %call, ptr %table, align 8, !dbg !199
  %2 = load ptr, ptr %table, align 8, !dbg !202
  %tobool = icmp ne ptr %2, null, !dbg !202
  br i1 %tobool, label %if.end, label %if.then, !dbg !204

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !205
  br label %return, !dbg !205

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata ptr %sentinel, metadata !206, metadata !DIExpression()), !dbg !207
  %3 = load ptr, ptr %conf.addr, align 8, !dbg !208
  %mem_calloc1 = getelementptr inbounds %struct.treetable_conf_s, ptr %3, i32 0, i32 2, !dbg !209
  %4 = load ptr, ptr %mem_calloc1, align 8, !dbg !209
  %call2 = call ptr %4(i64 noundef 1, i64 noundef 48), !dbg !208
  store ptr %call2, ptr %sentinel, align 8, !dbg !207
  %5 = load ptr, ptr %sentinel, align 8, !dbg !210
  %tobool3 = icmp ne ptr %5, null, !dbg !210
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !212

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %conf.addr, align 8, !dbg !213
  %mem_free = getelementptr inbounds %struct.treetable_conf_s, ptr %6, i32 0, i32 3, !dbg !215
  %7 = load ptr, ptr %mem_free, align 8, !dbg !215
  %8 = load ptr, ptr %table, align 8, !dbg !216
  call void %7(ptr noundef %8), !dbg !213
  store i32 1, ptr %retval, align 4, !dbg !217
  br label %return, !dbg !217

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %sentinel, align 8, !dbg !218
  %color = getelementptr inbounds %struct.rbnode_s, ptr %9, i32 0, i32 2, !dbg !219
  store i8 1, ptr %color, align 8, !dbg !220
  %10 = load ptr, ptr %table, align 8, !dbg !221
  %size = getelementptr inbounds %struct.treetable_s, ptr %10, i32 0, i32 2, !dbg !222
  store i64 0, ptr %size, align 8, !dbg !223
  %11 = load ptr, ptr %conf.addr, align 8, !dbg !224
  %cmp = getelementptr inbounds %struct.treetable_conf_s, ptr %11, i32 0, i32 0, !dbg !225
  %12 = load ptr, ptr %cmp, align 8, !dbg !225
  %13 = load ptr, ptr %table, align 8, !dbg !226
  %cmp6 = getelementptr inbounds %struct.treetable_s, ptr %13, i32 0, i32 3, !dbg !227
  store ptr %12, ptr %cmp6, align 8, !dbg !228
  %14 = load ptr, ptr %conf.addr, align 8, !dbg !229
  %mem_alloc = getelementptr inbounds %struct.treetable_conf_s, ptr %14, i32 0, i32 1, !dbg !230
  %15 = load ptr, ptr %mem_alloc, align 8, !dbg !230
  %16 = load ptr, ptr %table, align 8, !dbg !231
  %mem_alloc7 = getelementptr inbounds %struct.treetable_s, ptr %16, i32 0, i32 4, !dbg !232
  store ptr %15, ptr %mem_alloc7, align 8, !dbg !233
  %17 = load ptr, ptr %conf.addr, align 8, !dbg !234
  %mem_calloc8 = getelementptr inbounds %struct.treetable_conf_s, ptr %17, i32 0, i32 2, !dbg !235
  %18 = load ptr, ptr %mem_calloc8, align 8, !dbg !235
  %19 = load ptr, ptr %table, align 8, !dbg !236
  %mem_calloc9 = getelementptr inbounds %struct.treetable_s, ptr %19, i32 0, i32 5, !dbg !237
  store ptr %18, ptr %mem_calloc9, align 8, !dbg !238
  %20 = load ptr, ptr %conf.addr, align 8, !dbg !239
  %mem_free10 = getelementptr inbounds %struct.treetable_conf_s, ptr %20, i32 0, i32 3, !dbg !240
  %21 = load ptr, ptr %mem_free10, align 8, !dbg !240
  %22 = load ptr, ptr %table, align 8, !dbg !241
  %mem_free11 = getelementptr inbounds %struct.treetable_s, ptr %22, i32 0, i32 6, !dbg !242
  store ptr %21, ptr %mem_free11, align 8, !dbg !243
  %23 = load ptr, ptr %sentinel, align 8, !dbg !244
  %24 = load ptr, ptr %table, align 8, !dbg !245
  %root = getelementptr inbounds %struct.treetable_s, ptr %24, i32 0, i32 0, !dbg !246
  store ptr %23, ptr %root, align 8, !dbg !247
  %25 = load ptr, ptr %sentinel, align 8, !dbg !248
  %26 = load ptr, ptr %table, align 8, !dbg !249
  %sentinel12 = getelementptr inbounds %struct.treetable_s, ptr %26, i32 0, i32 1, !dbg !250
  store ptr %25, ptr %sentinel12, align 8, !dbg !251
  %27 = load ptr, ptr %table, align 8, !dbg !252
  %28 = load ptr, ptr %tt.addr, align 8, !dbg !253
  store ptr %27, ptr %28, align 8, !dbg !254
  store i32 0, ptr %retval, align 4, !dbg !255
  br label %return, !dbg !255

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %29 = load i32, ptr %retval, align 4, !dbg !256
  ret i32 %29, !dbg !256
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @treetable_destroy(ptr noundef %table) #0 !dbg !257 {
entry:
  %table.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = load ptr, ptr %table.addr, align 8, !dbg !262
  %1 = load ptr, ptr %table.addr, align 8, !dbg !263
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !264
  %2 = load ptr, ptr %root, align 8, !dbg !264
  call void @tree_destroy(ptr noundef %0, ptr noundef %2), !dbg !265
  %3 = load ptr, ptr %table.addr, align 8, !dbg !266
  %mem_free = getelementptr inbounds %struct.treetable_s, ptr %3, i32 0, i32 6, !dbg !267
  %4 = load ptr, ptr %mem_free, align 8, !dbg !267
  %5 = load ptr, ptr %table.addr, align 8, !dbg !268
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %5, i32 0, i32 1, !dbg !269
  %6 = load ptr, ptr %sentinel, align 8, !dbg !269
  call void %4(ptr noundef %6), !dbg !266
  %7 = load ptr, ptr %table.addr, align 8, !dbg !270
  %mem_free1 = getelementptr inbounds %struct.treetable_s, ptr %7, i32 0, i32 6, !dbg !271
  %8 = load ptr, ptr %mem_free1, align 8, !dbg !271
  %9 = load ptr, ptr %table.addr, align 8, !dbg !272
  call void %8(ptr noundef %9), !dbg !270
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind uwtable
define internal void @tree_destroy(ptr noundef %table, ptr noundef %n) #0 !dbg !274 {
entry:
  %table.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !277, metadata !DIExpression()), !dbg !278
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !279, metadata !DIExpression()), !dbg !280
  %0 = load ptr, ptr %n.addr, align 8, !dbg !281
  %1 = load ptr, ptr %table.addr, align 8, !dbg !283
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 1, !dbg !284
  %2 = load ptr, ptr %sentinel, align 8, !dbg !284
  %cmp = icmp eq ptr %0, %2, !dbg !285
  br i1 %cmp, label %return, label %if.end, !dbg !286

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %table.addr, align 8, !dbg !287
  %4 = load ptr, ptr %n.addr, align 8, !dbg !288
  %left = getelementptr inbounds %struct.rbnode_s, ptr %4, i32 0, i32 4, !dbg !289
  %5 = load ptr, ptr %left, align 8, !dbg !289
  call void @tree_destroy(ptr noundef %3, ptr noundef %5), !dbg !290
  %6 = load ptr, ptr %table.addr, align 8, !dbg !291
  %7 = load ptr, ptr %n.addr, align 8, !dbg !292
  %right = getelementptr inbounds %struct.rbnode_s, ptr %7, i32 0, i32 5, !dbg !293
  %8 = load ptr, ptr %right, align 8, !dbg !293
  call void @tree_destroy(ptr noundef %6, ptr noundef %8), !dbg !294
  %9 = load ptr, ptr %table.addr, align 8, !dbg !295
  %mem_free = getelementptr inbounds %struct.treetable_s, ptr %9, i32 0, i32 6, !dbg !296
  %10 = load ptr, ptr %mem_free, align 8, !dbg !296
  %11 = load ptr, ptr %n.addr, align 8, !dbg !297
  call void %10(ptr noundef %11), !dbg !295
  br label %return, !dbg !298

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_get(ptr noundef %table, ptr noundef %key, ptr noundef %out) #0 !dbg !299 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !306, metadata !DIExpression()), !dbg !307
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !308, metadata !DIExpression()), !dbg !309
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata ptr %node, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = load ptr, ptr %table.addr, align 8, !dbg !314
  %1 = load ptr, ptr %key.addr, align 8, !dbg !315
  %call = call ptr @get_tree_node_by_key(ptr noundef %0, ptr noundef %1), !dbg !316
  store ptr %call, ptr %node, align 8, !dbg !313
  %2 = load ptr, ptr %node, align 8, !dbg !317
  %tobool = icmp ne ptr %2, null, !dbg !317
  br i1 %tobool, label %if.end, label %if.then, !dbg !319

if.then:                                          ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !320
  br label %return, !dbg !320

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %node, align 8, !dbg !321
  %value = getelementptr inbounds %struct.rbnode_s, ptr %3, i32 0, i32 1, !dbg !322
  %4 = load ptr, ptr %value, align 8, !dbg !322
  %5 = load ptr, ptr %out.addr, align 8, !dbg !323
  store ptr %4, ptr %5, align 8, !dbg !324
  store i32 0, ptr %retval, align 4, !dbg !325
  br label %return, !dbg !325

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !326
  ret i32 %6, !dbg !326
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @get_tree_node_by_key(ptr noundef %table, ptr noundef %key) #0 !dbg !327 {
entry:
  %retval = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %s = alloca ptr, align 8
  %cmp1 = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !330, metadata !DIExpression()), !dbg !331
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load ptr, ptr %table.addr, align 8, !dbg !334
  %size = getelementptr inbounds %struct.treetable_s, ptr %0, i32 0, i32 2, !dbg !336
  %1 = load i64, ptr %size, align 8, !dbg !336
  %cmp = icmp eq i64 %1, 0, !dbg !337
  br i1 %cmp, label %if.then, label %if.end, !dbg !338

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !339
  br label %return, !dbg !339

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata ptr %n, metadata !340, metadata !DIExpression()), !dbg !341
  %2 = load ptr, ptr %table.addr, align 8, !dbg !342
  %root = getelementptr inbounds %struct.treetable_s, ptr %2, i32 0, i32 0, !dbg !343
  %3 = load ptr, ptr %root, align 8, !dbg !343
  store ptr %3, ptr %n, align 8, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %s, metadata !344, metadata !DIExpression()), !dbg !345
  %4 = load ptr, ptr %table.addr, align 8, !dbg !346
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %4, i32 0, i32 1, !dbg !347
  %5 = load ptr, ptr %sentinel, align 8, !dbg !347
  store ptr %5, ptr %s, align 8, !dbg !345
  call void @llvm.dbg.declare(metadata ptr %cmp1, metadata !348, metadata !DIExpression()), !dbg !349
  br label %do.body, !dbg !350

do.body:                                          ; preds = %do.cond, %if.end
  %6 = load ptr, ptr %table.addr, align 8, !dbg !351
  %cmp2 = getelementptr inbounds %struct.treetable_s, ptr %6, i32 0, i32 3, !dbg !353
  %7 = load ptr, ptr %cmp2, align 8, !dbg !353
  %8 = load ptr, ptr %key.addr, align 8, !dbg !354
  %9 = load ptr, ptr %n, align 8, !dbg !355
  %key3 = getelementptr inbounds %struct.rbnode_s, ptr %9, i32 0, i32 0, !dbg !356
  %10 = load ptr, ptr %key3, align 8, !dbg !356
  %call = call i32 %7(ptr noundef %8, ptr noundef %10), !dbg !351
  store i32 %call, ptr %cmp1, align 4, !dbg !357
  %11 = load i32, ptr %cmp1, align 4, !dbg !358
  %cmp4 = icmp slt i32 %11, 0, !dbg !360
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !361

if.then5:                                         ; preds = %do.body
  %12 = load ptr, ptr %n, align 8, !dbg !362
  %left = getelementptr inbounds %struct.rbnode_s, ptr %12, i32 0, i32 4, !dbg !363
  %13 = load ptr, ptr %left, align 8, !dbg !363
  store ptr %13, ptr %n, align 8, !dbg !364
  br label %do.cond, !dbg !365

if.else:                                          ; preds = %do.body
  %14 = load i32, ptr %cmp1, align 4, !dbg !366
  %cmp6 = icmp sgt i32 %14, 0, !dbg !368
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !369

if.then7:                                         ; preds = %if.else
  %15 = load ptr, ptr %n, align 8, !dbg !370
  %right = getelementptr inbounds %struct.rbnode_s, ptr %15, i32 0, i32 5, !dbg !371
  %16 = load ptr, ptr %right, align 8, !dbg !371
  store ptr %16, ptr %n, align 8, !dbg !372
  br label %do.cond

if.else8:                                         ; preds = %if.else
  %17 = load ptr, ptr %n, align 8, !dbg !373
  store ptr %17, ptr %retval, align 8, !dbg !374
  br label %return, !dbg !374

do.cond:                                          ; preds = %if.then5, %if.then7
  %18 = load ptr, ptr %n, align 8, !dbg !375
  %19 = load ptr, ptr %s, align 8, !dbg !376
  %cmp11 = icmp ne ptr %18, %19, !dbg !377
  %20 = load i32, ptr %cmp1, align 4, !dbg !378
  %cmp12 = icmp ne i32 %20, 0, !dbg !378
  %21 = select i1 %cmp11, i1 %cmp12, i1 false, !dbg !378
  br i1 %21, label %do.body, label %do.end, !dbg !379, !llvm.loop !380

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %retval, align 8, !dbg !383
  br label %return, !dbg !383

return:                                           ; preds = %do.end, %if.else8, %if.then
  %22 = load ptr, ptr %retval, align 8, !dbg !384
  ret ptr %22, !dbg !384
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_get_first_key(ptr noundef %table, ptr noundef %out) #0 !dbg !385 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !388, metadata !DIExpression()), !dbg !389
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !390, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata ptr %node, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load ptr, ptr %table.addr, align 8, !dbg !394
  %1 = load ptr, ptr %table.addr, align 8, !dbg !395
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !396
  %2 = load ptr, ptr %root, align 8, !dbg !396
  %call = call ptr @tree_min(ptr noundef %0, ptr noundef %2), !dbg !397
  store ptr %call, ptr %node, align 8, !dbg !393
  %3 = load ptr, ptr %node, align 8, !dbg !398
  %4 = load ptr, ptr %table.addr, align 8, !dbg !400
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %4, i32 0, i32 1, !dbg !401
  %5 = load ptr, ptr %sentinel, align 8, !dbg !401
  %cmp = icmp ne ptr %3, %5, !dbg !402
  br i1 %cmp, label %if.then, label %if.end, !dbg !403

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %node, align 8, !dbg !404
  %key = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 0, !dbg !406
  %7 = load ptr, ptr %key, align 8, !dbg !406
  %8 = load ptr, ptr %out.addr, align 8, !dbg !407
  store ptr %7, ptr %8, align 8, !dbg !408
  store i32 0, ptr %retval, align 4, !dbg !409
  br label %return, !dbg !409

if.end:                                           ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !410
  br label %return, !dbg !410

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !411
  ret i32 %9, !dbg !411
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @tree_min(ptr noundef %table, ptr noundef %n) #0 !dbg !412 {
entry:
  %table.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !415, metadata !DIExpression()), !dbg !416
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.declare(metadata ptr %s, metadata !419, metadata !DIExpression()), !dbg !420
  %0 = load ptr, ptr %table.addr, align 8, !dbg !421
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %0, i32 0, i32 1, !dbg !422
  %1 = load ptr, ptr %sentinel, align 8, !dbg !422
  store ptr %1, ptr %s, align 8, !dbg !420
  br label %while.cond, !dbg !423

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %n.addr, align 8, !dbg !424
  %left = getelementptr inbounds %struct.rbnode_s, ptr %2, i32 0, i32 4, !dbg !425
  %3 = load ptr, ptr %left, align 8, !dbg !425
  %4 = load ptr, ptr %s, align 8, !dbg !426
  %cmp = icmp ne ptr %3, %4, !dbg !427
  br i1 %cmp, label %while.body, label %while.end, !dbg !423

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %n.addr, align 8, !dbg !428
  %left1 = getelementptr inbounds %struct.rbnode_s, ptr %5, i32 0, i32 4, !dbg !429
  %6 = load ptr, ptr %left1, align 8, !dbg !429
  store ptr %6, ptr %n.addr, align 8, !dbg !430
  br label %while.cond, !dbg !423, !llvm.loop !431

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %n.addr, align 8, !dbg !432
  ret ptr %7, !dbg !433
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_get_greater_than(ptr noundef %table, ptr noundef %key, ptr noundef %out) #0 !dbg !434 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !435, metadata !DIExpression()), !dbg !436
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !437, metadata !DIExpression()), !dbg !438
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !439, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.declare(metadata ptr %n, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load ptr, ptr %table.addr, align 8, !dbg !443
  %1 = load ptr, ptr %key.addr, align 8, !dbg !444
  %call = call ptr @get_tree_node_by_key(ptr noundef %0, ptr noundef %1), !dbg !445
  store ptr %call, ptr %n, align 8, !dbg !442
  call void @llvm.dbg.declare(metadata ptr %s, metadata !446, metadata !DIExpression()), !dbg !447
  %2 = load ptr, ptr %table.addr, align 8, !dbg !448
  %3 = load ptr, ptr %n, align 8, !dbg !449
  %call1 = call ptr @get_successor_node(ptr noundef %2, ptr noundef %3), !dbg !450
  store ptr %call1, ptr %s, align 8, !dbg !447
  %4 = load ptr, ptr %n, align 8, !dbg !451
  %tobool = icmp ne ptr %4, null, !dbg !451
  %5 = load ptr, ptr %s, align 8
  %tobool2 = icmp ne ptr %5, null
  %or.cond = select i1 %tobool, i1 %tobool2, i1 false, !dbg !453
  br i1 %or.cond, label %if.then, label %if.end, !dbg !453

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %s, align 8, !dbg !454
  %key3 = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 0, !dbg !456
  %7 = load ptr, ptr %key3, align 8, !dbg !456
  %8 = load ptr, ptr %out.addr, align 8, !dbg !457
  store ptr %7, ptr %8, align 8, !dbg !458
  store i32 0, ptr %retval, align 4, !dbg !459
  br label %return, !dbg !459

if.end:                                           ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !460
  br label %return, !dbg !460

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !461
  ret i32 %9, !dbg !461
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @get_successor_node(ptr noundef %table, ptr noundef %x) #0 !dbg !462 {
entry:
  %retval = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !463, metadata !DIExpression()), !dbg !464
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load ptr, ptr %x.addr, align 8, !dbg !467
  %cmp = icmp eq ptr %0, null, !dbg !469
  br i1 %cmp, label %if.then, label %if.end, !dbg !470

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !471
  br label %return, !dbg !471

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !472
  %right = getelementptr inbounds %struct.rbnode_s, ptr %1, i32 0, i32 5, !dbg !474
  %2 = load ptr, ptr %right, align 8, !dbg !474
  %3 = load ptr, ptr %table.addr, align 8, !dbg !475
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %3, i32 0, i32 1, !dbg !476
  %4 = load ptr, ptr %sentinel, align 8, !dbg !476
  %cmp1 = icmp ne ptr %2, %4, !dbg !477
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !478

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %table.addr, align 8, !dbg !479
  %6 = load ptr, ptr %x.addr, align 8, !dbg !480
  %right3 = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 5, !dbg !481
  %7 = load ptr, ptr %right3, align 8, !dbg !481
  %call = call ptr @tree_min(ptr noundef %5, ptr noundef %7), !dbg !482
  store ptr %call, ptr %retval, align 8, !dbg !483
  br label %return, !dbg !483

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata ptr %y, metadata !484, metadata !DIExpression()), !dbg !485
  %8 = load ptr, ptr %x.addr, align 8, !dbg !486
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %8, i32 0, i32 3, !dbg !487
  %9 = load ptr, ptr %parent, align 8, !dbg !487
  store ptr %9, ptr %y, align 8, !dbg !485
  br label %while.cond, !dbg !488

while.cond:                                       ; preds = %while.body, %if.end4
  %10 = load ptr, ptr %y, align 8, !dbg !489
  %11 = load ptr, ptr %table.addr, align 8, !dbg !490
  %sentinel5 = getelementptr inbounds %struct.treetable_s, ptr %11, i32 0, i32 1, !dbg !491
  %12 = load ptr, ptr %sentinel5, align 8, !dbg !491
  %cmp6 = icmp ne ptr %10, %12, !dbg !492
  br i1 %cmp6, label %land.rhs, label %while.end, !dbg !493

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %x.addr, align 8, !dbg !494
  %14 = load ptr, ptr %y, align 8, !dbg !495
  %right7 = getelementptr inbounds %struct.rbnode_s, ptr %14, i32 0, i32 5, !dbg !496
  %15 = load ptr, ptr %right7, align 8, !dbg !496
  %cmp8 = icmp eq ptr %13, %15, !dbg !497
  br i1 %cmp8, label %while.body, label %while.end, !dbg !488

while.body:                                       ; preds = %land.rhs
  %16 = load ptr, ptr %y, align 8, !dbg !498
  store ptr %16, ptr %x.addr, align 8, !dbg !500
  %17 = load ptr, ptr %y, align 8, !dbg !501
  %parent9 = getelementptr inbounds %struct.rbnode_s, ptr %17, i32 0, i32 3, !dbg !502
  %18 = load ptr, ptr %parent9, align 8, !dbg !502
  store ptr %18, ptr %y, align 8, !dbg !503
  br label %while.cond, !dbg !488, !llvm.loop !504

while.end:                                        ; preds = %while.cond, %land.rhs
  %19 = load ptr, ptr %y, align 8, !dbg !506
  store ptr %19, ptr %retval, align 8, !dbg !507
  br label %return, !dbg !507

return:                                           ; preds = %while.end, %if.then2, %if.then
  %20 = load ptr, ptr %retval, align 8, !dbg !508
  ret ptr %20, !dbg !508
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @treetable_size(ptr noundef %table) #0 !dbg !509 {
entry:
  %table.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !512, metadata !DIExpression()), !dbg !513
  %0 = load ptr, ptr %table.addr, align 8, !dbg !514
  %size = getelementptr inbounds %struct.treetable_s, ptr %0, i32 0, i32 2, !dbg !515
  %1 = load i64, ptr %size, align 8, !dbg !515
  ret i64 %1, !dbg !516
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @treetable_contains_key(ptr noundef %table, ptr noundef %key) #0 !dbg !517 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !521, metadata !DIExpression()), !dbg !522
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata ptr %node, metadata !525, metadata !DIExpression()), !dbg !526
  %0 = load ptr, ptr %table.addr, align 8, !dbg !527
  %1 = load ptr, ptr %key.addr, align 8, !dbg !528
  %call = call ptr @get_tree_node_by_key(ptr noundef %0, ptr noundef %1), !dbg !529
  store ptr %call, ptr %node, align 8, !dbg !526
  %2 = load ptr, ptr %node, align 8, !dbg !530
  %tobool = icmp ne ptr %2, null, !dbg !530
  br i1 %tobool, label %if.then, label %if.end, !dbg !532

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !533
  br label %return, !dbg !533

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !534
  br label %return, !dbg !534

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !535
  ret i1 %3, !dbg !535
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @treetable_contains_value(ptr noundef %table, ptr noundef %value) #0 !dbg !536 {
entry:
  %table.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %o = alloca i64, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !539, metadata !DIExpression()), !dbg !540
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata ptr %node, metadata !543, metadata !DIExpression()), !dbg !544
  %0 = load ptr, ptr %table.addr, align 8, !dbg !545
  %1 = load ptr, ptr %table.addr, align 8, !dbg !546
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !547
  %2 = load ptr, ptr %root, align 8, !dbg !547
  %call = call ptr @tree_min(ptr noundef %0, ptr noundef %2), !dbg !548
  store ptr %call, ptr %node, align 8, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %o, metadata !549, metadata !DIExpression()), !dbg !550
  store i64 0, ptr %o, align 8, !dbg !550
  br label %while.cond, !dbg !551

while.cond:                                       ; preds = %if.end, %entry
  %3 = load ptr, ptr %node, align 8, !dbg !552
  %4 = load ptr, ptr %table.addr, align 8, !dbg !553
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %4, i32 0, i32 1, !dbg !554
  %5 = load ptr, ptr %sentinel, align 8, !dbg !554
  %cmp = icmp ne ptr %3, %5, !dbg !555
  br i1 %cmp, label %while.body, label %while.end, !dbg !551

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %node, align 8, !dbg !556
  %value1 = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 1, !dbg !559
  %7 = load ptr, ptr %value1, align 8, !dbg !559
  %8 = load ptr, ptr %value.addr, align 8, !dbg !560
  %cmp2 = icmp eq ptr %7, %8, !dbg !561
  br i1 %cmp2, label %if.then, label %if.end, !dbg !562

if.then:                                          ; preds = %while.body
  %9 = load i64, ptr %o, align 8, !dbg !563
  %inc = add i64 %9, 1, !dbg !563
  store i64 %inc, ptr %o, align 8, !dbg !563
  br label %if.end, !dbg !564

if.end:                                           ; preds = %if.then, %while.body
  %10 = load ptr, ptr %table.addr, align 8, !dbg !565
  %11 = load ptr, ptr %node, align 8, !dbg !566
  %call3 = call ptr @get_successor_node(ptr noundef %10, ptr noundef %11), !dbg !567
  store ptr %call3, ptr %node, align 8, !dbg !568
  br label %while.cond, !dbg !551, !llvm.loop !569

while.end:                                        ; preds = %while.cond
  %12 = load i64, ptr %o, align 8, !dbg !571
  ret i64 %12, !dbg !572
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_add(ptr noundef %table, ptr noundef %key, ptr noundef %val) #0 !dbg !573 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  %x = alloca ptr, align 8
  %cmp = alloca i32, align 4
  %n = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !576, metadata !DIExpression()), !dbg !577
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !578, metadata !DIExpression()), !dbg !579
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !580, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.declare(metadata ptr %y, metadata !582, metadata !DIExpression()), !dbg !583
  %0 = load ptr, ptr %table.addr, align 8, !dbg !584
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %0, i32 0, i32 1, !dbg !585
  %1 = load ptr, ptr %sentinel, align 8, !dbg !585
  store ptr %1, ptr %y, align 8, !dbg !583
  call void @llvm.dbg.declare(metadata ptr %x, metadata !586, metadata !DIExpression()), !dbg !587
  %2 = load ptr, ptr %table.addr, align 8, !dbg !588
  %root = getelementptr inbounds %struct.treetable_s, ptr %2, i32 0, i32 0, !dbg !589
  %3 = load ptr, ptr %root, align 8, !dbg !589
  store ptr %3, ptr %x, align 8, !dbg !587
  call void @llvm.dbg.declare(metadata ptr %cmp, metadata !590, metadata !DIExpression()), !dbg !591
  br label %while.cond, !dbg !592

while.cond:                                       ; preds = %if.end9, %entry
  %4 = load ptr, ptr %x, align 8, !dbg !593
  %5 = load ptr, ptr %table.addr, align 8, !dbg !594
  %sentinel1 = getelementptr inbounds %struct.treetable_s, ptr %5, i32 0, i32 1, !dbg !595
  %6 = load ptr, ptr %sentinel1, align 8, !dbg !595
  %cmp2 = icmp ne ptr %4, %6, !dbg !596
  br i1 %cmp2, label %while.body, label %while.end, !dbg !592

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %table.addr, align 8, !dbg !597
  %cmp3 = getelementptr inbounds %struct.treetable_s, ptr %7, i32 0, i32 3, !dbg !599
  %8 = load ptr, ptr %cmp3, align 8, !dbg !599
  %9 = load ptr, ptr %key.addr, align 8, !dbg !600
  %10 = load ptr, ptr %x, align 8, !dbg !601
  %key4 = getelementptr inbounds %struct.rbnode_s, ptr %10, i32 0, i32 0, !dbg !602
  %11 = load ptr, ptr %key4, align 8, !dbg !602
  %call = call i32 %8(ptr noundef %9, ptr noundef %11), !dbg !597
  store i32 %call, ptr %cmp, align 4, !dbg !603
  %12 = load ptr, ptr %x, align 8, !dbg !604
  store ptr %12, ptr %y, align 8, !dbg !605
  %13 = load i32, ptr %cmp, align 4, !dbg !606
  %cmp5 = icmp slt i32 %13, 0, !dbg !608
  br i1 %cmp5, label %if.then, label %if.else, !dbg !609

if.then:                                          ; preds = %while.body
  %14 = load ptr, ptr %x, align 8, !dbg !610
  %left = getelementptr inbounds %struct.rbnode_s, ptr %14, i32 0, i32 4, !dbg !612
  %15 = load ptr, ptr %left, align 8, !dbg !612
  store ptr %15, ptr %x, align 8, !dbg !613
  br label %if.end9, !dbg !614

if.else:                                          ; preds = %while.body
  %16 = load i32, ptr %cmp, align 4, !dbg !615
  %cmp6 = icmp sgt i32 %16, 0, !dbg !617
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !618

if.then7:                                         ; preds = %if.else
  %17 = load ptr, ptr %x, align 8, !dbg !619
  %right = getelementptr inbounds %struct.rbnode_s, ptr %17, i32 0, i32 5, !dbg !621
  %18 = load ptr, ptr %right, align 8, !dbg !621
  store ptr %18, ptr %x, align 8, !dbg !622
  br label %if.end9

if.else8:                                         ; preds = %if.else
  %19 = load ptr, ptr %val.addr, align 8, !dbg !623
  %20 = load ptr, ptr %x, align 8, !dbg !625
  %value = getelementptr inbounds %struct.rbnode_s, ptr %20, i32 0, i32 1, !dbg !626
  store ptr %19, ptr %value, align 8, !dbg !627
  store i32 0, ptr %retval, align 4, !dbg !628
  br label %return, !dbg !628

if.end9:                                          ; preds = %if.then7, %if.then
  br label %while.cond, !dbg !592, !llvm.loop !629

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.declare(metadata ptr %n, metadata !631, metadata !DIExpression()), !dbg !632
  %21 = load ptr, ptr %table.addr, align 8, !dbg !633
  %mem_alloc = getelementptr inbounds %struct.treetable_s, ptr %21, i32 0, i32 4, !dbg !634
  %22 = load ptr, ptr %mem_alloc, align 8, !dbg !634
  %call10 = call ptr %22(i64 noundef 48), !dbg !633
  store ptr %call10, ptr %n, align 8, !dbg !632
  %23 = load ptr, ptr %val.addr, align 8, !dbg !635
  %24 = load ptr, ptr %n, align 8, !dbg !636
  %value11 = getelementptr inbounds %struct.rbnode_s, ptr %24, i32 0, i32 1, !dbg !637
  store ptr %23, ptr %value11, align 8, !dbg !638
  %25 = load ptr, ptr %key.addr, align 8, !dbg !639
  %26 = load ptr, ptr %n, align 8, !dbg !640
  %key12 = getelementptr inbounds %struct.rbnode_s, ptr %26, i32 0, i32 0, !dbg !641
  store ptr %25, ptr %key12, align 8, !dbg !642
  %27 = load ptr, ptr %y, align 8, !dbg !643
  %28 = load ptr, ptr %n, align 8, !dbg !644
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %28, i32 0, i32 3, !dbg !645
  store ptr %27, ptr %parent, align 8, !dbg !646
  %29 = load ptr, ptr %table.addr, align 8, !dbg !647
  %sentinel13 = getelementptr inbounds %struct.treetable_s, ptr %29, i32 0, i32 1, !dbg !648
  %30 = load ptr, ptr %sentinel13, align 8, !dbg !648
  %31 = load ptr, ptr %n, align 8, !dbg !649
  %left14 = getelementptr inbounds %struct.rbnode_s, ptr %31, i32 0, i32 4, !dbg !650
  store ptr %30, ptr %left14, align 8, !dbg !651
  %32 = load ptr, ptr %table.addr, align 8, !dbg !652
  %sentinel15 = getelementptr inbounds %struct.treetable_s, ptr %32, i32 0, i32 1, !dbg !653
  %33 = load ptr, ptr %sentinel15, align 8, !dbg !653
  %34 = load ptr, ptr %n, align 8, !dbg !654
  %right16 = getelementptr inbounds %struct.rbnode_s, ptr %34, i32 0, i32 5, !dbg !655
  store ptr %33, ptr %right16, align 8, !dbg !656
  %35 = load ptr, ptr %table.addr, align 8, !dbg !657
  %size = getelementptr inbounds %struct.treetable_s, ptr %35, i32 0, i32 2, !dbg !658
  %36 = load i64, ptr %size, align 8, !dbg !659
  %inc = add i64 %36, 1, !dbg !659
  store i64 %inc, ptr %size, align 8, !dbg !659
  %37 = load ptr, ptr %y, align 8, !dbg !660
  %38 = load ptr, ptr %table.addr, align 8, !dbg !662
  %sentinel17 = getelementptr inbounds %struct.treetable_s, ptr %38, i32 0, i32 1, !dbg !663
  %39 = load ptr, ptr %sentinel17, align 8, !dbg !663
  %cmp18 = icmp eq ptr %37, %39, !dbg !664
  br i1 %cmp18, label %if.then19, label %if.else21, !dbg !665

if.then19:                                        ; preds = %while.end
  %40 = load ptr, ptr %n, align 8, !dbg !666
  %41 = load ptr, ptr %table.addr, align 8, !dbg !668
  %root20 = getelementptr inbounds %struct.treetable_s, ptr %41, i32 0, i32 0, !dbg !669
  store ptr %40, ptr %root20, align 8, !dbg !670
  %42 = load ptr, ptr %n, align 8, !dbg !671
  %color = getelementptr inbounds %struct.rbnode_s, ptr %42, i32 0, i32 2, !dbg !672
  store i8 1, ptr %color, align 8, !dbg !673
  br label %if.end32, !dbg !674

if.else21:                                        ; preds = %while.end
  %43 = load ptr, ptr %n, align 8, !dbg !675
  %color22 = getelementptr inbounds %struct.rbnode_s, ptr %43, i32 0, i32 2, !dbg !677
  store i8 0, ptr %color22, align 8, !dbg !678
  %44 = load ptr, ptr %table.addr, align 8, !dbg !679
  %cmp23 = getelementptr inbounds %struct.treetable_s, ptr %44, i32 0, i32 3, !dbg !681
  %45 = load ptr, ptr %cmp23, align 8, !dbg !681
  %46 = load ptr, ptr %key.addr, align 8, !dbg !682
  %47 = load ptr, ptr %y, align 8, !dbg !683
  %key24 = getelementptr inbounds %struct.rbnode_s, ptr %47, i32 0, i32 0, !dbg !684
  %48 = load ptr, ptr %key24, align 8, !dbg !684
  %call25 = call i32 %45(ptr noundef %46, ptr noundef %48), !dbg !679
  %cmp26 = icmp slt i32 %call25, 0, !dbg !685
  br i1 %cmp26, label %if.then27, label %if.else29, !dbg !686

if.then27:                                        ; preds = %if.else21
  %49 = load ptr, ptr %n, align 8, !dbg !687
  %50 = load ptr, ptr %y, align 8, !dbg !689
  %left28 = getelementptr inbounds %struct.rbnode_s, ptr %50, i32 0, i32 4, !dbg !690
  store ptr %49, ptr %left28, align 8, !dbg !691
  br label %if.end31, !dbg !692

if.else29:                                        ; preds = %if.else21
  %51 = load ptr, ptr %n, align 8, !dbg !693
  %52 = load ptr, ptr %y, align 8, !dbg !695
  %right30 = getelementptr inbounds %struct.rbnode_s, ptr %52, i32 0, i32 5, !dbg !696
  store ptr %51, ptr %right30, align 8, !dbg !697
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then27
  %53 = load ptr, ptr %table.addr, align 8, !dbg !698
  %54 = load ptr, ptr %n, align 8, !dbg !699
  call void @rebalance_after_insert(ptr noundef %53, ptr noundef %54), !dbg !700
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then19
  store i32 0, ptr %retval, align 4, !dbg !701
  br label %return, !dbg !701

return:                                           ; preds = %if.end32, %if.else8
  %55 = load i32, ptr %retval, align 4, !dbg !702
  ret i32 %55, !dbg !702
}

; Function Attrs: noinline nounwind uwtable
define internal void @rebalance_after_insert(ptr noundef %table, ptr noundef %z) #0 !dbg !703 {
entry:
  %table.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !704, metadata !DIExpression()), !dbg !705
  store ptr %z, ptr %z.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %z.addr, metadata !706, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.declare(metadata ptr %y, metadata !708, metadata !DIExpression()), !dbg !709
  br label %while.cond, !dbg !710

while.cond:                                       ; preds = %if.end69, %entry
  %0 = load ptr, ptr %z.addr, align 8, !dbg !711
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %0, i32 0, i32 3, !dbg !712
  %1 = load ptr, ptr %parent, align 8, !dbg !712
  %color = getelementptr inbounds %struct.rbnode_s, ptr %1, i32 0, i32 2, !dbg !713
  %2 = load i8, ptr %color, align 8, !dbg !713
  %conv = sext i8 %2 to i32, !dbg !711
  %cmp = icmp eq i32 %conv, 0, !dbg !714
  br i1 %cmp, label %while.body, label %while.end, !dbg !710

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %z.addr, align 8, !dbg !715
  %parent2 = getelementptr inbounds %struct.rbnode_s, ptr %3, i32 0, i32 3, !dbg !718
  %4 = load ptr, ptr %parent2, align 8, !dbg !718
  %5 = load ptr, ptr %z.addr, align 8, !dbg !719
  %parent3 = getelementptr inbounds %struct.rbnode_s, ptr %5, i32 0, i32 3, !dbg !720
  %6 = load ptr, ptr %parent3, align 8, !dbg !720
  %parent4 = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 3, !dbg !721
  %7 = load ptr, ptr %parent4, align 8, !dbg !721
  %left = getelementptr inbounds %struct.rbnode_s, ptr %7, i32 0, i32 4, !dbg !722
  %8 = load ptr, ptr %left, align 8, !dbg !722
  %cmp5 = icmp eq ptr %4, %8, !dbg !723
  br i1 %cmp5, label %if.then, label %if.else36, !dbg !724

if.then:                                          ; preds = %while.body
  %9 = load ptr, ptr %z.addr, align 8, !dbg !725
  %parent7 = getelementptr inbounds %struct.rbnode_s, ptr %9, i32 0, i32 3, !dbg !727
  %10 = load ptr, ptr %parent7, align 8, !dbg !727
  %parent8 = getelementptr inbounds %struct.rbnode_s, ptr %10, i32 0, i32 3, !dbg !728
  %11 = load ptr, ptr %parent8, align 8, !dbg !728
  %right = getelementptr inbounds %struct.rbnode_s, ptr %11, i32 0, i32 5, !dbg !729
  %12 = load ptr, ptr %right, align 8, !dbg !729
  store ptr %12, ptr %y, align 8, !dbg !730
  %13 = load ptr, ptr %y, align 8, !dbg !731
  %color9 = getelementptr inbounds %struct.rbnode_s, ptr %13, i32 0, i32 2, !dbg !733
  %14 = load i8, ptr %color9, align 8, !dbg !733
  %conv10 = sext i8 %14 to i32, !dbg !731
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !734
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !735

if.then13:                                        ; preds = %if.then
  %15 = load ptr, ptr %z.addr, align 8, !dbg !736
  %parent14 = getelementptr inbounds %struct.rbnode_s, ptr %15, i32 0, i32 3, !dbg !738
  %16 = load ptr, ptr %parent14, align 8, !dbg !738
  %color15 = getelementptr inbounds %struct.rbnode_s, ptr %16, i32 0, i32 2, !dbg !739
  store i8 1, ptr %color15, align 8, !dbg !740
  %17 = load ptr, ptr %y, align 8, !dbg !741
  %color16 = getelementptr inbounds %struct.rbnode_s, ptr %17, i32 0, i32 2, !dbg !742
  store i8 1, ptr %color16, align 8, !dbg !743
  %18 = load ptr, ptr %z.addr, align 8, !dbg !744
  %parent17 = getelementptr inbounds %struct.rbnode_s, ptr %18, i32 0, i32 3, !dbg !745
  %19 = load ptr, ptr %parent17, align 8, !dbg !745
  %parent18 = getelementptr inbounds %struct.rbnode_s, ptr %19, i32 0, i32 3, !dbg !746
  %20 = load ptr, ptr %parent18, align 8, !dbg !746
  %color19 = getelementptr inbounds %struct.rbnode_s, ptr %20, i32 0, i32 2, !dbg !747
  store i8 0, ptr %color19, align 8, !dbg !748
  %21 = load ptr, ptr %z.addr, align 8, !dbg !749
  %parent20 = getelementptr inbounds %struct.rbnode_s, ptr %21, i32 0, i32 3, !dbg !750
  %22 = load ptr, ptr %parent20, align 8, !dbg !750
  %parent21 = getelementptr inbounds %struct.rbnode_s, ptr %22, i32 0, i32 3, !dbg !751
  %23 = load ptr, ptr %parent21, align 8, !dbg !751
  store ptr %23, ptr %z.addr, align 8, !dbg !752
  br label %if.end69, !dbg !753

if.else:                                          ; preds = %if.then
  %24 = load ptr, ptr %z.addr, align 8, !dbg !754
  %25 = load ptr, ptr %z.addr, align 8, !dbg !757
  %parent22 = getelementptr inbounds %struct.rbnode_s, ptr %25, i32 0, i32 3, !dbg !758
  %26 = load ptr, ptr %parent22, align 8, !dbg !758
  %right23 = getelementptr inbounds %struct.rbnode_s, ptr %26, i32 0, i32 5, !dbg !759
  %27 = load ptr, ptr %right23, align 8, !dbg !759
  %cmp24 = icmp eq ptr %24, %27, !dbg !760
  br i1 %cmp24, label %if.then26, label %if.end, !dbg !761

if.then26:                                        ; preds = %if.else
  %28 = load ptr, ptr %z.addr, align 8, !dbg !762
  %parent27 = getelementptr inbounds %struct.rbnode_s, ptr %28, i32 0, i32 3, !dbg !764
  %29 = load ptr, ptr %parent27, align 8, !dbg !764
  store ptr %29, ptr %z.addr, align 8, !dbg !765
  %30 = load ptr, ptr %table.addr, align 8, !dbg !766
  %31 = load ptr, ptr %z.addr, align 8, !dbg !767
  call void @rotate_left(ptr noundef %30, ptr noundef %31), !dbg !768
  br label %if.end, !dbg !769

if.end:                                           ; preds = %if.then26, %if.else
  %32 = load ptr, ptr %z.addr, align 8, !dbg !770
  %parent28 = getelementptr inbounds %struct.rbnode_s, ptr %32, i32 0, i32 3, !dbg !771
  %33 = load ptr, ptr %parent28, align 8, !dbg !771
  %color29 = getelementptr inbounds %struct.rbnode_s, ptr %33, i32 0, i32 2, !dbg !772
  store i8 1, ptr %color29, align 8, !dbg !773
  %34 = load ptr, ptr %z.addr, align 8, !dbg !774
  %parent30 = getelementptr inbounds %struct.rbnode_s, ptr %34, i32 0, i32 3, !dbg !775
  %35 = load ptr, ptr %parent30, align 8, !dbg !775
  %parent31 = getelementptr inbounds %struct.rbnode_s, ptr %35, i32 0, i32 3, !dbg !776
  %36 = load ptr, ptr %parent31, align 8, !dbg !776
  %color32 = getelementptr inbounds %struct.rbnode_s, ptr %36, i32 0, i32 2, !dbg !777
  store i8 0, ptr %color32, align 8, !dbg !778
  %37 = load ptr, ptr %table.addr, align 8, !dbg !779
  %38 = load ptr, ptr %z.addr, align 8, !dbg !780
  %parent33 = getelementptr inbounds %struct.rbnode_s, ptr %38, i32 0, i32 3, !dbg !781
  %39 = load ptr, ptr %parent33, align 8, !dbg !781
  %parent34 = getelementptr inbounds %struct.rbnode_s, ptr %39, i32 0, i32 3, !dbg !782
  %40 = load ptr, ptr %parent34, align 8, !dbg !782
  call void @rotate_right(ptr noundef %37, ptr noundef %40), !dbg !783
  br label %if.end69

if.else36:                                        ; preds = %while.body
  %41 = load ptr, ptr %z.addr, align 8, !dbg !784
  %parent37 = getelementptr inbounds %struct.rbnode_s, ptr %41, i32 0, i32 3, !dbg !786
  %42 = load ptr, ptr %parent37, align 8, !dbg !786
  %parent38 = getelementptr inbounds %struct.rbnode_s, ptr %42, i32 0, i32 3, !dbg !787
  %43 = load ptr, ptr %parent38, align 8, !dbg !787
  %left39 = getelementptr inbounds %struct.rbnode_s, ptr %43, i32 0, i32 4, !dbg !788
  %44 = load ptr, ptr %left39, align 8, !dbg !788
  store ptr %44, ptr %y, align 8, !dbg !789
  %45 = load ptr, ptr %y, align 8, !dbg !790
  %color40 = getelementptr inbounds %struct.rbnode_s, ptr %45, i32 0, i32 2, !dbg !792
  %46 = load i8, ptr %color40, align 8, !dbg !792
  %conv41 = sext i8 %46 to i32, !dbg !790
  %cmp42 = icmp eq i32 %conv41, 0, !dbg !793
  br i1 %cmp42, label %if.then44, label %if.else53, !dbg !794

if.then44:                                        ; preds = %if.else36
  %47 = load ptr, ptr %z.addr, align 8, !dbg !795
  %parent45 = getelementptr inbounds %struct.rbnode_s, ptr %47, i32 0, i32 3, !dbg !797
  %48 = load ptr, ptr %parent45, align 8, !dbg !797
  %color46 = getelementptr inbounds %struct.rbnode_s, ptr %48, i32 0, i32 2, !dbg !798
  store i8 1, ptr %color46, align 8, !dbg !799
  %49 = load ptr, ptr %y, align 8, !dbg !800
  %color47 = getelementptr inbounds %struct.rbnode_s, ptr %49, i32 0, i32 2, !dbg !801
  store i8 1, ptr %color47, align 8, !dbg !802
  %50 = load ptr, ptr %z.addr, align 8, !dbg !803
  %parent48 = getelementptr inbounds %struct.rbnode_s, ptr %50, i32 0, i32 3, !dbg !804
  %51 = load ptr, ptr %parent48, align 8, !dbg !804
  %parent49 = getelementptr inbounds %struct.rbnode_s, ptr %51, i32 0, i32 3, !dbg !805
  %52 = load ptr, ptr %parent49, align 8, !dbg !805
  %color50 = getelementptr inbounds %struct.rbnode_s, ptr %52, i32 0, i32 2, !dbg !806
  store i8 0, ptr %color50, align 8, !dbg !807
  %53 = load ptr, ptr %z.addr, align 8, !dbg !808
  %parent51 = getelementptr inbounds %struct.rbnode_s, ptr %53, i32 0, i32 3, !dbg !809
  %54 = load ptr, ptr %parent51, align 8, !dbg !809
  %parent52 = getelementptr inbounds %struct.rbnode_s, ptr %54, i32 0, i32 3, !dbg !810
  %55 = load ptr, ptr %parent52, align 8, !dbg !810
  store ptr %55, ptr %z.addr, align 8, !dbg !811
  br label %if.end69, !dbg !812

if.else53:                                        ; preds = %if.else36
  %56 = load ptr, ptr %z.addr, align 8, !dbg !813
  %57 = load ptr, ptr %z.addr, align 8, !dbg !816
  %parent54 = getelementptr inbounds %struct.rbnode_s, ptr %57, i32 0, i32 3, !dbg !817
  %58 = load ptr, ptr %parent54, align 8, !dbg !817
  %left55 = getelementptr inbounds %struct.rbnode_s, ptr %58, i32 0, i32 4, !dbg !818
  %59 = load ptr, ptr %left55, align 8, !dbg !818
  %cmp56 = icmp eq ptr %56, %59, !dbg !819
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !820

if.then58:                                        ; preds = %if.else53
  %60 = load ptr, ptr %z.addr, align 8, !dbg !821
  %parent59 = getelementptr inbounds %struct.rbnode_s, ptr %60, i32 0, i32 3, !dbg !823
  %61 = load ptr, ptr %parent59, align 8, !dbg !823
  store ptr %61, ptr %z.addr, align 8, !dbg !824
  %62 = load ptr, ptr %table.addr, align 8, !dbg !825
  %63 = load ptr, ptr %z.addr, align 8, !dbg !826
  call void @rotate_right(ptr noundef %62, ptr noundef %63), !dbg !827
  br label %if.end60, !dbg !828

if.end60:                                         ; preds = %if.then58, %if.else53
  %64 = load ptr, ptr %z.addr, align 8, !dbg !829
  %parent61 = getelementptr inbounds %struct.rbnode_s, ptr %64, i32 0, i32 3, !dbg !830
  %65 = load ptr, ptr %parent61, align 8, !dbg !830
  %color62 = getelementptr inbounds %struct.rbnode_s, ptr %65, i32 0, i32 2, !dbg !831
  store i8 1, ptr %color62, align 8, !dbg !832
  %66 = load ptr, ptr %z.addr, align 8, !dbg !833
  %parent63 = getelementptr inbounds %struct.rbnode_s, ptr %66, i32 0, i32 3, !dbg !834
  %67 = load ptr, ptr %parent63, align 8, !dbg !834
  %parent64 = getelementptr inbounds %struct.rbnode_s, ptr %67, i32 0, i32 3, !dbg !835
  %68 = load ptr, ptr %parent64, align 8, !dbg !835
  %color65 = getelementptr inbounds %struct.rbnode_s, ptr %68, i32 0, i32 2, !dbg !836
  store i8 0, ptr %color65, align 8, !dbg !837
  %69 = load ptr, ptr %table.addr, align 8, !dbg !838
  %70 = load ptr, ptr %z.addr, align 8, !dbg !839
  %parent66 = getelementptr inbounds %struct.rbnode_s, ptr %70, i32 0, i32 3, !dbg !840
  %71 = load ptr, ptr %parent66, align 8, !dbg !840
  %parent67 = getelementptr inbounds %struct.rbnode_s, ptr %71, i32 0, i32 3, !dbg !841
  %72 = load ptr, ptr %parent67, align 8, !dbg !841
  call void @rotate_left(ptr noundef %69, ptr noundef %72), !dbg !842
  br label %if.end69

if.end69:                                         ; preds = %if.then44, %if.end60, %if.then13, %if.end
  br label %while.cond, !dbg !710, !llvm.loop !843

while.end:                                        ; preds = %while.cond
  %73 = load ptr, ptr %table.addr, align 8, !dbg !845
  %root = getelementptr inbounds %struct.treetable_s, ptr %73, i32 0, i32 0, !dbg !846
  %74 = load ptr, ptr %root, align 8, !dbg !846
  %color70 = getelementptr inbounds %struct.rbnode_s, ptr %74, i32 0, i32 2, !dbg !847
  store i8 1, ptr %color70, align 8, !dbg !848
  ret void, !dbg !849
}

; Function Attrs: noinline nounwind uwtable
define internal void @rotate_left(ptr noundef %table, ptr noundef %x) #0 !dbg !850 {
entry:
  %table.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !851, metadata !DIExpression()), !dbg !852
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !853, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.declare(metadata ptr %y, metadata !855, metadata !DIExpression()), !dbg !856
  %0 = load ptr, ptr %x.addr, align 8, !dbg !857
  %right = getelementptr inbounds %struct.rbnode_s, ptr %0, i32 0, i32 5, !dbg !858
  %1 = load ptr, ptr %right, align 8, !dbg !858
  store ptr %1, ptr %y, align 8, !dbg !856
  %2 = load ptr, ptr %y, align 8, !dbg !859
  %left = getelementptr inbounds %struct.rbnode_s, ptr %2, i32 0, i32 4, !dbg !860
  %3 = load ptr, ptr %left, align 8, !dbg !860
  %4 = load ptr, ptr %x.addr, align 8, !dbg !861
  %right1 = getelementptr inbounds %struct.rbnode_s, ptr %4, i32 0, i32 5, !dbg !862
  store ptr %3, ptr %right1, align 8, !dbg !863
  %5 = load ptr, ptr %y, align 8, !dbg !864
  %left2 = getelementptr inbounds %struct.rbnode_s, ptr %5, i32 0, i32 4, !dbg !866
  %6 = load ptr, ptr %left2, align 8, !dbg !866
  %7 = load ptr, ptr %table.addr, align 8, !dbg !867
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %7, i32 0, i32 1, !dbg !868
  %8 = load ptr, ptr %sentinel, align 8, !dbg !868
  %cmp = icmp ne ptr %6, %8, !dbg !869
  br i1 %cmp, label %if.then, label %if.end, !dbg !870

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %x.addr, align 8, !dbg !871
  %10 = load ptr, ptr %y, align 8, !dbg !872
  %left3 = getelementptr inbounds %struct.rbnode_s, ptr %10, i32 0, i32 4, !dbg !873
  %11 = load ptr, ptr %left3, align 8, !dbg !873
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %11, i32 0, i32 3, !dbg !874
  store ptr %9, ptr %parent, align 8, !dbg !875
  br label %if.end, !dbg !872

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %x.addr, align 8, !dbg !876
  %parent4 = getelementptr inbounds %struct.rbnode_s, ptr %12, i32 0, i32 3, !dbg !877
  %13 = load ptr, ptr %parent4, align 8, !dbg !877
  %14 = load ptr, ptr %y, align 8, !dbg !878
  %parent5 = getelementptr inbounds %struct.rbnode_s, ptr %14, i32 0, i32 3, !dbg !879
  store ptr %13, ptr %parent5, align 8, !dbg !880
  %15 = load ptr, ptr %x.addr, align 8, !dbg !881
  %parent6 = getelementptr inbounds %struct.rbnode_s, ptr %15, i32 0, i32 3, !dbg !883
  %16 = load ptr, ptr %parent6, align 8, !dbg !883
  %17 = load ptr, ptr %table.addr, align 8, !dbg !884
  %sentinel7 = getelementptr inbounds %struct.treetable_s, ptr %17, i32 0, i32 1, !dbg !885
  %18 = load ptr, ptr %sentinel7, align 8, !dbg !885
  %cmp8 = icmp eq ptr %16, %18, !dbg !886
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !887

if.then9:                                         ; preds = %if.end
  %19 = load ptr, ptr %y, align 8, !dbg !888
  %20 = load ptr, ptr %table.addr, align 8, !dbg !889
  %root = getelementptr inbounds %struct.treetable_s, ptr %20, i32 0, i32 0, !dbg !890
  store ptr %19, ptr %root, align 8, !dbg !891
  br label %if.end20, !dbg !889

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %x.addr, align 8, !dbg !892
  %22 = load ptr, ptr %x.addr, align 8, !dbg !894
  %parent10 = getelementptr inbounds %struct.rbnode_s, ptr %22, i32 0, i32 3, !dbg !895
  %23 = load ptr, ptr %parent10, align 8, !dbg !895
  %left11 = getelementptr inbounds %struct.rbnode_s, ptr %23, i32 0, i32 4, !dbg !896
  %24 = load ptr, ptr %left11, align 8, !dbg !896
  %cmp12 = icmp eq ptr %21, %24, !dbg !897
  br i1 %cmp12, label %if.then13, label %if.else16, !dbg !898

if.then13:                                        ; preds = %if.else
  %25 = load ptr, ptr %y, align 8, !dbg !899
  %26 = load ptr, ptr %x.addr, align 8, !dbg !900
  %parent14 = getelementptr inbounds %struct.rbnode_s, ptr %26, i32 0, i32 3, !dbg !901
  %27 = load ptr, ptr %parent14, align 8, !dbg !901
  %left15 = getelementptr inbounds %struct.rbnode_s, ptr %27, i32 0, i32 4, !dbg !902
  store ptr %25, ptr %left15, align 8, !dbg !903
  br label %if.end20, !dbg !900

if.else16:                                        ; preds = %if.else
  %28 = load ptr, ptr %y, align 8, !dbg !904
  %29 = load ptr, ptr %x.addr, align 8, !dbg !905
  %parent17 = getelementptr inbounds %struct.rbnode_s, ptr %29, i32 0, i32 3, !dbg !906
  %30 = load ptr, ptr %parent17, align 8, !dbg !906
  %right18 = getelementptr inbounds %struct.rbnode_s, ptr %30, i32 0, i32 5, !dbg !907
  store ptr %28, ptr %right18, align 8, !dbg !908
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.else16, %if.then9
  %31 = load ptr, ptr %x.addr, align 8, !dbg !909
  %32 = load ptr, ptr %y, align 8, !dbg !910
  %left21 = getelementptr inbounds %struct.rbnode_s, ptr %32, i32 0, i32 4, !dbg !911
  store ptr %31, ptr %left21, align 8, !dbg !912
  %33 = load ptr, ptr %y, align 8, !dbg !913
  %34 = load ptr, ptr %x.addr, align 8, !dbg !914
  %parent22 = getelementptr inbounds %struct.rbnode_s, ptr %34, i32 0, i32 3, !dbg !915
  store ptr %33, ptr %parent22, align 8, !dbg !916
  ret void, !dbg !917
}

; Function Attrs: noinline nounwind uwtable
define internal void @rotate_right(ptr noundef %table, ptr noundef %x) #0 !dbg !918 {
entry:
  %table.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !919, metadata !DIExpression()), !dbg !920
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !921, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.declare(metadata ptr %y, metadata !923, metadata !DIExpression()), !dbg !924
  %0 = load ptr, ptr %x.addr, align 8, !dbg !925
  %left = getelementptr inbounds %struct.rbnode_s, ptr %0, i32 0, i32 4, !dbg !926
  %1 = load ptr, ptr %left, align 8, !dbg !926
  store ptr %1, ptr %y, align 8, !dbg !924
  %2 = load ptr, ptr %y, align 8, !dbg !927
  %right = getelementptr inbounds %struct.rbnode_s, ptr %2, i32 0, i32 5, !dbg !928
  %3 = load ptr, ptr %right, align 8, !dbg !928
  %4 = load ptr, ptr %x.addr, align 8, !dbg !929
  %left1 = getelementptr inbounds %struct.rbnode_s, ptr %4, i32 0, i32 4, !dbg !930
  store ptr %3, ptr %left1, align 8, !dbg !931
  %5 = load ptr, ptr %y, align 8, !dbg !932
  %right2 = getelementptr inbounds %struct.rbnode_s, ptr %5, i32 0, i32 5, !dbg !934
  %6 = load ptr, ptr %right2, align 8, !dbg !934
  %7 = load ptr, ptr %table.addr, align 8, !dbg !935
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %7, i32 0, i32 1, !dbg !936
  %8 = load ptr, ptr %sentinel, align 8, !dbg !936
  %cmp = icmp ne ptr %6, %8, !dbg !937
  br i1 %cmp, label %if.then, label %if.end, !dbg !938

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %x.addr, align 8, !dbg !939
  %10 = load ptr, ptr %y, align 8, !dbg !940
  %right3 = getelementptr inbounds %struct.rbnode_s, ptr %10, i32 0, i32 5, !dbg !941
  %11 = load ptr, ptr %right3, align 8, !dbg !941
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %11, i32 0, i32 3, !dbg !942
  store ptr %9, ptr %parent, align 8, !dbg !943
  br label %if.end, !dbg !940

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %x.addr, align 8, !dbg !944
  %parent4 = getelementptr inbounds %struct.rbnode_s, ptr %12, i32 0, i32 3, !dbg !945
  %13 = load ptr, ptr %parent4, align 8, !dbg !945
  %14 = load ptr, ptr %y, align 8, !dbg !946
  %parent5 = getelementptr inbounds %struct.rbnode_s, ptr %14, i32 0, i32 3, !dbg !947
  store ptr %13, ptr %parent5, align 8, !dbg !948
  %15 = load ptr, ptr %x.addr, align 8, !dbg !949
  %parent6 = getelementptr inbounds %struct.rbnode_s, ptr %15, i32 0, i32 3, !dbg !951
  %16 = load ptr, ptr %parent6, align 8, !dbg !951
  %17 = load ptr, ptr %table.addr, align 8, !dbg !952
  %sentinel7 = getelementptr inbounds %struct.treetable_s, ptr %17, i32 0, i32 1, !dbg !953
  %18 = load ptr, ptr %sentinel7, align 8, !dbg !953
  %cmp8 = icmp eq ptr %16, %18, !dbg !954
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !955

if.then9:                                         ; preds = %if.end
  %19 = load ptr, ptr %y, align 8, !dbg !956
  %20 = load ptr, ptr %table.addr, align 8, !dbg !957
  %root = getelementptr inbounds %struct.treetable_s, ptr %20, i32 0, i32 0, !dbg !958
  store ptr %19, ptr %root, align 8, !dbg !959
  br label %if.end20, !dbg !957

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %x.addr, align 8, !dbg !960
  %22 = load ptr, ptr %x.addr, align 8, !dbg !962
  %parent10 = getelementptr inbounds %struct.rbnode_s, ptr %22, i32 0, i32 3, !dbg !963
  %23 = load ptr, ptr %parent10, align 8, !dbg !963
  %right11 = getelementptr inbounds %struct.rbnode_s, ptr %23, i32 0, i32 5, !dbg !964
  %24 = load ptr, ptr %right11, align 8, !dbg !964
  %cmp12 = icmp eq ptr %21, %24, !dbg !965
  br i1 %cmp12, label %if.then13, label %if.else16, !dbg !966

if.then13:                                        ; preds = %if.else
  %25 = load ptr, ptr %y, align 8, !dbg !967
  %26 = load ptr, ptr %x.addr, align 8, !dbg !968
  %parent14 = getelementptr inbounds %struct.rbnode_s, ptr %26, i32 0, i32 3, !dbg !969
  %27 = load ptr, ptr %parent14, align 8, !dbg !969
  %right15 = getelementptr inbounds %struct.rbnode_s, ptr %27, i32 0, i32 5, !dbg !970
  store ptr %25, ptr %right15, align 8, !dbg !971
  br label %if.end20, !dbg !968

if.else16:                                        ; preds = %if.else
  %28 = load ptr, ptr %y, align 8, !dbg !972
  %29 = load ptr, ptr %x.addr, align 8, !dbg !973
  %parent17 = getelementptr inbounds %struct.rbnode_s, ptr %29, i32 0, i32 3, !dbg !974
  %30 = load ptr, ptr %parent17, align 8, !dbg !974
  %left18 = getelementptr inbounds %struct.rbnode_s, ptr %30, i32 0, i32 4, !dbg !975
  store ptr %28, ptr %left18, align 8, !dbg !976
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.else16, %if.then9
  %31 = load ptr, ptr %x.addr, align 8, !dbg !977
  %32 = load ptr, ptr %y, align 8, !dbg !978
  %right21 = getelementptr inbounds %struct.rbnode_s, ptr %32, i32 0, i32 5, !dbg !979
  store ptr %31, ptr %right21, align 8, !dbg !980
  %33 = load ptr, ptr %y, align 8, !dbg !981
  %34 = load ptr, ptr %x.addr, align 8, !dbg !982
  %parent22 = getelementptr inbounds %struct.rbnode_s, ptr %34, i32 0, i32 3, !dbg !983
  store ptr %33, ptr %parent22, align 8, !dbg !984
  ret void, !dbg !985
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @balanced(ptr noundef %t) #0 !dbg !986 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !989, metadata !DIExpression()), !dbg !990
  %0 = load ptr, ptr %t.addr, align 8, !dbg !991
  %1 = load ptr, ptr %t.addr, align 8, !dbg !992
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !993
  %2 = load ptr, ptr %root, align 8, !dbg !993
  %call = call i32 @tree_height(ptr noundef %0, ptr noundef %2), !dbg !994
  %cmp = icmp ne i32 %call, -1, !dbg !995
  %conv = zext i1 %cmp to i32, !dbg !995
  ret i32 %conv, !dbg !996
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tree_height(ptr noundef %t, ptr noundef %n) #0 !dbg !997 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %left_h = alloca i32, align 4
  %right_h = alloca i32, align 4
  %diff = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1000, metadata !DIExpression()), !dbg !1001
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1002, metadata !DIExpression()), !dbg !1003
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1004
  %1 = load ptr, ptr %t.addr, align 8, !dbg !1006
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 1, !dbg !1007
  %2 = load ptr, ptr %sentinel, align 8, !dbg !1007
  %cmp = icmp eq ptr %0, %2, !dbg !1008
  br i1 %cmp, label %if.then, label %if.end, !dbg !1009

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1010
  br label %return, !dbg !1010

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata ptr %left_h, metadata !1011, metadata !DIExpression()), !dbg !1012
  %3 = load ptr, ptr %t.addr, align 8, !dbg !1013
  %4 = load ptr, ptr %n.addr, align 8, !dbg !1014
  %left = getelementptr inbounds %struct.rbnode_s, ptr %4, i32 0, i32 4, !dbg !1015
  %5 = load ptr, ptr %left, align 8, !dbg !1015
  %call = call i32 @tree_height(ptr noundef %3, ptr noundef %5), !dbg !1016
  store i32 %call, ptr %left_h, align 4, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %right_h, metadata !1017, metadata !DIExpression()), !dbg !1018
  %6 = load ptr, ptr %t.addr, align 8, !dbg !1019
  %7 = load ptr, ptr %n.addr, align 8, !dbg !1020
  %right = getelementptr inbounds %struct.rbnode_s, ptr %7, i32 0, i32 5, !dbg !1021
  %8 = load ptr, ptr %right, align 8, !dbg !1021
  %call1 = call i32 @tree_height(ptr noundef %6, ptr noundef %8), !dbg !1022
  store i32 %call1, ptr %right_h, align 4, !dbg !1018
  %9 = load i32, ptr %left_h, align 4, !dbg !1023
  %cmp2 = icmp eq i32 %9, -1, !dbg !1025
  %10 = load i32, ptr %right_h, align 4
  %cmp3 = icmp eq i32 %10, -1
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3, !dbg !1026
  br i1 %or.cond, label %if.then4, label %if.end5, !dbg !1026

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1027
  br label %return, !dbg !1027

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata ptr %diff, metadata !1028, metadata !DIExpression()), !dbg !1029
  %11 = load i32, ptr %left_h, align 4, !dbg !1030
  %12 = load i32, ptr %right_h, align 4, !dbg !1031
  %sub = sub nsw i32 %11, %12, !dbg !1032
  store i32 %sub, ptr %diff, align 4, !dbg !1029
  %13 = load i32, ptr %diff, align 4, !dbg !1033
  %cmp6 = icmp sgt i32 %13, 1, !dbg !1035
  %14 = load i32, ptr %diff, align 4
  %cmp8 = icmp slt i32 %14, -1
  %or.cond1 = select i1 %cmp6, i1 true, i1 %cmp8, !dbg !1036
  br i1 %or.cond1, label %if.then9, label %if.end10, !dbg !1036

if.then9:                                         ; preds = %if.end5
  store i32 -1, ptr %retval, align 4, !dbg !1037
  br label %return, !dbg !1037

if.end10:                                         ; preds = %if.end5
  %15 = load i32, ptr %left_h, align 4, !dbg !1038
  %16 = load i32, ptr %right_h, align 4, !dbg !1039
  %cmp11 = icmp sgt i32 %15, %16, !dbg !1040
  %17 = load i32, ptr %left_h, align 4, !dbg !1038
  %18 = load i32, ptr %right_h, align 4, !dbg !1038
  %cond = select i1 %cmp11, i32 %17, i32 %18, !dbg !1038
  %add = add nsw i32 1, %cond, !dbg !1041
  store i32 %add, ptr %retval, align 4, !dbg !1042
  br label %return, !dbg !1042

return:                                           ; preds = %if.end10, %if.then9, %if.then4, %if.then
  %19 = load i32, ptr %retval, align 4, !dbg !1043
  ret i32 %19, !dbg !1043
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sorted(ptr noundef %t) #0 !dbg !1044 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1045, metadata !DIExpression()), !dbg !1046
  %0 = load ptr, ptr %t.addr, align 8, !dbg !1047
  %1 = load ptr, ptr %t.addr, align 8, !dbg !1048
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !1049
  %2 = load ptr, ptr %root, align 8, !dbg !1049
  %call = call i32 @sorted_helper(ptr noundef %0, ptr noundef %2, ptr noundef null, ptr noundef null), !dbg !1050
  ret i32 %call, !dbg !1051
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sorted_helper(ptr noundef %t, ptr noundef %n, ptr noundef %min, ptr noundef %max) #0 !dbg !1052 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %min.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1055, metadata !DIExpression()), !dbg !1056
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1057, metadata !DIExpression()), !dbg !1058
  store ptr %min, ptr %min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !1059, metadata !DIExpression()), !dbg !1060
  store ptr %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !1061, metadata !DIExpression()), !dbg !1062
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1063
  %1 = load ptr, ptr %t.addr, align 8, !dbg !1065
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 1, !dbg !1066
  %2 = load ptr, ptr %sentinel, align 8, !dbg !1066
  %cmp = icmp eq ptr %0, %2, !dbg !1067
  br i1 %cmp, label %if.then, label %if.end, !dbg !1068

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1069
  br label %return, !dbg !1069

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %min.addr, align 8, !dbg !1070
  %cmp1 = icmp ne ptr %3, null, !dbg !1072
  br i1 %cmp1, label %land.lhs.true, label %if.end5, !dbg !1073

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %t.addr, align 8, !dbg !1074
  %cmp2 = getelementptr inbounds %struct.treetable_s, ptr %4, i32 0, i32 3, !dbg !1075
  %5 = load ptr, ptr %cmp2, align 8, !dbg !1075
  %6 = load ptr, ptr %n.addr, align 8, !dbg !1076
  %key = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 0, !dbg !1077
  %7 = load ptr, ptr %key, align 8, !dbg !1077
  %8 = load ptr, ptr %min.addr, align 8, !dbg !1078
  %call = call i32 %5(ptr noundef %7, ptr noundef %8), !dbg !1074
  %cmp3 = icmp sle i32 %call, 0, !dbg !1079
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1080

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1081
  br label %return, !dbg !1081

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %max.addr, align 8, !dbg !1082
  %cmp6 = icmp ne ptr %9, null, !dbg !1084
  br i1 %cmp6, label %land.lhs.true7, label %if.end13, !dbg !1085

land.lhs.true7:                                   ; preds = %if.end5
  %10 = load ptr, ptr %t.addr, align 8, !dbg !1086
  %cmp8 = getelementptr inbounds %struct.treetable_s, ptr %10, i32 0, i32 3, !dbg !1087
  %11 = load ptr, ptr %cmp8, align 8, !dbg !1087
  %12 = load ptr, ptr %n.addr, align 8, !dbg !1088
  %key9 = getelementptr inbounds %struct.rbnode_s, ptr %12, i32 0, i32 0, !dbg !1089
  %13 = load ptr, ptr %key9, align 8, !dbg !1089
  %14 = load ptr, ptr %max.addr, align 8, !dbg !1090
  %call10 = call i32 %11(ptr noundef %13, ptr noundef %14), !dbg !1086
  %cmp11 = icmp sge i32 %call10, 0, !dbg !1091
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1092

if.then12:                                        ; preds = %land.lhs.true7
  store i32 0, ptr %retval, align 4, !dbg !1093
  br label %return, !dbg !1093

if.end13:                                         ; preds = %land.lhs.true7, %if.end5
  %15 = load ptr, ptr %t.addr, align 8, !dbg !1094
  %16 = load ptr, ptr %n.addr, align 8, !dbg !1095
  %left = getelementptr inbounds %struct.rbnode_s, ptr %16, i32 0, i32 4, !dbg !1096
  %17 = load ptr, ptr %left, align 8, !dbg !1096
  %18 = load ptr, ptr %min.addr, align 8, !dbg !1097
  %19 = load ptr, ptr %n.addr, align 8, !dbg !1098
  %key14 = getelementptr inbounds %struct.rbnode_s, ptr %19, i32 0, i32 0, !dbg !1099
  %20 = load ptr, ptr %key14, align 8, !dbg !1099
  %call15 = call i32 @sorted_helper(ptr noundef %15, ptr noundef %17, ptr noundef %18, ptr noundef %20), !dbg !1100
  %tobool = icmp ne i32 %call15, 0, !dbg !1100
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1101

land.rhs:                                         ; preds = %if.end13
  %21 = load ptr, ptr %t.addr, align 8, !dbg !1102
  %22 = load ptr, ptr %n.addr, align 8, !dbg !1103
  %right = getelementptr inbounds %struct.rbnode_s, ptr %22, i32 0, i32 5, !dbg !1104
  %23 = load ptr, ptr %right, align 8, !dbg !1104
  %24 = load ptr, ptr %n.addr, align 8, !dbg !1105
  %key16 = getelementptr inbounds %struct.rbnode_s, ptr %24, i32 0, i32 0, !dbg !1106
  %25 = load ptr, ptr %key16, align 8, !dbg !1106
  %26 = load ptr, ptr %max.addr, align 8, !dbg !1107
  %call17 = call i32 @sorted_helper(ptr noundef %21, ptr noundef %23, ptr noundef %25, ptr noundef %26), !dbg !1108
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1101
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end13
  %27 = phi i1 [ false, %if.end13 ], [ %tobool18, %land.rhs ], !dbg !1109
  %land.ext = zext i1 %27 to i32, !dbg !1101
  store i32 %land.ext, ptr %retval, align 4, !dbg !1110
  br label %return, !dbg !1110

return:                                           ; preds = %land.end, %if.then12, %if.then4, %if.then
  %28 = load i32, ptr %retval, align 4, !dbg !1111
  ret i32 %28, !dbg !1111
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !1112 {
entry:
  %retval = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %v3 = alloca i32, align 4
  %t = alloca ptr, align 8
  %out = alloca ptr, align 8
  %result = alloca i32, align 4
  %successor = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.dbg.declare(metadata ptr %k1, metadata !1115, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.declare(metadata ptr %k2, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.declare(metadata ptr %k3, metadata !1119, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !1121, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !1123, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !1125, metadata !DIExpression()), !dbg !1126
  call void @klee_make_symbolic(ptr noundef %k1, i64 noundef 4, ptr noundef @.str), !dbg !1127
  call void @klee_make_symbolic(ptr noundef %k2, i64 noundef 4, ptr noundef @.str.1), !dbg !1128
  call void @klee_make_symbolic(ptr noundef %k3, i64 noundef 4, ptr noundef @.str.2), !dbg !1129
  call void @klee_make_symbolic(ptr noundef %v1, i64 noundef 4, ptr noundef @.str.3), !dbg !1130
  call void @klee_make_symbolic(ptr noundef %v2, i64 noundef 4, ptr noundef @.str.4), !dbg !1131
  call void @klee_make_symbolic(ptr noundef %v3, i64 noundef 4, ptr noundef @.str.5), !dbg !1132
  call void @llvm.dbg.declare(metadata ptr %t, metadata !1133, metadata !DIExpression()), !dbg !1138
  %call = call i32 @treetable_new(ptr noundef %t), !dbg !1139
  %0 = load ptr, ptr %t, align 8, !dbg !1140
  %call1 = call i32 @treetable_add(ptr noundef %0, ptr noundef %k1, ptr noundef %v1), !dbg !1141
  %1 = load ptr, ptr %t, align 8, !dbg !1142
  %call2 = call i32 @treetable_add(ptr noundef %1, ptr noundef %k2, ptr noundef %v2), !dbg !1143
  %2 = load ptr, ptr %t, align 8, !dbg !1144
  %call3 = call i32 @treetable_add(ptr noundef %2, ptr noundef %k3, ptr noundef %v3), !dbg !1145
  %3 = load ptr, ptr %t, align 8, !dbg !1146
  %call4 = call i32 @sorted(ptr noundef %3), !dbg !1146
  %tobool = icmp ne i32 %call4, 0, !dbg !1146
  br i1 %tobool, label %if.end, label %if.else, !dbg !1149

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.7, i32 noundef 40, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1146
  unreachable, !dbg !1146

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %t, align 8, !dbg !1150
  %call5 = call i32 @balanced(ptr noundef %4), !dbg !1150
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1150
  br i1 %tobool6, label %if.end9, label %if.else8, !dbg !1153

if.else8:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.7, i32 noundef 41, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1150
  unreachable, !dbg !1150

if.end9:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata ptr %out, metadata !1154, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.declare(metadata ptr %result, metadata !1156, metadata !DIExpression()), !dbg !1157
  %5 = load ptr, ptr %t, align 8, !dbg !1158
  %call10 = call i32 @treetable_get_greater_than(ptr noundef %5, ptr noundef %k1, ptr noundef %out), !dbg !1159
  store i32 %call10, ptr %result, align 4, !dbg !1157
  %6 = load i32, ptr %result, align 4, !dbg !1160
  %cmp = icmp eq i32 %6, 0, !dbg !1162
  br i1 %cmp, label %if.then11, label %if.else23, !dbg !1163

if.then11:                                        ; preds = %if.end9
  call void @llvm.dbg.declare(metadata ptr %successor, metadata !1164, metadata !DIExpression()), !dbg !1166
  %7 = load ptr, ptr %out, align 8, !dbg !1167
  %8 = load i32, ptr %7, align 4, !dbg !1168
  store i32 %8, ptr %successor, align 4, !dbg !1166
  %9 = load i32, ptr %successor, align 4, !dbg !1169
  %10 = load i32, ptr %k1, align 4, !dbg !1169
  %cmp12 = icmp sgt i32 %9, %10, !dbg !1169
  br i1 %cmp12, label %if.end15, label %if.else14, !dbg !1172

if.else14:                                        ; preds = %if.then11
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.7, i32 noundef 60, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1169
  unreachable, !dbg !1169

if.end15:                                         ; preds = %if.then11
  %11 = load i32, ptr %successor, align 4, !dbg !1173
  %12 = load i32, ptr %k1, align 4, !dbg !1173
  %cmp16 = icmp eq i32 %11, %12, !dbg !1173
  br i1 %cmp16, label %if.end28, label %lor.lhs.false, !dbg !1173

lor.lhs.false:                                    ; preds = %if.end15
  %13 = load i32, ptr %successor, align 4, !dbg !1173
  %14 = load i32, ptr %k2, align 4, !dbg !1173
  %cmp17 = icmp eq i32 %13, %14, !dbg !1173
  br i1 %cmp17, label %if.end28, label %lor.lhs.false18, !dbg !1173

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %15 = load i32, ptr %successor, align 4, !dbg !1173
  %16 = load i32, ptr %k3, align 4, !dbg !1173
  %cmp19 = icmp eq i32 %15, %16, !dbg !1173
  br i1 %cmp19, label %if.end28, label %if.else21, !dbg !1176

if.else21:                                        ; preds = %lor.lhs.false18
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.7, i32 noundef 68, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1173
  unreachable, !dbg !1173

if.else23:                                        ; preds = %if.end9
  %17 = load i32, ptr %result, align 4, !dbg !1177
  %cmp24 = icmp eq i32 %17, 6, !dbg !1177
  br i1 %cmp24, label %if.end28, label %if.else26, !dbg !1181

if.else26:                                        ; preds = %if.else23
  call void @__assert_fail(ptr noundef @.str.11, ptr noundef @.str.7, i32 noundef 71, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1177
  unreachable, !dbg !1177

if.end28:                                         ; preds = %if.else23, %lor.lhs.false18, %lor.lhs.false, %if.end15
  %18 = load ptr, ptr %t, align 8, !dbg !1182
  call void @treetable_destroy(ptr noundef %18), !dbg !1183
  ret i32 0, !dbg !1184
}

declare void @klee_make_symbolic(ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!51, !71}
!llvm.ident = !{!74, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "Ex3SymbTestSuite/treetable_get_greater_than_symb.c", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "62c55d1870e47cad12147c8a89ab9e63")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !3, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !3, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 10)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 51)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 120, elements: !31)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!31 = !{!32}
!32 = !DISubrange(count: 15)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 12)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !31)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 54)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 31)
!51 = distinct !DICompileUnit(language: DW_LANG_C11, file: !52, producer: "clang version 16.0.6 (https://github.com/llvm/llvm-project.git 7cbf1a2591520c2491aa35339f227775f4d3adf6)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !67, splitDebugInlining: false, nameTableKind: None)
!52 = !DIFile(filename: "../ex2/treetable.c", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "cd091c12d74f379a3d467a2d81b73c3b")
!53 = !{!54}
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cc_stat", file: !55, line: 29, baseType: !56, size: 32, elements: !57)
!55 = !DIFile(filename: "../ex2/common.h", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "e8c1045b469e28a9ccd16d92bf989e73")
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66}
!58 = !DIEnumerator(name: "CC_OK", value: 0)
!59 = !DIEnumerator(name: "CC_ERR_ALLOC", value: 1)
!60 = !DIEnumerator(name: "CC_ERR_INVALID_CAPACITY", value: 2)
!61 = !DIEnumerator(name: "CC_ERR_INVALID_RANGE", value: 3)
!62 = !DIEnumerator(name: "CC_ERR_MAX_CAPACITY", value: 4)
!63 = !DIEnumerator(name: "CC_ERR_KEY_NOT_FOUND", value: 6)
!64 = !DIEnumerator(name: "CC_ERR_VALUE_NOT_FOUND", value: 7)
!65 = !DIEnumerator(name: "CC_ERR_OUT_OF_RANGE", value: 8)
!66 = !DIEnumerator(name: "CC_ITER_END", value: 9)
!67 = !{!68, !70}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!71 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.6 (https://github.com/llvm/llvm-project.git 7cbf1a2591520c2491aa35339f227775f4d3adf6)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !53, retainedTypes: !72, globals: !73, splitDebugInlining: false, nameTableKind: None)
!72 = !{!68}
!73 = !{!0, !7, !9, !11, !13, !15, !17, !22, !27, !33, !38, !41, !46}
!74 = !{!"clang version 16.0.6 (https://github.com/llvm/llvm-project.git 7cbf1a2591520c2491aa35339f227775f4d3adf6)"}
!75 = !{i32 7, !"Dwarf Version", i32 5}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{i32 1, !"wchar_size", i32 4}
!78 = !{i32 8, !"PIC Level", i32 2}
!79 = !{i32 7, !"PIE Level", i32 2}
!80 = !{i32 7, !"uwtable", i32 2}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = distinct !DISubprogram(name: "cmp", scope: !52, file: !52, line: 53, type: !83, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!83 = !DISubroutineType(types: !84)
!84 = !{!69, !85, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!87 = !{}
!88 = !DILocalVariable(name: "e1", arg: 1, scope: !82, file: !52, line: 53, type: !85)
!89 = !DILocation(line: 53, column: 21, scope: !82)
!90 = !DILocalVariable(name: "e2", arg: 2, scope: !82, file: !52, line: 53, type: !85)
!91 = !DILocation(line: 53, column: 37, scope: !82)
!92 = !DILocalVariable(name: "i", scope: !82, file: !52, line: 54, type: !69)
!93 = !DILocation(line: 54, column: 9, scope: !82)
!94 = !DILocation(line: 54, column: 22, scope: !82)
!95 = !DILocation(line: 54, column: 13, scope: !82)
!96 = !DILocalVariable(name: "j", scope: !82, file: !52, line: 55, type: !69)
!97 = !DILocation(line: 55, column: 9, scope: !82)
!98 = !DILocation(line: 55, column: 22, scope: !82)
!99 = !DILocation(line: 55, column: 13, scope: !82)
!100 = !DILocation(line: 57, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !82, file: !52, line: 57, column: 9)
!102 = !DILocation(line: 57, column: 13, scope: !101)
!103 = !DILocation(line: 57, column: 11, scope: !101)
!104 = !DILocation(line: 57, column: 9, scope: !82)
!105 = !DILocation(line: 58, column: 9, scope: !101)
!106 = !DILocation(line: 59, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !82, file: !52, line: 59, column: 9)
!108 = !DILocation(line: 59, column: 14, scope: !107)
!109 = !DILocation(line: 59, column: 11, scope: !107)
!110 = !DILocation(line: 59, column: 9, scope: !82)
!111 = !DILocation(line: 60, column: 9, scope: !107)
!112 = !DILocation(line: 61, column: 5, scope: !82)
!113 = !DILocation(line: 62, column: 1, scope: !82)
!114 = distinct !DISubprogram(name: "treetable_conf_init", scope: !52, file: !52, line: 70, type: !115, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "TreeTableConf", file: !119, line: 94, baseType: !120)
!119 = !DIFile(filename: "../ex2/treetable.h", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "065f0d2b52ad730b442c75c554f59b69")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "treetable_conf_s", file: !119, line: 89, size: 256, elements: !121)
!121 = !{!122, !124, !131, !135}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !120, file: !119, line: 90, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "mem_alloc", scope: !120, file: !119, line: 91, baseType: !125, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!70, !128}
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !129, line: 46, baseType: !130)
!129 = !DIFile(filename: "/tmp/llvm-160-install_O_D_A/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!130 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "mem_calloc", scope: !120, file: !119, line: 92, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!70, !128, !128}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mem_free", scope: !120, file: !119, line: 93, baseType: !136, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !70}
!139 = !DILocalVariable(name: "conf", arg: 1, scope: !114, file: !52, line: 70, type: !117)
!140 = !DILocation(line: 70, column: 41, scope: !114)
!141 = !DILocation(line: 72, column: 5, scope: !114)
!142 = !DILocation(line: 72, column: 11, scope: !114)
!143 = !DILocation(line: 72, column: 22, scope: !114)
!144 = !DILocation(line: 73, column: 5, scope: !114)
!145 = !DILocation(line: 73, column: 11, scope: !114)
!146 = !DILocation(line: 73, column: 22, scope: !114)
!147 = !DILocation(line: 74, column: 5, scope: !114)
!148 = !DILocation(line: 74, column: 11, scope: !114)
!149 = !DILocation(line: 74, column: 22, scope: !114)
!150 = !DILocation(line: 75, column: 5, scope: !114)
!151 = !DILocation(line: 75, column: 11, scope: !114)
!152 = !DILocation(line: 75, column: 22, scope: !114)
!153 = !DILocation(line: 76, column: 1, scope: !114)
!154 = distinct !DISubprogram(name: "treetable_new", scope: !52, file: !52, line: 87, type: !155, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!155 = !DISubroutineType(types: !156)
!156 = !{!54, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "TreeTable", file: !119, line: 30, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "treetable_s", file: !52, line: 30, size: 448, elements: !161)
!161 = !{!162, !174, !175, !176, !177, !178, !179}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !160, file: !52, line: 31, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "RBNode", file: !119, line: 61, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode_s", file: !119, line: 37, size: 384, elements: !166)
!166 = !{!167, !168, !169, !170, !172, !173}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !165, file: !119, line: 40, baseType: !70, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !165, file: !119, line: 44, baseType: !70, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !165, file: !119, line: 48, baseType: !4, size: 8, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !165, file: !119, line: 52, baseType: !171, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !165, file: !119, line: 56, baseType: !171, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !165, file: !119, line: 60, baseType: !171, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !160, file: !52, line: 32, baseType: !163, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !160, file: !52, line: 33, baseType: !128, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !160, file: !52, line: 35, baseType: !123, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "mem_alloc", scope: !160, file: !52, line: 36, baseType: !125, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "mem_calloc", scope: !160, file: !52, line: 37, baseType: !132, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "mem_free", scope: !160, file: !52, line: 38, baseType: !136, size: 64, offset: 384)
!180 = !DILocalVariable(name: "tt", arg: 1, scope: !154, file: !52, line: 87, type: !157)
!181 = !DILocation(line: 87, column: 40, scope: !154)
!182 = !DILocalVariable(name: "conf", scope: !154, file: !52, line: 89, type: !118)
!183 = !DILocation(line: 89, column: 19, scope: !154)
!184 = !DILocation(line: 90, column: 5, scope: !154)
!185 = !DILocation(line: 91, column: 38, scope: !154)
!186 = !DILocation(line: 91, column: 12, scope: !154)
!187 = !DILocation(line: 91, column: 5, scope: !154)
!188 = distinct !DISubprogram(name: "treetable_new_conf", scope: !52, file: !52, line: 107, type: !189, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!189 = !DISubroutineType(types: !190)
!190 = !{!54, !191, !157}
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!194 = !DILocalVariable(name: "conf", arg: 1, scope: !188, file: !52, line: 107, type: !191)
!195 = !DILocation(line: 107, column: 61, scope: !188)
!196 = !DILocalVariable(name: "tt", arg: 2, scope: !188, file: !52, line: 107, type: !157)
!197 = !DILocation(line: 107, column: 79, scope: !188)
!198 = !DILocalVariable(name: "table", scope: !188, file: !52, line: 109, type: !158)
!199 = !DILocation(line: 109, column: 16, scope: !188)
!200 = !DILocation(line: 109, column: 24, scope: !188)
!201 = !DILocation(line: 109, column: 30, scope: !188)
!202 = !DILocation(line: 111, column: 10, scope: !203)
!203 = distinct !DILexicalBlock(scope: !188, file: !52, line: 111, column: 9)
!204 = !DILocation(line: 111, column: 9, scope: !188)
!205 = !DILocation(line: 112, column: 9, scope: !203)
!206 = !DILocalVariable(name: "sentinel", scope: !188, file: !52, line: 114, type: !163)
!207 = !DILocation(line: 114, column: 13, scope: !188)
!208 = !DILocation(line: 114, column: 24, scope: !188)
!209 = !DILocation(line: 114, column: 30, scope: !188)
!210 = !DILocation(line: 116, column: 10, scope: !211)
!211 = distinct !DILexicalBlock(scope: !188, file: !52, line: 116, column: 9)
!212 = !DILocation(line: 116, column: 9, scope: !188)
!213 = !DILocation(line: 117, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !52, line: 116, column: 20)
!215 = !DILocation(line: 117, column: 15, scope: !214)
!216 = !DILocation(line: 117, column: 24, scope: !214)
!217 = !DILocation(line: 118, column: 9, scope: !214)
!218 = !DILocation(line: 121, column: 5, scope: !188)
!219 = !DILocation(line: 121, column: 15, scope: !188)
!220 = !DILocation(line: 121, column: 23, scope: !188)
!221 = !DILocation(line: 123, column: 5, scope: !188)
!222 = !DILocation(line: 123, column: 12, scope: !188)
!223 = !DILocation(line: 123, column: 23, scope: !188)
!224 = !DILocation(line: 124, column: 25, scope: !188)
!225 = !DILocation(line: 124, column: 31, scope: !188)
!226 = !DILocation(line: 124, column: 5, scope: !188)
!227 = !DILocation(line: 124, column: 12, scope: !188)
!228 = !DILocation(line: 124, column: 23, scope: !188)
!229 = !DILocation(line: 125, column: 25, scope: !188)
!230 = !DILocation(line: 125, column: 31, scope: !188)
!231 = !DILocation(line: 125, column: 5, scope: !188)
!232 = !DILocation(line: 125, column: 12, scope: !188)
!233 = !DILocation(line: 125, column: 23, scope: !188)
!234 = !DILocation(line: 126, column: 25, scope: !188)
!235 = !DILocation(line: 126, column: 31, scope: !188)
!236 = !DILocation(line: 126, column: 5, scope: !188)
!237 = !DILocation(line: 126, column: 12, scope: !188)
!238 = !DILocation(line: 126, column: 23, scope: !188)
!239 = !DILocation(line: 127, column: 25, scope: !188)
!240 = !DILocation(line: 127, column: 31, scope: !188)
!241 = !DILocation(line: 127, column: 5, scope: !188)
!242 = !DILocation(line: 127, column: 12, scope: !188)
!243 = !DILocation(line: 127, column: 23, scope: !188)
!244 = !DILocation(line: 128, column: 25, scope: !188)
!245 = !DILocation(line: 128, column: 5, scope: !188)
!246 = !DILocation(line: 128, column: 12, scope: !188)
!247 = !DILocation(line: 128, column: 23, scope: !188)
!248 = !DILocation(line: 129, column: 25, scope: !188)
!249 = !DILocation(line: 129, column: 5, scope: !188)
!250 = !DILocation(line: 129, column: 12, scope: !188)
!251 = !DILocation(line: 129, column: 23, scope: !188)
!252 = !DILocation(line: 131, column: 11, scope: !188)
!253 = !DILocation(line: 131, column: 6, scope: !188)
!254 = !DILocation(line: 131, column: 9, scope: !188)
!255 = !DILocation(line: 132, column: 5, scope: !188)
!256 = !DILocation(line: 133, column: 1, scope: !188)
!257 = distinct !DISubprogram(name: "treetable_destroy", scope: !52, file: !52, line: 159, type: !258, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !158}
!260 = !DILocalVariable(name: "table", arg: 1, scope: !257, file: !52, line: 159, type: !158)
!261 = !DILocation(line: 159, column: 35, scope: !257)
!262 = !DILocation(line: 161, column: 18, scope: !257)
!263 = !DILocation(line: 161, column: 25, scope: !257)
!264 = !DILocation(line: 161, column: 32, scope: !257)
!265 = !DILocation(line: 161, column: 5, scope: !257)
!266 = !DILocation(line: 163, column: 5, scope: !257)
!267 = !DILocation(line: 163, column: 12, scope: !257)
!268 = !DILocation(line: 163, column: 21, scope: !257)
!269 = !DILocation(line: 163, column: 28, scope: !257)
!270 = !DILocation(line: 164, column: 5, scope: !257)
!271 = !DILocation(line: 164, column: 12, scope: !257)
!272 = !DILocation(line: 164, column: 21, scope: !257)
!273 = !DILocation(line: 165, column: 1, scope: !257)
!274 = distinct !DISubprogram(name: "tree_destroy", scope: !52, file: !52, line: 141, type: !275, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !87)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !158, !163}
!277 = !DILocalVariable(name: "table", arg: 1, scope: !274, file: !52, line: 141, type: !158)
!278 = !DILocation(line: 141, column: 37, scope: !274)
!279 = !DILocalVariable(name: "n", arg: 2, scope: !274, file: !52, line: 141, type: !163)
!280 = !DILocation(line: 141, column: 52, scope: !274)
!281 = !DILocation(line: 143, column: 9, scope: !282)
!282 = distinct !DILexicalBlock(scope: !274, file: !52, line: 143, column: 9)
!283 = !DILocation(line: 143, column: 14, scope: !282)
!284 = !DILocation(line: 143, column: 21, scope: !282)
!285 = !DILocation(line: 143, column: 11, scope: !282)
!286 = !DILocation(line: 143, column: 9, scope: !274)
!287 = !DILocation(line: 146, column: 18, scope: !274)
!288 = !DILocation(line: 146, column: 25, scope: !274)
!289 = !DILocation(line: 146, column: 28, scope: !274)
!290 = !DILocation(line: 146, column: 5, scope: !274)
!291 = !DILocation(line: 147, column: 18, scope: !274)
!292 = !DILocation(line: 147, column: 25, scope: !274)
!293 = !DILocation(line: 147, column: 28, scope: !274)
!294 = !DILocation(line: 147, column: 5, scope: !274)
!295 = !DILocation(line: 149, column: 5, scope: !274)
!296 = !DILocation(line: 149, column: 12, scope: !274)
!297 = !DILocation(line: 149, column: 21, scope: !274)
!298 = !DILocation(line: 150, column: 1, scope: !274)
!299 = distinct !DISubprogram(name: "treetable_get", scope: !52, file: !52, line: 177, type: !300, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!300 = !DISubroutineType(types: !301)
!301 = !{!54, !302, !85, !305}
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!306 = !DILocalVariable(name: "table", arg: 1, scope: !299, file: !52, line: 177, type: !302)
!307 = !DILocation(line: 177, column: 52, scope: !299)
!308 = !DILocalVariable(name: "key", arg: 2, scope: !299, file: !52, line: 177, type: !85)
!309 = !DILocation(line: 177, column: 71, scope: !299)
!310 = !DILocalVariable(name: "out", arg: 3, scope: !299, file: !52, line: 177, type: !305)
!311 = !DILocation(line: 177, column: 83, scope: !299)
!312 = !DILocalVariable(name: "node", scope: !299, file: !52, line: 179, type: !163)
!313 = !DILocation(line: 179, column: 13, scope: !299)
!314 = !DILocation(line: 179, column: 41, scope: !299)
!315 = !DILocation(line: 179, column: 48, scope: !299)
!316 = !DILocation(line: 179, column: 20, scope: !299)
!317 = !DILocation(line: 181, column: 10, scope: !318)
!318 = distinct !DILexicalBlock(scope: !299, file: !52, line: 181, column: 9)
!319 = !DILocation(line: 181, column: 9, scope: !299)
!320 = !DILocation(line: 182, column: 9, scope: !318)
!321 = !DILocation(line: 184, column: 12, scope: !299)
!322 = !DILocation(line: 184, column: 18, scope: !299)
!323 = !DILocation(line: 184, column: 6, scope: !299)
!324 = !DILocation(line: 184, column: 10, scope: !299)
!325 = !DILocation(line: 185, column: 5, scope: !299)
!326 = !DILocation(line: 186, column: 1, scope: !299)
!327 = distinct !DISubprogram(name: "get_tree_node_by_key", scope: !52, file: !52, line: 473, type: !328, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !87)
!328 = !DISubroutineType(types: !329)
!329 = !{!163, !302, !85}
!330 = !DILocalVariable(name: "table", arg: 1, scope: !327, file: !52, line: 473, type: !302)
!331 = !DILocation(line: 473, column: 61, scope: !327)
!332 = !DILocalVariable(name: "key", arg: 2, scope: !327, file: !52, line: 473, type: !85)
!333 = !DILocation(line: 473, column: 80, scope: !327)
!334 = !DILocation(line: 475, column: 9, scope: !335)
!335 = distinct !DILexicalBlock(scope: !327, file: !52, line: 475, column: 9)
!336 = !DILocation(line: 475, column: 16, scope: !335)
!337 = !DILocation(line: 475, column: 21, scope: !335)
!338 = !DILocation(line: 475, column: 9, scope: !327)
!339 = !DILocation(line: 476, column: 9, scope: !335)
!340 = !DILocalVariable(name: "n", scope: !327, file: !52, line: 478, type: !163)
!341 = !DILocation(line: 478, column: 13, scope: !327)
!342 = !DILocation(line: 478, column: 17, scope: !327)
!343 = !DILocation(line: 478, column: 24, scope: !327)
!344 = !DILocalVariable(name: "s", scope: !327, file: !52, line: 479, type: !163)
!345 = !DILocation(line: 479, column: 13, scope: !327)
!346 = !DILocation(line: 479, column: 17, scope: !327)
!347 = !DILocation(line: 479, column: 24, scope: !327)
!348 = !DILocalVariable(name: "cmp", scope: !327, file: !52, line: 481, type: !69)
!349 = !DILocation(line: 481, column: 9, scope: !327)
!350 = !DILocation(line: 482, column: 5, scope: !327)
!351 = !DILocation(line: 483, column: 15, scope: !352)
!352 = distinct !DILexicalBlock(scope: !327, file: !52, line: 482, column: 8)
!353 = !DILocation(line: 483, column: 22, scope: !352)
!354 = !DILocation(line: 483, column: 26, scope: !352)
!355 = !DILocation(line: 483, column: 31, scope: !352)
!356 = !DILocation(line: 483, column: 34, scope: !352)
!357 = !DILocation(line: 483, column: 13, scope: !352)
!358 = !DILocation(line: 485, column: 13, scope: !359)
!359 = distinct !DILexicalBlock(scope: !352, file: !52, line: 485, column: 13)
!360 = !DILocation(line: 485, column: 17, scope: !359)
!361 = !DILocation(line: 485, column: 13, scope: !352)
!362 = !DILocation(line: 486, column: 17, scope: !359)
!363 = !DILocation(line: 486, column: 20, scope: !359)
!364 = !DILocation(line: 486, column: 15, scope: !359)
!365 = !DILocation(line: 486, column: 13, scope: !359)
!366 = !DILocation(line: 487, column: 18, scope: !367)
!367 = distinct !DILexicalBlock(scope: !359, file: !52, line: 487, column: 18)
!368 = !DILocation(line: 487, column: 22, scope: !367)
!369 = !DILocation(line: 487, column: 18, scope: !359)
!370 = !DILocation(line: 488, column: 17, scope: !367)
!371 = !DILocation(line: 488, column: 20, scope: !367)
!372 = !DILocation(line: 488, column: 15, scope: !367)
!373 = !DILocation(line: 490, column: 20, scope: !367)
!374 = !DILocation(line: 490, column: 13, scope: !367)
!375 = !DILocation(line: 491, column: 14, scope: !327)
!376 = !DILocation(line: 491, column: 19, scope: !327)
!377 = !DILocation(line: 491, column: 16, scope: !327)
!378 = !DILocation(line: 491, column: 21, scope: !327)
!379 = !DILocation(line: 491, column: 5, scope: !352)
!380 = distinct !{!380, !350, !381, !382}
!381 = !DILocation(line: 491, column: 32, scope: !327)
!382 = !{!"llvm.loop.mustprogress"}
!383 = !DILocation(line: 493, column: 5, scope: !327)
!384 = !DILocation(line: 494, column: 1, scope: !327)
!385 = distinct !DISubprogram(name: "treetable_get_first_key", scope: !52, file: !52, line: 198, type: !386, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!386 = !DISubroutineType(types: !387)
!387 = !{!54, !302, !305}
!388 = !DILocalVariable(name: "table", arg: 1, scope: !385, file: !52, line: 198, type: !302)
!389 = !DILocation(line: 198, column: 62, scope: !385)
!390 = !DILocalVariable(name: "out", arg: 2, scope: !385, file: !52, line: 198, type: !305)
!391 = !DILocation(line: 198, column: 76, scope: !385)
!392 = !DILocalVariable(name: "node", scope: !385, file: !52, line: 200, type: !163)
!393 = !DILocation(line: 200, column: 13, scope: !385)
!394 = !DILocation(line: 200, column: 29, scope: !385)
!395 = !DILocation(line: 200, column: 36, scope: !385)
!396 = !DILocation(line: 200, column: 43, scope: !385)
!397 = !DILocation(line: 200, column: 20, scope: !385)
!398 = !DILocation(line: 202, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !385, file: !52, line: 202, column: 9)
!400 = !DILocation(line: 202, column: 17, scope: !399)
!401 = !DILocation(line: 202, column: 24, scope: !399)
!402 = !DILocation(line: 202, column: 14, scope: !399)
!403 = !DILocation(line: 202, column: 9, scope: !385)
!404 = !DILocation(line: 203, column: 16, scope: !405)
!405 = distinct !DILexicalBlock(scope: !399, file: !52, line: 202, column: 34)
!406 = !DILocation(line: 203, column: 22, scope: !405)
!407 = !DILocation(line: 203, column: 10, scope: !405)
!408 = !DILocation(line: 203, column: 14, scope: !405)
!409 = !DILocation(line: 204, column: 9, scope: !405)
!410 = !DILocation(line: 206, column: 5, scope: !385)
!411 = !DILocation(line: 207, column: 1, scope: !385)
!412 = distinct !DISubprogram(name: "tree_min", scope: !52, file: !52, line: 389, type: !413, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !87)
!413 = !DISubroutineType(types: !414)
!414 = !{!163, !302, !163}
!415 = !DILocalVariable(name: "table", arg: 1, scope: !412, file: !52, line: 389, type: !302)
!416 = !DILocation(line: 389, column: 56, scope: !412)
!417 = !DILocalVariable(name: "n", arg: 2, scope: !412, file: !52, line: 389, type: !163)
!418 = !DILocation(line: 389, column: 71, scope: !412)
!419 = !DILocalVariable(name: "s", scope: !412, file: !52, line: 391, type: !163)
!420 = !DILocation(line: 391, column: 13, scope: !412)
!421 = !DILocation(line: 391, column: 17, scope: !412)
!422 = !DILocation(line: 391, column: 24, scope: !412)
!423 = !DILocation(line: 393, column: 5, scope: !412)
!424 = !DILocation(line: 393, column: 12, scope: !412)
!425 = !DILocation(line: 393, column: 15, scope: !412)
!426 = !DILocation(line: 393, column: 23, scope: !412)
!427 = !DILocation(line: 393, column: 20, scope: !412)
!428 = !DILocation(line: 394, column: 13, scope: !412)
!429 = !DILocation(line: 394, column: 16, scope: !412)
!430 = !DILocation(line: 394, column: 11, scope: !412)
!431 = distinct !{!431, !423, !429, !382}
!432 = !DILocation(line: 395, column: 12, scope: !412)
!433 = !DILocation(line: 395, column: 5, scope: !412)
!434 = distinct !DISubprogram(name: "treetable_get_greater_than", scope: !52, file: !52, line: 219, type: !300, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!435 = !DILocalVariable(name: "table", arg: 1, scope: !434, file: !52, line: 219, type: !302)
!436 = !DILocation(line: 219, column: 65, scope: !434)
!437 = !DILocalVariable(name: "key", arg: 2, scope: !434, file: !52, line: 219, type: !85)
!438 = !DILocation(line: 219, column: 84, scope: !434)
!439 = !DILocalVariable(name: "out", arg: 3, scope: !434, file: !52, line: 219, type: !305)
!440 = !DILocation(line: 219, column: 96, scope: !434)
!441 = !DILocalVariable(name: "n", scope: !434, file: !52, line: 221, type: !163)
!442 = !DILocation(line: 221, column: 13, scope: !434)
!443 = !DILocation(line: 221, column: 38, scope: !434)
!444 = !DILocation(line: 221, column: 45, scope: !434)
!445 = !DILocation(line: 221, column: 17, scope: !434)
!446 = !DILocalVariable(name: "s", scope: !434, file: !52, line: 222, type: !163)
!447 = !DILocation(line: 222, column: 13, scope: !434)
!448 = !DILocation(line: 222, column: 36, scope: !434)
!449 = !DILocation(line: 222, column: 43, scope: !434)
!450 = !DILocation(line: 222, column: 17, scope: !434)
!451 = !DILocation(line: 224, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !434, file: !52, line: 224, column: 9)
!453 = !DILocation(line: 224, column: 11, scope: !452)
!454 = !DILocation(line: 225, column: 16, scope: !455)
!455 = distinct !DILexicalBlock(scope: !452, file: !52, line: 224, column: 17)
!456 = !DILocation(line: 225, column: 19, scope: !455)
!457 = !DILocation(line: 225, column: 10, scope: !455)
!458 = !DILocation(line: 225, column: 14, scope: !455)
!459 = !DILocation(line: 226, column: 9, scope: !455)
!460 = !DILocation(line: 228, column: 5, scope: !434)
!461 = !DILocation(line: 229, column: 1, scope: !434)
!462 = distinct !DISubprogram(name: "get_successor_node", scope: !52, file: !52, line: 504, type: !413, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !87)
!463 = !DILocalVariable(name: "table", arg: 1, scope: !462, file: !52, line: 504, type: !302)
!464 = !DILocation(line: 504, column: 59, scope: !462)
!465 = !DILocalVariable(name: "x", arg: 2, scope: !462, file: !52, line: 504, type: !163)
!466 = !DILocation(line: 504, column: 74, scope: !462)
!467 = !DILocation(line: 506, column: 9, scope: !468)
!468 = distinct !DILexicalBlock(scope: !462, file: !52, line: 506, column: 9)
!469 = !DILocation(line: 506, column: 11, scope: !468)
!470 = !DILocation(line: 506, column: 9, scope: !462)
!471 = !DILocation(line: 507, column: 9, scope: !468)
!472 = !DILocation(line: 509, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !462, file: !52, line: 509, column: 9)
!474 = !DILocation(line: 509, column: 12, scope: !473)
!475 = !DILocation(line: 509, column: 21, scope: !473)
!476 = !DILocation(line: 509, column: 28, scope: !473)
!477 = !DILocation(line: 509, column: 18, scope: !473)
!478 = !DILocation(line: 509, column: 9, scope: !462)
!479 = !DILocation(line: 510, column: 25, scope: !473)
!480 = !DILocation(line: 510, column: 32, scope: !473)
!481 = !DILocation(line: 510, column: 35, scope: !473)
!482 = !DILocation(line: 510, column: 16, scope: !473)
!483 = !DILocation(line: 510, column: 9, scope: !473)
!484 = !DILocalVariable(name: "y", scope: !462, file: !52, line: 512, type: !163)
!485 = !DILocation(line: 512, column: 13, scope: !462)
!486 = !DILocation(line: 512, column: 17, scope: !462)
!487 = !DILocation(line: 512, column: 20, scope: !462)
!488 = !DILocation(line: 514, column: 5, scope: !462)
!489 = !DILocation(line: 514, column: 12, scope: !462)
!490 = !DILocation(line: 514, column: 17, scope: !462)
!491 = !DILocation(line: 514, column: 24, scope: !462)
!492 = !DILocation(line: 514, column: 14, scope: !462)
!493 = !DILocation(line: 514, column: 33, scope: !462)
!494 = !DILocation(line: 514, column: 36, scope: !462)
!495 = !DILocation(line: 514, column: 41, scope: !462)
!496 = !DILocation(line: 514, column: 44, scope: !462)
!497 = !DILocation(line: 514, column: 38, scope: !462)
!498 = !DILocation(line: 515, column: 13, scope: !499)
!499 = distinct !DILexicalBlock(scope: !462, file: !52, line: 514, column: 51)
!500 = !DILocation(line: 515, column: 11, scope: !499)
!501 = !DILocation(line: 516, column: 13, scope: !499)
!502 = !DILocation(line: 516, column: 16, scope: !499)
!503 = !DILocation(line: 516, column: 11, scope: !499)
!504 = distinct !{!504, !488, !505, !382}
!505 = !DILocation(line: 517, column: 5, scope: !462)
!506 = !DILocation(line: 518, column: 12, scope: !462)
!507 = !DILocation(line: 518, column: 5, scope: !462)
!508 = !DILocation(line: 519, column: 1, scope: !462)
!509 = distinct !DISubprogram(name: "treetable_size", scope: !52, file: !52, line: 239, type: !510, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!510 = !DISubroutineType(types: !511)
!511 = !{!128, !302}
!512 = !DILocalVariable(name: "table", arg: 1, scope: !509, file: !52, line: 239, type: !302)
!513 = !DILocation(line: 239, column: 47, scope: !509)
!514 = !DILocation(line: 241, column: 12, scope: !509)
!515 = !DILocation(line: 241, column: 19, scope: !509)
!516 = !DILocation(line: 241, column: 5, scope: !509)
!517 = distinct !DISubprogram(name: "treetable_contains_key", scope: !52, file: !52, line: 252, type: !518, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!518 = !DISubroutineType(types: !519)
!519 = !{!520, !302, !85}
!520 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!521 = !DILocalVariable(name: "table", arg: 1, scope: !517, file: !52, line: 252, type: !302)
!522 = !DILocation(line: 252, column: 53, scope: !517)
!523 = !DILocalVariable(name: "key", arg: 2, scope: !517, file: !52, line: 252, type: !85)
!524 = !DILocation(line: 252, column: 72, scope: !517)
!525 = !DILocalVariable(name: "node", scope: !517, file: !52, line: 254, type: !163)
!526 = !DILocation(line: 254, column: 13, scope: !517)
!527 = !DILocation(line: 254, column: 41, scope: !517)
!528 = !DILocation(line: 254, column: 48, scope: !517)
!529 = !DILocation(line: 254, column: 20, scope: !517)
!530 = !DILocation(line: 256, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !517, file: !52, line: 256, column: 9)
!532 = !DILocation(line: 256, column: 9, scope: !517)
!533 = !DILocation(line: 257, column: 9, scope: !531)
!534 = !DILocation(line: 259, column: 5, scope: !517)
!535 = !DILocation(line: 260, column: 1, scope: !517)
!536 = distinct !DISubprogram(name: "treetable_contains_value", scope: !52, file: !52, line: 270, type: !537, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!537 = !DISubroutineType(types: !538)
!538 = !{!128, !302, !85}
!539 = !DILocalVariable(name: "table", arg: 1, scope: !536, file: !52, line: 270, type: !302)
!540 = !DILocation(line: 270, column: 57, scope: !536)
!541 = !DILocalVariable(name: "value", arg: 2, scope: !536, file: !52, line: 270, type: !85)
!542 = !DILocation(line: 270, column: 76, scope: !536)
!543 = !DILocalVariable(name: "node", scope: !536, file: !52, line: 272, type: !163)
!544 = !DILocation(line: 272, column: 13, scope: !536)
!545 = !DILocation(line: 272, column: 29, scope: !536)
!546 = !DILocation(line: 272, column: 36, scope: !536)
!547 = !DILocation(line: 272, column: 43, scope: !536)
!548 = !DILocation(line: 272, column: 20, scope: !536)
!549 = !DILocalVariable(name: "o", scope: !536, file: !52, line: 274, type: !128)
!550 = !DILocation(line: 274, column: 12, scope: !536)
!551 = !DILocation(line: 275, column: 5, scope: !536)
!552 = !DILocation(line: 275, column: 12, scope: !536)
!553 = !DILocation(line: 275, column: 20, scope: !536)
!554 = !DILocation(line: 275, column: 27, scope: !536)
!555 = !DILocation(line: 275, column: 17, scope: !536)
!556 = !DILocation(line: 276, column: 13, scope: !557)
!557 = distinct !DILexicalBlock(scope: !558, file: !52, line: 276, column: 13)
!558 = distinct !DILexicalBlock(scope: !536, file: !52, line: 275, column: 37)
!559 = !DILocation(line: 276, column: 19, scope: !557)
!560 = !DILocation(line: 276, column: 28, scope: !557)
!561 = !DILocation(line: 276, column: 25, scope: !557)
!562 = !DILocation(line: 276, column: 13, scope: !558)
!563 = !DILocation(line: 277, column: 14, scope: !557)
!564 = !DILocation(line: 277, column: 13, scope: !557)
!565 = !DILocation(line: 278, column: 35, scope: !558)
!566 = !DILocation(line: 278, column: 42, scope: !558)
!567 = !DILocation(line: 278, column: 16, scope: !558)
!568 = !DILocation(line: 278, column: 14, scope: !558)
!569 = distinct !{!569, !551, !570, !382}
!570 = !DILocation(line: 279, column: 5, scope: !536)
!571 = !DILocation(line: 280, column: 12, scope: !536)
!572 = !DILocation(line: 280, column: 5, scope: !536)
!573 = distinct !DISubprogram(name: "treetable_add", scope: !52, file: !52, line: 297, type: !574, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!574 = !DISubroutineType(types: !575)
!575 = !{!54, !158, !70, !70}
!576 = !DILocalVariable(name: "table", arg: 1, scope: !573, file: !52, line: 297, type: !158)
!577 = !DILocation(line: 297, column: 39, scope: !573)
!578 = !DILocalVariable(name: "key", arg: 2, scope: !573, file: !52, line: 297, type: !70)
!579 = !DILocation(line: 297, column: 52, scope: !573)
!580 = !DILocalVariable(name: "val", arg: 3, scope: !573, file: !52, line: 297, type: !70)
!581 = !DILocation(line: 297, column: 63, scope: !573)
!582 = !DILocalVariable(name: "y", scope: !573, file: !52, line: 299, type: !163)
!583 = !DILocation(line: 299, column: 13, scope: !573)
!584 = !DILocation(line: 299, column: 17, scope: !573)
!585 = !DILocation(line: 299, column: 24, scope: !573)
!586 = !DILocalVariable(name: "x", scope: !573, file: !52, line: 300, type: !163)
!587 = !DILocation(line: 300, column: 13, scope: !573)
!588 = !DILocation(line: 300, column: 17, scope: !573)
!589 = !DILocation(line: 300, column: 24, scope: !573)
!590 = !DILocalVariable(name: "cmp", scope: !573, file: !52, line: 302, type: !69)
!591 = !DILocation(line: 302, column: 9, scope: !573)
!592 = !DILocation(line: 303, column: 5, scope: !573)
!593 = !DILocation(line: 303, column: 12, scope: !573)
!594 = !DILocation(line: 303, column: 17, scope: !573)
!595 = !DILocation(line: 303, column: 24, scope: !573)
!596 = !DILocation(line: 303, column: 14, scope: !573)
!597 = !DILocation(line: 304, column: 15, scope: !598)
!598 = distinct !DILexicalBlock(scope: !573, file: !52, line: 303, column: 34)
!599 = !DILocation(line: 304, column: 22, scope: !598)
!600 = !DILocation(line: 304, column: 26, scope: !598)
!601 = !DILocation(line: 304, column: 31, scope: !598)
!602 = !DILocation(line: 304, column: 34, scope: !598)
!603 = !DILocation(line: 304, column: 13, scope: !598)
!604 = !DILocation(line: 305, column: 15, scope: !598)
!605 = !DILocation(line: 305, column: 13, scope: !598)
!606 = !DILocation(line: 307, column: 13, scope: !607)
!607 = distinct !DILexicalBlock(scope: !598, file: !52, line: 307, column: 13)
!608 = !DILocation(line: 307, column: 17, scope: !607)
!609 = !DILocation(line: 307, column: 13, scope: !598)
!610 = !DILocation(line: 308, column: 17, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !52, line: 307, column: 22)
!612 = !DILocation(line: 308, column: 20, scope: !611)
!613 = !DILocation(line: 308, column: 15, scope: !611)
!614 = !DILocation(line: 309, column: 9, scope: !611)
!615 = !DILocation(line: 309, column: 20, scope: !616)
!616 = distinct !DILexicalBlock(scope: !607, file: !52, line: 309, column: 20)
!617 = !DILocation(line: 309, column: 24, scope: !616)
!618 = !DILocation(line: 309, column: 20, scope: !607)
!619 = !DILocation(line: 310, column: 17, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !52, line: 309, column: 29)
!621 = !DILocation(line: 310, column: 20, scope: !620)
!622 = !DILocation(line: 310, column: 15, scope: !620)
!623 = !DILocation(line: 312, column: 24, scope: !624)
!624 = distinct !DILexicalBlock(scope: !616, file: !52, line: 311, column: 16)
!625 = !DILocation(line: 312, column: 13, scope: !624)
!626 = !DILocation(line: 312, column: 16, scope: !624)
!627 = !DILocation(line: 312, column: 22, scope: !624)
!628 = !DILocation(line: 313, column: 13, scope: !624)
!629 = distinct !{!629, !592, !630, !382}
!630 = !DILocation(line: 315, column: 5, scope: !573)
!631 = !DILocalVariable(name: "n", scope: !573, file: !52, line: 316, type: !163)
!632 = !DILocation(line: 316, column: 13, scope: !573)
!633 = !DILocation(line: 316, column: 17, scope: !573)
!634 = !DILocation(line: 316, column: 24, scope: !573)
!635 = !DILocation(line: 318, column: 17, scope: !573)
!636 = !DILocation(line: 318, column: 5, scope: !573)
!637 = !DILocation(line: 318, column: 8, scope: !573)
!638 = !DILocation(line: 318, column: 15, scope: !573)
!639 = !DILocation(line: 319, column: 17, scope: !573)
!640 = !DILocation(line: 319, column: 5, scope: !573)
!641 = !DILocation(line: 319, column: 8, scope: !573)
!642 = !DILocation(line: 319, column: 15, scope: !573)
!643 = !DILocation(line: 320, column: 17, scope: !573)
!644 = !DILocation(line: 320, column: 5, scope: !573)
!645 = !DILocation(line: 320, column: 8, scope: !573)
!646 = !DILocation(line: 320, column: 15, scope: !573)
!647 = !DILocation(line: 321, column: 17, scope: !573)
!648 = !DILocation(line: 321, column: 24, scope: !573)
!649 = !DILocation(line: 321, column: 5, scope: !573)
!650 = !DILocation(line: 321, column: 8, scope: !573)
!651 = !DILocation(line: 321, column: 15, scope: !573)
!652 = !DILocation(line: 322, column: 17, scope: !573)
!653 = !DILocation(line: 322, column: 24, scope: !573)
!654 = !DILocation(line: 322, column: 5, scope: !573)
!655 = !DILocation(line: 322, column: 8, scope: !573)
!656 = !DILocation(line: 322, column: 15, scope: !573)
!657 = !DILocation(line: 324, column: 5, scope: !573)
!658 = !DILocation(line: 324, column: 12, scope: !573)
!659 = !DILocation(line: 324, column: 16, scope: !573)
!660 = !DILocation(line: 326, column: 9, scope: !661)
!661 = distinct !DILexicalBlock(scope: !573, file: !52, line: 326, column: 9)
!662 = !DILocation(line: 326, column: 14, scope: !661)
!663 = !DILocation(line: 326, column: 21, scope: !661)
!664 = !DILocation(line: 326, column: 11, scope: !661)
!665 = !DILocation(line: 326, column: 9, scope: !573)
!666 = !DILocation(line: 327, column: 23, scope: !667)
!667 = distinct !DILexicalBlock(scope: !661, file: !52, line: 326, column: 31)
!668 = !DILocation(line: 327, column: 9, scope: !667)
!669 = !DILocation(line: 327, column: 16, scope: !667)
!670 = !DILocation(line: 327, column: 21, scope: !667)
!671 = !DILocation(line: 328, column: 9, scope: !667)
!672 = !DILocation(line: 328, column: 12, scope: !667)
!673 = !DILocation(line: 328, column: 21, scope: !667)
!674 = !DILocation(line: 329, column: 5, scope: !667)
!675 = !DILocation(line: 330, column: 9, scope: !676)
!676 = distinct !DILexicalBlock(scope: !661, file: !52, line: 329, column: 12)
!677 = !DILocation(line: 330, column: 12, scope: !676)
!678 = !DILocation(line: 330, column: 18, scope: !676)
!679 = !DILocation(line: 331, column: 13, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !52, line: 331, column: 13)
!681 = !DILocation(line: 331, column: 20, scope: !680)
!682 = !DILocation(line: 331, column: 24, scope: !680)
!683 = !DILocation(line: 331, column: 29, scope: !680)
!684 = !DILocation(line: 331, column: 32, scope: !680)
!685 = !DILocation(line: 331, column: 37, scope: !680)
!686 = !DILocation(line: 331, column: 13, scope: !676)
!687 = !DILocation(line: 332, column: 23, scope: !688)
!688 = distinct !DILexicalBlock(scope: !680, file: !52, line: 331, column: 42)
!689 = !DILocation(line: 332, column: 13, scope: !688)
!690 = !DILocation(line: 332, column: 16, scope: !688)
!691 = !DILocation(line: 332, column: 21, scope: !688)
!692 = !DILocation(line: 333, column: 9, scope: !688)
!693 = !DILocation(line: 334, column: 24, scope: !694)
!694 = distinct !DILexicalBlock(scope: !680, file: !52, line: 333, column: 16)
!695 = !DILocation(line: 334, column: 13, scope: !694)
!696 = !DILocation(line: 334, column: 16, scope: !694)
!697 = !DILocation(line: 334, column: 22, scope: !694)
!698 = !DILocation(line: 336, column: 32, scope: !676)
!699 = !DILocation(line: 336, column: 39, scope: !676)
!700 = !DILocation(line: 336, column: 9, scope: !676)
!701 = !DILocation(line: 338, column: 5, scope: !573)
!702 = !DILocation(line: 339, column: 1, scope: !573)
!703 = distinct !DISubprogram(name: "rebalance_after_insert", scope: !52, file: !52, line: 347, type: !275, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !87)
!704 = !DILocalVariable(name: "table", arg: 1, scope: !703, file: !52, line: 347, type: !158)
!705 = !DILocation(line: 347, column: 47, scope: !703)
!706 = !DILocalVariable(name: "z", arg: 2, scope: !703, file: !52, line: 347, type: !163)
!707 = !DILocation(line: 347, column: 62, scope: !703)
!708 = !DILocalVariable(name: "y", scope: !703, file: !52, line: 349, type: !163)
!709 = !DILocation(line: 349, column: 13, scope: !703)
!710 = !DILocation(line: 351, column: 5, scope: !703)
!711 = !DILocation(line: 351, column: 12, scope: !703)
!712 = !DILocation(line: 351, column: 15, scope: !703)
!713 = !DILocation(line: 351, column: 23, scope: !703)
!714 = !DILocation(line: 351, column: 29, scope: !703)
!715 = !DILocation(line: 352, column: 13, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !52, line: 352, column: 13)
!717 = distinct !DILexicalBlock(scope: !703, file: !52, line: 351, column: 40)
!718 = !DILocation(line: 352, column: 16, scope: !716)
!719 = !DILocation(line: 352, column: 26, scope: !716)
!720 = !DILocation(line: 352, column: 29, scope: !716)
!721 = !DILocation(line: 352, column: 37, scope: !716)
!722 = !DILocation(line: 352, column: 45, scope: !716)
!723 = !DILocation(line: 352, column: 23, scope: !716)
!724 = !DILocation(line: 352, column: 13, scope: !717)
!725 = !DILocation(line: 353, column: 17, scope: !726)
!726 = distinct !DILexicalBlock(scope: !716, file: !52, line: 352, column: 51)
!727 = !DILocation(line: 353, column: 20, scope: !726)
!728 = !DILocation(line: 353, column: 28, scope: !726)
!729 = !DILocation(line: 353, column: 36, scope: !726)
!730 = !DILocation(line: 353, column: 15, scope: !726)
!731 = !DILocation(line: 354, column: 17, scope: !732)
!732 = distinct !DILexicalBlock(scope: !726, file: !52, line: 354, column: 17)
!733 = !DILocation(line: 354, column: 20, scope: !732)
!734 = !DILocation(line: 354, column: 26, scope: !732)
!735 = !DILocation(line: 354, column: 17, scope: !726)
!736 = !DILocation(line: 355, column: 17, scope: !737)
!737 = distinct !DILexicalBlock(scope: !732, file: !52, line: 354, column: 37)
!738 = !DILocation(line: 355, column: 20, scope: !737)
!739 = !DILocation(line: 355, column: 28, scope: !737)
!740 = !DILocation(line: 355, column: 42, scope: !737)
!741 = !DILocation(line: 356, column: 17, scope: !737)
!742 = !DILocation(line: 356, column: 20, scope: !737)
!743 = !DILocation(line: 356, column: 42, scope: !737)
!744 = !DILocation(line: 357, column: 17, scope: !737)
!745 = !DILocation(line: 357, column: 20, scope: !737)
!746 = !DILocation(line: 357, column: 28, scope: !737)
!747 = !DILocation(line: 357, column: 36, scope: !737)
!748 = !DILocation(line: 357, column: 42, scope: !737)
!749 = !DILocation(line: 358, column: 21, scope: !737)
!750 = !DILocation(line: 358, column: 24, scope: !737)
!751 = !DILocation(line: 358, column: 32, scope: !737)
!752 = !DILocation(line: 358, column: 19, scope: !737)
!753 = !DILocation(line: 359, column: 13, scope: !737)
!754 = !DILocation(line: 360, column: 21, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !52, line: 360, column: 21)
!756 = distinct !DILexicalBlock(scope: !732, file: !52, line: 359, column: 20)
!757 = !DILocation(line: 360, column: 26, scope: !755)
!758 = !DILocation(line: 360, column: 29, scope: !755)
!759 = !DILocation(line: 360, column: 37, scope: !755)
!760 = !DILocation(line: 360, column: 23, scope: !755)
!761 = !DILocation(line: 360, column: 21, scope: !756)
!762 = !DILocation(line: 361, column: 25, scope: !763)
!763 = distinct !DILexicalBlock(scope: !755, file: !52, line: 360, column: 44)
!764 = !DILocation(line: 361, column: 28, scope: !763)
!765 = !DILocation(line: 361, column: 23, scope: !763)
!766 = !DILocation(line: 362, column: 33, scope: !763)
!767 = !DILocation(line: 362, column: 40, scope: !763)
!768 = !DILocation(line: 362, column: 21, scope: !763)
!769 = !DILocation(line: 363, column: 17, scope: !763)
!770 = !DILocation(line: 364, column: 17, scope: !756)
!771 = !DILocation(line: 364, column: 20, scope: !756)
!772 = !DILocation(line: 364, column: 28, scope: !756)
!773 = !DILocation(line: 364, column: 42, scope: !756)
!774 = !DILocation(line: 365, column: 17, scope: !756)
!775 = !DILocation(line: 365, column: 20, scope: !756)
!776 = !DILocation(line: 365, column: 28, scope: !756)
!777 = !DILocation(line: 365, column: 36, scope: !756)
!778 = !DILocation(line: 365, column: 42, scope: !756)
!779 = !DILocation(line: 366, column: 30, scope: !756)
!780 = !DILocation(line: 366, column: 37, scope: !756)
!781 = !DILocation(line: 366, column: 40, scope: !756)
!782 = !DILocation(line: 366, column: 48, scope: !756)
!783 = !DILocation(line: 366, column: 17, scope: !756)
!784 = !DILocation(line: 369, column: 17, scope: !785)
!785 = distinct !DILexicalBlock(scope: !716, file: !52, line: 368, column: 16)
!786 = !DILocation(line: 369, column: 20, scope: !785)
!787 = !DILocation(line: 369, column: 28, scope: !785)
!788 = !DILocation(line: 369, column: 36, scope: !785)
!789 = !DILocation(line: 369, column: 15, scope: !785)
!790 = !DILocation(line: 370, column: 17, scope: !791)
!791 = distinct !DILexicalBlock(scope: !785, file: !52, line: 370, column: 17)
!792 = !DILocation(line: 370, column: 20, scope: !791)
!793 = !DILocation(line: 370, column: 26, scope: !791)
!794 = !DILocation(line: 370, column: 17, scope: !785)
!795 = !DILocation(line: 371, column: 17, scope: !796)
!796 = distinct !DILexicalBlock(scope: !791, file: !52, line: 370, column: 37)
!797 = !DILocation(line: 371, column: 20, scope: !796)
!798 = !DILocation(line: 371, column: 28, scope: !796)
!799 = !DILocation(line: 371, column: 42, scope: !796)
!800 = !DILocation(line: 372, column: 17, scope: !796)
!801 = !DILocation(line: 372, column: 20, scope: !796)
!802 = !DILocation(line: 372, column: 42, scope: !796)
!803 = !DILocation(line: 373, column: 17, scope: !796)
!804 = !DILocation(line: 373, column: 20, scope: !796)
!805 = !DILocation(line: 373, column: 28, scope: !796)
!806 = !DILocation(line: 373, column: 36, scope: !796)
!807 = !DILocation(line: 373, column: 42, scope: !796)
!808 = !DILocation(line: 374, column: 21, scope: !796)
!809 = !DILocation(line: 374, column: 24, scope: !796)
!810 = !DILocation(line: 374, column: 32, scope: !796)
!811 = !DILocation(line: 374, column: 19, scope: !796)
!812 = !DILocation(line: 375, column: 13, scope: !796)
!813 = !DILocation(line: 376, column: 21, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !52, line: 376, column: 21)
!815 = distinct !DILexicalBlock(scope: !791, file: !52, line: 375, column: 20)
!816 = !DILocation(line: 376, column: 26, scope: !814)
!817 = !DILocation(line: 376, column: 29, scope: !814)
!818 = !DILocation(line: 376, column: 37, scope: !814)
!819 = !DILocation(line: 376, column: 23, scope: !814)
!820 = !DILocation(line: 376, column: 21, scope: !815)
!821 = !DILocation(line: 377, column: 25, scope: !822)
!822 = distinct !DILexicalBlock(scope: !814, file: !52, line: 376, column: 43)
!823 = !DILocation(line: 377, column: 28, scope: !822)
!824 = !DILocation(line: 377, column: 23, scope: !822)
!825 = !DILocation(line: 378, column: 34, scope: !822)
!826 = !DILocation(line: 378, column: 41, scope: !822)
!827 = !DILocation(line: 378, column: 21, scope: !822)
!828 = !DILocation(line: 379, column: 17, scope: !822)
!829 = !DILocation(line: 380, column: 17, scope: !815)
!830 = !DILocation(line: 380, column: 20, scope: !815)
!831 = !DILocation(line: 380, column: 28, scope: !815)
!832 = !DILocation(line: 380, column: 42, scope: !815)
!833 = !DILocation(line: 381, column: 17, scope: !815)
!834 = !DILocation(line: 381, column: 20, scope: !815)
!835 = !DILocation(line: 381, column: 28, scope: !815)
!836 = !DILocation(line: 381, column: 36, scope: !815)
!837 = !DILocation(line: 381, column: 42, scope: !815)
!838 = !DILocation(line: 382, column: 29, scope: !815)
!839 = !DILocation(line: 382, column: 36, scope: !815)
!840 = !DILocation(line: 382, column: 39, scope: !815)
!841 = !DILocation(line: 382, column: 47, scope: !815)
!842 = !DILocation(line: 382, column: 17, scope: !815)
!843 = distinct !{!843, !710, !844, !382}
!844 = !DILocation(line: 385, column: 5, scope: !703)
!845 = !DILocation(line: 386, column: 5, scope: !703)
!846 = !DILocation(line: 386, column: 12, scope: !703)
!847 = !DILocation(line: 386, column: 18, scope: !703)
!848 = !DILocation(line: 386, column: 24, scope: !703)
!849 = !DILocation(line: 387, column: 1, scope: !703)
!850 = distinct !DISubprogram(name: "rotate_left", scope: !52, file: !52, line: 443, type: !275, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !87)
!851 = !DILocalVariable(name: "table", arg: 1, scope: !850, file: !52, line: 443, type: !158)
!852 = !DILocation(line: 443, column: 36, scope: !850)
!853 = !DILocalVariable(name: "x", arg: 2, scope: !850, file: !52, line: 443, type: !163)
!854 = !DILocation(line: 443, column: 51, scope: !850)
!855 = !DILocalVariable(name: "y", scope: !850, file: !52, line: 445, type: !163)
!856 = !DILocation(line: 445, column: 13, scope: !850)
!857 = !DILocation(line: 445, column: 17, scope: !850)
!858 = !DILocation(line: 445, column: 20, scope: !850)
!859 = !DILocation(line: 447, column: 16, scope: !850)
!860 = !DILocation(line: 447, column: 19, scope: !850)
!861 = !DILocation(line: 447, column: 5, scope: !850)
!862 = !DILocation(line: 447, column: 8, scope: !850)
!863 = !DILocation(line: 447, column: 14, scope: !850)
!864 = !DILocation(line: 449, column: 9, scope: !865)
!865 = distinct !DILexicalBlock(scope: !850, file: !52, line: 449, column: 9)
!866 = !DILocation(line: 449, column: 12, scope: !865)
!867 = !DILocation(line: 449, column: 20, scope: !865)
!868 = !DILocation(line: 449, column: 27, scope: !865)
!869 = !DILocation(line: 449, column: 17, scope: !865)
!870 = !DILocation(line: 449, column: 9, scope: !850)
!871 = !DILocation(line: 450, column: 27, scope: !865)
!872 = !DILocation(line: 450, column: 9, scope: !865)
!873 = !DILocation(line: 450, column: 12, scope: !865)
!874 = !DILocation(line: 450, column: 18, scope: !865)
!875 = !DILocation(line: 450, column: 25, scope: !865)
!876 = !DILocation(line: 452, column: 17, scope: !850)
!877 = !DILocation(line: 452, column: 20, scope: !850)
!878 = !DILocation(line: 452, column: 5, scope: !850)
!879 = !DILocation(line: 452, column: 8, scope: !850)
!880 = !DILocation(line: 452, column: 15, scope: !850)
!881 = !DILocation(line: 454, column: 9, scope: !882)
!882 = distinct !DILexicalBlock(scope: !850, file: !52, line: 454, column: 9)
!883 = !DILocation(line: 454, column: 12, scope: !882)
!884 = !DILocation(line: 454, column: 22, scope: !882)
!885 = !DILocation(line: 454, column: 29, scope: !882)
!886 = !DILocation(line: 454, column: 19, scope: !882)
!887 = !DILocation(line: 454, column: 9, scope: !850)
!888 = !DILocation(line: 455, column: 23, scope: !882)
!889 = !DILocation(line: 455, column: 9, scope: !882)
!890 = !DILocation(line: 455, column: 16, scope: !882)
!891 = !DILocation(line: 455, column: 21, scope: !882)
!892 = !DILocation(line: 456, column: 14, scope: !893)
!893 = distinct !DILexicalBlock(scope: !882, file: !52, line: 456, column: 14)
!894 = !DILocation(line: 456, column: 19, scope: !893)
!895 = !DILocation(line: 456, column: 22, scope: !893)
!896 = !DILocation(line: 456, column: 30, scope: !893)
!897 = !DILocation(line: 456, column: 16, scope: !893)
!898 = !DILocation(line: 456, column: 14, scope: !882)
!899 = !DILocation(line: 457, column: 27, scope: !893)
!900 = !DILocation(line: 457, column: 9, scope: !893)
!901 = !DILocation(line: 457, column: 12, scope: !893)
!902 = !DILocation(line: 457, column: 20, scope: !893)
!903 = !DILocation(line: 457, column: 25, scope: !893)
!904 = !DILocation(line: 459, column: 28, scope: !893)
!905 = !DILocation(line: 459, column: 9, scope: !893)
!906 = !DILocation(line: 459, column: 12, scope: !893)
!907 = !DILocation(line: 459, column: 20, scope: !893)
!908 = !DILocation(line: 459, column: 26, scope: !893)
!909 = !DILocation(line: 461, column: 17, scope: !850)
!910 = !DILocation(line: 461, column: 5, scope: !850)
!911 = !DILocation(line: 461, column: 8, scope: !850)
!912 = !DILocation(line: 461, column: 15, scope: !850)
!913 = !DILocation(line: 462, column: 17, scope: !850)
!914 = !DILocation(line: 462, column: 5, scope: !850)
!915 = !DILocation(line: 462, column: 8, scope: !850)
!916 = !DILocation(line: 462, column: 15, scope: !850)
!917 = !DILocation(line: 463, column: 1, scope: !850)
!918 = distinct !DISubprogram(name: "rotate_right", scope: !52, file: !52, line: 414, type: !275, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !87)
!919 = !DILocalVariable(name: "table", arg: 1, scope: !918, file: !52, line: 414, type: !158)
!920 = !DILocation(line: 414, column: 37, scope: !918)
!921 = !DILocalVariable(name: "x", arg: 2, scope: !918, file: !52, line: 414, type: !163)
!922 = !DILocation(line: 414, column: 52, scope: !918)
!923 = !DILocalVariable(name: "y", scope: !918, file: !52, line: 416, type: !163)
!924 = !DILocation(line: 416, column: 13, scope: !918)
!925 = !DILocation(line: 416, column: 17, scope: !918)
!926 = !DILocation(line: 416, column: 20, scope: !918)
!927 = !DILocation(line: 418, column: 15, scope: !918)
!928 = !DILocation(line: 418, column: 18, scope: !918)
!929 = !DILocation(line: 418, column: 5, scope: !918)
!930 = !DILocation(line: 418, column: 8, scope: !918)
!931 = !DILocation(line: 418, column: 13, scope: !918)
!932 = !DILocation(line: 420, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !918, file: !52, line: 420, column: 9)
!934 = !DILocation(line: 420, column: 12, scope: !933)
!935 = !DILocation(line: 420, column: 21, scope: !933)
!936 = !DILocation(line: 420, column: 28, scope: !933)
!937 = !DILocation(line: 420, column: 18, scope: !933)
!938 = !DILocation(line: 420, column: 9, scope: !918)
!939 = !DILocation(line: 421, column: 28, scope: !933)
!940 = !DILocation(line: 421, column: 9, scope: !933)
!941 = !DILocation(line: 421, column: 12, scope: !933)
!942 = !DILocation(line: 421, column: 19, scope: !933)
!943 = !DILocation(line: 421, column: 26, scope: !933)
!944 = !DILocation(line: 423, column: 17, scope: !918)
!945 = !DILocation(line: 423, column: 20, scope: !918)
!946 = !DILocation(line: 423, column: 5, scope: !918)
!947 = !DILocation(line: 423, column: 8, scope: !918)
!948 = !DILocation(line: 423, column: 15, scope: !918)
!949 = !DILocation(line: 425, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !918, file: !52, line: 425, column: 9)
!951 = !DILocation(line: 425, column: 12, scope: !950)
!952 = !DILocation(line: 425, column: 22, scope: !950)
!953 = !DILocation(line: 425, column: 29, scope: !950)
!954 = !DILocation(line: 425, column: 19, scope: !950)
!955 = !DILocation(line: 425, column: 9, scope: !918)
!956 = !DILocation(line: 426, column: 23, scope: !950)
!957 = !DILocation(line: 426, column: 9, scope: !950)
!958 = !DILocation(line: 426, column: 16, scope: !950)
!959 = !DILocation(line: 426, column: 21, scope: !950)
!960 = !DILocation(line: 427, column: 14, scope: !961)
!961 = distinct !DILexicalBlock(scope: !950, file: !52, line: 427, column: 14)
!962 = !DILocation(line: 427, column: 19, scope: !961)
!963 = !DILocation(line: 427, column: 22, scope: !961)
!964 = !DILocation(line: 427, column: 30, scope: !961)
!965 = !DILocation(line: 427, column: 16, scope: !961)
!966 = !DILocation(line: 427, column: 14, scope: !950)
!967 = !DILocation(line: 428, column: 28, scope: !961)
!968 = !DILocation(line: 428, column: 9, scope: !961)
!969 = !DILocation(line: 428, column: 12, scope: !961)
!970 = !DILocation(line: 428, column: 20, scope: !961)
!971 = !DILocation(line: 428, column: 26, scope: !961)
!972 = !DILocation(line: 430, column: 27, scope: !961)
!973 = !DILocation(line: 430, column: 9, scope: !961)
!974 = !DILocation(line: 430, column: 12, scope: !961)
!975 = !DILocation(line: 430, column: 20, scope: !961)
!976 = !DILocation(line: 430, column: 25, scope: !961)
!977 = !DILocation(line: 432, column: 17, scope: !918)
!978 = !DILocation(line: 432, column: 5, scope: !918)
!979 = !DILocation(line: 432, column: 8, scope: !918)
!980 = !DILocation(line: 432, column: 15, scope: !918)
!981 = !DILocation(line: 433, column: 17, scope: !918)
!982 = !DILocation(line: 433, column: 5, scope: !918)
!983 = !DILocation(line: 433, column: 8, scope: !918)
!984 = !DILocation(line: 433, column: 15, scope: !918)
!985 = !DILocation(line: 434, column: 1, scope: !918)
!986 = distinct !DISubprogram(name: "balanced", scope: !52, file: !52, line: 547, type: !987, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!987 = !DISubroutineType(types: !988)
!988 = !{!69, !158}
!989 = !DILocalVariable(name: "t", arg: 1, scope: !986, file: !52, line: 547, type: !158)
!990 = !DILocation(line: 547, column: 25, scope: !986)
!991 = !DILocation(line: 548, column: 24, scope: !986)
!992 = !DILocation(line: 548, column: 27, scope: !986)
!993 = !DILocation(line: 548, column: 30, scope: !986)
!994 = !DILocation(line: 548, column: 12, scope: !986)
!995 = !DILocation(line: 548, column: 36, scope: !986)
!996 = !DILocation(line: 548, column: 5, scope: !986)
!997 = distinct !DISubprogram(name: "tree_height", scope: !52, file: !52, line: 526, type: !998, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !87)
!998 = !DISubroutineType(types: !999)
!999 = !{!69, !158, !163}
!1000 = !DILocalVariable(name: "t", arg: 1, scope: !997, file: !52, line: 526, type: !158)
!1001 = !DILocation(line: 526, column: 35, scope: !997)
!1002 = !DILocalVariable(name: "n", arg: 2, scope: !997, file: !52, line: 526, type: !163)
!1003 = !DILocation(line: 526, column: 46, scope: !997)
!1004 = !DILocation(line: 527, column: 9, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !997, file: !52, line: 527, column: 9)
!1006 = !DILocation(line: 527, column: 14, scope: !1005)
!1007 = !DILocation(line: 527, column: 17, scope: !1005)
!1008 = !DILocation(line: 527, column: 11, scope: !1005)
!1009 = !DILocation(line: 527, column: 9, scope: !997)
!1010 = !DILocation(line: 528, column: 9, scope: !1005)
!1011 = !DILocalVariable(name: "left_h", scope: !997, file: !52, line: 530, type: !69)
!1012 = !DILocation(line: 530, column: 9, scope: !997)
!1013 = !DILocation(line: 530, column: 30, scope: !997)
!1014 = !DILocation(line: 530, column: 33, scope: !997)
!1015 = !DILocation(line: 530, column: 36, scope: !997)
!1016 = !DILocation(line: 530, column: 18, scope: !997)
!1017 = !DILocalVariable(name: "right_h", scope: !997, file: !52, line: 531, type: !69)
!1018 = !DILocation(line: 531, column: 9, scope: !997)
!1019 = !DILocation(line: 531, column: 31, scope: !997)
!1020 = !DILocation(line: 531, column: 34, scope: !997)
!1021 = !DILocation(line: 531, column: 37, scope: !997)
!1022 = !DILocation(line: 531, column: 19, scope: !997)
!1023 = !DILocation(line: 533, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !997, file: !52, line: 533, column: 9)
!1025 = !DILocation(line: 533, column: 16, scope: !1024)
!1026 = !DILocation(line: 533, column: 22, scope: !1024)
!1027 = !DILocation(line: 534, column: 9, scope: !1024)
!1028 = !DILocalVariable(name: "diff", scope: !997, file: !52, line: 536, type: !69)
!1029 = !DILocation(line: 536, column: 9, scope: !997)
!1030 = !DILocation(line: 536, column: 16, scope: !997)
!1031 = !DILocation(line: 536, column: 25, scope: !997)
!1032 = !DILocation(line: 536, column: 23, scope: !997)
!1033 = !DILocation(line: 537, column: 9, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !997, file: !52, line: 537, column: 9)
!1035 = !DILocation(line: 537, column: 14, scope: !1034)
!1036 = !DILocation(line: 537, column: 18, scope: !1034)
!1037 = !DILocation(line: 538, column: 9, scope: !1034)
!1038 = !DILocation(line: 540, column: 17, scope: !997)
!1039 = !DILocation(line: 540, column: 26, scope: !997)
!1040 = !DILocation(line: 540, column: 24, scope: !997)
!1041 = !DILocation(line: 540, column: 14, scope: !997)
!1042 = !DILocation(line: 540, column: 5, scope: !997)
!1043 = !DILocation(line: 541, column: 1, scope: !997)
!1044 = distinct !DISubprogram(name: "sorted", scope: !52, file: !52, line: 575, type: !987, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !51, retainedNodes: !87)
!1045 = !DILocalVariable(name: "t", arg: 1, scope: !1044, file: !52, line: 575, type: !158)
!1046 = !DILocation(line: 575, column: 23, scope: !1044)
!1047 = !DILocation(line: 576, column: 26, scope: !1044)
!1048 = !DILocation(line: 576, column: 29, scope: !1044)
!1049 = !DILocation(line: 576, column: 32, scope: !1044)
!1050 = !DILocation(line: 576, column: 12, scope: !1044)
!1051 = !DILocation(line: 576, column: 5, scope: !1044)
!1052 = distinct !DISubprogram(name: "sorted_helper", scope: !52, file: !52, line: 556, type: !1053, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !51, retainedNodes: !87)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!69, !158, !163, !70, !70}
!1055 = !DILocalVariable(name: "t", arg: 1, scope: !1052, file: !52, line: 556, type: !158)
!1056 = !DILocation(line: 556, column: 37, scope: !1052)
!1057 = !DILocalVariable(name: "n", arg: 2, scope: !1052, file: !52, line: 556, type: !163)
!1058 = !DILocation(line: 556, column: 48, scope: !1052)
!1059 = !DILocalVariable(name: "min", arg: 3, scope: !1052, file: !52, line: 556, type: !70)
!1060 = !DILocation(line: 556, column: 57, scope: !1052)
!1061 = !DILocalVariable(name: "max", arg: 4, scope: !1052, file: !52, line: 556, type: !70)
!1062 = !DILocation(line: 556, column: 68, scope: !1052)
!1063 = !DILocation(line: 557, column: 9, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1052, file: !52, line: 557, column: 9)
!1065 = !DILocation(line: 557, column: 14, scope: !1064)
!1066 = !DILocation(line: 557, column: 17, scope: !1064)
!1067 = !DILocation(line: 557, column: 11, scope: !1064)
!1068 = !DILocation(line: 557, column: 9, scope: !1052)
!1069 = !DILocation(line: 558, column: 9, scope: !1064)
!1070 = !DILocation(line: 560, column: 9, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1052, file: !52, line: 560, column: 9)
!1072 = !DILocation(line: 560, column: 13, scope: !1071)
!1073 = !DILocation(line: 560, column: 21, scope: !1071)
!1074 = !DILocation(line: 560, column: 24, scope: !1071)
!1075 = !DILocation(line: 560, column: 27, scope: !1071)
!1076 = !DILocation(line: 560, column: 31, scope: !1071)
!1077 = !DILocation(line: 560, column: 34, scope: !1071)
!1078 = !DILocation(line: 560, column: 39, scope: !1071)
!1079 = !DILocation(line: 560, column: 44, scope: !1071)
!1080 = !DILocation(line: 560, column: 9, scope: !1052)
!1081 = !DILocation(line: 561, column: 9, scope: !1071)
!1082 = !DILocation(line: 563, column: 9, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1052, file: !52, line: 563, column: 9)
!1084 = !DILocation(line: 563, column: 13, scope: !1083)
!1085 = !DILocation(line: 563, column: 21, scope: !1083)
!1086 = !DILocation(line: 563, column: 24, scope: !1083)
!1087 = !DILocation(line: 563, column: 27, scope: !1083)
!1088 = !DILocation(line: 563, column: 31, scope: !1083)
!1089 = !DILocation(line: 563, column: 34, scope: !1083)
!1090 = !DILocation(line: 563, column: 39, scope: !1083)
!1091 = !DILocation(line: 563, column: 44, scope: !1083)
!1092 = !DILocation(line: 563, column: 9, scope: !1052)
!1093 = !DILocation(line: 564, column: 9, scope: !1083)
!1094 = !DILocation(line: 566, column: 26, scope: !1052)
!1095 = !DILocation(line: 566, column: 29, scope: !1052)
!1096 = !DILocation(line: 566, column: 32, scope: !1052)
!1097 = !DILocation(line: 566, column: 39, scope: !1052)
!1098 = !DILocation(line: 566, column: 47, scope: !1052)
!1099 = !DILocation(line: 566, column: 50, scope: !1052)
!1100 = !DILocation(line: 566, column: 12, scope: !1052)
!1101 = !DILocation(line: 567, column: 9, scope: !1052)
!1102 = !DILocation(line: 567, column: 26, scope: !1052)
!1103 = !DILocation(line: 567, column: 29, scope: !1052)
!1104 = !DILocation(line: 567, column: 32, scope: !1052)
!1105 = !DILocation(line: 567, column: 39, scope: !1052)
!1106 = !DILocation(line: 567, column: 42, scope: !1052)
!1107 = !DILocation(line: 567, column: 47, scope: !1052)
!1108 = !DILocation(line: 567, column: 12, scope: !1052)
!1109 = !DILocation(line: 0, scope: !1052)
!1110 = !DILocation(line: 566, column: 5, scope: !1052)
!1111 = !DILocation(line: 568, column: 1, scope: !1052)
!1112 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 16, type: !1113, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !71, retainedNodes: !87)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!69}
!1115 = !DILocalVariable(name: "k1", scope: !1112, file: !2, line: 18, type: !69)
!1116 = !DILocation(line: 18, column: 9, scope: !1112)
!1117 = !DILocalVariable(name: "k2", scope: !1112, file: !2, line: 18, type: !69)
!1118 = !DILocation(line: 18, column: 13, scope: !1112)
!1119 = !DILocalVariable(name: "k3", scope: !1112, file: !2, line: 18, type: !69)
!1120 = !DILocation(line: 18, column: 17, scope: !1112)
!1121 = !DILocalVariable(name: "v1", scope: !1112, file: !2, line: 19, type: !69)
!1122 = !DILocation(line: 19, column: 9, scope: !1112)
!1123 = !DILocalVariable(name: "v2", scope: !1112, file: !2, line: 19, type: !69)
!1124 = !DILocation(line: 19, column: 13, scope: !1112)
!1125 = !DILocalVariable(name: "v3", scope: !1112, file: !2, line: 19, type: !69)
!1126 = !DILocation(line: 19, column: 17, scope: !1112)
!1127 = !DILocation(line: 21, column: 5, scope: !1112)
!1128 = !DILocation(line: 22, column: 5, scope: !1112)
!1129 = !DILocation(line: 23, column: 5, scope: !1112)
!1130 = !DILocation(line: 25, column: 5, scope: !1112)
!1131 = !DILocation(line: 26, column: 5, scope: !1112)
!1132 = !DILocation(line: 27, column: 5, scope: !1112)
!1133 = !DILocalVariable(name: "t", scope: !1112, file: !2, line: 29, type: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "TreeTable", file: !1136, line: 30, baseType: !1137)
!1136 = !DIFile(filename: "Ex3SymbTestSuite/../../ex2/treetable.h", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "065f0d2b52ad730b442c75c554f59b69")
!1137 = !DICompositeType(tag: DW_TAG_structure_type, name: "treetable_s", file: !1136, line: 30, flags: DIFlagFwdDecl)
!1138 = !DILocation(line: 29, column: 16, scope: !1112)
!1139 = !DILocation(line: 31, column: 5, scope: !1112)
!1140 = !DILocation(line: 36, column: 19, scope: !1112)
!1141 = !DILocation(line: 36, column: 5, scope: !1112)
!1142 = !DILocation(line: 37, column: 19, scope: !1112)
!1143 = !DILocation(line: 37, column: 5, scope: !1112)
!1144 = !DILocation(line: 38, column: 19, scope: !1112)
!1145 = !DILocation(line: 38, column: 5, scope: !1112)
!1146 = !DILocation(line: 40, column: 5, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 40, column: 5)
!1148 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 40, column: 5)
!1149 = !DILocation(line: 40, column: 5, scope: !1148)
!1150 = !DILocation(line: 41, column: 5, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 41, column: 5)
!1152 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 41, column: 5)
!1153 = !DILocation(line: 41, column: 5, scope: !1152)
!1154 = !DILocalVariable(name: "out", scope: !1112, file: !2, line: 46, type: !70)
!1155 = !DILocation(line: 46, column: 11, scope: !1112)
!1156 = !DILocalVariable(name: "result", scope: !1112, file: !2, line: 48, type: !54)
!1157 = !DILocation(line: 48, column: 18, scope: !1112)
!1158 = !DILocation(line: 49, column: 36, scope: !1112)
!1159 = !DILocation(line: 49, column: 9, scope: !1112)
!1160 = !DILocation(line: 57, column: 9, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 57, column: 9)
!1162 = !DILocation(line: 57, column: 16, scope: !1161)
!1163 = !DILocation(line: 57, column: 9, scope: !1112)
!1164 = !DILocalVariable(name: "successor", scope: !1165, file: !2, line: 58, type: !69)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 57, column: 26)
!1166 = !DILocation(line: 58, column: 13, scope: !1165)
!1167 = !DILocation(line: 58, column: 32, scope: !1165)
!1168 = !DILocation(line: 58, column: 25, scope: !1165)
!1169 = !DILocation(line: 60, column: 9, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 60, column: 9)
!1171 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 60, column: 9)
!1172 = !DILocation(line: 60, column: 9, scope: !1171)
!1173 = !DILocation(line: 66, column: 9, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 66, column: 9)
!1175 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 66, column: 9)
!1176 = !DILocation(line: 66, column: 9, scope: !1175)
!1177 = !DILocation(line: 71, column: 9, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 71, column: 9)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 71, column: 9)
!1180 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 70, column: 12)
!1181 = !DILocation(line: 71, column: 9, scope: !1179)
!1182 = !DILocation(line: 74, column: 23, scope: !1112)
!1183 = !DILocation(line: 74, column: 5, scope: !1112)
!1184 = !DILocation(line: 76, column: 5, scope: !1112)

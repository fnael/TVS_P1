; ModuleID = 'treetable_get_linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treetable_conf_s = type { ptr, ptr, ptr, ptr }
%struct.rbnode_s = type { ptr, ptr, i8, ptr, ptr, ptr }
%struct.treetable_s = type { ptr, ptr, i64, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"k1\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [3 x i8] c"k2\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [8 x i8] c"missing\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [3 x i8] c"v1\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [3 x i8] c"v2\00", align 1, !dbg !16
@.str.5 = private unnamed_addr constant [52 x i8] c"treetable_get(t, &k1, &out) == CC_ERR_KEY_NOT_FOUND\00", align 1, !dbg !18
@.str.6 = private unnamed_addr constant [38 x i8] c"Ex3SymbTestSuite/treetable_get_symb.c\00", align 1, !dbg !23
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !28
@.str.7 = private unnamed_addr constant [10 x i8] c"sorted(t)\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [12 x i8] c"balanced(t)\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [37 x i8] c"treetable_get(t, &k1, &out) == CC_OK\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [17 x i8] c"*(int*)out == v1\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [37 x i8] c"treetable_get(t, &k2, &out) == CC_OK\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [17 x i8] c"*(int*)out == v2\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [57 x i8] c"treetable_get(t, &missing, &out) == CC_ERR_KEY_NOT_FOUND\00", align 1, !dbg !58

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cmp(ptr noundef %e1, ptr noundef %e2) #0 !dbg !94 {
entry:
  %retval = alloca i32, align 4
  %e1.addr = alloca ptr, align 8
  %e2.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %e1, ptr %e1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e1.addr, metadata !100, metadata !DIExpression()), !dbg !101
  store ptr %e2, ptr %e2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e2.addr, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata ptr %i, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load ptr, ptr %e1.addr, align 8, !dbg !106
  %1 = load i32, ptr %0, align 4, !dbg !107
  store i32 %1, ptr %i, align 4, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %j, metadata !108, metadata !DIExpression()), !dbg !109
  %2 = load ptr, ptr %e2.addr, align 8, !dbg !110
  %3 = load i32, ptr %2, align 4, !dbg !111
  store i32 %3, ptr %j, align 4, !dbg !109
  %4 = load i32, ptr %i, align 4, !dbg !112
  %5 = load i32, ptr %j, align 4, !dbg !114
  %cmp = icmp slt i32 %4, %5, !dbg !115
  br i1 %cmp, label %if.then, label %if.end, !dbg !116

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !117
  br label %return, !dbg !117

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %i, align 4, !dbg !118
  %7 = load i32, ptr %j, align 4, !dbg !120
  %cmp1 = icmp eq i32 %6, %7, !dbg !121
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !122

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !123
  br label %return, !dbg !123

if.end3:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !124
  br label %return, !dbg !124

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !125
  ret i32 %8, !dbg !125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @treetable_conf_init(ptr noundef %conf) #0 !dbg !126 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !151, metadata !DIExpression()), !dbg !152
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !153
  %mem_alloc = getelementptr inbounds %struct.treetable_conf_s, ptr %0, i32 0, i32 1, !dbg !154
  store ptr @malloc, ptr %mem_alloc, align 8, !dbg !155
  %1 = load ptr, ptr %conf.addr, align 8, !dbg !156
  %mem_calloc = getelementptr inbounds %struct.treetable_conf_s, ptr %1, i32 0, i32 2, !dbg !157
  store ptr @calloc, ptr %mem_calloc, align 8, !dbg !158
  %2 = load ptr, ptr %conf.addr, align 8, !dbg !159
  %mem_free = getelementptr inbounds %struct.treetable_conf_s, ptr %2, i32 0, i32 3, !dbg !160
  store ptr @free, ptr %mem_free, align 8, !dbg !161
  %3 = load ptr, ptr %conf.addr, align 8, !dbg !162
  %cmp = getelementptr inbounds %struct.treetable_conf_s, ptr %3, i32 0, i32 0, !dbg !163
  store ptr @cmp, ptr %cmp, align 8, !dbg !164
  ret void, !dbg !165
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_new(ptr noundef %tt) #0 !dbg !166 {
entry:
  %tt.addr = alloca ptr, align 8
  %conf = alloca %struct.treetable_conf_s, align 8
  store ptr %tt, ptr %tt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tt.addr, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata ptr %conf, metadata !194, metadata !DIExpression()), !dbg !195
  call void @treetable_conf_init(ptr noundef %conf), !dbg !196
  %0 = load ptr, ptr %tt.addr, align 8, !dbg !197
  %call = call i32 @treetable_new_conf(ptr noundef %conf, ptr noundef %0), !dbg !198
  ret i32 %call, !dbg !199
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_new_conf(ptr noundef %conf, ptr noundef %tt) #0 !dbg !200 {
entry:
  %retval = alloca i32, align 4
  %conf.addr = alloca ptr, align 8
  %tt.addr = alloca ptr, align 8
  %table = alloca ptr, align 8
  %sentinel = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !206, metadata !DIExpression()), !dbg !207
  store ptr %tt, ptr %tt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tt.addr, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata ptr %table, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !212
  %mem_calloc = getelementptr inbounds %struct.treetable_conf_s, ptr %0, i32 0, i32 2, !dbg !213
  %1 = load ptr, ptr %mem_calloc, align 8, !dbg !213
  %call = call ptr %1(i64 noundef 1, i64 noundef 56), !dbg !212
  store ptr %call, ptr %table, align 8, !dbg !211
  %2 = load ptr, ptr %table, align 8, !dbg !214
  %tobool = icmp ne ptr %2, null, !dbg !214
  br i1 %tobool, label %if.end, label %if.then, !dbg !216

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !217
  br label %return, !dbg !217

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata ptr %sentinel, metadata !218, metadata !DIExpression()), !dbg !219
  %3 = load ptr, ptr %conf.addr, align 8, !dbg !220
  %mem_calloc1 = getelementptr inbounds %struct.treetable_conf_s, ptr %3, i32 0, i32 2, !dbg !221
  %4 = load ptr, ptr %mem_calloc1, align 8, !dbg !221
  %call2 = call ptr %4(i64 noundef 1, i64 noundef 48), !dbg !220
  store ptr %call2, ptr %sentinel, align 8, !dbg !219
  %5 = load ptr, ptr %sentinel, align 8, !dbg !222
  %tobool3 = icmp ne ptr %5, null, !dbg !222
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !224

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %conf.addr, align 8, !dbg !225
  %mem_free = getelementptr inbounds %struct.treetable_conf_s, ptr %6, i32 0, i32 3, !dbg !227
  %7 = load ptr, ptr %mem_free, align 8, !dbg !227
  %8 = load ptr, ptr %table, align 8, !dbg !228
  call void %7(ptr noundef %8), !dbg !225
  store i32 1, ptr %retval, align 4, !dbg !229
  br label %return, !dbg !229

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %sentinel, align 8, !dbg !230
  %color = getelementptr inbounds %struct.rbnode_s, ptr %9, i32 0, i32 2, !dbg !231
  store i8 1, ptr %color, align 8, !dbg !232
  %10 = load ptr, ptr %table, align 8, !dbg !233
  %size = getelementptr inbounds %struct.treetable_s, ptr %10, i32 0, i32 2, !dbg !234
  store i64 0, ptr %size, align 8, !dbg !235
  %11 = load ptr, ptr %conf.addr, align 8, !dbg !236
  %cmp = getelementptr inbounds %struct.treetable_conf_s, ptr %11, i32 0, i32 0, !dbg !237
  %12 = load ptr, ptr %cmp, align 8, !dbg !237
  %13 = load ptr, ptr %table, align 8, !dbg !238
  %cmp6 = getelementptr inbounds %struct.treetable_s, ptr %13, i32 0, i32 3, !dbg !239
  store ptr %12, ptr %cmp6, align 8, !dbg !240
  %14 = load ptr, ptr %conf.addr, align 8, !dbg !241
  %mem_alloc = getelementptr inbounds %struct.treetable_conf_s, ptr %14, i32 0, i32 1, !dbg !242
  %15 = load ptr, ptr %mem_alloc, align 8, !dbg !242
  %16 = load ptr, ptr %table, align 8, !dbg !243
  %mem_alloc7 = getelementptr inbounds %struct.treetable_s, ptr %16, i32 0, i32 4, !dbg !244
  store ptr %15, ptr %mem_alloc7, align 8, !dbg !245
  %17 = load ptr, ptr %conf.addr, align 8, !dbg !246
  %mem_calloc8 = getelementptr inbounds %struct.treetable_conf_s, ptr %17, i32 0, i32 2, !dbg !247
  %18 = load ptr, ptr %mem_calloc8, align 8, !dbg !247
  %19 = load ptr, ptr %table, align 8, !dbg !248
  %mem_calloc9 = getelementptr inbounds %struct.treetable_s, ptr %19, i32 0, i32 5, !dbg !249
  store ptr %18, ptr %mem_calloc9, align 8, !dbg !250
  %20 = load ptr, ptr %conf.addr, align 8, !dbg !251
  %mem_free10 = getelementptr inbounds %struct.treetable_conf_s, ptr %20, i32 0, i32 3, !dbg !252
  %21 = load ptr, ptr %mem_free10, align 8, !dbg !252
  %22 = load ptr, ptr %table, align 8, !dbg !253
  %mem_free11 = getelementptr inbounds %struct.treetable_s, ptr %22, i32 0, i32 6, !dbg !254
  store ptr %21, ptr %mem_free11, align 8, !dbg !255
  %23 = load ptr, ptr %sentinel, align 8, !dbg !256
  %24 = load ptr, ptr %table, align 8, !dbg !257
  %root = getelementptr inbounds %struct.treetable_s, ptr %24, i32 0, i32 0, !dbg !258
  store ptr %23, ptr %root, align 8, !dbg !259
  %25 = load ptr, ptr %sentinel, align 8, !dbg !260
  %26 = load ptr, ptr %table, align 8, !dbg !261
  %sentinel12 = getelementptr inbounds %struct.treetable_s, ptr %26, i32 0, i32 1, !dbg !262
  store ptr %25, ptr %sentinel12, align 8, !dbg !263
  %27 = load ptr, ptr %table, align 8, !dbg !264
  %28 = load ptr, ptr %tt.addr, align 8, !dbg !265
  store ptr %27, ptr %28, align 8, !dbg !266
  store i32 0, ptr %retval, align 4, !dbg !267
  br label %return, !dbg !267

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %29 = load i32, ptr %retval, align 4, !dbg !268
  ret i32 %29, !dbg !268
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @treetable_destroy(ptr noundef %table) #0 !dbg !269 {
entry:
  %table.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = load ptr, ptr %table.addr, align 8, !dbg !274
  %1 = load ptr, ptr %table.addr, align 8, !dbg !275
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !276
  %2 = load ptr, ptr %root, align 8, !dbg !276
  call void @tree_destroy(ptr noundef %0, ptr noundef %2), !dbg !277
  %3 = load ptr, ptr %table.addr, align 8, !dbg !278
  %mem_free = getelementptr inbounds %struct.treetable_s, ptr %3, i32 0, i32 6, !dbg !279
  %4 = load ptr, ptr %mem_free, align 8, !dbg !279
  %5 = load ptr, ptr %table.addr, align 8, !dbg !280
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %5, i32 0, i32 1, !dbg !281
  %6 = load ptr, ptr %sentinel, align 8, !dbg !281
  call void %4(ptr noundef %6), !dbg !278
  %7 = load ptr, ptr %table.addr, align 8, !dbg !282
  %mem_free1 = getelementptr inbounds %struct.treetable_s, ptr %7, i32 0, i32 6, !dbg !283
  %8 = load ptr, ptr %mem_free1, align 8, !dbg !283
  %9 = load ptr, ptr %table.addr, align 8, !dbg !284
  call void %8(ptr noundef %9), !dbg !282
  ret void, !dbg !285
}

; Function Attrs: noinline nounwind uwtable
define internal void @tree_destroy(ptr noundef %table, ptr noundef %n) #0 !dbg !286 {
entry:
  %table.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !289, metadata !DIExpression()), !dbg !290
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load ptr, ptr %n.addr, align 8, !dbg !293
  %1 = load ptr, ptr %table.addr, align 8, !dbg !295
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 1, !dbg !296
  %2 = load ptr, ptr %sentinel, align 8, !dbg !296
  %cmp = icmp eq ptr %0, %2, !dbg !297
  br i1 %cmp, label %return, label %if.end, !dbg !298

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %table.addr, align 8, !dbg !299
  %4 = load ptr, ptr %n.addr, align 8, !dbg !300
  %left = getelementptr inbounds %struct.rbnode_s, ptr %4, i32 0, i32 4, !dbg !301
  %5 = load ptr, ptr %left, align 8, !dbg !301
  call void @tree_destroy(ptr noundef %3, ptr noundef %5), !dbg !302
  %6 = load ptr, ptr %table.addr, align 8, !dbg !303
  %7 = load ptr, ptr %n.addr, align 8, !dbg !304
  %right = getelementptr inbounds %struct.rbnode_s, ptr %7, i32 0, i32 5, !dbg !305
  %8 = load ptr, ptr %right, align 8, !dbg !305
  call void @tree_destroy(ptr noundef %6, ptr noundef %8), !dbg !306
  %9 = load ptr, ptr %table.addr, align 8, !dbg !307
  %mem_free = getelementptr inbounds %struct.treetable_s, ptr %9, i32 0, i32 6, !dbg !308
  %10 = load ptr, ptr %mem_free, align 8, !dbg !308
  %11 = load ptr, ptr %n.addr, align 8, !dbg !309
  call void %10(ptr noundef %11), !dbg !307
  br label %return, !dbg !310

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_get(ptr noundef %table, ptr noundef %key, ptr noundef %out) #0 !dbg !311 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !318, metadata !DIExpression()), !dbg !319
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !320, metadata !DIExpression()), !dbg !321
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !322, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.declare(metadata ptr %node, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = load ptr, ptr %table.addr, align 8, !dbg !326
  %1 = load ptr, ptr %key.addr, align 8, !dbg !327
  %call = call ptr @get_tree_node_by_key(ptr noundef %0, ptr noundef %1), !dbg !328
  store ptr %call, ptr %node, align 8, !dbg !325
  %2 = load ptr, ptr %node, align 8, !dbg !329
  %tobool = icmp ne ptr %2, null, !dbg !329
  br i1 %tobool, label %if.end, label %if.then, !dbg !331

if.then:                                          ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !332
  br label %return, !dbg !332

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %node, align 8, !dbg !333
  %value = getelementptr inbounds %struct.rbnode_s, ptr %3, i32 0, i32 1, !dbg !334
  %4 = load ptr, ptr %value, align 8, !dbg !334
  %5 = load ptr, ptr %out.addr, align 8, !dbg !335
  store ptr %4, ptr %5, align 8, !dbg !336
  store i32 0, ptr %retval, align 4, !dbg !337
  br label %return, !dbg !337

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !338
  ret i32 %6, !dbg !338
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @get_tree_node_by_key(ptr noundef %table, ptr noundef %key) #0 !dbg !339 {
entry:
  %retval = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %s = alloca ptr, align 8
  %cmp1 = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !342, metadata !DIExpression()), !dbg !343
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load ptr, ptr %table.addr, align 8, !dbg !346
  %size = getelementptr inbounds %struct.treetable_s, ptr %0, i32 0, i32 2, !dbg !348
  %1 = load i64, ptr %size, align 8, !dbg !348
  %cmp = icmp eq i64 %1, 0, !dbg !349
  br i1 %cmp, label %if.then, label %if.end, !dbg !350

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !351
  br label %return, !dbg !351

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata ptr %n, metadata !352, metadata !DIExpression()), !dbg !353
  %2 = load ptr, ptr %table.addr, align 8, !dbg !354
  %root = getelementptr inbounds %struct.treetable_s, ptr %2, i32 0, i32 0, !dbg !355
  %3 = load ptr, ptr %root, align 8, !dbg !355
  store ptr %3, ptr %n, align 8, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %s, metadata !356, metadata !DIExpression()), !dbg !357
  %4 = load ptr, ptr %table.addr, align 8, !dbg !358
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %4, i32 0, i32 1, !dbg !359
  %5 = load ptr, ptr %sentinel, align 8, !dbg !359
  store ptr %5, ptr %s, align 8, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %cmp1, metadata !360, metadata !DIExpression()), !dbg !361
  br label %do.body, !dbg !362

do.body:                                          ; preds = %do.cond, %if.end
  %6 = load ptr, ptr %table.addr, align 8, !dbg !363
  %cmp2 = getelementptr inbounds %struct.treetable_s, ptr %6, i32 0, i32 3, !dbg !365
  %7 = load ptr, ptr %cmp2, align 8, !dbg !365
  %8 = load ptr, ptr %key.addr, align 8, !dbg !366
  %9 = load ptr, ptr %n, align 8, !dbg !367
  %key3 = getelementptr inbounds %struct.rbnode_s, ptr %9, i32 0, i32 0, !dbg !368
  %10 = load ptr, ptr %key3, align 8, !dbg !368
  %call = call i32 %7(ptr noundef %8, ptr noundef %10), !dbg !363
  store i32 %call, ptr %cmp1, align 4, !dbg !369
  %11 = load i32, ptr %cmp1, align 4, !dbg !370
  %cmp4 = icmp slt i32 %11, 0, !dbg !372
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !373

if.then5:                                         ; preds = %do.body
  %12 = load ptr, ptr %n, align 8, !dbg !374
  %left = getelementptr inbounds %struct.rbnode_s, ptr %12, i32 0, i32 4, !dbg !375
  %13 = load ptr, ptr %left, align 8, !dbg !375
  store ptr %13, ptr %n, align 8, !dbg !376
  br label %do.cond, !dbg !377

if.else:                                          ; preds = %do.body
  %14 = load i32, ptr %cmp1, align 4, !dbg !378
  %cmp6 = icmp sgt i32 %14, 0, !dbg !380
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !381

if.then7:                                         ; preds = %if.else
  %15 = load ptr, ptr %n, align 8, !dbg !382
  %right = getelementptr inbounds %struct.rbnode_s, ptr %15, i32 0, i32 5, !dbg !383
  %16 = load ptr, ptr %right, align 8, !dbg !383
  store ptr %16, ptr %n, align 8, !dbg !384
  br label %do.cond

if.else8:                                         ; preds = %if.else
  %17 = load ptr, ptr %n, align 8, !dbg !385
  store ptr %17, ptr %retval, align 8, !dbg !386
  br label %return, !dbg !386

do.cond:                                          ; preds = %if.then5, %if.then7
  %18 = load ptr, ptr %n, align 8, !dbg !387
  %19 = load ptr, ptr %s, align 8, !dbg !388
  %cmp11 = icmp ne ptr %18, %19, !dbg !389
  %20 = load i32, ptr %cmp1, align 4, !dbg !390
  %cmp12 = icmp ne i32 %20, 0, !dbg !390
  %21 = select i1 %cmp11, i1 %cmp12, i1 false, !dbg !390
  br i1 %21, label %do.body, label %do.end, !dbg !391, !llvm.loop !392

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %retval, align 8, !dbg !395
  br label %return, !dbg !395

return:                                           ; preds = %do.end, %if.else8, %if.then
  %22 = load ptr, ptr %retval, align 8, !dbg !396
  ret ptr %22, !dbg !396
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_get_first_key(ptr noundef %table, ptr noundef %out) #0 !dbg !397 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !400, metadata !DIExpression()), !dbg !401
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !402, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.declare(metadata ptr %node, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load ptr, ptr %table.addr, align 8, !dbg !406
  %1 = load ptr, ptr %table.addr, align 8, !dbg !407
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !408
  %2 = load ptr, ptr %root, align 8, !dbg !408
  %call = call ptr @tree_min(ptr noundef %0, ptr noundef %2), !dbg !409
  store ptr %call, ptr %node, align 8, !dbg !405
  %3 = load ptr, ptr %node, align 8, !dbg !410
  %4 = load ptr, ptr %table.addr, align 8, !dbg !412
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %4, i32 0, i32 1, !dbg !413
  %5 = load ptr, ptr %sentinel, align 8, !dbg !413
  %cmp = icmp ne ptr %3, %5, !dbg !414
  br i1 %cmp, label %if.then, label %if.end, !dbg !415

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %node, align 8, !dbg !416
  %key = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 0, !dbg !418
  %7 = load ptr, ptr %key, align 8, !dbg !418
  %8 = load ptr, ptr %out.addr, align 8, !dbg !419
  store ptr %7, ptr %8, align 8, !dbg !420
  store i32 0, ptr %retval, align 4, !dbg !421
  br label %return, !dbg !421

if.end:                                           ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !422
  br label %return, !dbg !422

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !423
  ret i32 %9, !dbg !423
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @tree_min(ptr noundef %table, ptr noundef %n) #0 !dbg !424 {
entry:
  %table.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !427, metadata !DIExpression()), !dbg !428
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !429, metadata !DIExpression()), !dbg !430
  call void @llvm.dbg.declare(metadata ptr %s, metadata !431, metadata !DIExpression()), !dbg !432
  %0 = load ptr, ptr %table.addr, align 8, !dbg !433
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %0, i32 0, i32 1, !dbg !434
  %1 = load ptr, ptr %sentinel, align 8, !dbg !434
  store ptr %1, ptr %s, align 8, !dbg !432
  br label %while.cond, !dbg !435

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %n.addr, align 8, !dbg !436
  %left = getelementptr inbounds %struct.rbnode_s, ptr %2, i32 0, i32 4, !dbg !437
  %3 = load ptr, ptr %left, align 8, !dbg !437
  %4 = load ptr, ptr %s, align 8, !dbg !438
  %cmp = icmp ne ptr %3, %4, !dbg !439
  br i1 %cmp, label %while.body, label %while.end, !dbg !435

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %n.addr, align 8, !dbg !440
  %left1 = getelementptr inbounds %struct.rbnode_s, ptr %5, i32 0, i32 4, !dbg !441
  %6 = load ptr, ptr %left1, align 8, !dbg !441
  store ptr %6, ptr %n.addr, align 8, !dbg !442
  br label %while.cond, !dbg !435, !llvm.loop !443

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %n.addr, align 8, !dbg !444
  ret ptr %7, !dbg !445
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_get_greater_than(ptr noundef %table, ptr noundef %key, ptr noundef %out) #0 !dbg !446 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !447, metadata !DIExpression()), !dbg !448
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !449, metadata !DIExpression()), !dbg !450
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata ptr %n, metadata !453, metadata !DIExpression()), !dbg !454
  %0 = load ptr, ptr %table.addr, align 8, !dbg !455
  %1 = load ptr, ptr %key.addr, align 8, !dbg !456
  %call = call ptr @get_tree_node_by_key(ptr noundef %0, ptr noundef %1), !dbg !457
  store ptr %call, ptr %n, align 8, !dbg !454
  call void @llvm.dbg.declare(metadata ptr %s, metadata !458, metadata !DIExpression()), !dbg !459
  %2 = load ptr, ptr %table.addr, align 8, !dbg !460
  %3 = load ptr, ptr %n, align 8, !dbg !461
  %call1 = call ptr @get_successor_node(ptr noundef %2, ptr noundef %3), !dbg !462
  store ptr %call1, ptr %s, align 8, !dbg !459
  %4 = load ptr, ptr %n, align 8, !dbg !463
  %tobool = icmp ne ptr %4, null, !dbg !463
  %5 = load ptr, ptr %s, align 8
  %tobool2 = icmp ne ptr %5, null
  %or.cond = select i1 %tobool, i1 %tobool2, i1 false, !dbg !465
  br i1 %or.cond, label %if.then, label %if.end, !dbg !465

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %s, align 8, !dbg !466
  %key3 = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 0, !dbg !468
  %7 = load ptr, ptr %key3, align 8, !dbg !468
  %8 = load ptr, ptr %out.addr, align 8, !dbg !469
  store ptr %7, ptr %8, align 8, !dbg !470
  store i32 0, ptr %retval, align 4, !dbg !471
  br label %return, !dbg !471

if.end:                                           ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !472
  br label %return, !dbg !472

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !473
  ret i32 %9, !dbg !473
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @get_successor_node(ptr noundef %table, ptr noundef %x) #0 !dbg !474 {
entry:
  %retval = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !475, metadata !DIExpression()), !dbg !476
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !477, metadata !DIExpression()), !dbg !478
  %0 = load ptr, ptr %x.addr, align 8, !dbg !479
  %cmp = icmp eq ptr %0, null, !dbg !481
  br i1 %cmp, label %if.then, label %if.end, !dbg !482

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !483
  br label %return, !dbg !483

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !484
  %right = getelementptr inbounds %struct.rbnode_s, ptr %1, i32 0, i32 5, !dbg !486
  %2 = load ptr, ptr %right, align 8, !dbg !486
  %3 = load ptr, ptr %table.addr, align 8, !dbg !487
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %3, i32 0, i32 1, !dbg !488
  %4 = load ptr, ptr %sentinel, align 8, !dbg !488
  %cmp1 = icmp ne ptr %2, %4, !dbg !489
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !490

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %table.addr, align 8, !dbg !491
  %6 = load ptr, ptr %x.addr, align 8, !dbg !492
  %right3 = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 5, !dbg !493
  %7 = load ptr, ptr %right3, align 8, !dbg !493
  %call = call ptr @tree_min(ptr noundef %5, ptr noundef %7), !dbg !494
  store ptr %call, ptr %retval, align 8, !dbg !495
  br label %return, !dbg !495

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata ptr %y, metadata !496, metadata !DIExpression()), !dbg !497
  %8 = load ptr, ptr %x.addr, align 8, !dbg !498
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %8, i32 0, i32 3, !dbg !499
  %9 = load ptr, ptr %parent, align 8, !dbg !499
  store ptr %9, ptr %y, align 8, !dbg !497
  br label %while.cond, !dbg !500

while.cond:                                       ; preds = %while.body, %if.end4
  %10 = load ptr, ptr %y, align 8, !dbg !501
  %11 = load ptr, ptr %table.addr, align 8, !dbg !502
  %sentinel5 = getelementptr inbounds %struct.treetable_s, ptr %11, i32 0, i32 1, !dbg !503
  %12 = load ptr, ptr %sentinel5, align 8, !dbg !503
  %cmp6 = icmp ne ptr %10, %12, !dbg !504
  br i1 %cmp6, label %land.rhs, label %while.end, !dbg !505

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %x.addr, align 8, !dbg !506
  %14 = load ptr, ptr %y, align 8, !dbg !507
  %right7 = getelementptr inbounds %struct.rbnode_s, ptr %14, i32 0, i32 5, !dbg !508
  %15 = load ptr, ptr %right7, align 8, !dbg !508
  %cmp8 = icmp eq ptr %13, %15, !dbg !509
  br i1 %cmp8, label %while.body, label %while.end, !dbg !500

while.body:                                       ; preds = %land.rhs
  %16 = load ptr, ptr %y, align 8, !dbg !510
  store ptr %16, ptr %x.addr, align 8, !dbg !512
  %17 = load ptr, ptr %y, align 8, !dbg !513
  %parent9 = getelementptr inbounds %struct.rbnode_s, ptr %17, i32 0, i32 3, !dbg !514
  %18 = load ptr, ptr %parent9, align 8, !dbg !514
  store ptr %18, ptr %y, align 8, !dbg !515
  br label %while.cond, !dbg !500, !llvm.loop !516

while.end:                                        ; preds = %while.cond, %land.rhs
  %19 = load ptr, ptr %y, align 8, !dbg !518
  store ptr %19, ptr %retval, align 8, !dbg !519
  br label %return, !dbg !519

return:                                           ; preds = %while.end, %if.then2, %if.then
  %20 = load ptr, ptr %retval, align 8, !dbg !520
  ret ptr %20, !dbg !520
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @treetable_size(ptr noundef %table) #0 !dbg !521 {
entry:
  %table.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !524, metadata !DIExpression()), !dbg !525
  %0 = load ptr, ptr %table.addr, align 8, !dbg !526
  %size = getelementptr inbounds %struct.treetable_s, ptr %0, i32 0, i32 2, !dbg !527
  %1 = load i64, ptr %size, align 8, !dbg !527
  ret i64 %1, !dbg !528
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @treetable_contains_key(ptr noundef %table, ptr noundef %key) #0 !dbg !529 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !533, metadata !DIExpression()), !dbg !534
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata ptr %node, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load ptr, ptr %table.addr, align 8, !dbg !539
  %1 = load ptr, ptr %key.addr, align 8, !dbg !540
  %call = call ptr @get_tree_node_by_key(ptr noundef %0, ptr noundef %1), !dbg !541
  store ptr %call, ptr %node, align 8, !dbg !538
  %2 = load ptr, ptr %node, align 8, !dbg !542
  %tobool = icmp ne ptr %2, null, !dbg !542
  br i1 %tobool, label %if.then, label %if.end, !dbg !544

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !545
  br label %return, !dbg !545

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !546
  br label %return, !dbg !546

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !547
  ret i1 %3, !dbg !547
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @treetable_contains_value(ptr noundef %table, ptr noundef %value) #0 !dbg !548 {
entry:
  %table.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %o = alloca i64, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !551, metadata !DIExpression()), !dbg !552
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata ptr %node, metadata !555, metadata !DIExpression()), !dbg !556
  %0 = load ptr, ptr %table.addr, align 8, !dbg !557
  %1 = load ptr, ptr %table.addr, align 8, !dbg !558
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !559
  %2 = load ptr, ptr %root, align 8, !dbg !559
  %call = call ptr @tree_min(ptr noundef %0, ptr noundef %2), !dbg !560
  store ptr %call, ptr %node, align 8, !dbg !556
  call void @llvm.dbg.declare(metadata ptr %o, metadata !561, metadata !DIExpression()), !dbg !562
  store i64 0, ptr %o, align 8, !dbg !562
  br label %while.cond, !dbg !563

while.cond:                                       ; preds = %if.end, %entry
  %3 = load ptr, ptr %node, align 8, !dbg !564
  %4 = load ptr, ptr %table.addr, align 8, !dbg !565
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %4, i32 0, i32 1, !dbg !566
  %5 = load ptr, ptr %sentinel, align 8, !dbg !566
  %cmp = icmp ne ptr %3, %5, !dbg !567
  br i1 %cmp, label %while.body, label %while.end, !dbg !563

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %node, align 8, !dbg !568
  %value1 = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 1, !dbg !571
  %7 = load ptr, ptr %value1, align 8, !dbg !571
  %8 = load ptr, ptr %value.addr, align 8, !dbg !572
  %cmp2 = icmp eq ptr %7, %8, !dbg !573
  br i1 %cmp2, label %if.then, label %if.end, !dbg !574

if.then:                                          ; preds = %while.body
  %9 = load i64, ptr %o, align 8, !dbg !575
  %inc = add i64 %9, 1, !dbg !575
  store i64 %inc, ptr %o, align 8, !dbg !575
  br label %if.end, !dbg !576

if.end:                                           ; preds = %if.then, %while.body
  %10 = load ptr, ptr %table.addr, align 8, !dbg !577
  %11 = load ptr, ptr %node, align 8, !dbg !578
  %call3 = call ptr @get_successor_node(ptr noundef %10, ptr noundef %11), !dbg !579
  store ptr %call3, ptr %node, align 8, !dbg !580
  br label %while.cond, !dbg !563, !llvm.loop !581

while.end:                                        ; preds = %while.cond
  %12 = load i64, ptr %o, align 8, !dbg !583
  ret i64 %12, !dbg !584
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_add(ptr noundef %table, ptr noundef %key, ptr noundef %val) #0 !dbg !585 {
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
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !588, metadata !DIExpression()), !dbg !589
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !590, metadata !DIExpression()), !dbg !591
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !592, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.declare(metadata ptr %y, metadata !594, metadata !DIExpression()), !dbg !595
  %0 = load ptr, ptr %table.addr, align 8, !dbg !596
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %0, i32 0, i32 1, !dbg !597
  %1 = load ptr, ptr %sentinel, align 8, !dbg !597
  store ptr %1, ptr %y, align 8, !dbg !595
  call void @llvm.dbg.declare(metadata ptr %x, metadata !598, metadata !DIExpression()), !dbg !599
  %2 = load ptr, ptr %table.addr, align 8, !dbg !600
  %root = getelementptr inbounds %struct.treetable_s, ptr %2, i32 0, i32 0, !dbg !601
  %3 = load ptr, ptr %root, align 8, !dbg !601
  store ptr %3, ptr %x, align 8, !dbg !599
  call void @llvm.dbg.declare(metadata ptr %cmp, metadata !602, metadata !DIExpression()), !dbg !603
  br label %while.cond, !dbg !604

while.cond:                                       ; preds = %if.end9, %entry
  %4 = load ptr, ptr %x, align 8, !dbg !605
  %5 = load ptr, ptr %table.addr, align 8, !dbg !606
  %sentinel1 = getelementptr inbounds %struct.treetable_s, ptr %5, i32 0, i32 1, !dbg !607
  %6 = load ptr, ptr %sentinel1, align 8, !dbg !607
  %cmp2 = icmp ne ptr %4, %6, !dbg !608
  br i1 %cmp2, label %while.body, label %while.end, !dbg !604

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %table.addr, align 8, !dbg !609
  %cmp3 = getelementptr inbounds %struct.treetable_s, ptr %7, i32 0, i32 3, !dbg !611
  %8 = load ptr, ptr %cmp3, align 8, !dbg !611
  %9 = load ptr, ptr %key.addr, align 8, !dbg !612
  %10 = load ptr, ptr %x, align 8, !dbg !613
  %key4 = getelementptr inbounds %struct.rbnode_s, ptr %10, i32 0, i32 0, !dbg !614
  %11 = load ptr, ptr %key4, align 8, !dbg !614
  %call = call i32 %8(ptr noundef %9, ptr noundef %11), !dbg !609
  store i32 %call, ptr %cmp, align 4, !dbg !615
  %12 = load ptr, ptr %x, align 8, !dbg !616
  store ptr %12, ptr %y, align 8, !dbg !617
  %13 = load i32, ptr %cmp, align 4, !dbg !618
  %cmp5 = icmp slt i32 %13, 0, !dbg !620
  br i1 %cmp5, label %if.then, label %if.else, !dbg !621

if.then:                                          ; preds = %while.body
  %14 = load ptr, ptr %x, align 8, !dbg !622
  %left = getelementptr inbounds %struct.rbnode_s, ptr %14, i32 0, i32 4, !dbg !624
  %15 = load ptr, ptr %left, align 8, !dbg !624
  store ptr %15, ptr %x, align 8, !dbg !625
  br label %if.end9, !dbg !626

if.else:                                          ; preds = %while.body
  %16 = load i32, ptr %cmp, align 4, !dbg !627
  %cmp6 = icmp sgt i32 %16, 0, !dbg !629
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !630

if.then7:                                         ; preds = %if.else
  %17 = load ptr, ptr %x, align 8, !dbg !631
  %right = getelementptr inbounds %struct.rbnode_s, ptr %17, i32 0, i32 5, !dbg !633
  %18 = load ptr, ptr %right, align 8, !dbg !633
  store ptr %18, ptr %x, align 8, !dbg !634
  br label %if.end9

if.else8:                                         ; preds = %if.else
  %19 = load ptr, ptr %val.addr, align 8, !dbg !635
  %20 = load ptr, ptr %x, align 8, !dbg !637
  %value = getelementptr inbounds %struct.rbnode_s, ptr %20, i32 0, i32 1, !dbg !638
  store ptr %19, ptr %value, align 8, !dbg !639
  store i32 0, ptr %retval, align 4, !dbg !640
  br label %return, !dbg !640

if.end9:                                          ; preds = %if.then7, %if.then
  br label %while.cond, !dbg !604, !llvm.loop !641

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.declare(metadata ptr %n, metadata !643, metadata !DIExpression()), !dbg !644
  %21 = load ptr, ptr %table.addr, align 8, !dbg !645
  %mem_alloc = getelementptr inbounds %struct.treetable_s, ptr %21, i32 0, i32 4, !dbg !646
  %22 = load ptr, ptr %mem_alloc, align 8, !dbg !646
  %call10 = call ptr %22(i64 noundef 48), !dbg !645
  store ptr %call10, ptr %n, align 8, !dbg !644
  %23 = load ptr, ptr %val.addr, align 8, !dbg !647
  %24 = load ptr, ptr %n, align 8, !dbg !648
  %value11 = getelementptr inbounds %struct.rbnode_s, ptr %24, i32 0, i32 1, !dbg !649
  store ptr %23, ptr %value11, align 8, !dbg !650
  %25 = load ptr, ptr %key.addr, align 8, !dbg !651
  %26 = load ptr, ptr %n, align 8, !dbg !652
  %key12 = getelementptr inbounds %struct.rbnode_s, ptr %26, i32 0, i32 0, !dbg !653
  store ptr %25, ptr %key12, align 8, !dbg !654
  %27 = load ptr, ptr %y, align 8, !dbg !655
  %28 = load ptr, ptr %n, align 8, !dbg !656
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %28, i32 0, i32 3, !dbg !657
  store ptr %27, ptr %parent, align 8, !dbg !658
  %29 = load ptr, ptr %table.addr, align 8, !dbg !659
  %sentinel13 = getelementptr inbounds %struct.treetable_s, ptr %29, i32 0, i32 1, !dbg !660
  %30 = load ptr, ptr %sentinel13, align 8, !dbg !660
  %31 = load ptr, ptr %n, align 8, !dbg !661
  %left14 = getelementptr inbounds %struct.rbnode_s, ptr %31, i32 0, i32 4, !dbg !662
  store ptr %30, ptr %left14, align 8, !dbg !663
  %32 = load ptr, ptr %table.addr, align 8, !dbg !664
  %sentinel15 = getelementptr inbounds %struct.treetable_s, ptr %32, i32 0, i32 1, !dbg !665
  %33 = load ptr, ptr %sentinel15, align 8, !dbg !665
  %34 = load ptr, ptr %n, align 8, !dbg !666
  %right16 = getelementptr inbounds %struct.rbnode_s, ptr %34, i32 0, i32 5, !dbg !667
  store ptr %33, ptr %right16, align 8, !dbg !668
  %35 = load ptr, ptr %table.addr, align 8, !dbg !669
  %size = getelementptr inbounds %struct.treetable_s, ptr %35, i32 0, i32 2, !dbg !670
  %36 = load i64, ptr %size, align 8, !dbg !671
  %inc = add i64 %36, 1, !dbg !671
  store i64 %inc, ptr %size, align 8, !dbg !671
  %37 = load ptr, ptr %y, align 8, !dbg !672
  %38 = load ptr, ptr %table.addr, align 8, !dbg !674
  %sentinel17 = getelementptr inbounds %struct.treetable_s, ptr %38, i32 0, i32 1, !dbg !675
  %39 = load ptr, ptr %sentinel17, align 8, !dbg !675
  %cmp18 = icmp eq ptr %37, %39, !dbg !676
  br i1 %cmp18, label %if.then19, label %if.else21, !dbg !677

if.then19:                                        ; preds = %while.end
  %40 = load ptr, ptr %n, align 8, !dbg !678
  %41 = load ptr, ptr %table.addr, align 8, !dbg !680
  %root20 = getelementptr inbounds %struct.treetable_s, ptr %41, i32 0, i32 0, !dbg !681
  store ptr %40, ptr %root20, align 8, !dbg !682
  %42 = load ptr, ptr %n, align 8, !dbg !683
  %color = getelementptr inbounds %struct.rbnode_s, ptr %42, i32 0, i32 2, !dbg !684
  store i8 1, ptr %color, align 8, !dbg !685
  br label %if.end32, !dbg !686

if.else21:                                        ; preds = %while.end
  %43 = load ptr, ptr %n, align 8, !dbg !687
  %color22 = getelementptr inbounds %struct.rbnode_s, ptr %43, i32 0, i32 2, !dbg !689
  store i8 0, ptr %color22, align 8, !dbg !690
  %44 = load ptr, ptr %table.addr, align 8, !dbg !691
  %cmp23 = getelementptr inbounds %struct.treetable_s, ptr %44, i32 0, i32 3, !dbg !693
  %45 = load ptr, ptr %cmp23, align 8, !dbg !693
  %46 = load ptr, ptr %key.addr, align 8, !dbg !694
  %47 = load ptr, ptr %y, align 8, !dbg !695
  %key24 = getelementptr inbounds %struct.rbnode_s, ptr %47, i32 0, i32 0, !dbg !696
  %48 = load ptr, ptr %key24, align 8, !dbg !696
  %call25 = call i32 %45(ptr noundef %46, ptr noundef %48), !dbg !691
  %cmp26 = icmp slt i32 %call25, 0, !dbg !697
  br i1 %cmp26, label %if.then27, label %if.else29, !dbg !698

if.then27:                                        ; preds = %if.else21
  %49 = load ptr, ptr %n, align 8, !dbg !699
  %50 = load ptr, ptr %y, align 8, !dbg !701
  %left28 = getelementptr inbounds %struct.rbnode_s, ptr %50, i32 0, i32 4, !dbg !702
  store ptr %49, ptr %left28, align 8, !dbg !703
  br label %if.end31, !dbg !704

if.else29:                                        ; preds = %if.else21
  %51 = load ptr, ptr %n, align 8, !dbg !705
  %52 = load ptr, ptr %y, align 8, !dbg !707
  %right30 = getelementptr inbounds %struct.rbnode_s, ptr %52, i32 0, i32 5, !dbg !708
  store ptr %51, ptr %right30, align 8, !dbg !709
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then27
  %53 = load ptr, ptr %table.addr, align 8, !dbg !710
  %54 = load ptr, ptr %n, align 8, !dbg !711
  call void @rebalance_after_insert(ptr noundef %53, ptr noundef %54), !dbg !712
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then19
  store i32 0, ptr %retval, align 4, !dbg !713
  br label %return, !dbg !713

return:                                           ; preds = %if.end32, %if.else8
  %55 = load i32, ptr %retval, align 4, !dbg !714
  ret i32 %55, !dbg !714
}

; Function Attrs: noinline nounwind uwtable
define internal void @rebalance_after_insert(ptr noundef %table, ptr noundef %z) #0 !dbg !715 {
entry:
  %table.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !716, metadata !DIExpression()), !dbg !717
  store ptr %z, ptr %z.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %z.addr, metadata !718, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.declare(metadata ptr %y, metadata !720, metadata !DIExpression()), !dbg !721
  br label %while.cond, !dbg !722

while.cond:                                       ; preds = %if.end69, %entry
  %0 = load ptr, ptr %z.addr, align 8, !dbg !723
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %0, i32 0, i32 3, !dbg !724
  %1 = load ptr, ptr %parent, align 8, !dbg !724
  %color = getelementptr inbounds %struct.rbnode_s, ptr %1, i32 0, i32 2, !dbg !725
  %2 = load i8, ptr %color, align 8, !dbg !725
  %conv = sext i8 %2 to i32, !dbg !723
  %cmp = icmp eq i32 %conv, 0, !dbg !726
  br i1 %cmp, label %while.body, label %while.end, !dbg !722

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %z.addr, align 8, !dbg !727
  %parent2 = getelementptr inbounds %struct.rbnode_s, ptr %3, i32 0, i32 3, !dbg !730
  %4 = load ptr, ptr %parent2, align 8, !dbg !730
  %5 = load ptr, ptr %z.addr, align 8, !dbg !731
  %parent3 = getelementptr inbounds %struct.rbnode_s, ptr %5, i32 0, i32 3, !dbg !732
  %6 = load ptr, ptr %parent3, align 8, !dbg !732
  %parent4 = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 3, !dbg !733
  %7 = load ptr, ptr %parent4, align 8, !dbg !733
  %left = getelementptr inbounds %struct.rbnode_s, ptr %7, i32 0, i32 4, !dbg !734
  %8 = load ptr, ptr %left, align 8, !dbg !734
  %cmp5 = icmp eq ptr %4, %8, !dbg !735
  br i1 %cmp5, label %if.then, label %if.else36, !dbg !736

if.then:                                          ; preds = %while.body
  %9 = load ptr, ptr %z.addr, align 8, !dbg !737
  %parent7 = getelementptr inbounds %struct.rbnode_s, ptr %9, i32 0, i32 3, !dbg !739
  %10 = load ptr, ptr %parent7, align 8, !dbg !739
  %parent8 = getelementptr inbounds %struct.rbnode_s, ptr %10, i32 0, i32 3, !dbg !740
  %11 = load ptr, ptr %parent8, align 8, !dbg !740
  %right = getelementptr inbounds %struct.rbnode_s, ptr %11, i32 0, i32 5, !dbg !741
  %12 = load ptr, ptr %right, align 8, !dbg !741
  store ptr %12, ptr %y, align 8, !dbg !742
  %13 = load ptr, ptr %y, align 8, !dbg !743
  %color9 = getelementptr inbounds %struct.rbnode_s, ptr %13, i32 0, i32 2, !dbg !745
  %14 = load i8, ptr %color9, align 8, !dbg !745
  %conv10 = sext i8 %14 to i32, !dbg !743
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !746
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !747

if.then13:                                        ; preds = %if.then
  %15 = load ptr, ptr %z.addr, align 8, !dbg !748
  %parent14 = getelementptr inbounds %struct.rbnode_s, ptr %15, i32 0, i32 3, !dbg !750
  %16 = load ptr, ptr %parent14, align 8, !dbg !750
  %color15 = getelementptr inbounds %struct.rbnode_s, ptr %16, i32 0, i32 2, !dbg !751
  store i8 1, ptr %color15, align 8, !dbg !752
  %17 = load ptr, ptr %y, align 8, !dbg !753
  %color16 = getelementptr inbounds %struct.rbnode_s, ptr %17, i32 0, i32 2, !dbg !754
  store i8 1, ptr %color16, align 8, !dbg !755
  %18 = load ptr, ptr %z.addr, align 8, !dbg !756
  %parent17 = getelementptr inbounds %struct.rbnode_s, ptr %18, i32 0, i32 3, !dbg !757
  %19 = load ptr, ptr %parent17, align 8, !dbg !757
  %parent18 = getelementptr inbounds %struct.rbnode_s, ptr %19, i32 0, i32 3, !dbg !758
  %20 = load ptr, ptr %parent18, align 8, !dbg !758
  %color19 = getelementptr inbounds %struct.rbnode_s, ptr %20, i32 0, i32 2, !dbg !759
  store i8 0, ptr %color19, align 8, !dbg !760
  %21 = load ptr, ptr %z.addr, align 8, !dbg !761
  %parent20 = getelementptr inbounds %struct.rbnode_s, ptr %21, i32 0, i32 3, !dbg !762
  %22 = load ptr, ptr %parent20, align 8, !dbg !762
  %parent21 = getelementptr inbounds %struct.rbnode_s, ptr %22, i32 0, i32 3, !dbg !763
  %23 = load ptr, ptr %parent21, align 8, !dbg !763
  store ptr %23, ptr %z.addr, align 8, !dbg !764
  br label %if.end69, !dbg !765

if.else:                                          ; preds = %if.then
  %24 = load ptr, ptr %z.addr, align 8, !dbg !766
  %25 = load ptr, ptr %z.addr, align 8, !dbg !769
  %parent22 = getelementptr inbounds %struct.rbnode_s, ptr %25, i32 0, i32 3, !dbg !770
  %26 = load ptr, ptr %parent22, align 8, !dbg !770
  %right23 = getelementptr inbounds %struct.rbnode_s, ptr %26, i32 0, i32 5, !dbg !771
  %27 = load ptr, ptr %right23, align 8, !dbg !771
  %cmp24 = icmp eq ptr %24, %27, !dbg !772
  br i1 %cmp24, label %if.then26, label %if.end, !dbg !773

if.then26:                                        ; preds = %if.else
  %28 = load ptr, ptr %z.addr, align 8, !dbg !774
  %parent27 = getelementptr inbounds %struct.rbnode_s, ptr %28, i32 0, i32 3, !dbg !776
  %29 = load ptr, ptr %parent27, align 8, !dbg !776
  store ptr %29, ptr %z.addr, align 8, !dbg !777
  %30 = load ptr, ptr %table.addr, align 8, !dbg !778
  %31 = load ptr, ptr %z.addr, align 8, !dbg !779
  call void @rotate_left(ptr noundef %30, ptr noundef %31), !dbg !780
  br label %if.end, !dbg !781

if.end:                                           ; preds = %if.then26, %if.else
  %32 = load ptr, ptr %z.addr, align 8, !dbg !782
  %parent28 = getelementptr inbounds %struct.rbnode_s, ptr %32, i32 0, i32 3, !dbg !783
  %33 = load ptr, ptr %parent28, align 8, !dbg !783
  %color29 = getelementptr inbounds %struct.rbnode_s, ptr %33, i32 0, i32 2, !dbg !784
  store i8 1, ptr %color29, align 8, !dbg !785
  %34 = load ptr, ptr %z.addr, align 8, !dbg !786
  %parent30 = getelementptr inbounds %struct.rbnode_s, ptr %34, i32 0, i32 3, !dbg !787
  %35 = load ptr, ptr %parent30, align 8, !dbg !787
  %parent31 = getelementptr inbounds %struct.rbnode_s, ptr %35, i32 0, i32 3, !dbg !788
  %36 = load ptr, ptr %parent31, align 8, !dbg !788
  %color32 = getelementptr inbounds %struct.rbnode_s, ptr %36, i32 0, i32 2, !dbg !789
  store i8 0, ptr %color32, align 8, !dbg !790
  %37 = load ptr, ptr %table.addr, align 8, !dbg !791
  %38 = load ptr, ptr %z.addr, align 8, !dbg !792
  %parent33 = getelementptr inbounds %struct.rbnode_s, ptr %38, i32 0, i32 3, !dbg !793
  %39 = load ptr, ptr %parent33, align 8, !dbg !793
  %parent34 = getelementptr inbounds %struct.rbnode_s, ptr %39, i32 0, i32 3, !dbg !794
  %40 = load ptr, ptr %parent34, align 8, !dbg !794
  call void @rotate_right(ptr noundef %37, ptr noundef %40), !dbg !795
  br label %if.end69

if.else36:                                        ; preds = %while.body
  %41 = load ptr, ptr %z.addr, align 8, !dbg !796
  %parent37 = getelementptr inbounds %struct.rbnode_s, ptr %41, i32 0, i32 3, !dbg !798
  %42 = load ptr, ptr %parent37, align 8, !dbg !798
  %parent38 = getelementptr inbounds %struct.rbnode_s, ptr %42, i32 0, i32 3, !dbg !799
  %43 = load ptr, ptr %parent38, align 8, !dbg !799
  %left39 = getelementptr inbounds %struct.rbnode_s, ptr %43, i32 0, i32 4, !dbg !800
  %44 = load ptr, ptr %left39, align 8, !dbg !800
  store ptr %44, ptr %y, align 8, !dbg !801
  %45 = load ptr, ptr %y, align 8, !dbg !802
  %color40 = getelementptr inbounds %struct.rbnode_s, ptr %45, i32 0, i32 2, !dbg !804
  %46 = load i8, ptr %color40, align 8, !dbg !804
  %conv41 = sext i8 %46 to i32, !dbg !802
  %cmp42 = icmp eq i32 %conv41, 0, !dbg !805
  br i1 %cmp42, label %if.then44, label %if.else53, !dbg !806

if.then44:                                        ; preds = %if.else36
  %47 = load ptr, ptr %z.addr, align 8, !dbg !807
  %parent45 = getelementptr inbounds %struct.rbnode_s, ptr %47, i32 0, i32 3, !dbg !809
  %48 = load ptr, ptr %parent45, align 8, !dbg !809
  %color46 = getelementptr inbounds %struct.rbnode_s, ptr %48, i32 0, i32 2, !dbg !810
  store i8 1, ptr %color46, align 8, !dbg !811
  %49 = load ptr, ptr %y, align 8, !dbg !812
  %color47 = getelementptr inbounds %struct.rbnode_s, ptr %49, i32 0, i32 2, !dbg !813
  store i8 1, ptr %color47, align 8, !dbg !814
  %50 = load ptr, ptr %z.addr, align 8, !dbg !815
  %parent48 = getelementptr inbounds %struct.rbnode_s, ptr %50, i32 0, i32 3, !dbg !816
  %51 = load ptr, ptr %parent48, align 8, !dbg !816
  %parent49 = getelementptr inbounds %struct.rbnode_s, ptr %51, i32 0, i32 3, !dbg !817
  %52 = load ptr, ptr %parent49, align 8, !dbg !817
  %color50 = getelementptr inbounds %struct.rbnode_s, ptr %52, i32 0, i32 2, !dbg !818
  store i8 0, ptr %color50, align 8, !dbg !819
  %53 = load ptr, ptr %z.addr, align 8, !dbg !820
  %parent51 = getelementptr inbounds %struct.rbnode_s, ptr %53, i32 0, i32 3, !dbg !821
  %54 = load ptr, ptr %parent51, align 8, !dbg !821
  %parent52 = getelementptr inbounds %struct.rbnode_s, ptr %54, i32 0, i32 3, !dbg !822
  %55 = load ptr, ptr %parent52, align 8, !dbg !822
  store ptr %55, ptr %z.addr, align 8, !dbg !823
  br label %if.end69, !dbg !824

if.else53:                                        ; preds = %if.else36
  %56 = load ptr, ptr %z.addr, align 8, !dbg !825
  %57 = load ptr, ptr %z.addr, align 8, !dbg !828
  %parent54 = getelementptr inbounds %struct.rbnode_s, ptr %57, i32 0, i32 3, !dbg !829
  %58 = load ptr, ptr %parent54, align 8, !dbg !829
  %left55 = getelementptr inbounds %struct.rbnode_s, ptr %58, i32 0, i32 4, !dbg !830
  %59 = load ptr, ptr %left55, align 8, !dbg !830
  %cmp56 = icmp eq ptr %56, %59, !dbg !831
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !832

if.then58:                                        ; preds = %if.else53
  %60 = load ptr, ptr %z.addr, align 8, !dbg !833
  %parent59 = getelementptr inbounds %struct.rbnode_s, ptr %60, i32 0, i32 3, !dbg !835
  %61 = load ptr, ptr %parent59, align 8, !dbg !835
  store ptr %61, ptr %z.addr, align 8, !dbg !836
  %62 = load ptr, ptr %table.addr, align 8, !dbg !837
  %63 = load ptr, ptr %z.addr, align 8, !dbg !838
  call void @rotate_right(ptr noundef %62, ptr noundef %63), !dbg !839
  br label %if.end60, !dbg !840

if.end60:                                         ; preds = %if.then58, %if.else53
  %64 = load ptr, ptr %z.addr, align 8, !dbg !841
  %parent61 = getelementptr inbounds %struct.rbnode_s, ptr %64, i32 0, i32 3, !dbg !842
  %65 = load ptr, ptr %parent61, align 8, !dbg !842
  %color62 = getelementptr inbounds %struct.rbnode_s, ptr %65, i32 0, i32 2, !dbg !843
  store i8 1, ptr %color62, align 8, !dbg !844
  %66 = load ptr, ptr %z.addr, align 8, !dbg !845
  %parent63 = getelementptr inbounds %struct.rbnode_s, ptr %66, i32 0, i32 3, !dbg !846
  %67 = load ptr, ptr %parent63, align 8, !dbg !846
  %parent64 = getelementptr inbounds %struct.rbnode_s, ptr %67, i32 0, i32 3, !dbg !847
  %68 = load ptr, ptr %parent64, align 8, !dbg !847
  %color65 = getelementptr inbounds %struct.rbnode_s, ptr %68, i32 0, i32 2, !dbg !848
  store i8 0, ptr %color65, align 8, !dbg !849
  %69 = load ptr, ptr %table.addr, align 8, !dbg !850
  %70 = load ptr, ptr %z.addr, align 8, !dbg !851
  %parent66 = getelementptr inbounds %struct.rbnode_s, ptr %70, i32 0, i32 3, !dbg !852
  %71 = load ptr, ptr %parent66, align 8, !dbg !852
  %parent67 = getelementptr inbounds %struct.rbnode_s, ptr %71, i32 0, i32 3, !dbg !853
  %72 = load ptr, ptr %parent67, align 8, !dbg !853
  call void @rotate_left(ptr noundef %69, ptr noundef %72), !dbg !854
  br label %if.end69

if.end69:                                         ; preds = %if.then44, %if.end60, %if.then13, %if.end
  br label %while.cond, !dbg !722, !llvm.loop !855

while.end:                                        ; preds = %while.cond
  %73 = load ptr, ptr %table.addr, align 8, !dbg !857
  %root = getelementptr inbounds %struct.treetable_s, ptr %73, i32 0, i32 0, !dbg !858
  %74 = load ptr, ptr %root, align 8, !dbg !858
  %color70 = getelementptr inbounds %struct.rbnode_s, ptr %74, i32 0, i32 2, !dbg !859
  store i8 1, ptr %color70, align 8, !dbg !860
  ret void, !dbg !861
}

; Function Attrs: noinline nounwind uwtable
define internal void @rotate_left(ptr noundef %table, ptr noundef %x) #0 !dbg !862 {
entry:
  %table.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !863, metadata !DIExpression()), !dbg !864
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !865, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.declare(metadata ptr %y, metadata !867, metadata !DIExpression()), !dbg !868
  %0 = load ptr, ptr %x.addr, align 8, !dbg !869
  %right = getelementptr inbounds %struct.rbnode_s, ptr %0, i32 0, i32 5, !dbg !870
  %1 = load ptr, ptr %right, align 8, !dbg !870
  store ptr %1, ptr %y, align 8, !dbg !868
  %2 = load ptr, ptr %y, align 8, !dbg !871
  %left = getelementptr inbounds %struct.rbnode_s, ptr %2, i32 0, i32 4, !dbg !872
  %3 = load ptr, ptr %left, align 8, !dbg !872
  %4 = load ptr, ptr %x.addr, align 8, !dbg !873
  %right1 = getelementptr inbounds %struct.rbnode_s, ptr %4, i32 0, i32 5, !dbg !874
  store ptr %3, ptr %right1, align 8, !dbg !875
  %5 = load ptr, ptr %y, align 8, !dbg !876
  %left2 = getelementptr inbounds %struct.rbnode_s, ptr %5, i32 0, i32 4, !dbg !878
  %6 = load ptr, ptr %left2, align 8, !dbg !878
  %7 = load ptr, ptr %table.addr, align 8, !dbg !879
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %7, i32 0, i32 1, !dbg !880
  %8 = load ptr, ptr %sentinel, align 8, !dbg !880
  %cmp = icmp ne ptr %6, %8, !dbg !881
  br i1 %cmp, label %if.then, label %if.end, !dbg !882

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %x.addr, align 8, !dbg !883
  %10 = load ptr, ptr %y, align 8, !dbg !884
  %left3 = getelementptr inbounds %struct.rbnode_s, ptr %10, i32 0, i32 4, !dbg !885
  %11 = load ptr, ptr %left3, align 8, !dbg !885
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %11, i32 0, i32 3, !dbg !886
  store ptr %9, ptr %parent, align 8, !dbg !887
  br label %if.end, !dbg !884

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %x.addr, align 8, !dbg !888
  %parent4 = getelementptr inbounds %struct.rbnode_s, ptr %12, i32 0, i32 3, !dbg !889
  %13 = load ptr, ptr %parent4, align 8, !dbg !889
  %14 = load ptr, ptr %y, align 8, !dbg !890
  %parent5 = getelementptr inbounds %struct.rbnode_s, ptr %14, i32 0, i32 3, !dbg !891
  store ptr %13, ptr %parent5, align 8, !dbg !892
  %15 = load ptr, ptr %x.addr, align 8, !dbg !893
  %parent6 = getelementptr inbounds %struct.rbnode_s, ptr %15, i32 0, i32 3, !dbg !895
  %16 = load ptr, ptr %parent6, align 8, !dbg !895
  %17 = load ptr, ptr %table.addr, align 8, !dbg !896
  %sentinel7 = getelementptr inbounds %struct.treetable_s, ptr %17, i32 0, i32 1, !dbg !897
  %18 = load ptr, ptr %sentinel7, align 8, !dbg !897
  %cmp8 = icmp eq ptr %16, %18, !dbg !898
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !899

if.then9:                                         ; preds = %if.end
  %19 = load ptr, ptr %y, align 8, !dbg !900
  %20 = load ptr, ptr %table.addr, align 8, !dbg !901
  %root = getelementptr inbounds %struct.treetable_s, ptr %20, i32 0, i32 0, !dbg !902
  store ptr %19, ptr %root, align 8, !dbg !903
  br label %if.end20, !dbg !901

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %x.addr, align 8, !dbg !904
  %22 = load ptr, ptr %x.addr, align 8, !dbg !906
  %parent10 = getelementptr inbounds %struct.rbnode_s, ptr %22, i32 0, i32 3, !dbg !907
  %23 = load ptr, ptr %parent10, align 8, !dbg !907
  %left11 = getelementptr inbounds %struct.rbnode_s, ptr %23, i32 0, i32 4, !dbg !908
  %24 = load ptr, ptr %left11, align 8, !dbg !908
  %cmp12 = icmp eq ptr %21, %24, !dbg !909
  br i1 %cmp12, label %if.then13, label %if.else16, !dbg !910

if.then13:                                        ; preds = %if.else
  %25 = load ptr, ptr %y, align 8, !dbg !911
  %26 = load ptr, ptr %x.addr, align 8, !dbg !912
  %parent14 = getelementptr inbounds %struct.rbnode_s, ptr %26, i32 0, i32 3, !dbg !913
  %27 = load ptr, ptr %parent14, align 8, !dbg !913
  %left15 = getelementptr inbounds %struct.rbnode_s, ptr %27, i32 0, i32 4, !dbg !914
  store ptr %25, ptr %left15, align 8, !dbg !915
  br label %if.end20, !dbg !912

if.else16:                                        ; preds = %if.else
  %28 = load ptr, ptr %y, align 8, !dbg !916
  %29 = load ptr, ptr %x.addr, align 8, !dbg !917
  %parent17 = getelementptr inbounds %struct.rbnode_s, ptr %29, i32 0, i32 3, !dbg !918
  %30 = load ptr, ptr %parent17, align 8, !dbg !918
  %right18 = getelementptr inbounds %struct.rbnode_s, ptr %30, i32 0, i32 5, !dbg !919
  store ptr %28, ptr %right18, align 8, !dbg !920
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.else16, %if.then9
  %31 = load ptr, ptr %x.addr, align 8, !dbg !921
  %32 = load ptr, ptr %y, align 8, !dbg !922
  %left21 = getelementptr inbounds %struct.rbnode_s, ptr %32, i32 0, i32 4, !dbg !923
  store ptr %31, ptr %left21, align 8, !dbg !924
  %33 = load ptr, ptr %y, align 8, !dbg !925
  %34 = load ptr, ptr %x.addr, align 8, !dbg !926
  %parent22 = getelementptr inbounds %struct.rbnode_s, ptr %34, i32 0, i32 3, !dbg !927
  store ptr %33, ptr %parent22, align 8, !dbg !928
  ret void, !dbg !929
}

; Function Attrs: noinline nounwind uwtable
define internal void @rotate_right(ptr noundef %table, ptr noundef %x) #0 !dbg !930 {
entry:
  %table.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !931, metadata !DIExpression()), !dbg !932
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !933, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.declare(metadata ptr %y, metadata !935, metadata !DIExpression()), !dbg !936
  %0 = load ptr, ptr %x.addr, align 8, !dbg !937
  %left = getelementptr inbounds %struct.rbnode_s, ptr %0, i32 0, i32 4, !dbg !938
  %1 = load ptr, ptr %left, align 8, !dbg !938
  store ptr %1, ptr %y, align 8, !dbg !936
  %2 = load ptr, ptr %y, align 8, !dbg !939
  %right = getelementptr inbounds %struct.rbnode_s, ptr %2, i32 0, i32 5, !dbg !940
  %3 = load ptr, ptr %right, align 8, !dbg !940
  %4 = load ptr, ptr %x.addr, align 8, !dbg !941
  %left1 = getelementptr inbounds %struct.rbnode_s, ptr %4, i32 0, i32 4, !dbg !942
  store ptr %3, ptr %left1, align 8, !dbg !943
  %5 = load ptr, ptr %y, align 8, !dbg !944
  %right2 = getelementptr inbounds %struct.rbnode_s, ptr %5, i32 0, i32 5, !dbg !946
  %6 = load ptr, ptr %right2, align 8, !dbg !946
  %7 = load ptr, ptr %table.addr, align 8, !dbg !947
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %7, i32 0, i32 1, !dbg !948
  %8 = load ptr, ptr %sentinel, align 8, !dbg !948
  %cmp = icmp ne ptr %6, %8, !dbg !949
  br i1 %cmp, label %if.then, label %if.end, !dbg !950

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %x.addr, align 8, !dbg !951
  %10 = load ptr, ptr %y, align 8, !dbg !952
  %right3 = getelementptr inbounds %struct.rbnode_s, ptr %10, i32 0, i32 5, !dbg !953
  %11 = load ptr, ptr %right3, align 8, !dbg !953
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %11, i32 0, i32 3, !dbg !954
  store ptr %9, ptr %parent, align 8, !dbg !955
  br label %if.end, !dbg !952

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %x.addr, align 8, !dbg !956
  %parent4 = getelementptr inbounds %struct.rbnode_s, ptr %12, i32 0, i32 3, !dbg !957
  %13 = load ptr, ptr %parent4, align 8, !dbg !957
  %14 = load ptr, ptr %y, align 8, !dbg !958
  %parent5 = getelementptr inbounds %struct.rbnode_s, ptr %14, i32 0, i32 3, !dbg !959
  store ptr %13, ptr %parent5, align 8, !dbg !960
  %15 = load ptr, ptr %x.addr, align 8, !dbg !961
  %parent6 = getelementptr inbounds %struct.rbnode_s, ptr %15, i32 0, i32 3, !dbg !963
  %16 = load ptr, ptr %parent6, align 8, !dbg !963
  %17 = load ptr, ptr %table.addr, align 8, !dbg !964
  %sentinel7 = getelementptr inbounds %struct.treetable_s, ptr %17, i32 0, i32 1, !dbg !965
  %18 = load ptr, ptr %sentinel7, align 8, !dbg !965
  %cmp8 = icmp eq ptr %16, %18, !dbg !966
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !967

if.then9:                                         ; preds = %if.end
  %19 = load ptr, ptr %y, align 8, !dbg !968
  %20 = load ptr, ptr %table.addr, align 8, !dbg !969
  %root = getelementptr inbounds %struct.treetable_s, ptr %20, i32 0, i32 0, !dbg !970
  store ptr %19, ptr %root, align 8, !dbg !971
  br label %if.end20, !dbg !969

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %x.addr, align 8, !dbg !972
  %22 = load ptr, ptr %x.addr, align 8, !dbg !974
  %parent10 = getelementptr inbounds %struct.rbnode_s, ptr %22, i32 0, i32 3, !dbg !975
  %23 = load ptr, ptr %parent10, align 8, !dbg !975
  %right11 = getelementptr inbounds %struct.rbnode_s, ptr %23, i32 0, i32 5, !dbg !976
  %24 = load ptr, ptr %right11, align 8, !dbg !976
  %cmp12 = icmp eq ptr %21, %24, !dbg !977
  br i1 %cmp12, label %if.then13, label %if.else16, !dbg !978

if.then13:                                        ; preds = %if.else
  %25 = load ptr, ptr %y, align 8, !dbg !979
  %26 = load ptr, ptr %x.addr, align 8, !dbg !980
  %parent14 = getelementptr inbounds %struct.rbnode_s, ptr %26, i32 0, i32 3, !dbg !981
  %27 = load ptr, ptr %parent14, align 8, !dbg !981
  %right15 = getelementptr inbounds %struct.rbnode_s, ptr %27, i32 0, i32 5, !dbg !982
  store ptr %25, ptr %right15, align 8, !dbg !983
  br label %if.end20, !dbg !980

if.else16:                                        ; preds = %if.else
  %28 = load ptr, ptr %y, align 8, !dbg !984
  %29 = load ptr, ptr %x.addr, align 8, !dbg !985
  %parent17 = getelementptr inbounds %struct.rbnode_s, ptr %29, i32 0, i32 3, !dbg !986
  %30 = load ptr, ptr %parent17, align 8, !dbg !986
  %left18 = getelementptr inbounds %struct.rbnode_s, ptr %30, i32 0, i32 4, !dbg !987
  store ptr %28, ptr %left18, align 8, !dbg !988
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.else16, %if.then9
  %31 = load ptr, ptr %x.addr, align 8, !dbg !989
  %32 = load ptr, ptr %y, align 8, !dbg !990
  %right21 = getelementptr inbounds %struct.rbnode_s, ptr %32, i32 0, i32 5, !dbg !991
  store ptr %31, ptr %right21, align 8, !dbg !992
  %33 = load ptr, ptr %y, align 8, !dbg !993
  %34 = load ptr, ptr %x.addr, align 8, !dbg !994
  %parent22 = getelementptr inbounds %struct.rbnode_s, ptr %34, i32 0, i32 3, !dbg !995
  store ptr %33, ptr %parent22, align 8, !dbg !996
  ret void, !dbg !997
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @balanced(ptr noundef %t) #0 !dbg !998 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1001, metadata !DIExpression()), !dbg !1002
  %0 = load ptr, ptr %t.addr, align 8, !dbg !1003
  %1 = load ptr, ptr %t.addr, align 8, !dbg !1004
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !1005
  %2 = load ptr, ptr %root, align 8, !dbg !1005
  %call = call i32 @tree_height(ptr noundef %0, ptr noundef %2), !dbg !1006
  %cmp = icmp ne i32 %call, -1, !dbg !1007
  %conv = zext i1 %cmp to i32, !dbg !1007
  ret i32 %conv, !dbg !1008
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tree_height(ptr noundef %t, ptr noundef %n) #0 !dbg !1009 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %left_h = alloca i32, align 4
  %right_h = alloca i32, align 4
  %diff = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1012, metadata !DIExpression()), !dbg !1013
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1014, metadata !DIExpression()), !dbg !1015
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1016
  %1 = load ptr, ptr %t.addr, align 8, !dbg !1018
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 1, !dbg !1019
  %2 = load ptr, ptr %sentinel, align 8, !dbg !1019
  %cmp = icmp eq ptr %0, %2, !dbg !1020
  br i1 %cmp, label %if.then, label %if.end, !dbg !1021

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1022
  br label %return, !dbg !1022

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata ptr %left_h, metadata !1023, metadata !DIExpression()), !dbg !1024
  %3 = load ptr, ptr %t.addr, align 8, !dbg !1025
  %4 = load ptr, ptr %n.addr, align 8, !dbg !1026
  %left = getelementptr inbounds %struct.rbnode_s, ptr %4, i32 0, i32 4, !dbg !1027
  %5 = load ptr, ptr %left, align 8, !dbg !1027
  %call = call i32 @tree_height(ptr noundef %3, ptr noundef %5), !dbg !1028
  store i32 %call, ptr %left_h, align 4, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %right_h, metadata !1029, metadata !DIExpression()), !dbg !1030
  %6 = load ptr, ptr %t.addr, align 8, !dbg !1031
  %7 = load ptr, ptr %n.addr, align 8, !dbg !1032
  %right = getelementptr inbounds %struct.rbnode_s, ptr %7, i32 0, i32 5, !dbg !1033
  %8 = load ptr, ptr %right, align 8, !dbg !1033
  %call1 = call i32 @tree_height(ptr noundef %6, ptr noundef %8), !dbg !1034
  store i32 %call1, ptr %right_h, align 4, !dbg !1030
  %9 = load i32, ptr %left_h, align 4, !dbg !1035
  %cmp2 = icmp eq i32 %9, -1, !dbg !1037
  %10 = load i32, ptr %right_h, align 4
  %cmp3 = icmp eq i32 %10, -1
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3, !dbg !1038
  br i1 %or.cond, label %if.then4, label %if.end5, !dbg !1038

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1039
  br label %return, !dbg !1039

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata ptr %diff, metadata !1040, metadata !DIExpression()), !dbg !1041
  %11 = load i32, ptr %left_h, align 4, !dbg !1042
  %12 = load i32, ptr %right_h, align 4, !dbg !1043
  %sub = sub nsw i32 %11, %12, !dbg !1044
  store i32 %sub, ptr %diff, align 4, !dbg !1041
  %13 = load i32, ptr %diff, align 4, !dbg !1045
  %cmp6 = icmp sgt i32 %13, 1, !dbg !1047
  %14 = load i32, ptr %diff, align 4
  %cmp8 = icmp slt i32 %14, -1
  %or.cond1 = select i1 %cmp6, i1 true, i1 %cmp8, !dbg !1048
  br i1 %or.cond1, label %if.then9, label %if.end10, !dbg !1048

if.then9:                                         ; preds = %if.end5
  store i32 -1, ptr %retval, align 4, !dbg !1049
  br label %return, !dbg !1049

if.end10:                                         ; preds = %if.end5
  %15 = load i32, ptr %left_h, align 4, !dbg !1050
  %16 = load i32, ptr %right_h, align 4, !dbg !1051
  %cmp11 = icmp sgt i32 %15, %16, !dbg !1052
  %17 = load i32, ptr %left_h, align 4, !dbg !1050
  %18 = load i32, ptr %right_h, align 4, !dbg !1050
  %cond = select i1 %cmp11, i32 %17, i32 %18, !dbg !1050
  %add = add nsw i32 1, %cond, !dbg !1053
  store i32 %add, ptr %retval, align 4, !dbg !1054
  br label %return, !dbg !1054

return:                                           ; preds = %if.end10, %if.then9, %if.then4, %if.then
  %19 = load i32, ptr %retval, align 4, !dbg !1055
  ret i32 %19, !dbg !1055
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sorted(ptr noundef %t) #0 !dbg !1056 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1057, metadata !DIExpression()), !dbg !1058
  %0 = load ptr, ptr %t.addr, align 8, !dbg !1059
  %1 = load ptr, ptr %t.addr, align 8, !dbg !1060
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !1061
  %2 = load ptr, ptr %root, align 8, !dbg !1061
  %call = call i32 @sorted_helper(ptr noundef %0, ptr noundef %2, ptr noundef null, ptr noundef null), !dbg !1062
  ret i32 %call, !dbg !1063
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sorted_helper(ptr noundef %t, ptr noundef %n, ptr noundef %min, ptr noundef %max) #0 !dbg !1064 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %min.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1067, metadata !DIExpression()), !dbg !1068
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1069, metadata !DIExpression()), !dbg !1070
  store ptr %min, ptr %min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !1071, metadata !DIExpression()), !dbg !1072
  store ptr %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !1073, metadata !DIExpression()), !dbg !1074
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1075
  %1 = load ptr, ptr %t.addr, align 8, !dbg !1077
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 1, !dbg !1078
  %2 = load ptr, ptr %sentinel, align 8, !dbg !1078
  %cmp = icmp eq ptr %0, %2, !dbg !1079
  br i1 %cmp, label %if.then, label %if.end, !dbg !1080

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1081
  br label %return, !dbg !1081

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %min.addr, align 8, !dbg !1082
  %cmp1 = icmp ne ptr %3, null, !dbg !1084
  br i1 %cmp1, label %land.lhs.true, label %if.end5, !dbg !1085

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %t.addr, align 8, !dbg !1086
  %cmp2 = getelementptr inbounds %struct.treetable_s, ptr %4, i32 0, i32 3, !dbg !1087
  %5 = load ptr, ptr %cmp2, align 8, !dbg !1087
  %6 = load ptr, ptr %n.addr, align 8, !dbg !1088
  %key = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 0, !dbg !1089
  %7 = load ptr, ptr %key, align 8, !dbg !1089
  %8 = load ptr, ptr %min.addr, align 8, !dbg !1090
  %call = call i32 %5(ptr noundef %7, ptr noundef %8), !dbg !1086
  %cmp3 = icmp sle i32 %call, 0, !dbg !1091
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1092

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1093
  br label %return, !dbg !1093

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %max.addr, align 8, !dbg !1094
  %cmp6 = icmp ne ptr %9, null, !dbg !1096
  br i1 %cmp6, label %land.lhs.true7, label %if.end13, !dbg !1097

land.lhs.true7:                                   ; preds = %if.end5
  %10 = load ptr, ptr %t.addr, align 8, !dbg !1098
  %cmp8 = getelementptr inbounds %struct.treetable_s, ptr %10, i32 0, i32 3, !dbg !1099
  %11 = load ptr, ptr %cmp8, align 8, !dbg !1099
  %12 = load ptr, ptr %n.addr, align 8, !dbg !1100
  %key9 = getelementptr inbounds %struct.rbnode_s, ptr %12, i32 0, i32 0, !dbg !1101
  %13 = load ptr, ptr %key9, align 8, !dbg !1101
  %14 = load ptr, ptr %max.addr, align 8, !dbg !1102
  %call10 = call i32 %11(ptr noundef %13, ptr noundef %14), !dbg !1098
  %cmp11 = icmp sge i32 %call10, 0, !dbg !1103
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1104

if.then12:                                        ; preds = %land.lhs.true7
  store i32 0, ptr %retval, align 4, !dbg !1105
  br label %return, !dbg !1105

if.end13:                                         ; preds = %land.lhs.true7, %if.end5
  %15 = load ptr, ptr %t.addr, align 8, !dbg !1106
  %16 = load ptr, ptr %n.addr, align 8, !dbg !1107
  %left = getelementptr inbounds %struct.rbnode_s, ptr %16, i32 0, i32 4, !dbg !1108
  %17 = load ptr, ptr %left, align 8, !dbg !1108
  %18 = load ptr, ptr %min.addr, align 8, !dbg !1109
  %19 = load ptr, ptr %n.addr, align 8, !dbg !1110
  %key14 = getelementptr inbounds %struct.rbnode_s, ptr %19, i32 0, i32 0, !dbg !1111
  %20 = load ptr, ptr %key14, align 8, !dbg !1111
  %call15 = call i32 @sorted_helper(ptr noundef %15, ptr noundef %17, ptr noundef %18, ptr noundef %20), !dbg !1112
  %tobool = icmp ne i32 %call15, 0, !dbg !1112
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1113

land.rhs:                                         ; preds = %if.end13
  %21 = load ptr, ptr %t.addr, align 8, !dbg !1114
  %22 = load ptr, ptr %n.addr, align 8, !dbg !1115
  %right = getelementptr inbounds %struct.rbnode_s, ptr %22, i32 0, i32 5, !dbg !1116
  %23 = load ptr, ptr %right, align 8, !dbg !1116
  %24 = load ptr, ptr %n.addr, align 8, !dbg !1117
  %key16 = getelementptr inbounds %struct.rbnode_s, ptr %24, i32 0, i32 0, !dbg !1118
  %25 = load ptr, ptr %key16, align 8, !dbg !1118
  %26 = load ptr, ptr %max.addr, align 8, !dbg !1119
  %call17 = call i32 @sorted_helper(ptr noundef %21, ptr noundef %23, ptr noundef %25, ptr noundef %26), !dbg !1120
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1113
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end13
  %27 = phi i1 [ false, %if.end13 ], [ %tobool18, %land.rhs ], !dbg !1121
  %land.ext = zext i1 %27 to i32, !dbg !1113
  store i32 %land.ext, ptr %retval, align 4, !dbg !1122
  br label %return, !dbg !1122

return:                                           ; preds = %land.end, %if.then12, %if.then4, %if.then
  %28 = load i32, ptr %retval, align 4, !dbg !1123
  ret i32 %28, !dbg !1123
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !1124 {
entry:
  %retval = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %missing = alloca i32, align 4
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %t = alloca ptr, align 8
  %out = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.dbg.declare(metadata ptr %k1, metadata !1127, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.declare(metadata ptr %k2, metadata !1129, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.declare(metadata ptr %missing, metadata !1131, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !1133, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !1135, metadata !DIExpression()), !dbg !1136
  call void @klee_make_symbolic(ptr noundef %k1, i64 noundef 4, ptr noundef @.str), !dbg !1137
  call void @klee_make_symbolic(ptr noundef %k2, i64 noundef 4, ptr noundef @.str.1), !dbg !1138
  call void @klee_make_symbolic(ptr noundef %missing, i64 noundef 4, ptr noundef @.str.2), !dbg !1139
  call void @klee_make_symbolic(ptr noundef %v1, i64 noundef 4, ptr noundef @.str.3), !dbg !1140
  call void @klee_make_symbolic(ptr noundef %v2, i64 noundef 4, ptr noundef @.str.4), !dbg !1141
  call void @llvm.dbg.declare(metadata ptr %t, metadata !1142, metadata !DIExpression()), !dbg !1147
  %call = call i32 @treetable_new(ptr noundef %t), !dbg !1148
  call void @llvm.dbg.declare(metadata ptr %out, metadata !1149, metadata !DIExpression()), !dbg !1150
  %0 = load ptr, ptr %t, align 8, !dbg !1151
  %call1 = call i32 @treetable_get(ptr noundef %0, ptr noundef %k1, ptr noundef %out), !dbg !1151
  %cmp = icmp eq i32 %call1, 6, !dbg !1151
  br i1 %cmp, label %if.end, label %if.else, !dbg !1154

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.5, ptr noundef @.str.6, i32 noundef 39, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1151
  unreachable, !dbg !1151

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %t, align 8, !dbg !1155
  %call2 = call i32 @treetable_add(ptr noundef %1, ptr noundef %k1, ptr noundef %v1), !dbg !1156
  %2 = load ptr, ptr %t, align 8, !dbg !1157
  %call3 = call i32 @sorted(ptr noundef %2), !dbg !1157
  %tobool = icmp ne i32 %call3, 0, !dbg !1157
  br i1 %tobool, label %if.end6, label %if.else5, !dbg !1160

if.else5:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.6, i32 noundef 46, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1157
  unreachable, !dbg !1157

if.end6:                                          ; preds = %if.end
  %3 = load ptr, ptr %t, align 8, !dbg !1161
  %call7 = call i32 @balanced(ptr noundef %3), !dbg !1161
  %tobool8 = icmp ne i32 %call7, 0, !dbg !1161
  br i1 %tobool8, label %if.end11, label %if.else10, !dbg !1164

if.else10:                                        ; preds = %if.end6
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.6, i32 noundef 47, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1161
  unreachable, !dbg !1161

if.end11:                                         ; preds = %if.end6
  %4 = load ptr, ptr %t, align 8, !dbg !1165
  %call12 = call i32 @treetable_get(ptr noundef %4, ptr noundef %k1, ptr noundef %out), !dbg !1165
  %cmp13 = icmp eq i32 %call12, 0, !dbg !1165
  br i1 %cmp13, label %if.end16, label %if.else15, !dbg !1168

if.else15:                                        ; preds = %if.end11
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.6, i32 noundef 49, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1165
  unreachable, !dbg !1165

if.end16:                                         ; preds = %if.end11
  %5 = load ptr, ptr %out, align 8, !dbg !1169
  %6 = load i32, ptr %5, align 4, !dbg !1169
  %7 = load i32, ptr %v1, align 4, !dbg !1169
  %cmp17 = icmp eq i32 %6, %7, !dbg !1169
  br i1 %cmp17, label %if.end20, label %if.else19, !dbg !1172

if.else19:                                        ; preds = %if.end16
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.6, i32 noundef 50, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1169
  unreachable, !dbg !1169

if.end20:                                         ; preds = %if.end16
  %8 = load ptr, ptr %t, align 8, !dbg !1173
  %call21 = call i32 @treetable_add(ptr noundef %8, ptr noundef %k2, ptr noundef %v2), !dbg !1174
  %9 = load ptr, ptr %t, align 8, !dbg !1175
  %call22 = call i32 @sorted(ptr noundef %9), !dbg !1175
  %tobool23 = icmp ne i32 %call22, 0, !dbg !1175
  br i1 %tobool23, label %if.end26, label %if.else25, !dbg !1178

if.else25:                                        ; preds = %if.end20
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.6, i32 noundef 57, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1175
  unreachable, !dbg !1175

if.end26:                                         ; preds = %if.end20
  %10 = load ptr, ptr %t, align 8, !dbg !1179
  %call27 = call i32 @balanced(ptr noundef %10), !dbg !1179
  %tobool28 = icmp ne i32 %call27, 0, !dbg !1179
  br i1 %tobool28, label %if.end31, label %if.else30, !dbg !1182

if.else30:                                        ; preds = %if.end26
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.6, i32 noundef 58, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1179
  unreachable, !dbg !1179

if.end31:                                         ; preds = %if.end26
  %11 = load ptr, ptr %t, align 8, !dbg !1183
  %call32 = call i32 @treetable_get(ptr noundef %11, ptr noundef %k2, ptr noundef %out), !dbg !1183
  %cmp33 = icmp eq i32 %call32, 0, !dbg !1183
  br i1 %cmp33, label %if.end36, label %if.else35, !dbg !1186

if.else35:                                        ; preds = %if.end31
  call void @__assert_fail(ptr noundef @.str.11, ptr noundef @.str.6, i32 noundef 60, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1183
  unreachable, !dbg !1183

if.end36:                                         ; preds = %if.end31
  %12 = load ptr, ptr %out, align 8, !dbg !1187
  %13 = load i32, ptr %12, align 4, !dbg !1187
  %14 = load i32, ptr %v2, align 4, !dbg !1187
  %cmp37 = icmp eq i32 %13, %14, !dbg !1187
  br i1 %cmp37, label %if.end40, label %if.else39, !dbg !1190

if.else39:                                        ; preds = %if.end36
  call void @__assert_fail(ptr noundef @.str.12, ptr noundef @.str.6, i32 noundef 61, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1187
  unreachable, !dbg !1187

if.end40:                                         ; preds = %if.end36
  %15 = load i32, ptr %missing, align 4, !dbg !1191
  %16 = load i32, ptr %k1, align 4, !dbg !1193
  %cmp41 = icmp ne i32 %15, %16, !dbg !1194
  br i1 %cmp41, label %land.lhs.true, label %if.end49, !dbg !1195

land.lhs.true:                                    ; preds = %if.end40
  %17 = load i32, ptr %missing, align 4, !dbg !1196
  %18 = load i32, ptr %k2, align 4, !dbg !1197
  %cmp42 = icmp ne i32 %17, %18, !dbg !1198
  br i1 %cmp42, label %if.then43, label %if.end49, !dbg !1199

if.then43:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr %t, align 8, !dbg !1200
  %call44 = call i32 @treetable_get(ptr noundef %19, ptr noundef %missing, ptr noundef %out), !dbg !1200
  %cmp45 = icmp eq i32 %call44, 6, !dbg !1200
  br i1 %cmp45, label %if.end49, label %if.else47, !dbg !1204

if.else47:                                        ; preds = %if.then43
  call void @__assert_fail(ptr noundef @.str.13, ptr noundef @.str.6, i32 noundef 68, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1200
  unreachable, !dbg !1200

if.end49:                                         ; preds = %if.then43, %land.lhs.true, %if.end40
  %20 = load ptr, ptr %t, align 8, !dbg !1205
  call void @treetable_destroy(ptr noundef %20), !dbg !1206
  ret i32 0, !dbg !1207
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

!llvm.dbg.cu = !{!63, !83}
!llvm.ident = !{!86, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "Ex3SymbTestSuite/treetable_get_symb.c", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "b778ea56242055c70ffd469181b5e64c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 8)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 27, type: !3, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 52)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 38)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 120, elements: !32)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!32 = !{!33}
!33 = !DISubrange(count: 15)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 10)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 12)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 37)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 17)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !46, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !51, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 57)
!63 = distinct !DICompileUnit(language: DW_LANG_C11, file: !64, producer: "clang version 16.0.6 (https://github.com/llvm/llvm-project.git 7cbf1a2591520c2491aa35339f227775f4d3adf6)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !79, splitDebugInlining: false, nameTableKind: None)
!64 = !DIFile(filename: "../ex2/treetable.c", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "cd091c12d74f379a3d467a2d81b73c3b")
!65 = !{!66}
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cc_stat", file: !67, line: 29, baseType: !68, size: 32, elements: !69)
!67 = !DIFile(filename: "../ex2/common.h", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "e8c1045b469e28a9ccd16d92bf989e73")
!68 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78}
!70 = !DIEnumerator(name: "CC_OK", value: 0)
!71 = !DIEnumerator(name: "CC_ERR_ALLOC", value: 1)
!72 = !DIEnumerator(name: "CC_ERR_INVALID_CAPACITY", value: 2)
!73 = !DIEnumerator(name: "CC_ERR_INVALID_RANGE", value: 3)
!74 = !DIEnumerator(name: "CC_ERR_MAX_CAPACITY", value: 4)
!75 = !DIEnumerator(name: "CC_ERR_KEY_NOT_FOUND", value: 6)
!76 = !DIEnumerator(name: "CC_ERR_VALUE_NOT_FOUND", value: 7)
!77 = !DIEnumerator(name: "CC_ERR_OUT_OF_RANGE", value: 8)
!78 = !DIEnumerator(name: "CC_ITER_END", value: 9)
!79 = !{!80, !82}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.6 (https://github.com/llvm/llvm-project.git 7cbf1a2591520c2491aa35339f227775f4d3adf6)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !84, globals: !85, splitDebugInlining: false, nameTableKind: None)
!84 = !{!80}
!85 = !{!0, !7, !9, !14, !16, !18, !23, !28, !34, !39, !44, !49, !54, !56, !58}
!86 = !{!"clang version 16.0.6 (https://github.com/llvm/llvm-project.git 7cbf1a2591520c2491aa35339f227775f4d3adf6)"}
!87 = !{i32 7, !"Dwarf Version", i32 5}
!88 = !{i32 2, !"Debug Info Version", i32 3}
!89 = !{i32 1, !"wchar_size", i32 4}
!90 = !{i32 8, !"PIC Level", i32 2}
!91 = !{i32 7, !"PIE Level", i32 2}
!92 = !{i32 7, !"uwtable", i32 2}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = distinct !DISubprogram(name: "cmp", scope: !64, file: !64, line: 53, type: !95, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!95 = !DISubroutineType(types: !96)
!96 = !{!81, !97, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!99 = !{}
!100 = !DILocalVariable(name: "e1", arg: 1, scope: !94, file: !64, line: 53, type: !97)
!101 = !DILocation(line: 53, column: 21, scope: !94)
!102 = !DILocalVariable(name: "e2", arg: 2, scope: !94, file: !64, line: 53, type: !97)
!103 = !DILocation(line: 53, column: 37, scope: !94)
!104 = !DILocalVariable(name: "i", scope: !94, file: !64, line: 54, type: !81)
!105 = !DILocation(line: 54, column: 9, scope: !94)
!106 = !DILocation(line: 54, column: 22, scope: !94)
!107 = !DILocation(line: 54, column: 13, scope: !94)
!108 = !DILocalVariable(name: "j", scope: !94, file: !64, line: 55, type: !81)
!109 = !DILocation(line: 55, column: 9, scope: !94)
!110 = !DILocation(line: 55, column: 22, scope: !94)
!111 = !DILocation(line: 55, column: 13, scope: !94)
!112 = !DILocation(line: 57, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !94, file: !64, line: 57, column: 9)
!114 = !DILocation(line: 57, column: 13, scope: !113)
!115 = !DILocation(line: 57, column: 11, scope: !113)
!116 = !DILocation(line: 57, column: 9, scope: !94)
!117 = !DILocation(line: 58, column: 9, scope: !113)
!118 = !DILocation(line: 59, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !94, file: !64, line: 59, column: 9)
!120 = !DILocation(line: 59, column: 14, scope: !119)
!121 = !DILocation(line: 59, column: 11, scope: !119)
!122 = !DILocation(line: 59, column: 9, scope: !94)
!123 = !DILocation(line: 60, column: 9, scope: !119)
!124 = !DILocation(line: 61, column: 5, scope: !94)
!125 = !DILocation(line: 62, column: 1, scope: !94)
!126 = distinct !DISubprogram(name: "treetable_conf_init", scope: !64, file: !64, line: 70, type: !127, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "TreeTableConf", file: !131, line: 94, baseType: !132)
!131 = !DIFile(filename: "../ex2/treetable.h", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "065f0d2b52ad730b442c75c554f59b69")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "treetable_conf_s", file: !131, line: 89, size: 256, elements: !133)
!133 = !{!134, !136, !143, !147}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !132, file: !131, line: 90, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "mem_alloc", scope: !132, file: !131, line: 91, baseType: !137, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!82, !140}
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 46, baseType: !142)
!141 = !DIFile(filename: "/tmp/llvm-160-install_O_D_A/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!142 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mem_calloc", scope: !132, file: !131, line: 92, baseType: !144, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!82, !140, !140}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mem_free", scope: !132, file: !131, line: 93, baseType: !148, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !82}
!151 = !DILocalVariable(name: "conf", arg: 1, scope: !126, file: !64, line: 70, type: !129)
!152 = !DILocation(line: 70, column: 41, scope: !126)
!153 = !DILocation(line: 72, column: 5, scope: !126)
!154 = !DILocation(line: 72, column: 11, scope: !126)
!155 = !DILocation(line: 72, column: 22, scope: !126)
!156 = !DILocation(line: 73, column: 5, scope: !126)
!157 = !DILocation(line: 73, column: 11, scope: !126)
!158 = !DILocation(line: 73, column: 22, scope: !126)
!159 = !DILocation(line: 74, column: 5, scope: !126)
!160 = !DILocation(line: 74, column: 11, scope: !126)
!161 = !DILocation(line: 74, column: 22, scope: !126)
!162 = !DILocation(line: 75, column: 5, scope: !126)
!163 = !DILocation(line: 75, column: 11, scope: !126)
!164 = !DILocation(line: 75, column: 22, scope: !126)
!165 = !DILocation(line: 76, column: 1, scope: !126)
!166 = distinct !DISubprogram(name: "treetable_new", scope: !64, file: !64, line: 87, type: !167, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!167 = !DISubroutineType(types: !168)
!168 = !{!66, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "TreeTable", file: !131, line: 30, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "treetable_s", file: !64, line: 30, size: 448, elements: !173)
!173 = !{!174, !186, !187, !188, !189, !190, !191}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !172, file: !64, line: 31, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "RBNode", file: !131, line: 61, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode_s", file: !131, line: 37, size: 384, elements: !178)
!178 = !{!179, !180, !181, !182, !184, !185}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !177, file: !131, line: 40, baseType: !82, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !177, file: !131, line: 44, baseType: !82, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !177, file: !131, line: 48, baseType: !4, size: 8, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !177, file: !131, line: 52, baseType: !183, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !177, file: !131, line: 56, baseType: !183, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !177, file: !131, line: 60, baseType: !183, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !172, file: !64, line: 32, baseType: !175, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !172, file: !64, line: 33, baseType: !140, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !172, file: !64, line: 35, baseType: !135, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "mem_alloc", scope: !172, file: !64, line: 36, baseType: !137, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mem_calloc", scope: !172, file: !64, line: 37, baseType: !144, size: 64, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "mem_free", scope: !172, file: !64, line: 38, baseType: !148, size: 64, offset: 384)
!192 = !DILocalVariable(name: "tt", arg: 1, scope: !166, file: !64, line: 87, type: !169)
!193 = !DILocation(line: 87, column: 40, scope: !166)
!194 = !DILocalVariable(name: "conf", scope: !166, file: !64, line: 89, type: !130)
!195 = !DILocation(line: 89, column: 19, scope: !166)
!196 = !DILocation(line: 90, column: 5, scope: !166)
!197 = !DILocation(line: 91, column: 38, scope: !166)
!198 = !DILocation(line: 91, column: 12, scope: !166)
!199 = !DILocation(line: 91, column: 5, scope: !166)
!200 = distinct !DISubprogram(name: "treetable_new_conf", scope: !64, file: !64, line: 107, type: !201, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!201 = !DISubroutineType(types: !202)
!202 = !{!66, !203, !169}
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!206 = !DILocalVariable(name: "conf", arg: 1, scope: !200, file: !64, line: 107, type: !203)
!207 = !DILocation(line: 107, column: 61, scope: !200)
!208 = !DILocalVariable(name: "tt", arg: 2, scope: !200, file: !64, line: 107, type: !169)
!209 = !DILocation(line: 107, column: 79, scope: !200)
!210 = !DILocalVariable(name: "table", scope: !200, file: !64, line: 109, type: !170)
!211 = !DILocation(line: 109, column: 16, scope: !200)
!212 = !DILocation(line: 109, column: 24, scope: !200)
!213 = !DILocation(line: 109, column: 30, scope: !200)
!214 = !DILocation(line: 111, column: 10, scope: !215)
!215 = distinct !DILexicalBlock(scope: !200, file: !64, line: 111, column: 9)
!216 = !DILocation(line: 111, column: 9, scope: !200)
!217 = !DILocation(line: 112, column: 9, scope: !215)
!218 = !DILocalVariable(name: "sentinel", scope: !200, file: !64, line: 114, type: !175)
!219 = !DILocation(line: 114, column: 13, scope: !200)
!220 = !DILocation(line: 114, column: 24, scope: !200)
!221 = !DILocation(line: 114, column: 30, scope: !200)
!222 = !DILocation(line: 116, column: 10, scope: !223)
!223 = distinct !DILexicalBlock(scope: !200, file: !64, line: 116, column: 9)
!224 = !DILocation(line: 116, column: 9, scope: !200)
!225 = !DILocation(line: 117, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !64, line: 116, column: 20)
!227 = !DILocation(line: 117, column: 15, scope: !226)
!228 = !DILocation(line: 117, column: 24, scope: !226)
!229 = !DILocation(line: 118, column: 9, scope: !226)
!230 = !DILocation(line: 121, column: 5, scope: !200)
!231 = !DILocation(line: 121, column: 15, scope: !200)
!232 = !DILocation(line: 121, column: 23, scope: !200)
!233 = !DILocation(line: 123, column: 5, scope: !200)
!234 = !DILocation(line: 123, column: 12, scope: !200)
!235 = !DILocation(line: 123, column: 23, scope: !200)
!236 = !DILocation(line: 124, column: 25, scope: !200)
!237 = !DILocation(line: 124, column: 31, scope: !200)
!238 = !DILocation(line: 124, column: 5, scope: !200)
!239 = !DILocation(line: 124, column: 12, scope: !200)
!240 = !DILocation(line: 124, column: 23, scope: !200)
!241 = !DILocation(line: 125, column: 25, scope: !200)
!242 = !DILocation(line: 125, column: 31, scope: !200)
!243 = !DILocation(line: 125, column: 5, scope: !200)
!244 = !DILocation(line: 125, column: 12, scope: !200)
!245 = !DILocation(line: 125, column: 23, scope: !200)
!246 = !DILocation(line: 126, column: 25, scope: !200)
!247 = !DILocation(line: 126, column: 31, scope: !200)
!248 = !DILocation(line: 126, column: 5, scope: !200)
!249 = !DILocation(line: 126, column: 12, scope: !200)
!250 = !DILocation(line: 126, column: 23, scope: !200)
!251 = !DILocation(line: 127, column: 25, scope: !200)
!252 = !DILocation(line: 127, column: 31, scope: !200)
!253 = !DILocation(line: 127, column: 5, scope: !200)
!254 = !DILocation(line: 127, column: 12, scope: !200)
!255 = !DILocation(line: 127, column: 23, scope: !200)
!256 = !DILocation(line: 128, column: 25, scope: !200)
!257 = !DILocation(line: 128, column: 5, scope: !200)
!258 = !DILocation(line: 128, column: 12, scope: !200)
!259 = !DILocation(line: 128, column: 23, scope: !200)
!260 = !DILocation(line: 129, column: 25, scope: !200)
!261 = !DILocation(line: 129, column: 5, scope: !200)
!262 = !DILocation(line: 129, column: 12, scope: !200)
!263 = !DILocation(line: 129, column: 23, scope: !200)
!264 = !DILocation(line: 131, column: 11, scope: !200)
!265 = !DILocation(line: 131, column: 6, scope: !200)
!266 = !DILocation(line: 131, column: 9, scope: !200)
!267 = !DILocation(line: 132, column: 5, scope: !200)
!268 = !DILocation(line: 133, column: 1, scope: !200)
!269 = distinct !DISubprogram(name: "treetable_destroy", scope: !64, file: !64, line: 159, type: !270, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !170}
!272 = !DILocalVariable(name: "table", arg: 1, scope: !269, file: !64, line: 159, type: !170)
!273 = !DILocation(line: 159, column: 35, scope: !269)
!274 = !DILocation(line: 161, column: 18, scope: !269)
!275 = !DILocation(line: 161, column: 25, scope: !269)
!276 = !DILocation(line: 161, column: 32, scope: !269)
!277 = !DILocation(line: 161, column: 5, scope: !269)
!278 = !DILocation(line: 163, column: 5, scope: !269)
!279 = !DILocation(line: 163, column: 12, scope: !269)
!280 = !DILocation(line: 163, column: 21, scope: !269)
!281 = !DILocation(line: 163, column: 28, scope: !269)
!282 = !DILocation(line: 164, column: 5, scope: !269)
!283 = !DILocation(line: 164, column: 12, scope: !269)
!284 = !DILocation(line: 164, column: 21, scope: !269)
!285 = !DILocation(line: 165, column: 1, scope: !269)
!286 = distinct !DISubprogram(name: "tree_destroy", scope: !64, file: !64, line: 141, type: !287, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !99)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !170, !175}
!289 = !DILocalVariable(name: "table", arg: 1, scope: !286, file: !64, line: 141, type: !170)
!290 = !DILocation(line: 141, column: 37, scope: !286)
!291 = !DILocalVariable(name: "n", arg: 2, scope: !286, file: !64, line: 141, type: !175)
!292 = !DILocation(line: 141, column: 52, scope: !286)
!293 = !DILocation(line: 143, column: 9, scope: !294)
!294 = distinct !DILexicalBlock(scope: !286, file: !64, line: 143, column: 9)
!295 = !DILocation(line: 143, column: 14, scope: !294)
!296 = !DILocation(line: 143, column: 21, scope: !294)
!297 = !DILocation(line: 143, column: 11, scope: !294)
!298 = !DILocation(line: 143, column: 9, scope: !286)
!299 = !DILocation(line: 146, column: 18, scope: !286)
!300 = !DILocation(line: 146, column: 25, scope: !286)
!301 = !DILocation(line: 146, column: 28, scope: !286)
!302 = !DILocation(line: 146, column: 5, scope: !286)
!303 = !DILocation(line: 147, column: 18, scope: !286)
!304 = !DILocation(line: 147, column: 25, scope: !286)
!305 = !DILocation(line: 147, column: 28, scope: !286)
!306 = !DILocation(line: 147, column: 5, scope: !286)
!307 = !DILocation(line: 149, column: 5, scope: !286)
!308 = !DILocation(line: 149, column: 12, scope: !286)
!309 = !DILocation(line: 149, column: 21, scope: !286)
!310 = !DILocation(line: 150, column: 1, scope: !286)
!311 = distinct !DISubprogram(name: "treetable_get", scope: !64, file: !64, line: 177, type: !312, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!312 = !DISubroutineType(types: !313)
!313 = !{!66, !314, !97, !317}
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!318 = !DILocalVariable(name: "table", arg: 1, scope: !311, file: !64, line: 177, type: !314)
!319 = !DILocation(line: 177, column: 52, scope: !311)
!320 = !DILocalVariable(name: "key", arg: 2, scope: !311, file: !64, line: 177, type: !97)
!321 = !DILocation(line: 177, column: 71, scope: !311)
!322 = !DILocalVariable(name: "out", arg: 3, scope: !311, file: !64, line: 177, type: !317)
!323 = !DILocation(line: 177, column: 83, scope: !311)
!324 = !DILocalVariable(name: "node", scope: !311, file: !64, line: 179, type: !175)
!325 = !DILocation(line: 179, column: 13, scope: !311)
!326 = !DILocation(line: 179, column: 41, scope: !311)
!327 = !DILocation(line: 179, column: 48, scope: !311)
!328 = !DILocation(line: 179, column: 20, scope: !311)
!329 = !DILocation(line: 181, column: 10, scope: !330)
!330 = distinct !DILexicalBlock(scope: !311, file: !64, line: 181, column: 9)
!331 = !DILocation(line: 181, column: 9, scope: !311)
!332 = !DILocation(line: 182, column: 9, scope: !330)
!333 = !DILocation(line: 184, column: 12, scope: !311)
!334 = !DILocation(line: 184, column: 18, scope: !311)
!335 = !DILocation(line: 184, column: 6, scope: !311)
!336 = !DILocation(line: 184, column: 10, scope: !311)
!337 = !DILocation(line: 185, column: 5, scope: !311)
!338 = !DILocation(line: 186, column: 1, scope: !311)
!339 = distinct !DISubprogram(name: "get_tree_node_by_key", scope: !64, file: !64, line: 473, type: !340, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !99)
!340 = !DISubroutineType(types: !341)
!341 = !{!175, !314, !97}
!342 = !DILocalVariable(name: "table", arg: 1, scope: !339, file: !64, line: 473, type: !314)
!343 = !DILocation(line: 473, column: 61, scope: !339)
!344 = !DILocalVariable(name: "key", arg: 2, scope: !339, file: !64, line: 473, type: !97)
!345 = !DILocation(line: 473, column: 80, scope: !339)
!346 = !DILocation(line: 475, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !339, file: !64, line: 475, column: 9)
!348 = !DILocation(line: 475, column: 16, scope: !347)
!349 = !DILocation(line: 475, column: 21, scope: !347)
!350 = !DILocation(line: 475, column: 9, scope: !339)
!351 = !DILocation(line: 476, column: 9, scope: !347)
!352 = !DILocalVariable(name: "n", scope: !339, file: !64, line: 478, type: !175)
!353 = !DILocation(line: 478, column: 13, scope: !339)
!354 = !DILocation(line: 478, column: 17, scope: !339)
!355 = !DILocation(line: 478, column: 24, scope: !339)
!356 = !DILocalVariable(name: "s", scope: !339, file: !64, line: 479, type: !175)
!357 = !DILocation(line: 479, column: 13, scope: !339)
!358 = !DILocation(line: 479, column: 17, scope: !339)
!359 = !DILocation(line: 479, column: 24, scope: !339)
!360 = !DILocalVariable(name: "cmp", scope: !339, file: !64, line: 481, type: !81)
!361 = !DILocation(line: 481, column: 9, scope: !339)
!362 = !DILocation(line: 482, column: 5, scope: !339)
!363 = !DILocation(line: 483, column: 15, scope: !364)
!364 = distinct !DILexicalBlock(scope: !339, file: !64, line: 482, column: 8)
!365 = !DILocation(line: 483, column: 22, scope: !364)
!366 = !DILocation(line: 483, column: 26, scope: !364)
!367 = !DILocation(line: 483, column: 31, scope: !364)
!368 = !DILocation(line: 483, column: 34, scope: !364)
!369 = !DILocation(line: 483, column: 13, scope: !364)
!370 = !DILocation(line: 485, column: 13, scope: !371)
!371 = distinct !DILexicalBlock(scope: !364, file: !64, line: 485, column: 13)
!372 = !DILocation(line: 485, column: 17, scope: !371)
!373 = !DILocation(line: 485, column: 13, scope: !364)
!374 = !DILocation(line: 486, column: 17, scope: !371)
!375 = !DILocation(line: 486, column: 20, scope: !371)
!376 = !DILocation(line: 486, column: 15, scope: !371)
!377 = !DILocation(line: 486, column: 13, scope: !371)
!378 = !DILocation(line: 487, column: 18, scope: !379)
!379 = distinct !DILexicalBlock(scope: !371, file: !64, line: 487, column: 18)
!380 = !DILocation(line: 487, column: 22, scope: !379)
!381 = !DILocation(line: 487, column: 18, scope: !371)
!382 = !DILocation(line: 488, column: 17, scope: !379)
!383 = !DILocation(line: 488, column: 20, scope: !379)
!384 = !DILocation(line: 488, column: 15, scope: !379)
!385 = !DILocation(line: 490, column: 20, scope: !379)
!386 = !DILocation(line: 490, column: 13, scope: !379)
!387 = !DILocation(line: 491, column: 14, scope: !339)
!388 = !DILocation(line: 491, column: 19, scope: !339)
!389 = !DILocation(line: 491, column: 16, scope: !339)
!390 = !DILocation(line: 491, column: 21, scope: !339)
!391 = !DILocation(line: 491, column: 5, scope: !364)
!392 = distinct !{!392, !362, !393, !394}
!393 = !DILocation(line: 491, column: 32, scope: !339)
!394 = !{!"llvm.loop.mustprogress"}
!395 = !DILocation(line: 493, column: 5, scope: !339)
!396 = !DILocation(line: 494, column: 1, scope: !339)
!397 = distinct !DISubprogram(name: "treetable_get_first_key", scope: !64, file: !64, line: 198, type: !398, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!398 = !DISubroutineType(types: !399)
!399 = !{!66, !314, !317}
!400 = !DILocalVariable(name: "table", arg: 1, scope: !397, file: !64, line: 198, type: !314)
!401 = !DILocation(line: 198, column: 62, scope: !397)
!402 = !DILocalVariable(name: "out", arg: 2, scope: !397, file: !64, line: 198, type: !317)
!403 = !DILocation(line: 198, column: 76, scope: !397)
!404 = !DILocalVariable(name: "node", scope: !397, file: !64, line: 200, type: !175)
!405 = !DILocation(line: 200, column: 13, scope: !397)
!406 = !DILocation(line: 200, column: 29, scope: !397)
!407 = !DILocation(line: 200, column: 36, scope: !397)
!408 = !DILocation(line: 200, column: 43, scope: !397)
!409 = !DILocation(line: 200, column: 20, scope: !397)
!410 = !DILocation(line: 202, column: 9, scope: !411)
!411 = distinct !DILexicalBlock(scope: !397, file: !64, line: 202, column: 9)
!412 = !DILocation(line: 202, column: 17, scope: !411)
!413 = !DILocation(line: 202, column: 24, scope: !411)
!414 = !DILocation(line: 202, column: 14, scope: !411)
!415 = !DILocation(line: 202, column: 9, scope: !397)
!416 = !DILocation(line: 203, column: 16, scope: !417)
!417 = distinct !DILexicalBlock(scope: !411, file: !64, line: 202, column: 34)
!418 = !DILocation(line: 203, column: 22, scope: !417)
!419 = !DILocation(line: 203, column: 10, scope: !417)
!420 = !DILocation(line: 203, column: 14, scope: !417)
!421 = !DILocation(line: 204, column: 9, scope: !417)
!422 = !DILocation(line: 206, column: 5, scope: !397)
!423 = !DILocation(line: 207, column: 1, scope: !397)
!424 = distinct !DISubprogram(name: "tree_min", scope: !64, file: !64, line: 389, type: !425, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !99)
!425 = !DISubroutineType(types: !426)
!426 = !{!175, !314, !175}
!427 = !DILocalVariable(name: "table", arg: 1, scope: !424, file: !64, line: 389, type: !314)
!428 = !DILocation(line: 389, column: 56, scope: !424)
!429 = !DILocalVariable(name: "n", arg: 2, scope: !424, file: !64, line: 389, type: !175)
!430 = !DILocation(line: 389, column: 71, scope: !424)
!431 = !DILocalVariable(name: "s", scope: !424, file: !64, line: 391, type: !175)
!432 = !DILocation(line: 391, column: 13, scope: !424)
!433 = !DILocation(line: 391, column: 17, scope: !424)
!434 = !DILocation(line: 391, column: 24, scope: !424)
!435 = !DILocation(line: 393, column: 5, scope: !424)
!436 = !DILocation(line: 393, column: 12, scope: !424)
!437 = !DILocation(line: 393, column: 15, scope: !424)
!438 = !DILocation(line: 393, column: 23, scope: !424)
!439 = !DILocation(line: 393, column: 20, scope: !424)
!440 = !DILocation(line: 394, column: 13, scope: !424)
!441 = !DILocation(line: 394, column: 16, scope: !424)
!442 = !DILocation(line: 394, column: 11, scope: !424)
!443 = distinct !{!443, !435, !441, !394}
!444 = !DILocation(line: 395, column: 12, scope: !424)
!445 = !DILocation(line: 395, column: 5, scope: !424)
!446 = distinct !DISubprogram(name: "treetable_get_greater_than", scope: !64, file: !64, line: 219, type: !312, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!447 = !DILocalVariable(name: "table", arg: 1, scope: !446, file: !64, line: 219, type: !314)
!448 = !DILocation(line: 219, column: 65, scope: !446)
!449 = !DILocalVariable(name: "key", arg: 2, scope: !446, file: !64, line: 219, type: !97)
!450 = !DILocation(line: 219, column: 84, scope: !446)
!451 = !DILocalVariable(name: "out", arg: 3, scope: !446, file: !64, line: 219, type: !317)
!452 = !DILocation(line: 219, column: 96, scope: !446)
!453 = !DILocalVariable(name: "n", scope: !446, file: !64, line: 221, type: !175)
!454 = !DILocation(line: 221, column: 13, scope: !446)
!455 = !DILocation(line: 221, column: 38, scope: !446)
!456 = !DILocation(line: 221, column: 45, scope: !446)
!457 = !DILocation(line: 221, column: 17, scope: !446)
!458 = !DILocalVariable(name: "s", scope: !446, file: !64, line: 222, type: !175)
!459 = !DILocation(line: 222, column: 13, scope: !446)
!460 = !DILocation(line: 222, column: 36, scope: !446)
!461 = !DILocation(line: 222, column: 43, scope: !446)
!462 = !DILocation(line: 222, column: 17, scope: !446)
!463 = !DILocation(line: 224, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !446, file: !64, line: 224, column: 9)
!465 = !DILocation(line: 224, column: 11, scope: !464)
!466 = !DILocation(line: 225, column: 16, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !64, line: 224, column: 17)
!468 = !DILocation(line: 225, column: 19, scope: !467)
!469 = !DILocation(line: 225, column: 10, scope: !467)
!470 = !DILocation(line: 225, column: 14, scope: !467)
!471 = !DILocation(line: 226, column: 9, scope: !467)
!472 = !DILocation(line: 228, column: 5, scope: !446)
!473 = !DILocation(line: 229, column: 1, scope: !446)
!474 = distinct !DISubprogram(name: "get_successor_node", scope: !64, file: !64, line: 504, type: !425, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !99)
!475 = !DILocalVariable(name: "table", arg: 1, scope: !474, file: !64, line: 504, type: !314)
!476 = !DILocation(line: 504, column: 59, scope: !474)
!477 = !DILocalVariable(name: "x", arg: 2, scope: !474, file: !64, line: 504, type: !175)
!478 = !DILocation(line: 504, column: 74, scope: !474)
!479 = !DILocation(line: 506, column: 9, scope: !480)
!480 = distinct !DILexicalBlock(scope: !474, file: !64, line: 506, column: 9)
!481 = !DILocation(line: 506, column: 11, scope: !480)
!482 = !DILocation(line: 506, column: 9, scope: !474)
!483 = !DILocation(line: 507, column: 9, scope: !480)
!484 = !DILocation(line: 509, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !474, file: !64, line: 509, column: 9)
!486 = !DILocation(line: 509, column: 12, scope: !485)
!487 = !DILocation(line: 509, column: 21, scope: !485)
!488 = !DILocation(line: 509, column: 28, scope: !485)
!489 = !DILocation(line: 509, column: 18, scope: !485)
!490 = !DILocation(line: 509, column: 9, scope: !474)
!491 = !DILocation(line: 510, column: 25, scope: !485)
!492 = !DILocation(line: 510, column: 32, scope: !485)
!493 = !DILocation(line: 510, column: 35, scope: !485)
!494 = !DILocation(line: 510, column: 16, scope: !485)
!495 = !DILocation(line: 510, column: 9, scope: !485)
!496 = !DILocalVariable(name: "y", scope: !474, file: !64, line: 512, type: !175)
!497 = !DILocation(line: 512, column: 13, scope: !474)
!498 = !DILocation(line: 512, column: 17, scope: !474)
!499 = !DILocation(line: 512, column: 20, scope: !474)
!500 = !DILocation(line: 514, column: 5, scope: !474)
!501 = !DILocation(line: 514, column: 12, scope: !474)
!502 = !DILocation(line: 514, column: 17, scope: !474)
!503 = !DILocation(line: 514, column: 24, scope: !474)
!504 = !DILocation(line: 514, column: 14, scope: !474)
!505 = !DILocation(line: 514, column: 33, scope: !474)
!506 = !DILocation(line: 514, column: 36, scope: !474)
!507 = !DILocation(line: 514, column: 41, scope: !474)
!508 = !DILocation(line: 514, column: 44, scope: !474)
!509 = !DILocation(line: 514, column: 38, scope: !474)
!510 = !DILocation(line: 515, column: 13, scope: !511)
!511 = distinct !DILexicalBlock(scope: !474, file: !64, line: 514, column: 51)
!512 = !DILocation(line: 515, column: 11, scope: !511)
!513 = !DILocation(line: 516, column: 13, scope: !511)
!514 = !DILocation(line: 516, column: 16, scope: !511)
!515 = !DILocation(line: 516, column: 11, scope: !511)
!516 = distinct !{!516, !500, !517, !394}
!517 = !DILocation(line: 517, column: 5, scope: !474)
!518 = !DILocation(line: 518, column: 12, scope: !474)
!519 = !DILocation(line: 518, column: 5, scope: !474)
!520 = !DILocation(line: 519, column: 1, scope: !474)
!521 = distinct !DISubprogram(name: "treetable_size", scope: !64, file: !64, line: 239, type: !522, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!522 = !DISubroutineType(types: !523)
!523 = !{!140, !314}
!524 = !DILocalVariable(name: "table", arg: 1, scope: !521, file: !64, line: 239, type: !314)
!525 = !DILocation(line: 239, column: 47, scope: !521)
!526 = !DILocation(line: 241, column: 12, scope: !521)
!527 = !DILocation(line: 241, column: 19, scope: !521)
!528 = !DILocation(line: 241, column: 5, scope: !521)
!529 = distinct !DISubprogram(name: "treetable_contains_key", scope: !64, file: !64, line: 252, type: !530, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!530 = !DISubroutineType(types: !531)
!531 = !{!532, !314, !97}
!532 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!533 = !DILocalVariable(name: "table", arg: 1, scope: !529, file: !64, line: 252, type: !314)
!534 = !DILocation(line: 252, column: 53, scope: !529)
!535 = !DILocalVariable(name: "key", arg: 2, scope: !529, file: !64, line: 252, type: !97)
!536 = !DILocation(line: 252, column: 72, scope: !529)
!537 = !DILocalVariable(name: "node", scope: !529, file: !64, line: 254, type: !175)
!538 = !DILocation(line: 254, column: 13, scope: !529)
!539 = !DILocation(line: 254, column: 41, scope: !529)
!540 = !DILocation(line: 254, column: 48, scope: !529)
!541 = !DILocation(line: 254, column: 20, scope: !529)
!542 = !DILocation(line: 256, column: 9, scope: !543)
!543 = distinct !DILexicalBlock(scope: !529, file: !64, line: 256, column: 9)
!544 = !DILocation(line: 256, column: 9, scope: !529)
!545 = !DILocation(line: 257, column: 9, scope: !543)
!546 = !DILocation(line: 259, column: 5, scope: !529)
!547 = !DILocation(line: 260, column: 1, scope: !529)
!548 = distinct !DISubprogram(name: "treetable_contains_value", scope: !64, file: !64, line: 270, type: !549, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!549 = !DISubroutineType(types: !550)
!550 = !{!140, !314, !97}
!551 = !DILocalVariable(name: "table", arg: 1, scope: !548, file: !64, line: 270, type: !314)
!552 = !DILocation(line: 270, column: 57, scope: !548)
!553 = !DILocalVariable(name: "value", arg: 2, scope: !548, file: !64, line: 270, type: !97)
!554 = !DILocation(line: 270, column: 76, scope: !548)
!555 = !DILocalVariable(name: "node", scope: !548, file: !64, line: 272, type: !175)
!556 = !DILocation(line: 272, column: 13, scope: !548)
!557 = !DILocation(line: 272, column: 29, scope: !548)
!558 = !DILocation(line: 272, column: 36, scope: !548)
!559 = !DILocation(line: 272, column: 43, scope: !548)
!560 = !DILocation(line: 272, column: 20, scope: !548)
!561 = !DILocalVariable(name: "o", scope: !548, file: !64, line: 274, type: !140)
!562 = !DILocation(line: 274, column: 12, scope: !548)
!563 = !DILocation(line: 275, column: 5, scope: !548)
!564 = !DILocation(line: 275, column: 12, scope: !548)
!565 = !DILocation(line: 275, column: 20, scope: !548)
!566 = !DILocation(line: 275, column: 27, scope: !548)
!567 = !DILocation(line: 275, column: 17, scope: !548)
!568 = !DILocation(line: 276, column: 13, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !64, line: 276, column: 13)
!570 = distinct !DILexicalBlock(scope: !548, file: !64, line: 275, column: 37)
!571 = !DILocation(line: 276, column: 19, scope: !569)
!572 = !DILocation(line: 276, column: 28, scope: !569)
!573 = !DILocation(line: 276, column: 25, scope: !569)
!574 = !DILocation(line: 276, column: 13, scope: !570)
!575 = !DILocation(line: 277, column: 14, scope: !569)
!576 = !DILocation(line: 277, column: 13, scope: !569)
!577 = !DILocation(line: 278, column: 35, scope: !570)
!578 = !DILocation(line: 278, column: 42, scope: !570)
!579 = !DILocation(line: 278, column: 16, scope: !570)
!580 = !DILocation(line: 278, column: 14, scope: !570)
!581 = distinct !{!581, !563, !582, !394}
!582 = !DILocation(line: 279, column: 5, scope: !548)
!583 = !DILocation(line: 280, column: 12, scope: !548)
!584 = !DILocation(line: 280, column: 5, scope: !548)
!585 = distinct !DISubprogram(name: "treetable_add", scope: !64, file: !64, line: 297, type: !586, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!586 = !DISubroutineType(types: !587)
!587 = !{!66, !170, !82, !82}
!588 = !DILocalVariable(name: "table", arg: 1, scope: !585, file: !64, line: 297, type: !170)
!589 = !DILocation(line: 297, column: 39, scope: !585)
!590 = !DILocalVariable(name: "key", arg: 2, scope: !585, file: !64, line: 297, type: !82)
!591 = !DILocation(line: 297, column: 52, scope: !585)
!592 = !DILocalVariable(name: "val", arg: 3, scope: !585, file: !64, line: 297, type: !82)
!593 = !DILocation(line: 297, column: 63, scope: !585)
!594 = !DILocalVariable(name: "y", scope: !585, file: !64, line: 299, type: !175)
!595 = !DILocation(line: 299, column: 13, scope: !585)
!596 = !DILocation(line: 299, column: 17, scope: !585)
!597 = !DILocation(line: 299, column: 24, scope: !585)
!598 = !DILocalVariable(name: "x", scope: !585, file: !64, line: 300, type: !175)
!599 = !DILocation(line: 300, column: 13, scope: !585)
!600 = !DILocation(line: 300, column: 17, scope: !585)
!601 = !DILocation(line: 300, column: 24, scope: !585)
!602 = !DILocalVariable(name: "cmp", scope: !585, file: !64, line: 302, type: !81)
!603 = !DILocation(line: 302, column: 9, scope: !585)
!604 = !DILocation(line: 303, column: 5, scope: !585)
!605 = !DILocation(line: 303, column: 12, scope: !585)
!606 = !DILocation(line: 303, column: 17, scope: !585)
!607 = !DILocation(line: 303, column: 24, scope: !585)
!608 = !DILocation(line: 303, column: 14, scope: !585)
!609 = !DILocation(line: 304, column: 15, scope: !610)
!610 = distinct !DILexicalBlock(scope: !585, file: !64, line: 303, column: 34)
!611 = !DILocation(line: 304, column: 22, scope: !610)
!612 = !DILocation(line: 304, column: 26, scope: !610)
!613 = !DILocation(line: 304, column: 31, scope: !610)
!614 = !DILocation(line: 304, column: 34, scope: !610)
!615 = !DILocation(line: 304, column: 13, scope: !610)
!616 = !DILocation(line: 305, column: 15, scope: !610)
!617 = !DILocation(line: 305, column: 13, scope: !610)
!618 = !DILocation(line: 307, column: 13, scope: !619)
!619 = distinct !DILexicalBlock(scope: !610, file: !64, line: 307, column: 13)
!620 = !DILocation(line: 307, column: 17, scope: !619)
!621 = !DILocation(line: 307, column: 13, scope: !610)
!622 = !DILocation(line: 308, column: 17, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !64, line: 307, column: 22)
!624 = !DILocation(line: 308, column: 20, scope: !623)
!625 = !DILocation(line: 308, column: 15, scope: !623)
!626 = !DILocation(line: 309, column: 9, scope: !623)
!627 = !DILocation(line: 309, column: 20, scope: !628)
!628 = distinct !DILexicalBlock(scope: !619, file: !64, line: 309, column: 20)
!629 = !DILocation(line: 309, column: 24, scope: !628)
!630 = !DILocation(line: 309, column: 20, scope: !619)
!631 = !DILocation(line: 310, column: 17, scope: !632)
!632 = distinct !DILexicalBlock(scope: !628, file: !64, line: 309, column: 29)
!633 = !DILocation(line: 310, column: 20, scope: !632)
!634 = !DILocation(line: 310, column: 15, scope: !632)
!635 = !DILocation(line: 312, column: 24, scope: !636)
!636 = distinct !DILexicalBlock(scope: !628, file: !64, line: 311, column: 16)
!637 = !DILocation(line: 312, column: 13, scope: !636)
!638 = !DILocation(line: 312, column: 16, scope: !636)
!639 = !DILocation(line: 312, column: 22, scope: !636)
!640 = !DILocation(line: 313, column: 13, scope: !636)
!641 = distinct !{!641, !604, !642, !394}
!642 = !DILocation(line: 315, column: 5, scope: !585)
!643 = !DILocalVariable(name: "n", scope: !585, file: !64, line: 316, type: !175)
!644 = !DILocation(line: 316, column: 13, scope: !585)
!645 = !DILocation(line: 316, column: 17, scope: !585)
!646 = !DILocation(line: 316, column: 24, scope: !585)
!647 = !DILocation(line: 318, column: 17, scope: !585)
!648 = !DILocation(line: 318, column: 5, scope: !585)
!649 = !DILocation(line: 318, column: 8, scope: !585)
!650 = !DILocation(line: 318, column: 15, scope: !585)
!651 = !DILocation(line: 319, column: 17, scope: !585)
!652 = !DILocation(line: 319, column: 5, scope: !585)
!653 = !DILocation(line: 319, column: 8, scope: !585)
!654 = !DILocation(line: 319, column: 15, scope: !585)
!655 = !DILocation(line: 320, column: 17, scope: !585)
!656 = !DILocation(line: 320, column: 5, scope: !585)
!657 = !DILocation(line: 320, column: 8, scope: !585)
!658 = !DILocation(line: 320, column: 15, scope: !585)
!659 = !DILocation(line: 321, column: 17, scope: !585)
!660 = !DILocation(line: 321, column: 24, scope: !585)
!661 = !DILocation(line: 321, column: 5, scope: !585)
!662 = !DILocation(line: 321, column: 8, scope: !585)
!663 = !DILocation(line: 321, column: 15, scope: !585)
!664 = !DILocation(line: 322, column: 17, scope: !585)
!665 = !DILocation(line: 322, column: 24, scope: !585)
!666 = !DILocation(line: 322, column: 5, scope: !585)
!667 = !DILocation(line: 322, column: 8, scope: !585)
!668 = !DILocation(line: 322, column: 15, scope: !585)
!669 = !DILocation(line: 324, column: 5, scope: !585)
!670 = !DILocation(line: 324, column: 12, scope: !585)
!671 = !DILocation(line: 324, column: 16, scope: !585)
!672 = !DILocation(line: 326, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !585, file: !64, line: 326, column: 9)
!674 = !DILocation(line: 326, column: 14, scope: !673)
!675 = !DILocation(line: 326, column: 21, scope: !673)
!676 = !DILocation(line: 326, column: 11, scope: !673)
!677 = !DILocation(line: 326, column: 9, scope: !585)
!678 = !DILocation(line: 327, column: 23, scope: !679)
!679 = distinct !DILexicalBlock(scope: !673, file: !64, line: 326, column: 31)
!680 = !DILocation(line: 327, column: 9, scope: !679)
!681 = !DILocation(line: 327, column: 16, scope: !679)
!682 = !DILocation(line: 327, column: 21, scope: !679)
!683 = !DILocation(line: 328, column: 9, scope: !679)
!684 = !DILocation(line: 328, column: 12, scope: !679)
!685 = !DILocation(line: 328, column: 21, scope: !679)
!686 = !DILocation(line: 329, column: 5, scope: !679)
!687 = !DILocation(line: 330, column: 9, scope: !688)
!688 = distinct !DILexicalBlock(scope: !673, file: !64, line: 329, column: 12)
!689 = !DILocation(line: 330, column: 12, scope: !688)
!690 = !DILocation(line: 330, column: 18, scope: !688)
!691 = !DILocation(line: 331, column: 13, scope: !692)
!692 = distinct !DILexicalBlock(scope: !688, file: !64, line: 331, column: 13)
!693 = !DILocation(line: 331, column: 20, scope: !692)
!694 = !DILocation(line: 331, column: 24, scope: !692)
!695 = !DILocation(line: 331, column: 29, scope: !692)
!696 = !DILocation(line: 331, column: 32, scope: !692)
!697 = !DILocation(line: 331, column: 37, scope: !692)
!698 = !DILocation(line: 331, column: 13, scope: !688)
!699 = !DILocation(line: 332, column: 23, scope: !700)
!700 = distinct !DILexicalBlock(scope: !692, file: !64, line: 331, column: 42)
!701 = !DILocation(line: 332, column: 13, scope: !700)
!702 = !DILocation(line: 332, column: 16, scope: !700)
!703 = !DILocation(line: 332, column: 21, scope: !700)
!704 = !DILocation(line: 333, column: 9, scope: !700)
!705 = !DILocation(line: 334, column: 24, scope: !706)
!706 = distinct !DILexicalBlock(scope: !692, file: !64, line: 333, column: 16)
!707 = !DILocation(line: 334, column: 13, scope: !706)
!708 = !DILocation(line: 334, column: 16, scope: !706)
!709 = !DILocation(line: 334, column: 22, scope: !706)
!710 = !DILocation(line: 336, column: 32, scope: !688)
!711 = !DILocation(line: 336, column: 39, scope: !688)
!712 = !DILocation(line: 336, column: 9, scope: !688)
!713 = !DILocation(line: 338, column: 5, scope: !585)
!714 = !DILocation(line: 339, column: 1, scope: !585)
!715 = distinct !DISubprogram(name: "rebalance_after_insert", scope: !64, file: !64, line: 347, type: !287, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !99)
!716 = !DILocalVariable(name: "table", arg: 1, scope: !715, file: !64, line: 347, type: !170)
!717 = !DILocation(line: 347, column: 47, scope: !715)
!718 = !DILocalVariable(name: "z", arg: 2, scope: !715, file: !64, line: 347, type: !175)
!719 = !DILocation(line: 347, column: 62, scope: !715)
!720 = !DILocalVariable(name: "y", scope: !715, file: !64, line: 349, type: !175)
!721 = !DILocation(line: 349, column: 13, scope: !715)
!722 = !DILocation(line: 351, column: 5, scope: !715)
!723 = !DILocation(line: 351, column: 12, scope: !715)
!724 = !DILocation(line: 351, column: 15, scope: !715)
!725 = !DILocation(line: 351, column: 23, scope: !715)
!726 = !DILocation(line: 351, column: 29, scope: !715)
!727 = !DILocation(line: 352, column: 13, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !64, line: 352, column: 13)
!729 = distinct !DILexicalBlock(scope: !715, file: !64, line: 351, column: 40)
!730 = !DILocation(line: 352, column: 16, scope: !728)
!731 = !DILocation(line: 352, column: 26, scope: !728)
!732 = !DILocation(line: 352, column: 29, scope: !728)
!733 = !DILocation(line: 352, column: 37, scope: !728)
!734 = !DILocation(line: 352, column: 45, scope: !728)
!735 = !DILocation(line: 352, column: 23, scope: !728)
!736 = !DILocation(line: 352, column: 13, scope: !729)
!737 = !DILocation(line: 353, column: 17, scope: !738)
!738 = distinct !DILexicalBlock(scope: !728, file: !64, line: 352, column: 51)
!739 = !DILocation(line: 353, column: 20, scope: !738)
!740 = !DILocation(line: 353, column: 28, scope: !738)
!741 = !DILocation(line: 353, column: 36, scope: !738)
!742 = !DILocation(line: 353, column: 15, scope: !738)
!743 = !DILocation(line: 354, column: 17, scope: !744)
!744 = distinct !DILexicalBlock(scope: !738, file: !64, line: 354, column: 17)
!745 = !DILocation(line: 354, column: 20, scope: !744)
!746 = !DILocation(line: 354, column: 26, scope: !744)
!747 = !DILocation(line: 354, column: 17, scope: !738)
!748 = !DILocation(line: 355, column: 17, scope: !749)
!749 = distinct !DILexicalBlock(scope: !744, file: !64, line: 354, column: 37)
!750 = !DILocation(line: 355, column: 20, scope: !749)
!751 = !DILocation(line: 355, column: 28, scope: !749)
!752 = !DILocation(line: 355, column: 42, scope: !749)
!753 = !DILocation(line: 356, column: 17, scope: !749)
!754 = !DILocation(line: 356, column: 20, scope: !749)
!755 = !DILocation(line: 356, column: 42, scope: !749)
!756 = !DILocation(line: 357, column: 17, scope: !749)
!757 = !DILocation(line: 357, column: 20, scope: !749)
!758 = !DILocation(line: 357, column: 28, scope: !749)
!759 = !DILocation(line: 357, column: 36, scope: !749)
!760 = !DILocation(line: 357, column: 42, scope: !749)
!761 = !DILocation(line: 358, column: 21, scope: !749)
!762 = !DILocation(line: 358, column: 24, scope: !749)
!763 = !DILocation(line: 358, column: 32, scope: !749)
!764 = !DILocation(line: 358, column: 19, scope: !749)
!765 = !DILocation(line: 359, column: 13, scope: !749)
!766 = !DILocation(line: 360, column: 21, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !64, line: 360, column: 21)
!768 = distinct !DILexicalBlock(scope: !744, file: !64, line: 359, column: 20)
!769 = !DILocation(line: 360, column: 26, scope: !767)
!770 = !DILocation(line: 360, column: 29, scope: !767)
!771 = !DILocation(line: 360, column: 37, scope: !767)
!772 = !DILocation(line: 360, column: 23, scope: !767)
!773 = !DILocation(line: 360, column: 21, scope: !768)
!774 = !DILocation(line: 361, column: 25, scope: !775)
!775 = distinct !DILexicalBlock(scope: !767, file: !64, line: 360, column: 44)
!776 = !DILocation(line: 361, column: 28, scope: !775)
!777 = !DILocation(line: 361, column: 23, scope: !775)
!778 = !DILocation(line: 362, column: 33, scope: !775)
!779 = !DILocation(line: 362, column: 40, scope: !775)
!780 = !DILocation(line: 362, column: 21, scope: !775)
!781 = !DILocation(line: 363, column: 17, scope: !775)
!782 = !DILocation(line: 364, column: 17, scope: !768)
!783 = !DILocation(line: 364, column: 20, scope: !768)
!784 = !DILocation(line: 364, column: 28, scope: !768)
!785 = !DILocation(line: 364, column: 42, scope: !768)
!786 = !DILocation(line: 365, column: 17, scope: !768)
!787 = !DILocation(line: 365, column: 20, scope: !768)
!788 = !DILocation(line: 365, column: 28, scope: !768)
!789 = !DILocation(line: 365, column: 36, scope: !768)
!790 = !DILocation(line: 365, column: 42, scope: !768)
!791 = !DILocation(line: 366, column: 30, scope: !768)
!792 = !DILocation(line: 366, column: 37, scope: !768)
!793 = !DILocation(line: 366, column: 40, scope: !768)
!794 = !DILocation(line: 366, column: 48, scope: !768)
!795 = !DILocation(line: 366, column: 17, scope: !768)
!796 = !DILocation(line: 369, column: 17, scope: !797)
!797 = distinct !DILexicalBlock(scope: !728, file: !64, line: 368, column: 16)
!798 = !DILocation(line: 369, column: 20, scope: !797)
!799 = !DILocation(line: 369, column: 28, scope: !797)
!800 = !DILocation(line: 369, column: 36, scope: !797)
!801 = !DILocation(line: 369, column: 15, scope: !797)
!802 = !DILocation(line: 370, column: 17, scope: !803)
!803 = distinct !DILexicalBlock(scope: !797, file: !64, line: 370, column: 17)
!804 = !DILocation(line: 370, column: 20, scope: !803)
!805 = !DILocation(line: 370, column: 26, scope: !803)
!806 = !DILocation(line: 370, column: 17, scope: !797)
!807 = !DILocation(line: 371, column: 17, scope: !808)
!808 = distinct !DILexicalBlock(scope: !803, file: !64, line: 370, column: 37)
!809 = !DILocation(line: 371, column: 20, scope: !808)
!810 = !DILocation(line: 371, column: 28, scope: !808)
!811 = !DILocation(line: 371, column: 42, scope: !808)
!812 = !DILocation(line: 372, column: 17, scope: !808)
!813 = !DILocation(line: 372, column: 20, scope: !808)
!814 = !DILocation(line: 372, column: 42, scope: !808)
!815 = !DILocation(line: 373, column: 17, scope: !808)
!816 = !DILocation(line: 373, column: 20, scope: !808)
!817 = !DILocation(line: 373, column: 28, scope: !808)
!818 = !DILocation(line: 373, column: 36, scope: !808)
!819 = !DILocation(line: 373, column: 42, scope: !808)
!820 = !DILocation(line: 374, column: 21, scope: !808)
!821 = !DILocation(line: 374, column: 24, scope: !808)
!822 = !DILocation(line: 374, column: 32, scope: !808)
!823 = !DILocation(line: 374, column: 19, scope: !808)
!824 = !DILocation(line: 375, column: 13, scope: !808)
!825 = !DILocation(line: 376, column: 21, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !64, line: 376, column: 21)
!827 = distinct !DILexicalBlock(scope: !803, file: !64, line: 375, column: 20)
!828 = !DILocation(line: 376, column: 26, scope: !826)
!829 = !DILocation(line: 376, column: 29, scope: !826)
!830 = !DILocation(line: 376, column: 37, scope: !826)
!831 = !DILocation(line: 376, column: 23, scope: !826)
!832 = !DILocation(line: 376, column: 21, scope: !827)
!833 = !DILocation(line: 377, column: 25, scope: !834)
!834 = distinct !DILexicalBlock(scope: !826, file: !64, line: 376, column: 43)
!835 = !DILocation(line: 377, column: 28, scope: !834)
!836 = !DILocation(line: 377, column: 23, scope: !834)
!837 = !DILocation(line: 378, column: 34, scope: !834)
!838 = !DILocation(line: 378, column: 41, scope: !834)
!839 = !DILocation(line: 378, column: 21, scope: !834)
!840 = !DILocation(line: 379, column: 17, scope: !834)
!841 = !DILocation(line: 380, column: 17, scope: !827)
!842 = !DILocation(line: 380, column: 20, scope: !827)
!843 = !DILocation(line: 380, column: 28, scope: !827)
!844 = !DILocation(line: 380, column: 42, scope: !827)
!845 = !DILocation(line: 381, column: 17, scope: !827)
!846 = !DILocation(line: 381, column: 20, scope: !827)
!847 = !DILocation(line: 381, column: 28, scope: !827)
!848 = !DILocation(line: 381, column: 36, scope: !827)
!849 = !DILocation(line: 381, column: 42, scope: !827)
!850 = !DILocation(line: 382, column: 29, scope: !827)
!851 = !DILocation(line: 382, column: 36, scope: !827)
!852 = !DILocation(line: 382, column: 39, scope: !827)
!853 = !DILocation(line: 382, column: 47, scope: !827)
!854 = !DILocation(line: 382, column: 17, scope: !827)
!855 = distinct !{!855, !722, !856, !394}
!856 = !DILocation(line: 385, column: 5, scope: !715)
!857 = !DILocation(line: 386, column: 5, scope: !715)
!858 = !DILocation(line: 386, column: 12, scope: !715)
!859 = !DILocation(line: 386, column: 18, scope: !715)
!860 = !DILocation(line: 386, column: 24, scope: !715)
!861 = !DILocation(line: 387, column: 1, scope: !715)
!862 = distinct !DISubprogram(name: "rotate_left", scope: !64, file: !64, line: 443, type: !287, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !99)
!863 = !DILocalVariable(name: "table", arg: 1, scope: !862, file: !64, line: 443, type: !170)
!864 = !DILocation(line: 443, column: 36, scope: !862)
!865 = !DILocalVariable(name: "x", arg: 2, scope: !862, file: !64, line: 443, type: !175)
!866 = !DILocation(line: 443, column: 51, scope: !862)
!867 = !DILocalVariable(name: "y", scope: !862, file: !64, line: 445, type: !175)
!868 = !DILocation(line: 445, column: 13, scope: !862)
!869 = !DILocation(line: 445, column: 17, scope: !862)
!870 = !DILocation(line: 445, column: 20, scope: !862)
!871 = !DILocation(line: 447, column: 16, scope: !862)
!872 = !DILocation(line: 447, column: 19, scope: !862)
!873 = !DILocation(line: 447, column: 5, scope: !862)
!874 = !DILocation(line: 447, column: 8, scope: !862)
!875 = !DILocation(line: 447, column: 14, scope: !862)
!876 = !DILocation(line: 449, column: 9, scope: !877)
!877 = distinct !DILexicalBlock(scope: !862, file: !64, line: 449, column: 9)
!878 = !DILocation(line: 449, column: 12, scope: !877)
!879 = !DILocation(line: 449, column: 20, scope: !877)
!880 = !DILocation(line: 449, column: 27, scope: !877)
!881 = !DILocation(line: 449, column: 17, scope: !877)
!882 = !DILocation(line: 449, column: 9, scope: !862)
!883 = !DILocation(line: 450, column: 27, scope: !877)
!884 = !DILocation(line: 450, column: 9, scope: !877)
!885 = !DILocation(line: 450, column: 12, scope: !877)
!886 = !DILocation(line: 450, column: 18, scope: !877)
!887 = !DILocation(line: 450, column: 25, scope: !877)
!888 = !DILocation(line: 452, column: 17, scope: !862)
!889 = !DILocation(line: 452, column: 20, scope: !862)
!890 = !DILocation(line: 452, column: 5, scope: !862)
!891 = !DILocation(line: 452, column: 8, scope: !862)
!892 = !DILocation(line: 452, column: 15, scope: !862)
!893 = !DILocation(line: 454, column: 9, scope: !894)
!894 = distinct !DILexicalBlock(scope: !862, file: !64, line: 454, column: 9)
!895 = !DILocation(line: 454, column: 12, scope: !894)
!896 = !DILocation(line: 454, column: 22, scope: !894)
!897 = !DILocation(line: 454, column: 29, scope: !894)
!898 = !DILocation(line: 454, column: 19, scope: !894)
!899 = !DILocation(line: 454, column: 9, scope: !862)
!900 = !DILocation(line: 455, column: 23, scope: !894)
!901 = !DILocation(line: 455, column: 9, scope: !894)
!902 = !DILocation(line: 455, column: 16, scope: !894)
!903 = !DILocation(line: 455, column: 21, scope: !894)
!904 = !DILocation(line: 456, column: 14, scope: !905)
!905 = distinct !DILexicalBlock(scope: !894, file: !64, line: 456, column: 14)
!906 = !DILocation(line: 456, column: 19, scope: !905)
!907 = !DILocation(line: 456, column: 22, scope: !905)
!908 = !DILocation(line: 456, column: 30, scope: !905)
!909 = !DILocation(line: 456, column: 16, scope: !905)
!910 = !DILocation(line: 456, column: 14, scope: !894)
!911 = !DILocation(line: 457, column: 27, scope: !905)
!912 = !DILocation(line: 457, column: 9, scope: !905)
!913 = !DILocation(line: 457, column: 12, scope: !905)
!914 = !DILocation(line: 457, column: 20, scope: !905)
!915 = !DILocation(line: 457, column: 25, scope: !905)
!916 = !DILocation(line: 459, column: 28, scope: !905)
!917 = !DILocation(line: 459, column: 9, scope: !905)
!918 = !DILocation(line: 459, column: 12, scope: !905)
!919 = !DILocation(line: 459, column: 20, scope: !905)
!920 = !DILocation(line: 459, column: 26, scope: !905)
!921 = !DILocation(line: 461, column: 17, scope: !862)
!922 = !DILocation(line: 461, column: 5, scope: !862)
!923 = !DILocation(line: 461, column: 8, scope: !862)
!924 = !DILocation(line: 461, column: 15, scope: !862)
!925 = !DILocation(line: 462, column: 17, scope: !862)
!926 = !DILocation(line: 462, column: 5, scope: !862)
!927 = !DILocation(line: 462, column: 8, scope: !862)
!928 = !DILocation(line: 462, column: 15, scope: !862)
!929 = !DILocation(line: 463, column: 1, scope: !862)
!930 = distinct !DISubprogram(name: "rotate_right", scope: !64, file: !64, line: 414, type: !287, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !99)
!931 = !DILocalVariable(name: "table", arg: 1, scope: !930, file: !64, line: 414, type: !170)
!932 = !DILocation(line: 414, column: 37, scope: !930)
!933 = !DILocalVariable(name: "x", arg: 2, scope: !930, file: !64, line: 414, type: !175)
!934 = !DILocation(line: 414, column: 52, scope: !930)
!935 = !DILocalVariable(name: "y", scope: !930, file: !64, line: 416, type: !175)
!936 = !DILocation(line: 416, column: 13, scope: !930)
!937 = !DILocation(line: 416, column: 17, scope: !930)
!938 = !DILocation(line: 416, column: 20, scope: !930)
!939 = !DILocation(line: 418, column: 15, scope: !930)
!940 = !DILocation(line: 418, column: 18, scope: !930)
!941 = !DILocation(line: 418, column: 5, scope: !930)
!942 = !DILocation(line: 418, column: 8, scope: !930)
!943 = !DILocation(line: 418, column: 13, scope: !930)
!944 = !DILocation(line: 420, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !930, file: !64, line: 420, column: 9)
!946 = !DILocation(line: 420, column: 12, scope: !945)
!947 = !DILocation(line: 420, column: 21, scope: !945)
!948 = !DILocation(line: 420, column: 28, scope: !945)
!949 = !DILocation(line: 420, column: 18, scope: !945)
!950 = !DILocation(line: 420, column: 9, scope: !930)
!951 = !DILocation(line: 421, column: 28, scope: !945)
!952 = !DILocation(line: 421, column: 9, scope: !945)
!953 = !DILocation(line: 421, column: 12, scope: !945)
!954 = !DILocation(line: 421, column: 19, scope: !945)
!955 = !DILocation(line: 421, column: 26, scope: !945)
!956 = !DILocation(line: 423, column: 17, scope: !930)
!957 = !DILocation(line: 423, column: 20, scope: !930)
!958 = !DILocation(line: 423, column: 5, scope: !930)
!959 = !DILocation(line: 423, column: 8, scope: !930)
!960 = !DILocation(line: 423, column: 15, scope: !930)
!961 = !DILocation(line: 425, column: 9, scope: !962)
!962 = distinct !DILexicalBlock(scope: !930, file: !64, line: 425, column: 9)
!963 = !DILocation(line: 425, column: 12, scope: !962)
!964 = !DILocation(line: 425, column: 22, scope: !962)
!965 = !DILocation(line: 425, column: 29, scope: !962)
!966 = !DILocation(line: 425, column: 19, scope: !962)
!967 = !DILocation(line: 425, column: 9, scope: !930)
!968 = !DILocation(line: 426, column: 23, scope: !962)
!969 = !DILocation(line: 426, column: 9, scope: !962)
!970 = !DILocation(line: 426, column: 16, scope: !962)
!971 = !DILocation(line: 426, column: 21, scope: !962)
!972 = !DILocation(line: 427, column: 14, scope: !973)
!973 = distinct !DILexicalBlock(scope: !962, file: !64, line: 427, column: 14)
!974 = !DILocation(line: 427, column: 19, scope: !973)
!975 = !DILocation(line: 427, column: 22, scope: !973)
!976 = !DILocation(line: 427, column: 30, scope: !973)
!977 = !DILocation(line: 427, column: 16, scope: !973)
!978 = !DILocation(line: 427, column: 14, scope: !962)
!979 = !DILocation(line: 428, column: 28, scope: !973)
!980 = !DILocation(line: 428, column: 9, scope: !973)
!981 = !DILocation(line: 428, column: 12, scope: !973)
!982 = !DILocation(line: 428, column: 20, scope: !973)
!983 = !DILocation(line: 428, column: 26, scope: !973)
!984 = !DILocation(line: 430, column: 27, scope: !973)
!985 = !DILocation(line: 430, column: 9, scope: !973)
!986 = !DILocation(line: 430, column: 12, scope: !973)
!987 = !DILocation(line: 430, column: 20, scope: !973)
!988 = !DILocation(line: 430, column: 25, scope: !973)
!989 = !DILocation(line: 432, column: 17, scope: !930)
!990 = !DILocation(line: 432, column: 5, scope: !930)
!991 = !DILocation(line: 432, column: 8, scope: !930)
!992 = !DILocation(line: 432, column: 15, scope: !930)
!993 = !DILocation(line: 433, column: 17, scope: !930)
!994 = !DILocation(line: 433, column: 5, scope: !930)
!995 = !DILocation(line: 433, column: 8, scope: !930)
!996 = !DILocation(line: 433, column: 15, scope: !930)
!997 = !DILocation(line: 434, column: 1, scope: !930)
!998 = distinct !DISubprogram(name: "balanced", scope: !64, file: !64, line: 547, type: !999, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!81, !170}
!1001 = !DILocalVariable(name: "t", arg: 1, scope: !998, file: !64, line: 547, type: !170)
!1002 = !DILocation(line: 547, column: 25, scope: !998)
!1003 = !DILocation(line: 548, column: 24, scope: !998)
!1004 = !DILocation(line: 548, column: 27, scope: !998)
!1005 = !DILocation(line: 548, column: 30, scope: !998)
!1006 = !DILocation(line: 548, column: 12, scope: !998)
!1007 = !DILocation(line: 548, column: 36, scope: !998)
!1008 = !DILocation(line: 548, column: 5, scope: !998)
!1009 = distinct !DISubprogram(name: "tree_height", scope: !64, file: !64, line: 526, type: !1010, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !99)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!81, !170, !175}
!1012 = !DILocalVariable(name: "t", arg: 1, scope: !1009, file: !64, line: 526, type: !170)
!1013 = !DILocation(line: 526, column: 35, scope: !1009)
!1014 = !DILocalVariable(name: "n", arg: 2, scope: !1009, file: !64, line: 526, type: !175)
!1015 = !DILocation(line: 526, column: 46, scope: !1009)
!1016 = !DILocation(line: 527, column: 9, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1009, file: !64, line: 527, column: 9)
!1018 = !DILocation(line: 527, column: 14, scope: !1017)
!1019 = !DILocation(line: 527, column: 17, scope: !1017)
!1020 = !DILocation(line: 527, column: 11, scope: !1017)
!1021 = !DILocation(line: 527, column: 9, scope: !1009)
!1022 = !DILocation(line: 528, column: 9, scope: !1017)
!1023 = !DILocalVariable(name: "left_h", scope: !1009, file: !64, line: 530, type: !81)
!1024 = !DILocation(line: 530, column: 9, scope: !1009)
!1025 = !DILocation(line: 530, column: 30, scope: !1009)
!1026 = !DILocation(line: 530, column: 33, scope: !1009)
!1027 = !DILocation(line: 530, column: 36, scope: !1009)
!1028 = !DILocation(line: 530, column: 18, scope: !1009)
!1029 = !DILocalVariable(name: "right_h", scope: !1009, file: !64, line: 531, type: !81)
!1030 = !DILocation(line: 531, column: 9, scope: !1009)
!1031 = !DILocation(line: 531, column: 31, scope: !1009)
!1032 = !DILocation(line: 531, column: 34, scope: !1009)
!1033 = !DILocation(line: 531, column: 37, scope: !1009)
!1034 = !DILocation(line: 531, column: 19, scope: !1009)
!1035 = !DILocation(line: 533, column: 9, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1009, file: !64, line: 533, column: 9)
!1037 = !DILocation(line: 533, column: 16, scope: !1036)
!1038 = !DILocation(line: 533, column: 22, scope: !1036)
!1039 = !DILocation(line: 534, column: 9, scope: !1036)
!1040 = !DILocalVariable(name: "diff", scope: !1009, file: !64, line: 536, type: !81)
!1041 = !DILocation(line: 536, column: 9, scope: !1009)
!1042 = !DILocation(line: 536, column: 16, scope: !1009)
!1043 = !DILocation(line: 536, column: 25, scope: !1009)
!1044 = !DILocation(line: 536, column: 23, scope: !1009)
!1045 = !DILocation(line: 537, column: 9, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1009, file: !64, line: 537, column: 9)
!1047 = !DILocation(line: 537, column: 14, scope: !1046)
!1048 = !DILocation(line: 537, column: 18, scope: !1046)
!1049 = !DILocation(line: 538, column: 9, scope: !1046)
!1050 = !DILocation(line: 540, column: 17, scope: !1009)
!1051 = !DILocation(line: 540, column: 26, scope: !1009)
!1052 = !DILocation(line: 540, column: 24, scope: !1009)
!1053 = !DILocation(line: 540, column: 14, scope: !1009)
!1054 = !DILocation(line: 540, column: 5, scope: !1009)
!1055 = !DILocation(line: 541, column: 1, scope: !1009)
!1056 = distinct !DISubprogram(name: "sorted", scope: !64, file: !64, line: 575, type: !999, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !63, retainedNodes: !99)
!1057 = !DILocalVariable(name: "t", arg: 1, scope: !1056, file: !64, line: 575, type: !170)
!1058 = !DILocation(line: 575, column: 23, scope: !1056)
!1059 = !DILocation(line: 576, column: 26, scope: !1056)
!1060 = !DILocation(line: 576, column: 29, scope: !1056)
!1061 = !DILocation(line: 576, column: 32, scope: !1056)
!1062 = !DILocation(line: 576, column: 12, scope: !1056)
!1063 = !DILocation(line: 576, column: 5, scope: !1056)
!1064 = distinct !DISubprogram(name: "sorted_helper", scope: !64, file: !64, line: 556, type: !1065, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !63, retainedNodes: !99)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!81, !170, !175, !82, !82}
!1067 = !DILocalVariable(name: "t", arg: 1, scope: !1064, file: !64, line: 556, type: !170)
!1068 = !DILocation(line: 556, column: 37, scope: !1064)
!1069 = !DILocalVariable(name: "n", arg: 2, scope: !1064, file: !64, line: 556, type: !175)
!1070 = !DILocation(line: 556, column: 48, scope: !1064)
!1071 = !DILocalVariable(name: "min", arg: 3, scope: !1064, file: !64, line: 556, type: !82)
!1072 = !DILocation(line: 556, column: 57, scope: !1064)
!1073 = !DILocalVariable(name: "max", arg: 4, scope: !1064, file: !64, line: 556, type: !82)
!1074 = !DILocation(line: 556, column: 68, scope: !1064)
!1075 = !DILocation(line: 557, column: 9, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1064, file: !64, line: 557, column: 9)
!1077 = !DILocation(line: 557, column: 14, scope: !1076)
!1078 = !DILocation(line: 557, column: 17, scope: !1076)
!1079 = !DILocation(line: 557, column: 11, scope: !1076)
!1080 = !DILocation(line: 557, column: 9, scope: !1064)
!1081 = !DILocation(line: 558, column: 9, scope: !1076)
!1082 = !DILocation(line: 560, column: 9, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1064, file: !64, line: 560, column: 9)
!1084 = !DILocation(line: 560, column: 13, scope: !1083)
!1085 = !DILocation(line: 560, column: 21, scope: !1083)
!1086 = !DILocation(line: 560, column: 24, scope: !1083)
!1087 = !DILocation(line: 560, column: 27, scope: !1083)
!1088 = !DILocation(line: 560, column: 31, scope: !1083)
!1089 = !DILocation(line: 560, column: 34, scope: !1083)
!1090 = !DILocation(line: 560, column: 39, scope: !1083)
!1091 = !DILocation(line: 560, column: 44, scope: !1083)
!1092 = !DILocation(line: 560, column: 9, scope: !1064)
!1093 = !DILocation(line: 561, column: 9, scope: !1083)
!1094 = !DILocation(line: 563, column: 9, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1064, file: !64, line: 563, column: 9)
!1096 = !DILocation(line: 563, column: 13, scope: !1095)
!1097 = !DILocation(line: 563, column: 21, scope: !1095)
!1098 = !DILocation(line: 563, column: 24, scope: !1095)
!1099 = !DILocation(line: 563, column: 27, scope: !1095)
!1100 = !DILocation(line: 563, column: 31, scope: !1095)
!1101 = !DILocation(line: 563, column: 34, scope: !1095)
!1102 = !DILocation(line: 563, column: 39, scope: !1095)
!1103 = !DILocation(line: 563, column: 44, scope: !1095)
!1104 = !DILocation(line: 563, column: 9, scope: !1064)
!1105 = !DILocation(line: 564, column: 9, scope: !1095)
!1106 = !DILocation(line: 566, column: 26, scope: !1064)
!1107 = !DILocation(line: 566, column: 29, scope: !1064)
!1108 = !DILocation(line: 566, column: 32, scope: !1064)
!1109 = !DILocation(line: 566, column: 39, scope: !1064)
!1110 = !DILocation(line: 566, column: 47, scope: !1064)
!1111 = !DILocation(line: 566, column: 50, scope: !1064)
!1112 = !DILocation(line: 566, column: 12, scope: !1064)
!1113 = !DILocation(line: 567, column: 9, scope: !1064)
!1114 = !DILocation(line: 567, column: 26, scope: !1064)
!1115 = !DILocation(line: 567, column: 29, scope: !1064)
!1116 = !DILocation(line: 567, column: 32, scope: !1064)
!1117 = !DILocation(line: 567, column: 39, scope: !1064)
!1118 = !DILocation(line: 567, column: 42, scope: !1064)
!1119 = !DILocation(line: 567, column: 47, scope: !1064)
!1120 = !DILocation(line: 567, column: 12, scope: !1064)
!1121 = !DILocation(line: 0, scope: !1064)
!1122 = !DILocation(line: 566, column: 5, scope: !1064)
!1123 = !DILocation(line: 568, column: 1, scope: !1064)
!1124 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 17, type: !1125, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !83, retainedNodes: !99)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!81}
!1127 = !DILocalVariable(name: "k1", scope: !1124, file: !2, line: 19, type: !81)
!1128 = !DILocation(line: 19, column: 9, scope: !1124)
!1129 = !DILocalVariable(name: "k2", scope: !1124, file: !2, line: 19, type: !81)
!1130 = !DILocation(line: 19, column: 13, scope: !1124)
!1131 = !DILocalVariable(name: "missing", scope: !1124, file: !2, line: 19, type: !81)
!1132 = !DILocation(line: 19, column: 17, scope: !1124)
!1133 = !DILocalVariable(name: "v1", scope: !1124, file: !2, line: 20, type: !81)
!1134 = !DILocation(line: 20, column: 9, scope: !1124)
!1135 = !DILocalVariable(name: "v2", scope: !1124, file: !2, line: 20, type: !81)
!1136 = !DILocation(line: 20, column: 13, scope: !1124)
!1137 = !DILocation(line: 22, column: 5, scope: !1124)
!1138 = !DILocation(line: 23, column: 5, scope: !1124)
!1139 = !DILocation(line: 24, column: 5, scope: !1124)
!1140 = !DILocation(line: 26, column: 5, scope: !1124)
!1141 = !DILocation(line: 27, column: 5, scope: !1124)
!1142 = !DILocalVariable(name: "t", scope: !1124, file: !2, line: 29, type: !1143)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "TreeTable", file: !1145, line: 30, baseType: !1146)
!1145 = !DIFile(filename: "Ex3SymbTestSuite/../../ex2/treetable.h", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "065f0d2b52ad730b442c75c554f59b69")
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "treetable_s", file: !1145, line: 30, flags: DIFlagFwdDecl)
!1147 = !DILocation(line: 29, column: 16, scope: !1124)
!1148 = !DILocation(line: 31, column: 5, scope: !1124)
!1149 = !DILocalVariable(name: "out", scope: !1124, file: !2, line: 36, type: !82)
!1150 = !DILocation(line: 36, column: 11, scope: !1124)
!1151 = !DILocation(line: 38, column: 5, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 38, column: 5)
!1153 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 38, column: 5)
!1154 = !DILocation(line: 38, column: 5, scope: !1153)
!1155 = !DILocation(line: 44, column: 19, scope: !1124)
!1156 = !DILocation(line: 44, column: 5, scope: !1124)
!1157 = !DILocation(line: 46, column: 5, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 46, column: 5)
!1159 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 46, column: 5)
!1160 = !DILocation(line: 46, column: 5, scope: !1159)
!1161 = !DILocation(line: 47, column: 5, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 47, column: 5)
!1163 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 47, column: 5)
!1164 = !DILocation(line: 47, column: 5, scope: !1163)
!1165 = !DILocation(line: 49, column: 5, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 49, column: 5)
!1167 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 49, column: 5)
!1168 = !DILocation(line: 49, column: 5, scope: !1167)
!1169 = !DILocation(line: 50, column: 5, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 50, column: 5)
!1171 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 50, column: 5)
!1172 = !DILocation(line: 50, column: 5, scope: !1171)
!1173 = !DILocation(line: 55, column: 19, scope: !1124)
!1174 = !DILocation(line: 55, column: 5, scope: !1124)
!1175 = !DILocation(line: 57, column: 5, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 57, column: 5)
!1177 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 57, column: 5)
!1178 = !DILocation(line: 57, column: 5, scope: !1177)
!1179 = !DILocation(line: 58, column: 5, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 58, column: 5)
!1181 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 58, column: 5)
!1182 = !DILocation(line: 58, column: 5, scope: !1181)
!1183 = !DILocation(line: 60, column: 5, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 60, column: 5)
!1185 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 60, column: 5)
!1186 = !DILocation(line: 60, column: 5, scope: !1185)
!1187 = !DILocation(line: 61, column: 5, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 61, column: 5)
!1189 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 61, column: 5)
!1190 = !DILocation(line: 61, column: 5, scope: !1189)
!1191 = !DILocation(line: 66, column: 9, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 66, column: 9)
!1193 = !DILocation(line: 66, column: 20, scope: !1192)
!1194 = !DILocation(line: 66, column: 17, scope: !1192)
!1195 = !DILocation(line: 66, column: 23, scope: !1192)
!1196 = !DILocation(line: 66, column: 26, scope: !1192)
!1197 = !DILocation(line: 66, column: 37, scope: !1192)
!1198 = !DILocation(line: 66, column: 34, scope: !1192)
!1199 = !DILocation(line: 66, column: 9, scope: !1124)
!1200 = !DILocation(line: 67, column: 9, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 67, column: 9)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 67, column: 9)
!1203 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 66, column: 41)
!1204 = !DILocation(line: 67, column: 9, scope: !1202)
!1205 = !DILocation(line: 71, column: 23, scope: !1124)
!1206 = !DILocation(line: 71, column: 5, scope: !1124)
!1207 = !DILocation(line: 73, column: 5, scope: !1124)

; ModuleID = 'treetable_get_first_key_linked.bc'
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
@.str.6 = private unnamed_addr constant [57 x i8] c"treetable_get_first_key(t, &out) == CC_ERR_KEY_NOT_FOUND\00", align 1, !dbg !17
@.str.7 = private unnamed_addr constant [48 x i8] c"Ex3SymbTestSuite/treetable_get_first_key_symb.c\00", align 1, !dbg !22
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1, !dbg !27
@.str.8 = private unnamed_addr constant [10 x i8] c"sorted(t)\00", align 1, !dbg !33
@.str.9 = private unnamed_addr constant [12 x i8] c"balanced(t)\00", align 1, !dbg !38
@.str.10 = private unnamed_addr constant [42 x i8] c"treetable_get_first_key(t, &out) == CC_OK\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [15 x i8] c"returned <= k1\00", align 1, !dbg !48
@.str.12 = private unnamed_addr constant [15 x i8] c"returned <= k2\00", align 1, !dbg !51
@.str.13 = private unnamed_addr constant [15 x i8] c"returned <= k3\00", align 1, !dbg !53
@.str.14 = private unnamed_addr constant [51 x i8] c"returned == k1 || returned == k2 || returned == k3\00", align 1, !dbg !55

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cmp(ptr noundef %e1, ptr noundef %e2) #0 !dbg !91 {
entry:
  %retval = alloca i32, align 4
  %e1.addr = alloca ptr, align 8
  %e2.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %e1, ptr %e1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e1.addr, metadata !97, metadata !DIExpression()), !dbg !98
  store ptr %e2, ptr %e2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e2.addr, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata ptr %i, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = load ptr, ptr %e1.addr, align 8, !dbg !103
  %1 = load i32, ptr %0, align 4, !dbg !104
  store i32 %1, ptr %i, align 4, !dbg !102
  call void @llvm.dbg.declare(metadata ptr %j, metadata !105, metadata !DIExpression()), !dbg !106
  %2 = load ptr, ptr %e2.addr, align 8, !dbg !107
  %3 = load i32, ptr %2, align 4, !dbg !108
  store i32 %3, ptr %j, align 4, !dbg !106
  %4 = load i32, ptr %i, align 4, !dbg !109
  %5 = load i32, ptr %j, align 4, !dbg !111
  %cmp = icmp slt i32 %4, %5, !dbg !112
  br i1 %cmp, label %if.then, label %if.end, !dbg !113

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !114
  br label %return, !dbg !114

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %i, align 4, !dbg !115
  %7 = load i32, ptr %j, align 4, !dbg !117
  %cmp1 = icmp eq i32 %6, %7, !dbg !118
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !119

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !120
  br label %return, !dbg !120

if.end3:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !121
  br label %return, !dbg !121

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !122
  ret i32 %8, !dbg !122
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @treetable_conf_init(ptr noundef %conf) #0 !dbg !123 {
entry:
  %conf.addr = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !148, metadata !DIExpression()), !dbg !149
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !150
  %mem_alloc = getelementptr inbounds %struct.treetable_conf_s, ptr %0, i32 0, i32 1, !dbg !151
  store ptr @malloc, ptr %mem_alloc, align 8, !dbg !152
  %1 = load ptr, ptr %conf.addr, align 8, !dbg !153
  %mem_calloc = getelementptr inbounds %struct.treetable_conf_s, ptr %1, i32 0, i32 2, !dbg !154
  store ptr @calloc, ptr %mem_calloc, align 8, !dbg !155
  %2 = load ptr, ptr %conf.addr, align 8, !dbg !156
  %mem_free = getelementptr inbounds %struct.treetable_conf_s, ptr %2, i32 0, i32 3, !dbg !157
  store ptr @free, ptr %mem_free, align 8, !dbg !158
  %3 = load ptr, ptr %conf.addr, align 8, !dbg !159
  %cmp = getelementptr inbounds %struct.treetable_conf_s, ptr %3, i32 0, i32 0, !dbg !160
  store ptr @cmp, ptr %cmp, align 8, !dbg !161
  ret void, !dbg !162
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_new(ptr noundef %tt) #0 !dbg !163 {
entry:
  %tt.addr = alloca ptr, align 8
  %conf = alloca %struct.treetable_conf_s, align 8
  store ptr %tt, ptr %tt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tt.addr, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata ptr %conf, metadata !191, metadata !DIExpression()), !dbg !192
  call void @treetable_conf_init(ptr noundef %conf), !dbg !193
  %0 = load ptr, ptr %tt.addr, align 8, !dbg !194
  %call = call i32 @treetable_new_conf(ptr noundef %conf, ptr noundef %0), !dbg !195
  ret i32 %call, !dbg !196
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_new_conf(ptr noundef %conf, ptr noundef %tt) #0 !dbg !197 {
entry:
  %retval = alloca i32, align 4
  %conf.addr = alloca ptr, align 8
  %tt.addr = alloca ptr, align 8
  %table = alloca ptr, align 8
  %sentinel = alloca ptr, align 8
  store ptr %conf, ptr %conf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %conf.addr, metadata !203, metadata !DIExpression()), !dbg !204
  store ptr %tt, ptr %tt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tt.addr, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata ptr %table, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = load ptr, ptr %conf.addr, align 8, !dbg !209
  %mem_calloc = getelementptr inbounds %struct.treetable_conf_s, ptr %0, i32 0, i32 2, !dbg !210
  %1 = load ptr, ptr %mem_calloc, align 8, !dbg !210
  %call = call ptr %1(i64 noundef 1, i64 noundef 56), !dbg !209
  store ptr %call, ptr %table, align 8, !dbg !208
  %2 = load ptr, ptr %table, align 8, !dbg !211
  %tobool = icmp ne ptr %2, null, !dbg !211
  br i1 %tobool, label %if.end, label %if.then, !dbg !213

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !214
  br label %return, !dbg !214

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata ptr %sentinel, metadata !215, metadata !DIExpression()), !dbg !216
  %3 = load ptr, ptr %conf.addr, align 8, !dbg !217
  %mem_calloc1 = getelementptr inbounds %struct.treetable_conf_s, ptr %3, i32 0, i32 2, !dbg !218
  %4 = load ptr, ptr %mem_calloc1, align 8, !dbg !218
  %call2 = call ptr %4(i64 noundef 1, i64 noundef 48), !dbg !217
  store ptr %call2, ptr %sentinel, align 8, !dbg !216
  %5 = load ptr, ptr %sentinel, align 8, !dbg !219
  %tobool3 = icmp ne ptr %5, null, !dbg !219
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !221

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %conf.addr, align 8, !dbg !222
  %mem_free = getelementptr inbounds %struct.treetable_conf_s, ptr %6, i32 0, i32 3, !dbg !224
  %7 = load ptr, ptr %mem_free, align 8, !dbg !224
  %8 = load ptr, ptr %table, align 8, !dbg !225
  call void %7(ptr noundef %8), !dbg !222
  store i32 1, ptr %retval, align 4, !dbg !226
  br label %return, !dbg !226

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %sentinel, align 8, !dbg !227
  %color = getelementptr inbounds %struct.rbnode_s, ptr %9, i32 0, i32 2, !dbg !228
  store i8 1, ptr %color, align 8, !dbg !229
  %10 = load ptr, ptr %table, align 8, !dbg !230
  %size = getelementptr inbounds %struct.treetable_s, ptr %10, i32 0, i32 2, !dbg !231
  store i64 0, ptr %size, align 8, !dbg !232
  %11 = load ptr, ptr %conf.addr, align 8, !dbg !233
  %cmp = getelementptr inbounds %struct.treetable_conf_s, ptr %11, i32 0, i32 0, !dbg !234
  %12 = load ptr, ptr %cmp, align 8, !dbg !234
  %13 = load ptr, ptr %table, align 8, !dbg !235
  %cmp6 = getelementptr inbounds %struct.treetable_s, ptr %13, i32 0, i32 3, !dbg !236
  store ptr %12, ptr %cmp6, align 8, !dbg !237
  %14 = load ptr, ptr %conf.addr, align 8, !dbg !238
  %mem_alloc = getelementptr inbounds %struct.treetable_conf_s, ptr %14, i32 0, i32 1, !dbg !239
  %15 = load ptr, ptr %mem_alloc, align 8, !dbg !239
  %16 = load ptr, ptr %table, align 8, !dbg !240
  %mem_alloc7 = getelementptr inbounds %struct.treetable_s, ptr %16, i32 0, i32 4, !dbg !241
  store ptr %15, ptr %mem_alloc7, align 8, !dbg !242
  %17 = load ptr, ptr %conf.addr, align 8, !dbg !243
  %mem_calloc8 = getelementptr inbounds %struct.treetable_conf_s, ptr %17, i32 0, i32 2, !dbg !244
  %18 = load ptr, ptr %mem_calloc8, align 8, !dbg !244
  %19 = load ptr, ptr %table, align 8, !dbg !245
  %mem_calloc9 = getelementptr inbounds %struct.treetable_s, ptr %19, i32 0, i32 5, !dbg !246
  store ptr %18, ptr %mem_calloc9, align 8, !dbg !247
  %20 = load ptr, ptr %conf.addr, align 8, !dbg !248
  %mem_free10 = getelementptr inbounds %struct.treetable_conf_s, ptr %20, i32 0, i32 3, !dbg !249
  %21 = load ptr, ptr %mem_free10, align 8, !dbg !249
  %22 = load ptr, ptr %table, align 8, !dbg !250
  %mem_free11 = getelementptr inbounds %struct.treetable_s, ptr %22, i32 0, i32 6, !dbg !251
  store ptr %21, ptr %mem_free11, align 8, !dbg !252
  %23 = load ptr, ptr %sentinel, align 8, !dbg !253
  %24 = load ptr, ptr %table, align 8, !dbg !254
  %root = getelementptr inbounds %struct.treetable_s, ptr %24, i32 0, i32 0, !dbg !255
  store ptr %23, ptr %root, align 8, !dbg !256
  %25 = load ptr, ptr %sentinel, align 8, !dbg !257
  %26 = load ptr, ptr %table, align 8, !dbg !258
  %sentinel12 = getelementptr inbounds %struct.treetable_s, ptr %26, i32 0, i32 1, !dbg !259
  store ptr %25, ptr %sentinel12, align 8, !dbg !260
  %27 = load ptr, ptr %table, align 8, !dbg !261
  %28 = load ptr, ptr %tt.addr, align 8, !dbg !262
  store ptr %27, ptr %28, align 8, !dbg !263
  store i32 0, ptr %retval, align 4, !dbg !264
  br label %return, !dbg !264

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %29 = load i32, ptr %retval, align 4, !dbg !265
  ret i32 %29, !dbg !265
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @treetable_destroy(ptr noundef %table) #0 !dbg !266 {
entry:
  %table.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load ptr, ptr %table.addr, align 8, !dbg !271
  %1 = load ptr, ptr %table.addr, align 8, !dbg !272
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !273
  %2 = load ptr, ptr %root, align 8, !dbg !273
  call void @tree_destroy(ptr noundef %0, ptr noundef %2), !dbg !274
  %3 = load ptr, ptr %table.addr, align 8, !dbg !275
  %mem_free = getelementptr inbounds %struct.treetable_s, ptr %3, i32 0, i32 6, !dbg !276
  %4 = load ptr, ptr %mem_free, align 8, !dbg !276
  %5 = load ptr, ptr %table.addr, align 8, !dbg !277
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %5, i32 0, i32 1, !dbg !278
  %6 = load ptr, ptr %sentinel, align 8, !dbg !278
  call void %4(ptr noundef %6), !dbg !275
  %7 = load ptr, ptr %table.addr, align 8, !dbg !279
  %mem_free1 = getelementptr inbounds %struct.treetable_s, ptr %7, i32 0, i32 6, !dbg !280
  %8 = load ptr, ptr %mem_free1, align 8, !dbg !280
  %9 = load ptr, ptr %table.addr, align 8, !dbg !281
  call void %8(ptr noundef %9), !dbg !279
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind uwtable
define internal void @tree_destroy(ptr noundef %table, ptr noundef %n) #0 !dbg !283 {
entry:
  %table.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !286, metadata !DIExpression()), !dbg !287
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !288, metadata !DIExpression()), !dbg !289
  %0 = load ptr, ptr %n.addr, align 8, !dbg !290
  %1 = load ptr, ptr %table.addr, align 8, !dbg !292
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 1, !dbg !293
  %2 = load ptr, ptr %sentinel, align 8, !dbg !293
  %cmp = icmp eq ptr %0, %2, !dbg !294
  br i1 %cmp, label %return, label %if.end, !dbg !295

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %table.addr, align 8, !dbg !296
  %4 = load ptr, ptr %n.addr, align 8, !dbg !297
  %left = getelementptr inbounds %struct.rbnode_s, ptr %4, i32 0, i32 4, !dbg !298
  %5 = load ptr, ptr %left, align 8, !dbg !298
  call void @tree_destroy(ptr noundef %3, ptr noundef %5), !dbg !299
  %6 = load ptr, ptr %table.addr, align 8, !dbg !300
  %7 = load ptr, ptr %n.addr, align 8, !dbg !301
  %right = getelementptr inbounds %struct.rbnode_s, ptr %7, i32 0, i32 5, !dbg !302
  %8 = load ptr, ptr %right, align 8, !dbg !302
  call void @tree_destroy(ptr noundef %6, ptr noundef %8), !dbg !303
  %9 = load ptr, ptr %table.addr, align 8, !dbg !304
  %mem_free = getelementptr inbounds %struct.treetable_s, ptr %9, i32 0, i32 6, !dbg !305
  %10 = load ptr, ptr %mem_free, align 8, !dbg !305
  %11 = load ptr, ptr %n.addr, align 8, !dbg !306
  call void %10(ptr noundef %11), !dbg !304
  br label %return, !dbg !307

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_get(ptr noundef %table, ptr noundef %key, ptr noundef %out) #0 !dbg !308 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !315, metadata !DIExpression()), !dbg !316
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !317, metadata !DIExpression()), !dbg !318
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !319, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.declare(metadata ptr %node, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load ptr, ptr %table.addr, align 8, !dbg !323
  %1 = load ptr, ptr %key.addr, align 8, !dbg !324
  %call = call ptr @get_tree_node_by_key(ptr noundef %0, ptr noundef %1), !dbg !325
  store ptr %call, ptr %node, align 8, !dbg !322
  %2 = load ptr, ptr %node, align 8, !dbg !326
  %tobool = icmp ne ptr %2, null, !dbg !326
  br i1 %tobool, label %if.end, label %if.then, !dbg !328

if.then:                                          ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !329
  br label %return, !dbg !329

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %node, align 8, !dbg !330
  %value = getelementptr inbounds %struct.rbnode_s, ptr %3, i32 0, i32 1, !dbg !331
  %4 = load ptr, ptr %value, align 8, !dbg !331
  %5 = load ptr, ptr %out.addr, align 8, !dbg !332
  store ptr %4, ptr %5, align 8, !dbg !333
  store i32 0, ptr %retval, align 4, !dbg !334
  br label %return, !dbg !334

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !335
  ret i32 %6, !dbg !335
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @get_tree_node_by_key(ptr noundef %table, ptr noundef %key) #0 !dbg !336 {
entry:
  %retval = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %s = alloca ptr, align 8
  %cmp1 = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !339, metadata !DIExpression()), !dbg !340
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !341, metadata !DIExpression()), !dbg !342
  %0 = load ptr, ptr %table.addr, align 8, !dbg !343
  %size = getelementptr inbounds %struct.treetable_s, ptr %0, i32 0, i32 2, !dbg !345
  %1 = load i64, ptr %size, align 8, !dbg !345
  %cmp = icmp eq i64 %1, 0, !dbg !346
  br i1 %cmp, label %if.then, label %if.end, !dbg !347

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !348
  br label %return, !dbg !348

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata ptr %n, metadata !349, metadata !DIExpression()), !dbg !350
  %2 = load ptr, ptr %table.addr, align 8, !dbg !351
  %root = getelementptr inbounds %struct.treetable_s, ptr %2, i32 0, i32 0, !dbg !352
  %3 = load ptr, ptr %root, align 8, !dbg !352
  store ptr %3, ptr %n, align 8, !dbg !350
  call void @llvm.dbg.declare(metadata ptr %s, metadata !353, metadata !DIExpression()), !dbg !354
  %4 = load ptr, ptr %table.addr, align 8, !dbg !355
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %4, i32 0, i32 1, !dbg !356
  %5 = load ptr, ptr %sentinel, align 8, !dbg !356
  store ptr %5, ptr %s, align 8, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %cmp1, metadata !357, metadata !DIExpression()), !dbg !358
  br label %do.body, !dbg !359

do.body:                                          ; preds = %do.cond, %if.end
  %6 = load ptr, ptr %table.addr, align 8, !dbg !360
  %cmp2 = getelementptr inbounds %struct.treetable_s, ptr %6, i32 0, i32 3, !dbg !362
  %7 = load ptr, ptr %cmp2, align 8, !dbg !362
  %8 = load ptr, ptr %key.addr, align 8, !dbg !363
  %9 = load ptr, ptr %n, align 8, !dbg !364
  %key3 = getelementptr inbounds %struct.rbnode_s, ptr %9, i32 0, i32 0, !dbg !365
  %10 = load ptr, ptr %key3, align 8, !dbg !365
  %call = call i32 %7(ptr noundef %8, ptr noundef %10), !dbg !360
  store i32 %call, ptr %cmp1, align 4, !dbg !366
  %11 = load i32, ptr %cmp1, align 4, !dbg !367
  %cmp4 = icmp slt i32 %11, 0, !dbg !369
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !370

if.then5:                                         ; preds = %do.body
  %12 = load ptr, ptr %n, align 8, !dbg !371
  %left = getelementptr inbounds %struct.rbnode_s, ptr %12, i32 0, i32 4, !dbg !372
  %13 = load ptr, ptr %left, align 8, !dbg !372
  store ptr %13, ptr %n, align 8, !dbg !373
  br label %do.cond, !dbg !374

if.else:                                          ; preds = %do.body
  %14 = load i32, ptr %cmp1, align 4, !dbg !375
  %cmp6 = icmp sgt i32 %14, 0, !dbg !377
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !378

if.then7:                                         ; preds = %if.else
  %15 = load ptr, ptr %n, align 8, !dbg !379
  %right = getelementptr inbounds %struct.rbnode_s, ptr %15, i32 0, i32 5, !dbg !380
  %16 = load ptr, ptr %right, align 8, !dbg !380
  store ptr %16, ptr %n, align 8, !dbg !381
  br label %do.cond

if.else8:                                         ; preds = %if.else
  %17 = load ptr, ptr %n, align 8, !dbg !382
  store ptr %17, ptr %retval, align 8, !dbg !383
  br label %return, !dbg !383

do.cond:                                          ; preds = %if.then5, %if.then7
  %18 = load ptr, ptr %n, align 8, !dbg !384
  %19 = load ptr, ptr %s, align 8, !dbg !385
  %cmp11 = icmp ne ptr %18, %19, !dbg !386
  %20 = load i32, ptr %cmp1, align 4, !dbg !387
  %cmp12 = icmp ne i32 %20, 0, !dbg !387
  %21 = select i1 %cmp11, i1 %cmp12, i1 false, !dbg !387
  br i1 %21, label %do.body, label %do.end, !dbg !388, !llvm.loop !389

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %retval, align 8, !dbg !392
  br label %return, !dbg !392

return:                                           ; preds = %do.end, %if.else8, %if.then
  %22 = load ptr, ptr %retval, align 8, !dbg !393
  ret ptr %22, !dbg !393
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_get_first_key(ptr noundef %table, ptr noundef %out) #0 !dbg !394 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !397, metadata !DIExpression()), !dbg !398
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata ptr %node, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = load ptr, ptr %table.addr, align 8, !dbg !403
  %1 = load ptr, ptr %table.addr, align 8, !dbg !404
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !405
  %2 = load ptr, ptr %root, align 8, !dbg !405
  %call = call ptr @tree_min(ptr noundef %0, ptr noundef %2), !dbg !406
  store ptr %call, ptr %node, align 8, !dbg !402
  %3 = load ptr, ptr %node, align 8, !dbg !407
  %4 = load ptr, ptr %table.addr, align 8, !dbg !409
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %4, i32 0, i32 1, !dbg !410
  %5 = load ptr, ptr %sentinel, align 8, !dbg !410
  %cmp = icmp ne ptr %3, %5, !dbg !411
  br i1 %cmp, label %if.then, label %if.end, !dbg !412

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %node, align 8, !dbg !413
  %key = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 0, !dbg !415
  %7 = load ptr, ptr %key, align 8, !dbg !415
  %8 = load ptr, ptr %out.addr, align 8, !dbg !416
  store ptr %7, ptr %8, align 8, !dbg !417
  store i32 0, ptr %retval, align 4, !dbg !418
  br label %return, !dbg !418

if.end:                                           ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !419
  br label %return, !dbg !419

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !420
  ret i32 %9, !dbg !420
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @tree_min(ptr noundef %table, ptr noundef %n) #0 !dbg !421 {
entry:
  %table.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !424, metadata !DIExpression()), !dbg !425
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata ptr %s, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load ptr, ptr %table.addr, align 8, !dbg !430
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %0, i32 0, i32 1, !dbg !431
  %1 = load ptr, ptr %sentinel, align 8, !dbg !431
  store ptr %1, ptr %s, align 8, !dbg !429
  br label %while.cond, !dbg !432

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %n.addr, align 8, !dbg !433
  %left = getelementptr inbounds %struct.rbnode_s, ptr %2, i32 0, i32 4, !dbg !434
  %3 = load ptr, ptr %left, align 8, !dbg !434
  %4 = load ptr, ptr %s, align 8, !dbg !435
  %cmp = icmp ne ptr %3, %4, !dbg !436
  br i1 %cmp, label %while.body, label %while.end, !dbg !432

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %n.addr, align 8, !dbg !437
  %left1 = getelementptr inbounds %struct.rbnode_s, ptr %5, i32 0, i32 4, !dbg !438
  %6 = load ptr, ptr %left1, align 8, !dbg !438
  store ptr %6, ptr %n.addr, align 8, !dbg !439
  br label %while.cond, !dbg !432, !llvm.loop !440

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %n.addr, align 8, !dbg !441
  ret ptr %7, !dbg !442
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_get_greater_than(ptr noundef %table, ptr noundef %key, ptr noundef %out) #0 !dbg !443 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %s = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !444, metadata !DIExpression()), !dbg !445
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !446, metadata !DIExpression()), !dbg !447
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata ptr %n, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load ptr, ptr %table.addr, align 8, !dbg !452
  %1 = load ptr, ptr %key.addr, align 8, !dbg !453
  %call = call ptr @get_tree_node_by_key(ptr noundef %0, ptr noundef %1), !dbg !454
  store ptr %call, ptr %n, align 8, !dbg !451
  call void @llvm.dbg.declare(metadata ptr %s, metadata !455, metadata !DIExpression()), !dbg !456
  %2 = load ptr, ptr %table.addr, align 8, !dbg !457
  %3 = load ptr, ptr %n, align 8, !dbg !458
  %call1 = call ptr @get_successor_node(ptr noundef %2, ptr noundef %3), !dbg !459
  store ptr %call1, ptr %s, align 8, !dbg !456
  %4 = load ptr, ptr %n, align 8, !dbg !460
  %tobool = icmp ne ptr %4, null, !dbg !460
  %5 = load ptr, ptr %s, align 8
  %tobool2 = icmp ne ptr %5, null
  %or.cond = select i1 %tobool, i1 %tobool2, i1 false, !dbg !462
  br i1 %or.cond, label %if.then, label %if.end, !dbg !462

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %s, align 8, !dbg !463
  %key3 = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 0, !dbg !465
  %7 = load ptr, ptr %key3, align 8, !dbg !465
  %8 = load ptr, ptr %out.addr, align 8, !dbg !466
  store ptr %7, ptr %8, align 8, !dbg !467
  store i32 0, ptr %retval, align 4, !dbg !468
  br label %return, !dbg !468

if.end:                                           ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !469
  br label %return, !dbg !469

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !470
  ret i32 %9, !dbg !470
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @get_successor_node(ptr noundef %table, ptr noundef %x) #0 !dbg !471 {
entry:
  %retval = alloca ptr, align 8
  %table.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !472, metadata !DIExpression()), !dbg !473
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load ptr, ptr %x.addr, align 8, !dbg !476
  %cmp = icmp eq ptr %0, null, !dbg !478
  br i1 %cmp, label %if.then, label %if.end, !dbg !479

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !480
  br label %return, !dbg !480

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !481
  %right = getelementptr inbounds %struct.rbnode_s, ptr %1, i32 0, i32 5, !dbg !483
  %2 = load ptr, ptr %right, align 8, !dbg !483
  %3 = load ptr, ptr %table.addr, align 8, !dbg !484
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %3, i32 0, i32 1, !dbg !485
  %4 = load ptr, ptr %sentinel, align 8, !dbg !485
  %cmp1 = icmp ne ptr %2, %4, !dbg !486
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !487

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %table.addr, align 8, !dbg !488
  %6 = load ptr, ptr %x.addr, align 8, !dbg !489
  %right3 = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 5, !dbg !490
  %7 = load ptr, ptr %right3, align 8, !dbg !490
  %call = call ptr @tree_min(ptr noundef %5, ptr noundef %7), !dbg !491
  store ptr %call, ptr %retval, align 8, !dbg !492
  br label %return, !dbg !492

if.end4:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata ptr %y, metadata !493, metadata !DIExpression()), !dbg !494
  %8 = load ptr, ptr %x.addr, align 8, !dbg !495
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %8, i32 0, i32 3, !dbg !496
  %9 = load ptr, ptr %parent, align 8, !dbg !496
  store ptr %9, ptr %y, align 8, !dbg !494
  br label %while.cond, !dbg !497

while.cond:                                       ; preds = %while.body, %if.end4
  %10 = load ptr, ptr %y, align 8, !dbg !498
  %11 = load ptr, ptr %table.addr, align 8, !dbg !499
  %sentinel5 = getelementptr inbounds %struct.treetable_s, ptr %11, i32 0, i32 1, !dbg !500
  %12 = load ptr, ptr %sentinel5, align 8, !dbg !500
  %cmp6 = icmp ne ptr %10, %12, !dbg !501
  br i1 %cmp6, label %land.rhs, label %while.end, !dbg !502

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %x.addr, align 8, !dbg !503
  %14 = load ptr, ptr %y, align 8, !dbg !504
  %right7 = getelementptr inbounds %struct.rbnode_s, ptr %14, i32 0, i32 5, !dbg !505
  %15 = load ptr, ptr %right7, align 8, !dbg !505
  %cmp8 = icmp eq ptr %13, %15, !dbg !506
  br i1 %cmp8, label %while.body, label %while.end, !dbg !497

while.body:                                       ; preds = %land.rhs
  %16 = load ptr, ptr %y, align 8, !dbg !507
  store ptr %16, ptr %x.addr, align 8, !dbg !509
  %17 = load ptr, ptr %y, align 8, !dbg !510
  %parent9 = getelementptr inbounds %struct.rbnode_s, ptr %17, i32 0, i32 3, !dbg !511
  %18 = load ptr, ptr %parent9, align 8, !dbg !511
  store ptr %18, ptr %y, align 8, !dbg !512
  br label %while.cond, !dbg !497, !llvm.loop !513

while.end:                                        ; preds = %while.cond, %land.rhs
  %19 = load ptr, ptr %y, align 8, !dbg !515
  store ptr %19, ptr %retval, align 8, !dbg !516
  br label %return, !dbg !516

return:                                           ; preds = %while.end, %if.then2, %if.then
  %20 = load ptr, ptr %retval, align 8, !dbg !517
  ret ptr %20, !dbg !517
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @treetable_size(ptr noundef %table) #0 !dbg !518 {
entry:
  %table.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = load ptr, ptr %table.addr, align 8, !dbg !523
  %size = getelementptr inbounds %struct.treetable_s, ptr %0, i32 0, i32 2, !dbg !524
  %1 = load i64, ptr %size, align 8, !dbg !524
  ret i64 %1, !dbg !525
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @treetable_contains_key(ptr noundef %table, ptr noundef %key) #0 !dbg !526 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !530, metadata !DIExpression()), !dbg !531
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !532, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.declare(metadata ptr %node, metadata !534, metadata !DIExpression()), !dbg !535
  %0 = load ptr, ptr %table.addr, align 8, !dbg !536
  %1 = load ptr, ptr %key.addr, align 8, !dbg !537
  %call = call ptr @get_tree_node_by_key(ptr noundef %0, ptr noundef %1), !dbg !538
  store ptr %call, ptr %node, align 8, !dbg !535
  %2 = load ptr, ptr %node, align 8, !dbg !539
  %tobool = icmp ne ptr %2, null, !dbg !539
  br i1 %tobool, label %if.then, label %if.end, !dbg !541

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !542
  br label %return, !dbg !542

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !543
  br label %return, !dbg !543

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !544
  ret i1 %3, !dbg !544
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @treetable_contains_value(ptr noundef %table, ptr noundef %value) #0 !dbg !545 {
entry:
  %table.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %o = alloca i64, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !548, metadata !DIExpression()), !dbg !549
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !550, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.declare(metadata ptr %node, metadata !552, metadata !DIExpression()), !dbg !553
  %0 = load ptr, ptr %table.addr, align 8, !dbg !554
  %1 = load ptr, ptr %table.addr, align 8, !dbg !555
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !556
  %2 = load ptr, ptr %root, align 8, !dbg !556
  %call = call ptr @tree_min(ptr noundef %0, ptr noundef %2), !dbg !557
  store ptr %call, ptr %node, align 8, !dbg !553
  call void @llvm.dbg.declare(metadata ptr %o, metadata !558, metadata !DIExpression()), !dbg !559
  store i64 0, ptr %o, align 8, !dbg !559
  br label %while.cond, !dbg !560

while.cond:                                       ; preds = %if.end, %entry
  %3 = load ptr, ptr %node, align 8, !dbg !561
  %4 = load ptr, ptr %table.addr, align 8, !dbg !562
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %4, i32 0, i32 1, !dbg !563
  %5 = load ptr, ptr %sentinel, align 8, !dbg !563
  %cmp = icmp ne ptr %3, %5, !dbg !564
  br i1 %cmp, label %while.body, label %while.end, !dbg !560

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %node, align 8, !dbg !565
  %value1 = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 1, !dbg !568
  %7 = load ptr, ptr %value1, align 8, !dbg !568
  %8 = load ptr, ptr %value.addr, align 8, !dbg !569
  %cmp2 = icmp eq ptr %7, %8, !dbg !570
  br i1 %cmp2, label %if.then, label %if.end, !dbg !571

if.then:                                          ; preds = %while.body
  %9 = load i64, ptr %o, align 8, !dbg !572
  %inc = add i64 %9, 1, !dbg !572
  store i64 %inc, ptr %o, align 8, !dbg !572
  br label %if.end, !dbg !573

if.end:                                           ; preds = %if.then, %while.body
  %10 = load ptr, ptr %table.addr, align 8, !dbg !574
  %11 = load ptr, ptr %node, align 8, !dbg !575
  %call3 = call ptr @get_successor_node(ptr noundef %10, ptr noundef %11), !dbg !576
  store ptr %call3, ptr %node, align 8, !dbg !577
  br label %while.cond, !dbg !560, !llvm.loop !578

while.end:                                        ; preds = %while.cond
  %12 = load i64, ptr %o, align 8, !dbg !580
  ret i64 %12, !dbg !581
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @treetable_add(ptr noundef %table, ptr noundef %key, ptr noundef %val) #0 !dbg !582 {
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
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !585, metadata !DIExpression()), !dbg !586
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !587, metadata !DIExpression()), !dbg !588
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !589, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.declare(metadata ptr %y, metadata !591, metadata !DIExpression()), !dbg !592
  %0 = load ptr, ptr %table.addr, align 8, !dbg !593
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %0, i32 0, i32 1, !dbg !594
  %1 = load ptr, ptr %sentinel, align 8, !dbg !594
  store ptr %1, ptr %y, align 8, !dbg !592
  call void @llvm.dbg.declare(metadata ptr %x, metadata !595, metadata !DIExpression()), !dbg !596
  %2 = load ptr, ptr %table.addr, align 8, !dbg !597
  %root = getelementptr inbounds %struct.treetable_s, ptr %2, i32 0, i32 0, !dbg !598
  %3 = load ptr, ptr %root, align 8, !dbg !598
  store ptr %3, ptr %x, align 8, !dbg !596
  call void @llvm.dbg.declare(metadata ptr %cmp, metadata !599, metadata !DIExpression()), !dbg !600
  br label %while.cond, !dbg !601

while.cond:                                       ; preds = %if.end9, %entry
  %4 = load ptr, ptr %x, align 8, !dbg !602
  %5 = load ptr, ptr %table.addr, align 8, !dbg !603
  %sentinel1 = getelementptr inbounds %struct.treetable_s, ptr %5, i32 0, i32 1, !dbg !604
  %6 = load ptr, ptr %sentinel1, align 8, !dbg !604
  %cmp2 = icmp ne ptr %4, %6, !dbg !605
  br i1 %cmp2, label %while.body, label %while.end, !dbg !601

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %table.addr, align 8, !dbg !606
  %cmp3 = getelementptr inbounds %struct.treetable_s, ptr %7, i32 0, i32 3, !dbg !608
  %8 = load ptr, ptr %cmp3, align 8, !dbg !608
  %9 = load ptr, ptr %key.addr, align 8, !dbg !609
  %10 = load ptr, ptr %x, align 8, !dbg !610
  %key4 = getelementptr inbounds %struct.rbnode_s, ptr %10, i32 0, i32 0, !dbg !611
  %11 = load ptr, ptr %key4, align 8, !dbg !611
  %call = call i32 %8(ptr noundef %9, ptr noundef %11), !dbg !606
  store i32 %call, ptr %cmp, align 4, !dbg !612
  %12 = load ptr, ptr %x, align 8, !dbg !613
  store ptr %12, ptr %y, align 8, !dbg !614
  %13 = load i32, ptr %cmp, align 4, !dbg !615
  %cmp5 = icmp slt i32 %13, 0, !dbg !617
  br i1 %cmp5, label %if.then, label %if.else, !dbg !618

if.then:                                          ; preds = %while.body
  %14 = load ptr, ptr %x, align 8, !dbg !619
  %left = getelementptr inbounds %struct.rbnode_s, ptr %14, i32 0, i32 4, !dbg !621
  %15 = load ptr, ptr %left, align 8, !dbg !621
  store ptr %15, ptr %x, align 8, !dbg !622
  br label %if.end9, !dbg !623

if.else:                                          ; preds = %while.body
  %16 = load i32, ptr %cmp, align 4, !dbg !624
  %cmp6 = icmp sgt i32 %16, 0, !dbg !626
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !627

if.then7:                                         ; preds = %if.else
  %17 = load ptr, ptr %x, align 8, !dbg !628
  %right = getelementptr inbounds %struct.rbnode_s, ptr %17, i32 0, i32 5, !dbg !630
  %18 = load ptr, ptr %right, align 8, !dbg !630
  store ptr %18, ptr %x, align 8, !dbg !631
  br label %if.end9

if.else8:                                         ; preds = %if.else
  %19 = load ptr, ptr %val.addr, align 8, !dbg !632
  %20 = load ptr, ptr %x, align 8, !dbg !634
  %value = getelementptr inbounds %struct.rbnode_s, ptr %20, i32 0, i32 1, !dbg !635
  store ptr %19, ptr %value, align 8, !dbg !636
  store i32 0, ptr %retval, align 4, !dbg !637
  br label %return, !dbg !637

if.end9:                                          ; preds = %if.then7, %if.then
  br label %while.cond, !dbg !601, !llvm.loop !638

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.declare(metadata ptr %n, metadata !640, metadata !DIExpression()), !dbg !641
  %21 = load ptr, ptr %table.addr, align 8, !dbg !642
  %mem_alloc = getelementptr inbounds %struct.treetable_s, ptr %21, i32 0, i32 4, !dbg !643
  %22 = load ptr, ptr %mem_alloc, align 8, !dbg !643
  %call10 = call ptr %22(i64 noundef 48), !dbg !642
  store ptr %call10, ptr %n, align 8, !dbg !641
  %23 = load ptr, ptr %val.addr, align 8, !dbg !644
  %24 = load ptr, ptr %n, align 8, !dbg !645
  %value11 = getelementptr inbounds %struct.rbnode_s, ptr %24, i32 0, i32 1, !dbg !646
  store ptr %23, ptr %value11, align 8, !dbg !647
  %25 = load ptr, ptr %key.addr, align 8, !dbg !648
  %26 = load ptr, ptr %n, align 8, !dbg !649
  %key12 = getelementptr inbounds %struct.rbnode_s, ptr %26, i32 0, i32 0, !dbg !650
  store ptr %25, ptr %key12, align 8, !dbg !651
  %27 = load ptr, ptr %y, align 8, !dbg !652
  %28 = load ptr, ptr %n, align 8, !dbg !653
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %28, i32 0, i32 3, !dbg !654
  store ptr %27, ptr %parent, align 8, !dbg !655
  %29 = load ptr, ptr %table.addr, align 8, !dbg !656
  %sentinel13 = getelementptr inbounds %struct.treetable_s, ptr %29, i32 0, i32 1, !dbg !657
  %30 = load ptr, ptr %sentinel13, align 8, !dbg !657
  %31 = load ptr, ptr %n, align 8, !dbg !658
  %left14 = getelementptr inbounds %struct.rbnode_s, ptr %31, i32 0, i32 4, !dbg !659
  store ptr %30, ptr %left14, align 8, !dbg !660
  %32 = load ptr, ptr %table.addr, align 8, !dbg !661
  %sentinel15 = getelementptr inbounds %struct.treetable_s, ptr %32, i32 0, i32 1, !dbg !662
  %33 = load ptr, ptr %sentinel15, align 8, !dbg !662
  %34 = load ptr, ptr %n, align 8, !dbg !663
  %right16 = getelementptr inbounds %struct.rbnode_s, ptr %34, i32 0, i32 5, !dbg !664
  store ptr %33, ptr %right16, align 8, !dbg !665
  %35 = load ptr, ptr %table.addr, align 8, !dbg !666
  %size = getelementptr inbounds %struct.treetable_s, ptr %35, i32 0, i32 2, !dbg !667
  %36 = load i64, ptr %size, align 8, !dbg !668
  %inc = add i64 %36, 1, !dbg !668
  store i64 %inc, ptr %size, align 8, !dbg !668
  %37 = load ptr, ptr %y, align 8, !dbg !669
  %38 = load ptr, ptr %table.addr, align 8, !dbg !671
  %sentinel17 = getelementptr inbounds %struct.treetable_s, ptr %38, i32 0, i32 1, !dbg !672
  %39 = load ptr, ptr %sentinel17, align 8, !dbg !672
  %cmp18 = icmp eq ptr %37, %39, !dbg !673
  br i1 %cmp18, label %if.then19, label %if.else21, !dbg !674

if.then19:                                        ; preds = %while.end
  %40 = load ptr, ptr %n, align 8, !dbg !675
  %41 = load ptr, ptr %table.addr, align 8, !dbg !677
  %root20 = getelementptr inbounds %struct.treetable_s, ptr %41, i32 0, i32 0, !dbg !678
  store ptr %40, ptr %root20, align 8, !dbg !679
  %42 = load ptr, ptr %n, align 8, !dbg !680
  %color = getelementptr inbounds %struct.rbnode_s, ptr %42, i32 0, i32 2, !dbg !681
  store i8 1, ptr %color, align 8, !dbg !682
  br label %if.end32, !dbg !683

if.else21:                                        ; preds = %while.end
  %43 = load ptr, ptr %n, align 8, !dbg !684
  %color22 = getelementptr inbounds %struct.rbnode_s, ptr %43, i32 0, i32 2, !dbg !686
  store i8 0, ptr %color22, align 8, !dbg !687
  %44 = load ptr, ptr %table.addr, align 8, !dbg !688
  %cmp23 = getelementptr inbounds %struct.treetable_s, ptr %44, i32 0, i32 3, !dbg !690
  %45 = load ptr, ptr %cmp23, align 8, !dbg !690
  %46 = load ptr, ptr %key.addr, align 8, !dbg !691
  %47 = load ptr, ptr %y, align 8, !dbg !692
  %key24 = getelementptr inbounds %struct.rbnode_s, ptr %47, i32 0, i32 0, !dbg !693
  %48 = load ptr, ptr %key24, align 8, !dbg !693
  %call25 = call i32 %45(ptr noundef %46, ptr noundef %48), !dbg !688
  %cmp26 = icmp slt i32 %call25, 0, !dbg !694
  br i1 %cmp26, label %if.then27, label %if.else29, !dbg !695

if.then27:                                        ; preds = %if.else21
  %49 = load ptr, ptr %n, align 8, !dbg !696
  %50 = load ptr, ptr %y, align 8, !dbg !698
  %left28 = getelementptr inbounds %struct.rbnode_s, ptr %50, i32 0, i32 4, !dbg !699
  store ptr %49, ptr %left28, align 8, !dbg !700
  br label %if.end31, !dbg !701

if.else29:                                        ; preds = %if.else21
  %51 = load ptr, ptr %n, align 8, !dbg !702
  %52 = load ptr, ptr %y, align 8, !dbg !704
  %right30 = getelementptr inbounds %struct.rbnode_s, ptr %52, i32 0, i32 5, !dbg !705
  store ptr %51, ptr %right30, align 8, !dbg !706
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then27
  %53 = load ptr, ptr %table.addr, align 8, !dbg !707
  %54 = load ptr, ptr %n, align 8, !dbg !708
  call void @rebalance_after_insert(ptr noundef %53, ptr noundef %54), !dbg !709
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then19
  store i32 0, ptr %retval, align 4, !dbg !710
  br label %return, !dbg !710

return:                                           ; preds = %if.end32, %if.else8
  %55 = load i32, ptr %retval, align 4, !dbg !711
  ret i32 %55, !dbg !711
}

; Function Attrs: noinline nounwind uwtable
define internal void @rebalance_after_insert(ptr noundef %table, ptr noundef %z) #0 !dbg !712 {
entry:
  %table.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !713, metadata !DIExpression()), !dbg !714
  store ptr %z, ptr %z.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %z.addr, metadata !715, metadata !DIExpression()), !dbg !716
  call void @llvm.dbg.declare(metadata ptr %y, metadata !717, metadata !DIExpression()), !dbg !718
  br label %while.cond, !dbg !719

while.cond:                                       ; preds = %if.end69, %entry
  %0 = load ptr, ptr %z.addr, align 8, !dbg !720
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %0, i32 0, i32 3, !dbg !721
  %1 = load ptr, ptr %parent, align 8, !dbg !721
  %color = getelementptr inbounds %struct.rbnode_s, ptr %1, i32 0, i32 2, !dbg !722
  %2 = load i8, ptr %color, align 8, !dbg !722
  %conv = sext i8 %2 to i32, !dbg !720
  %cmp = icmp eq i32 %conv, 0, !dbg !723
  br i1 %cmp, label %while.body, label %while.end, !dbg !719

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %z.addr, align 8, !dbg !724
  %parent2 = getelementptr inbounds %struct.rbnode_s, ptr %3, i32 0, i32 3, !dbg !727
  %4 = load ptr, ptr %parent2, align 8, !dbg !727
  %5 = load ptr, ptr %z.addr, align 8, !dbg !728
  %parent3 = getelementptr inbounds %struct.rbnode_s, ptr %5, i32 0, i32 3, !dbg !729
  %6 = load ptr, ptr %parent3, align 8, !dbg !729
  %parent4 = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 3, !dbg !730
  %7 = load ptr, ptr %parent4, align 8, !dbg !730
  %left = getelementptr inbounds %struct.rbnode_s, ptr %7, i32 0, i32 4, !dbg !731
  %8 = load ptr, ptr %left, align 8, !dbg !731
  %cmp5 = icmp eq ptr %4, %8, !dbg !732
  br i1 %cmp5, label %if.then, label %if.else36, !dbg !733

if.then:                                          ; preds = %while.body
  %9 = load ptr, ptr %z.addr, align 8, !dbg !734
  %parent7 = getelementptr inbounds %struct.rbnode_s, ptr %9, i32 0, i32 3, !dbg !736
  %10 = load ptr, ptr %parent7, align 8, !dbg !736
  %parent8 = getelementptr inbounds %struct.rbnode_s, ptr %10, i32 0, i32 3, !dbg !737
  %11 = load ptr, ptr %parent8, align 8, !dbg !737
  %right = getelementptr inbounds %struct.rbnode_s, ptr %11, i32 0, i32 5, !dbg !738
  %12 = load ptr, ptr %right, align 8, !dbg !738
  store ptr %12, ptr %y, align 8, !dbg !739
  %13 = load ptr, ptr %y, align 8, !dbg !740
  %color9 = getelementptr inbounds %struct.rbnode_s, ptr %13, i32 0, i32 2, !dbg !742
  %14 = load i8, ptr %color9, align 8, !dbg !742
  %conv10 = sext i8 %14 to i32, !dbg !740
  %cmp11 = icmp eq i32 %conv10, 0, !dbg !743
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !744

if.then13:                                        ; preds = %if.then
  %15 = load ptr, ptr %z.addr, align 8, !dbg !745
  %parent14 = getelementptr inbounds %struct.rbnode_s, ptr %15, i32 0, i32 3, !dbg !747
  %16 = load ptr, ptr %parent14, align 8, !dbg !747
  %color15 = getelementptr inbounds %struct.rbnode_s, ptr %16, i32 0, i32 2, !dbg !748
  store i8 1, ptr %color15, align 8, !dbg !749
  %17 = load ptr, ptr %y, align 8, !dbg !750
  %color16 = getelementptr inbounds %struct.rbnode_s, ptr %17, i32 0, i32 2, !dbg !751
  store i8 1, ptr %color16, align 8, !dbg !752
  %18 = load ptr, ptr %z.addr, align 8, !dbg !753
  %parent17 = getelementptr inbounds %struct.rbnode_s, ptr %18, i32 0, i32 3, !dbg !754
  %19 = load ptr, ptr %parent17, align 8, !dbg !754
  %parent18 = getelementptr inbounds %struct.rbnode_s, ptr %19, i32 0, i32 3, !dbg !755
  %20 = load ptr, ptr %parent18, align 8, !dbg !755
  %color19 = getelementptr inbounds %struct.rbnode_s, ptr %20, i32 0, i32 2, !dbg !756
  store i8 0, ptr %color19, align 8, !dbg !757
  %21 = load ptr, ptr %z.addr, align 8, !dbg !758
  %parent20 = getelementptr inbounds %struct.rbnode_s, ptr %21, i32 0, i32 3, !dbg !759
  %22 = load ptr, ptr %parent20, align 8, !dbg !759
  %parent21 = getelementptr inbounds %struct.rbnode_s, ptr %22, i32 0, i32 3, !dbg !760
  %23 = load ptr, ptr %parent21, align 8, !dbg !760
  store ptr %23, ptr %z.addr, align 8, !dbg !761
  br label %if.end69, !dbg !762

if.else:                                          ; preds = %if.then
  %24 = load ptr, ptr %z.addr, align 8, !dbg !763
  %25 = load ptr, ptr %z.addr, align 8, !dbg !766
  %parent22 = getelementptr inbounds %struct.rbnode_s, ptr %25, i32 0, i32 3, !dbg !767
  %26 = load ptr, ptr %parent22, align 8, !dbg !767
  %right23 = getelementptr inbounds %struct.rbnode_s, ptr %26, i32 0, i32 5, !dbg !768
  %27 = load ptr, ptr %right23, align 8, !dbg !768
  %cmp24 = icmp eq ptr %24, %27, !dbg !769
  br i1 %cmp24, label %if.then26, label %if.end, !dbg !770

if.then26:                                        ; preds = %if.else
  %28 = load ptr, ptr %z.addr, align 8, !dbg !771
  %parent27 = getelementptr inbounds %struct.rbnode_s, ptr %28, i32 0, i32 3, !dbg !773
  %29 = load ptr, ptr %parent27, align 8, !dbg !773
  store ptr %29, ptr %z.addr, align 8, !dbg !774
  %30 = load ptr, ptr %table.addr, align 8, !dbg !775
  %31 = load ptr, ptr %z.addr, align 8, !dbg !776
  call void @rotate_left(ptr noundef %30, ptr noundef %31), !dbg !777
  br label %if.end, !dbg !778

if.end:                                           ; preds = %if.then26, %if.else
  %32 = load ptr, ptr %z.addr, align 8, !dbg !779
  %parent28 = getelementptr inbounds %struct.rbnode_s, ptr %32, i32 0, i32 3, !dbg !780
  %33 = load ptr, ptr %parent28, align 8, !dbg !780
  %color29 = getelementptr inbounds %struct.rbnode_s, ptr %33, i32 0, i32 2, !dbg !781
  store i8 1, ptr %color29, align 8, !dbg !782
  %34 = load ptr, ptr %z.addr, align 8, !dbg !783
  %parent30 = getelementptr inbounds %struct.rbnode_s, ptr %34, i32 0, i32 3, !dbg !784
  %35 = load ptr, ptr %parent30, align 8, !dbg !784
  %parent31 = getelementptr inbounds %struct.rbnode_s, ptr %35, i32 0, i32 3, !dbg !785
  %36 = load ptr, ptr %parent31, align 8, !dbg !785
  %color32 = getelementptr inbounds %struct.rbnode_s, ptr %36, i32 0, i32 2, !dbg !786
  store i8 0, ptr %color32, align 8, !dbg !787
  %37 = load ptr, ptr %table.addr, align 8, !dbg !788
  %38 = load ptr, ptr %z.addr, align 8, !dbg !789
  %parent33 = getelementptr inbounds %struct.rbnode_s, ptr %38, i32 0, i32 3, !dbg !790
  %39 = load ptr, ptr %parent33, align 8, !dbg !790
  %parent34 = getelementptr inbounds %struct.rbnode_s, ptr %39, i32 0, i32 3, !dbg !791
  %40 = load ptr, ptr %parent34, align 8, !dbg !791
  call void @rotate_right(ptr noundef %37, ptr noundef %40), !dbg !792
  br label %if.end69

if.else36:                                        ; preds = %while.body
  %41 = load ptr, ptr %z.addr, align 8, !dbg !793
  %parent37 = getelementptr inbounds %struct.rbnode_s, ptr %41, i32 0, i32 3, !dbg !795
  %42 = load ptr, ptr %parent37, align 8, !dbg !795
  %parent38 = getelementptr inbounds %struct.rbnode_s, ptr %42, i32 0, i32 3, !dbg !796
  %43 = load ptr, ptr %parent38, align 8, !dbg !796
  %left39 = getelementptr inbounds %struct.rbnode_s, ptr %43, i32 0, i32 4, !dbg !797
  %44 = load ptr, ptr %left39, align 8, !dbg !797
  store ptr %44, ptr %y, align 8, !dbg !798
  %45 = load ptr, ptr %y, align 8, !dbg !799
  %color40 = getelementptr inbounds %struct.rbnode_s, ptr %45, i32 0, i32 2, !dbg !801
  %46 = load i8, ptr %color40, align 8, !dbg !801
  %conv41 = sext i8 %46 to i32, !dbg !799
  %cmp42 = icmp eq i32 %conv41, 0, !dbg !802
  br i1 %cmp42, label %if.then44, label %if.else53, !dbg !803

if.then44:                                        ; preds = %if.else36
  %47 = load ptr, ptr %z.addr, align 8, !dbg !804
  %parent45 = getelementptr inbounds %struct.rbnode_s, ptr %47, i32 0, i32 3, !dbg !806
  %48 = load ptr, ptr %parent45, align 8, !dbg !806
  %color46 = getelementptr inbounds %struct.rbnode_s, ptr %48, i32 0, i32 2, !dbg !807
  store i8 1, ptr %color46, align 8, !dbg !808
  %49 = load ptr, ptr %y, align 8, !dbg !809
  %color47 = getelementptr inbounds %struct.rbnode_s, ptr %49, i32 0, i32 2, !dbg !810
  store i8 1, ptr %color47, align 8, !dbg !811
  %50 = load ptr, ptr %z.addr, align 8, !dbg !812
  %parent48 = getelementptr inbounds %struct.rbnode_s, ptr %50, i32 0, i32 3, !dbg !813
  %51 = load ptr, ptr %parent48, align 8, !dbg !813
  %parent49 = getelementptr inbounds %struct.rbnode_s, ptr %51, i32 0, i32 3, !dbg !814
  %52 = load ptr, ptr %parent49, align 8, !dbg !814
  %color50 = getelementptr inbounds %struct.rbnode_s, ptr %52, i32 0, i32 2, !dbg !815
  store i8 0, ptr %color50, align 8, !dbg !816
  %53 = load ptr, ptr %z.addr, align 8, !dbg !817
  %parent51 = getelementptr inbounds %struct.rbnode_s, ptr %53, i32 0, i32 3, !dbg !818
  %54 = load ptr, ptr %parent51, align 8, !dbg !818
  %parent52 = getelementptr inbounds %struct.rbnode_s, ptr %54, i32 0, i32 3, !dbg !819
  %55 = load ptr, ptr %parent52, align 8, !dbg !819
  store ptr %55, ptr %z.addr, align 8, !dbg !820
  br label %if.end69, !dbg !821

if.else53:                                        ; preds = %if.else36
  %56 = load ptr, ptr %z.addr, align 8, !dbg !822
  %57 = load ptr, ptr %z.addr, align 8, !dbg !825
  %parent54 = getelementptr inbounds %struct.rbnode_s, ptr %57, i32 0, i32 3, !dbg !826
  %58 = load ptr, ptr %parent54, align 8, !dbg !826
  %left55 = getelementptr inbounds %struct.rbnode_s, ptr %58, i32 0, i32 4, !dbg !827
  %59 = load ptr, ptr %left55, align 8, !dbg !827
  %cmp56 = icmp eq ptr %56, %59, !dbg !828
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !829

if.then58:                                        ; preds = %if.else53
  %60 = load ptr, ptr %z.addr, align 8, !dbg !830
  %parent59 = getelementptr inbounds %struct.rbnode_s, ptr %60, i32 0, i32 3, !dbg !832
  %61 = load ptr, ptr %parent59, align 8, !dbg !832
  store ptr %61, ptr %z.addr, align 8, !dbg !833
  %62 = load ptr, ptr %table.addr, align 8, !dbg !834
  %63 = load ptr, ptr %z.addr, align 8, !dbg !835
  call void @rotate_right(ptr noundef %62, ptr noundef %63), !dbg !836
  br label %if.end60, !dbg !837

if.end60:                                         ; preds = %if.then58, %if.else53
  %64 = load ptr, ptr %z.addr, align 8, !dbg !838
  %parent61 = getelementptr inbounds %struct.rbnode_s, ptr %64, i32 0, i32 3, !dbg !839
  %65 = load ptr, ptr %parent61, align 8, !dbg !839
  %color62 = getelementptr inbounds %struct.rbnode_s, ptr %65, i32 0, i32 2, !dbg !840
  store i8 1, ptr %color62, align 8, !dbg !841
  %66 = load ptr, ptr %z.addr, align 8, !dbg !842
  %parent63 = getelementptr inbounds %struct.rbnode_s, ptr %66, i32 0, i32 3, !dbg !843
  %67 = load ptr, ptr %parent63, align 8, !dbg !843
  %parent64 = getelementptr inbounds %struct.rbnode_s, ptr %67, i32 0, i32 3, !dbg !844
  %68 = load ptr, ptr %parent64, align 8, !dbg !844
  %color65 = getelementptr inbounds %struct.rbnode_s, ptr %68, i32 0, i32 2, !dbg !845
  store i8 0, ptr %color65, align 8, !dbg !846
  %69 = load ptr, ptr %table.addr, align 8, !dbg !847
  %70 = load ptr, ptr %z.addr, align 8, !dbg !848
  %parent66 = getelementptr inbounds %struct.rbnode_s, ptr %70, i32 0, i32 3, !dbg !849
  %71 = load ptr, ptr %parent66, align 8, !dbg !849
  %parent67 = getelementptr inbounds %struct.rbnode_s, ptr %71, i32 0, i32 3, !dbg !850
  %72 = load ptr, ptr %parent67, align 8, !dbg !850
  call void @rotate_left(ptr noundef %69, ptr noundef %72), !dbg !851
  br label %if.end69

if.end69:                                         ; preds = %if.then44, %if.end60, %if.then13, %if.end
  br label %while.cond, !dbg !719, !llvm.loop !852

while.end:                                        ; preds = %while.cond
  %73 = load ptr, ptr %table.addr, align 8, !dbg !854
  %root = getelementptr inbounds %struct.treetable_s, ptr %73, i32 0, i32 0, !dbg !855
  %74 = load ptr, ptr %root, align 8, !dbg !855
  %color70 = getelementptr inbounds %struct.rbnode_s, ptr %74, i32 0, i32 2, !dbg !856
  store i8 1, ptr %color70, align 8, !dbg !857
  ret void, !dbg !858
}

; Function Attrs: noinline nounwind uwtable
define internal void @rotate_left(ptr noundef %table, ptr noundef %x) #0 !dbg !859 {
entry:
  %table.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !860, metadata !DIExpression()), !dbg !861
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !862, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.declare(metadata ptr %y, metadata !864, metadata !DIExpression()), !dbg !865
  %0 = load ptr, ptr %x.addr, align 8, !dbg !866
  %right = getelementptr inbounds %struct.rbnode_s, ptr %0, i32 0, i32 5, !dbg !867
  %1 = load ptr, ptr %right, align 8, !dbg !867
  store ptr %1, ptr %y, align 8, !dbg !865
  %2 = load ptr, ptr %y, align 8, !dbg !868
  %left = getelementptr inbounds %struct.rbnode_s, ptr %2, i32 0, i32 4, !dbg !869
  %3 = load ptr, ptr %left, align 8, !dbg !869
  %4 = load ptr, ptr %x.addr, align 8, !dbg !870
  %right1 = getelementptr inbounds %struct.rbnode_s, ptr %4, i32 0, i32 5, !dbg !871
  store ptr %3, ptr %right1, align 8, !dbg !872
  %5 = load ptr, ptr %y, align 8, !dbg !873
  %left2 = getelementptr inbounds %struct.rbnode_s, ptr %5, i32 0, i32 4, !dbg !875
  %6 = load ptr, ptr %left2, align 8, !dbg !875
  %7 = load ptr, ptr %table.addr, align 8, !dbg !876
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %7, i32 0, i32 1, !dbg !877
  %8 = load ptr, ptr %sentinel, align 8, !dbg !877
  %cmp = icmp ne ptr %6, %8, !dbg !878
  br i1 %cmp, label %if.then, label %if.end, !dbg !879

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %x.addr, align 8, !dbg !880
  %10 = load ptr, ptr %y, align 8, !dbg !881
  %left3 = getelementptr inbounds %struct.rbnode_s, ptr %10, i32 0, i32 4, !dbg !882
  %11 = load ptr, ptr %left3, align 8, !dbg !882
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %11, i32 0, i32 3, !dbg !883
  store ptr %9, ptr %parent, align 8, !dbg !884
  br label %if.end, !dbg !881

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %x.addr, align 8, !dbg !885
  %parent4 = getelementptr inbounds %struct.rbnode_s, ptr %12, i32 0, i32 3, !dbg !886
  %13 = load ptr, ptr %parent4, align 8, !dbg !886
  %14 = load ptr, ptr %y, align 8, !dbg !887
  %parent5 = getelementptr inbounds %struct.rbnode_s, ptr %14, i32 0, i32 3, !dbg !888
  store ptr %13, ptr %parent5, align 8, !dbg !889
  %15 = load ptr, ptr %x.addr, align 8, !dbg !890
  %parent6 = getelementptr inbounds %struct.rbnode_s, ptr %15, i32 0, i32 3, !dbg !892
  %16 = load ptr, ptr %parent6, align 8, !dbg !892
  %17 = load ptr, ptr %table.addr, align 8, !dbg !893
  %sentinel7 = getelementptr inbounds %struct.treetable_s, ptr %17, i32 0, i32 1, !dbg !894
  %18 = load ptr, ptr %sentinel7, align 8, !dbg !894
  %cmp8 = icmp eq ptr %16, %18, !dbg !895
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !896

if.then9:                                         ; preds = %if.end
  %19 = load ptr, ptr %y, align 8, !dbg !897
  %20 = load ptr, ptr %table.addr, align 8, !dbg !898
  %root = getelementptr inbounds %struct.treetable_s, ptr %20, i32 0, i32 0, !dbg !899
  store ptr %19, ptr %root, align 8, !dbg !900
  br label %if.end20, !dbg !898

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %x.addr, align 8, !dbg !901
  %22 = load ptr, ptr %x.addr, align 8, !dbg !903
  %parent10 = getelementptr inbounds %struct.rbnode_s, ptr %22, i32 0, i32 3, !dbg !904
  %23 = load ptr, ptr %parent10, align 8, !dbg !904
  %left11 = getelementptr inbounds %struct.rbnode_s, ptr %23, i32 0, i32 4, !dbg !905
  %24 = load ptr, ptr %left11, align 8, !dbg !905
  %cmp12 = icmp eq ptr %21, %24, !dbg !906
  br i1 %cmp12, label %if.then13, label %if.else16, !dbg !907

if.then13:                                        ; preds = %if.else
  %25 = load ptr, ptr %y, align 8, !dbg !908
  %26 = load ptr, ptr %x.addr, align 8, !dbg !909
  %parent14 = getelementptr inbounds %struct.rbnode_s, ptr %26, i32 0, i32 3, !dbg !910
  %27 = load ptr, ptr %parent14, align 8, !dbg !910
  %left15 = getelementptr inbounds %struct.rbnode_s, ptr %27, i32 0, i32 4, !dbg !911
  store ptr %25, ptr %left15, align 8, !dbg !912
  br label %if.end20, !dbg !909

if.else16:                                        ; preds = %if.else
  %28 = load ptr, ptr %y, align 8, !dbg !913
  %29 = load ptr, ptr %x.addr, align 8, !dbg !914
  %parent17 = getelementptr inbounds %struct.rbnode_s, ptr %29, i32 0, i32 3, !dbg !915
  %30 = load ptr, ptr %parent17, align 8, !dbg !915
  %right18 = getelementptr inbounds %struct.rbnode_s, ptr %30, i32 0, i32 5, !dbg !916
  store ptr %28, ptr %right18, align 8, !dbg !917
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.else16, %if.then9
  %31 = load ptr, ptr %x.addr, align 8, !dbg !918
  %32 = load ptr, ptr %y, align 8, !dbg !919
  %left21 = getelementptr inbounds %struct.rbnode_s, ptr %32, i32 0, i32 4, !dbg !920
  store ptr %31, ptr %left21, align 8, !dbg !921
  %33 = load ptr, ptr %y, align 8, !dbg !922
  %34 = load ptr, ptr %x.addr, align 8, !dbg !923
  %parent22 = getelementptr inbounds %struct.rbnode_s, ptr %34, i32 0, i32 3, !dbg !924
  store ptr %33, ptr %parent22, align 8, !dbg !925
  ret void, !dbg !926
}

; Function Attrs: noinline nounwind uwtable
define internal void @rotate_right(ptr noundef %table, ptr noundef %x) #0 !dbg !927 {
entry:
  %table.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %y = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !928, metadata !DIExpression()), !dbg !929
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !930, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.declare(metadata ptr %y, metadata !932, metadata !DIExpression()), !dbg !933
  %0 = load ptr, ptr %x.addr, align 8, !dbg !934
  %left = getelementptr inbounds %struct.rbnode_s, ptr %0, i32 0, i32 4, !dbg !935
  %1 = load ptr, ptr %left, align 8, !dbg !935
  store ptr %1, ptr %y, align 8, !dbg !933
  %2 = load ptr, ptr %y, align 8, !dbg !936
  %right = getelementptr inbounds %struct.rbnode_s, ptr %2, i32 0, i32 5, !dbg !937
  %3 = load ptr, ptr %right, align 8, !dbg !937
  %4 = load ptr, ptr %x.addr, align 8, !dbg !938
  %left1 = getelementptr inbounds %struct.rbnode_s, ptr %4, i32 0, i32 4, !dbg !939
  store ptr %3, ptr %left1, align 8, !dbg !940
  %5 = load ptr, ptr %y, align 8, !dbg !941
  %right2 = getelementptr inbounds %struct.rbnode_s, ptr %5, i32 0, i32 5, !dbg !943
  %6 = load ptr, ptr %right2, align 8, !dbg !943
  %7 = load ptr, ptr %table.addr, align 8, !dbg !944
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %7, i32 0, i32 1, !dbg !945
  %8 = load ptr, ptr %sentinel, align 8, !dbg !945
  %cmp = icmp ne ptr %6, %8, !dbg !946
  br i1 %cmp, label %if.then, label %if.end, !dbg !947

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %x.addr, align 8, !dbg !948
  %10 = load ptr, ptr %y, align 8, !dbg !949
  %right3 = getelementptr inbounds %struct.rbnode_s, ptr %10, i32 0, i32 5, !dbg !950
  %11 = load ptr, ptr %right3, align 8, !dbg !950
  %parent = getelementptr inbounds %struct.rbnode_s, ptr %11, i32 0, i32 3, !dbg !951
  store ptr %9, ptr %parent, align 8, !dbg !952
  br label %if.end, !dbg !949

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %x.addr, align 8, !dbg !953
  %parent4 = getelementptr inbounds %struct.rbnode_s, ptr %12, i32 0, i32 3, !dbg !954
  %13 = load ptr, ptr %parent4, align 8, !dbg !954
  %14 = load ptr, ptr %y, align 8, !dbg !955
  %parent5 = getelementptr inbounds %struct.rbnode_s, ptr %14, i32 0, i32 3, !dbg !956
  store ptr %13, ptr %parent5, align 8, !dbg !957
  %15 = load ptr, ptr %x.addr, align 8, !dbg !958
  %parent6 = getelementptr inbounds %struct.rbnode_s, ptr %15, i32 0, i32 3, !dbg !960
  %16 = load ptr, ptr %parent6, align 8, !dbg !960
  %17 = load ptr, ptr %table.addr, align 8, !dbg !961
  %sentinel7 = getelementptr inbounds %struct.treetable_s, ptr %17, i32 0, i32 1, !dbg !962
  %18 = load ptr, ptr %sentinel7, align 8, !dbg !962
  %cmp8 = icmp eq ptr %16, %18, !dbg !963
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !964

if.then9:                                         ; preds = %if.end
  %19 = load ptr, ptr %y, align 8, !dbg !965
  %20 = load ptr, ptr %table.addr, align 8, !dbg !966
  %root = getelementptr inbounds %struct.treetable_s, ptr %20, i32 0, i32 0, !dbg !967
  store ptr %19, ptr %root, align 8, !dbg !968
  br label %if.end20, !dbg !966

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %x.addr, align 8, !dbg !969
  %22 = load ptr, ptr %x.addr, align 8, !dbg !971
  %parent10 = getelementptr inbounds %struct.rbnode_s, ptr %22, i32 0, i32 3, !dbg !972
  %23 = load ptr, ptr %parent10, align 8, !dbg !972
  %right11 = getelementptr inbounds %struct.rbnode_s, ptr %23, i32 0, i32 5, !dbg !973
  %24 = load ptr, ptr %right11, align 8, !dbg !973
  %cmp12 = icmp eq ptr %21, %24, !dbg !974
  br i1 %cmp12, label %if.then13, label %if.else16, !dbg !975

if.then13:                                        ; preds = %if.else
  %25 = load ptr, ptr %y, align 8, !dbg !976
  %26 = load ptr, ptr %x.addr, align 8, !dbg !977
  %parent14 = getelementptr inbounds %struct.rbnode_s, ptr %26, i32 0, i32 3, !dbg !978
  %27 = load ptr, ptr %parent14, align 8, !dbg !978
  %right15 = getelementptr inbounds %struct.rbnode_s, ptr %27, i32 0, i32 5, !dbg !979
  store ptr %25, ptr %right15, align 8, !dbg !980
  br label %if.end20, !dbg !977

if.else16:                                        ; preds = %if.else
  %28 = load ptr, ptr %y, align 8, !dbg !981
  %29 = load ptr, ptr %x.addr, align 8, !dbg !982
  %parent17 = getelementptr inbounds %struct.rbnode_s, ptr %29, i32 0, i32 3, !dbg !983
  %30 = load ptr, ptr %parent17, align 8, !dbg !983
  %left18 = getelementptr inbounds %struct.rbnode_s, ptr %30, i32 0, i32 4, !dbg !984
  store ptr %28, ptr %left18, align 8, !dbg !985
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.else16, %if.then9
  %31 = load ptr, ptr %x.addr, align 8, !dbg !986
  %32 = load ptr, ptr %y, align 8, !dbg !987
  %right21 = getelementptr inbounds %struct.rbnode_s, ptr %32, i32 0, i32 5, !dbg !988
  store ptr %31, ptr %right21, align 8, !dbg !989
  %33 = load ptr, ptr %y, align 8, !dbg !990
  %34 = load ptr, ptr %x.addr, align 8, !dbg !991
  %parent22 = getelementptr inbounds %struct.rbnode_s, ptr %34, i32 0, i32 3, !dbg !992
  store ptr %33, ptr %parent22, align 8, !dbg !993
  ret void, !dbg !994
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @balanced(ptr noundef %t) #0 !dbg !995 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !998, metadata !DIExpression()), !dbg !999
  %0 = load ptr, ptr %t.addr, align 8, !dbg !1000
  %1 = load ptr, ptr %t.addr, align 8, !dbg !1001
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !1002
  %2 = load ptr, ptr %root, align 8, !dbg !1002
  %call = call i32 @tree_height(ptr noundef %0, ptr noundef %2), !dbg !1003
  %cmp = icmp ne i32 %call, -1, !dbg !1004
  %conv = zext i1 %cmp to i32, !dbg !1004
  ret i32 %conv, !dbg !1005
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @tree_height(ptr noundef %t, ptr noundef %n) #0 !dbg !1006 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %left_h = alloca i32, align 4
  %right_h = alloca i32, align 4
  %diff = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1009, metadata !DIExpression()), !dbg !1010
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1011, metadata !DIExpression()), !dbg !1012
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1013
  %1 = load ptr, ptr %t.addr, align 8, !dbg !1015
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 1, !dbg !1016
  %2 = load ptr, ptr %sentinel, align 8, !dbg !1016
  %cmp = icmp eq ptr %0, %2, !dbg !1017
  br i1 %cmp, label %if.then, label %if.end, !dbg !1018

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1019
  br label %return, !dbg !1019

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata ptr %left_h, metadata !1020, metadata !DIExpression()), !dbg !1021
  %3 = load ptr, ptr %t.addr, align 8, !dbg !1022
  %4 = load ptr, ptr %n.addr, align 8, !dbg !1023
  %left = getelementptr inbounds %struct.rbnode_s, ptr %4, i32 0, i32 4, !dbg !1024
  %5 = load ptr, ptr %left, align 8, !dbg !1024
  %call = call i32 @tree_height(ptr noundef %3, ptr noundef %5), !dbg !1025
  store i32 %call, ptr %left_h, align 4, !dbg !1021
  call void @llvm.dbg.declare(metadata ptr %right_h, metadata !1026, metadata !DIExpression()), !dbg !1027
  %6 = load ptr, ptr %t.addr, align 8, !dbg !1028
  %7 = load ptr, ptr %n.addr, align 8, !dbg !1029
  %right = getelementptr inbounds %struct.rbnode_s, ptr %7, i32 0, i32 5, !dbg !1030
  %8 = load ptr, ptr %right, align 8, !dbg !1030
  %call1 = call i32 @tree_height(ptr noundef %6, ptr noundef %8), !dbg !1031
  store i32 %call1, ptr %right_h, align 4, !dbg !1027
  %9 = load i32, ptr %left_h, align 4, !dbg !1032
  %cmp2 = icmp eq i32 %9, -1, !dbg !1034
  %10 = load i32, ptr %right_h, align 4
  %cmp3 = icmp eq i32 %10, -1
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp3, !dbg !1035
  br i1 %or.cond, label %if.then4, label %if.end5, !dbg !1035

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !1036
  br label %return, !dbg !1036

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata ptr %diff, metadata !1037, metadata !DIExpression()), !dbg !1038
  %11 = load i32, ptr %left_h, align 4, !dbg !1039
  %12 = load i32, ptr %right_h, align 4, !dbg !1040
  %sub = sub nsw i32 %11, %12, !dbg !1041
  store i32 %sub, ptr %diff, align 4, !dbg !1038
  %13 = load i32, ptr %diff, align 4, !dbg !1042
  %cmp6 = icmp sgt i32 %13, 1, !dbg !1044
  %14 = load i32, ptr %diff, align 4
  %cmp8 = icmp slt i32 %14, -1
  %or.cond1 = select i1 %cmp6, i1 true, i1 %cmp8, !dbg !1045
  br i1 %or.cond1, label %if.then9, label %if.end10, !dbg !1045

if.then9:                                         ; preds = %if.end5
  store i32 -1, ptr %retval, align 4, !dbg !1046
  br label %return, !dbg !1046

if.end10:                                         ; preds = %if.end5
  %15 = load i32, ptr %left_h, align 4, !dbg !1047
  %16 = load i32, ptr %right_h, align 4, !dbg !1048
  %cmp11 = icmp sgt i32 %15, %16, !dbg !1049
  %17 = load i32, ptr %left_h, align 4, !dbg !1047
  %18 = load i32, ptr %right_h, align 4, !dbg !1047
  %cond = select i1 %cmp11, i32 %17, i32 %18, !dbg !1047
  %add = add nsw i32 1, %cond, !dbg !1050
  store i32 %add, ptr %retval, align 4, !dbg !1051
  br label %return, !dbg !1051

return:                                           ; preds = %if.end10, %if.then9, %if.then4, %if.then
  %19 = load i32, ptr %retval, align 4, !dbg !1052
  ret i32 %19, !dbg !1052
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sorted(ptr noundef %t) #0 !dbg !1053 {
entry:
  %t.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1054, metadata !DIExpression()), !dbg !1055
  %0 = load ptr, ptr %t.addr, align 8, !dbg !1056
  %1 = load ptr, ptr %t.addr, align 8, !dbg !1057
  %root = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 0, !dbg !1058
  %2 = load ptr, ptr %root, align 8, !dbg !1058
  %call = call i32 @sorted_helper(ptr noundef %0, ptr noundef %2, ptr noundef null, ptr noundef null), !dbg !1059
  ret i32 %call, !dbg !1060
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sorted_helper(ptr noundef %t, ptr noundef %n, ptr noundef %min, ptr noundef %max) #0 !dbg !1061 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %min.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  store ptr %t, ptr %t.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !1064, metadata !DIExpression()), !dbg !1065
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1066, metadata !DIExpression()), !dbg !1067
  store ptr %min, ptr %min.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !1068, metadata !DIExpression()), !dbg !1069
  store ptr %max, ptr %max.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !1070, metadata !DIExpression()), !dbg !1071
  %0 = load ptr, ptr %n.addr, align 8, !dbg !1072
  %1 = load ptr, ptr %t.addr, align 8, !dbg !1074
  %sentinel = getelementptr inbounds %struct.treetable_s, ptr %1, i32 0, i32 1, !dbg !1075
  %2 = load ptr, ptr %sentinel, align 8, !dbg !1075
  %cmp = icmp eq ptr %0, %2, !dbg !1076
  br i1 %cmp, label %if.then, label %if.end, !dbg !1077

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1078
  br label %return, !dbg !1078

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %min.addr, align 8, !dbg !1079
  %cmp1 = icmp ne ptr %3, null, !dbg !1081
  br i1 %cmp1, label %land.lhs.true, label %if.end5, !dbg !1082

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %t.addr, align 8, !dbg !1083
  %cmp2 = getelementptr inbounds %struct.treetable_s, ptr %4, i32 0, i32 3, !dbg !1084
  %5 = load ptr, ptr %cmp2, align 8, !dbg !1084
  %6 = load ptr, ptr %n.addr, align 8, !dbg !1085
  %key = getelementptr inbounds %struct.rbnode_s, ptr %6, i32 0, i32 0, !dbg !1086
  %7 = load ptr, ptr %key, align 8, !dbg !1086
  %8 = load ptr, ptr %min.addr, align 8, !dbg !1087
  %call = call i32 %5(ptr noundef %7, ptr noundef %8), !dbg !1083
  %cmp3 = icmp sle i32 %call, 0, !dbg !1088
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1089

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1090
  br label %return, !dbg !1090

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %max.addr, align 8, !dbg !1091
  %cmp6 = icmp ne ptr %9, null, !dbg !1093
  br i1 %cmp6, label %land.lhs.true7, label %if.end13, !dbg !1094

land.lhs.true7:                                   ; preds = %if.end5
  %10 = load ptr, ptr %t.addr, align 8, !dbg !1095
  %cmp8 = getelementptr inbounds %struct.treetable_s, ptr %10, i32 0, i32 3, !dbg !1096
  %11 = load ptr, ptr %cmp8, align 8, !dbg !1096
  %12 = load ptr, ptr %n.addr, align 8, !dbg !1097
  %key9 = getelementptr inbounds %struct.rbnode_s, ptr %12, i32 0, i32 0, !dbg !1098
  %13 = load ptr, ptr %key9, align 8, !dbg !1098
  %14 = load ptr, ptr %max.addr, align 8, !dbg !1099
  %call10 = call i32 %11(ptr noundef %13, ptr noundef %14), !dbg !1095
  %cmp11 = icmp sge i32 %call10, 0, !dbg !1100
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !1101

if.then12:                                        ; preds = %land.lhs.true7
  store i32 0, ptr %retval, align 4, !dbg !1102
  br label %return, !dbg !1102

if.end13:                                         ; preds = %land.lhs.true7, %if.end5
  %15 = load ptr, ptr %t.addr, align 8, !dbg !1103
  %16 = load ptr, ptr %n.addr, align 8, !dbg !1104
  %left = getelementptr inbounds %struct.rbnode_s, ptr %16, i32 0, i32 4, !dbg !1105
  %17 = load ptr, ptr %left, align 8, !dbg !1105
  %18 = load ptr, ptr %min.addr, align 8, !dbg !1106
  %19 = load ptr, ptr %n.addr, align 8, !dbg !1107
  %key14 = getelementptr inbounds %struct.rbnode_s, ptr %19, i32 0, i32 0, !dbg !1108
  %20 = load ptr, ptr %key14, align 8, !dbg !1108
  %call15 = call i32 @sorted_helper(ptr noundef %15, ptr noundef %17, ptr noundef %18, ptr noundef %20), !dbg !1109
  %tobool = icmp ne i32 %call15, 0, !dbg !1109
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1110

land.rhs:                                         ; preds = %if.end13
  %21 = load ptr, ptr %t.addr, align 8, !dbg !1111
  %22 = load ptr, ptr %n.addr, align 8, !dbg !1112
  %right = getelementptr inbounds %struct.rbnode_s, ptr %22, i32 0, i32 5, !dbg !1113
  %23 = load ptr, ptr %right, align 8, !dbg !1113
  %24 = load ptr, ptr %n.addr, align 8, !dbg !1114
  %key16 = getelementptr inbounds %struct.rbnode_s, ptr %24, i32 0, i32 0, !dbg !1115
  %25 = load ptr, ptr %key16, align 8, !dbg !1115
  %26 = load ptr, ptr %max.addr, align 8, !dbg !1116
  %call17 = call i32 @sorted_helper(ptr noundef %21, ptr noundef %23, ptr noundef %25, ptr noundef %26), !dbg !1117
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1110
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end13
  %27 = phi i1 [ false, %if.end13 ], [ %tobool18, %land.rhs ], !dbg !1118
  %land.ext = zext i1 %27 to i32, !dbg !1110
  store i32 %land.ext, ptr %retval, align 4, !dbg !1119
  br label %return, !dbg !1119

return:                                           ; preds = %land.end, %if.then12, %if.then4, %if.then
  %28 = load i32, ptr %retval, align 4, !dbg !1120
  ret i32 %28, !dbg !1120
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !1121 {
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
  %returned = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.dbg.declare(metadata ptr %k1, metadata !1124, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %k2, metadata !1126, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %k3, metadata !1128, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !1130, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !1132, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !1134, metadata !DIExpression()), !dbg !1135
  call void @klee_make_symbolic(ptr noundef %k1, i64 noundef 4, ptr noundef @.str), !dbg !1136
  call void @klee_make_symbolic(ptr noundef %k2, i64 noundef 4, ptr noundef @.str.1), !dbg !1137
  call void @klee_make_symbolic(ptr noundef %k3, i64 noundef 4, ptr noundef @.str.2), !dbg !1138
  call void @klee_make_symbolic(ptr noundef %v1, i64 noundef 4, ptr noundef @.str.3), !dbg !1139
  call void @klee_make_symbolic(ptr noundef %v2, i64 noundef 4, ptr noundef @.str.4), !dbg !1140
  call void @klee_make_symbolic(ptr noundef %v3, i64 noundef 4, ptr noundef @.str.5), !dbg !1141
  call void @llvm.dbg.declare(metadata ptr %t, metadata !1142, metadata !DIExpression()), !dbg !1147
  %call = call i32 @treetable_new(ptr noundef %t), !dbg !1148
  call void @llvm.dbg.declare(metadata ptr %out, metadata !1149, metadata !DIExpression()), !dbg !1150
  %0 = load ptr, ptr %t, align 8, !dbg !1151
  %call1 = call i32 @treetable_get_first_key(ptr noundef %0, ptr noundef %out), !dbg !1151
  %cmp = icmp eq i32 %call1, 6, !dbg !1151
  br i1 %cmp, label %if.end, label %if.else, !dbg !1154

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.6, ptr noundef @.str.7, i32 noundef 38, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1151
  unreachable, !dbg !1151

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %t, align 8, !dbg !1155
  %call2 = call i32 @treetable_add(ptr noundef %1, ptr noundef %k1, ptr noundef %v1), !dbg !1156
  %2 = load ptr, ptr %t, align 8, !dbg !1157
  %call3 = call i32 @treetable_add(ptr noundef %2, ptr noundef %k2, ptr noundef %v2), !dbg !1158
  %3 = load ptr, ptr %t, align 8, !dbg !1159
  %call4 = call i32 @treetable_add(ptr noundef %3, ptr noundef %k3, ptr noundef %v3), !dbg !1160
  %4 = load ptr, ptr %t, align 8, !dbg !1161
  %call5 = call i32 @sorted(ptr noundef %4), !dbg !1161
  %tobool = icmp ne i32 %call5, 0, !dbg !1161
  br i1 %tobool, label %if.end8, label %if.else7, !dbg !1164

if.else7:                                         ; preds = %if.end
  call void @__assert_fail(ptr noundef @.str.8, ptr noundef @.str.7, i32 noundef 47, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1161
  unreachable, !dbg !1161

if.end8:                                          ; preds = %if.end
  %5 = load ptr, ptr %t, align 8, !dbg !1165
  %call9 = call i32 @balanced(ptr noundef %5), !dbg !1165
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1165
  br i1 %tobool10, label %if.end13, label %if.else12, !dbg !1168

if.else12:                                        ; preds = %if.end8
  call void @__assert_fail(ptr noundef @.str.9, ptr noundef @.str.7, i32 noundef 48, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1165
  unreachable, !dbg !1165

if.end13:                                         ; preds = %if.end8
  %6 = load ptr, ptr %t, align 8, !dbg !1169
  %call14 = call i32 @treetable_get_first_key(ptr noundef %6, ptr noundef %out), !dbg !1169
  %cmp15 = icmp eq i32 %call14, 0, !dbg !1169
  br i1 %cmp15, label %if.end18, label %if.else17, !dbg !1172

if.else17:                                        ; preds = %if.end13
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str.7, i32 noundef 54, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1169
  unreachable, !dbg !1169

if.end18:                                         ; preds = %if.end13
  call void @llvm.dbg.declare(metadata ptr %returned, metadata !1173, metadata !DIExpression()), !dbg !1174
  %7 = load ptr, ptr %out, align 8, !dbg !1175
  %8 = load i32, ptr %7, align 4, !dbg !1176
  store i32 %8, ptr %returned, align 4, !dbg !1174
  %9 = load i32, ptr %returned, align 4, !dbg !1177
  %10 = load i32, ptr %k1, align 4, !dbg !1177
  %cmp19 = icmp sle i32 %9, %10, !dbg !1177
  br i1 %cmp19, label %if.end22, label %if.else21, !dbg !1180

if.else21:                                        ; preds = %if.end18
  call void @__assert_fail(ptr noundef @.str.11, ptr noundef @.str.7, i32 noundef 61, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1177
  unreachable, !dbg !1177

if.end22:                                         ; preds = %if.end18
  %11 = load i32, ptr %returned, align 4, !dbg !1181
  %12 = load i32, ptr %k2, align 4, !dbg !1181
  %cmp23 = icmp sle i32 %11, %12, !dbg !1181
  br i1 %cmp23, label %if.end26, label %if.else25, !dbg !1184

if.else25:                                        ; preds = %if.end22
  call void @__assert_fail(ptr noundef @.str.12, ptr noundef @.str.7, i32 noundef 62, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1181
  unreachable, !dbg !1181

if.end26:                                         ; preds = %if.end22
  %13 = load i32, ptr %returned, align 4, !dbg !1185
  %14 = load i32, ptr %k3, align 4, !dbg !1185
  %cmp27 = icmp sle i32 %13, %14, !dbg !1185
  br i1 %cmp27, label %if.end30, label %if.else29, !dbg !1188

if.else29:                                        ; preds = %if.end26
  call void @__assert_fail(ptr noundef @.str.13, ptr noundef @.str.7, i32 noundef 63, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1185
  unreachable, !dbg !1185

if.end30:                                         ; preds = %if.end26
  %15 = load i32, ptr %returned, align 4, !dbg !1189
  %16 = load i32, ptr %k1, align 4, !dbg !1189
  %cmp31 = icmp eq i32 %15, %16, !dbg !1189
  br i1 %cmp31, label %if.end37, label %lor.lhs.false, !dbg !1189

lor.lhs.false:                                    ; preds = %if.end30
  %17 = load i32, ptr %returned, align 4, !dbg !1189
  %18 = load i32, ptr %k2, align 4, !dbg !1189
  %cmp32 = icmp eq i32 %17, %18, !dbg !1189
  br i1 %cmp32, label %if.end37, label %lor.lhs.false33, !dbg !1189

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %19 = load i32, ptr %returned, align 4, !dbg !1189
  %20 = load i32, ptr %k3, align 4, !dbg !1189
  %cmp34 = icmp eq i32 %19, %20, !dbg !1189
  br i1 %cmp34, label %if.end37, label %if.else36, !dbg !1192

if.else36:                                        ; preds = %lor.lhs.false33
  call void @__assert_fail(ptr noundef @.str.14, ptr noundef @.str.7, i32 noundef 70, ptr noundef @__PRETTY_FUNCTION__.main) #7, !dbg !1189
  unreachable, !dbg !1189

if.end37:                                         ; preds = %if.end30, %lor.lhs.false, %lor.lhs.false33
  %21 = load ptr, ptr %t, align 8, !dbg !1193
  call void @treetable_destroy(ptr noundef %21), !dbg !1194
  ret i32 0, !dbg !1195
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

!llvm.dbg.cu = !{!60, !80}
!llvm.ident = !{!83, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "Ex3SymbTestSuite/treetable_get_first_key_symb.c", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "5706350e7118662586fb860d0b46820c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 21, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !3, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !3, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !3, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !3, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 57)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 48)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 120, elements: !31)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!31 = !{!32}
!32 = !DISubrange(count: 15)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 10)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 12)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 42)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !31)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !50, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !50, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 51)
!60 = distinct !DICompileUnit(language: DW_LANG_C11, file: !61, producer: "clang version 16.0.6 (https://github.com/llvm/llvm-project.git 7cbf1a2591520c2491aa35339f227775f4d3adf6)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !62, retainedTypes: !76, splitDebugInlining: false, nameTableKind: None)
!61 = !DIFile(filename: "../ex2/treetable.c", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "cd091c12d74f379a3d467a2d81b73c3b")
!62 = !{!63}
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cc_stat", file: !64, line: 29, baseType: !65, size: 32, elements: !66)
!64 = !DIFile(filename: "../ex2/common.h", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "e8c1045b469e28a9ccd16d92bf989e73")
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75}
!67 = !DIEnumerator(name: "CC_OK", value: 0)
!68 = !DIEnumerator(name: "CC_ERR_ALLOC", value: 1)
!69 = !DIEnumerator(name: "CC_ERR_INVALID_CAPACITY", value: 2)
!70 = !DIEnumerator(name: "CC_ERR_INVALID_RANGE", value: 3)
!71 = !DIEnumerator(name: "CC_ERR_MAX_CAPACITY", value: 4)
!72 = !DIEnumerator(name: "CC_ERR_KEY_NOT_FOUND", value: 6)
!73 = !DIEnumerator(name: "CC_ERR_VALUE_NOT_FOUND", value: 7)
!74 = !DIEnumerator(name: "CC_ERR_OUT_OF_RANGE", value: 8)
!75 = !DIEnumerator(name: "CC_ITER_END", value: 9)
!76 = !{!77, !79}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 16.0.6 (https://github.com/llvm/llvm-project.git 7cbf1a2591520c2491aa35339f227775f4d3adf6)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !62, retainedTypes: !81, globals: !82, splitDebugInlining: false, nameTableKind: None)
!81 = !{!77}
!82 = !{!0, !7, !9, !11, !13, !15, !17, !22, !27, !33, !38, !43, !48, !51, !53, !55}
!83 = !{!"clang version 16.0.6 (https://github.com/llvm/llvm-project.git 7cbf1a2591520c2491aa35339f227775f4d3adf6)"}
!84 = !{i32 7, !"Dwarf Version", i32 5}
!85 = !{i32 2, !"Debug Info Version", i32 3}
!86 = !{i32 1, !"wchar_size", i32 4}
!87 = !{i32 8, !"PIC Level", i32 2}
!88 = !{i32 7, !"PIE Level", i32 2}
!89 = !{i32 7, !"uwtable", i32 2}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = distinct !DISubprogram(name: "cmp", scope: !61, file: !61, line: 53, type: !92, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!92 = !DISubroutineType(types: !93)
!93 = !{!78, !94, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!96 = !{}
!97 = !DILocalVariable(name: "e1", arg: 1, scope: !91, file: !61, line: 53, type: !94)
!98 = !DILocation(line: 53, column: 21, scope: !91)
!99 = !DILocalVariable(name: "e2", arg: 2, scope: !91, file: !61, line: 53, type: !94)
!100 = !DILocation(line: 53, column: 37, scope: !91)
!101 = !DILocalVariable(name: "i", scope: !91, file: !61, line: 54, type: !78)
!102 = !DILocation(line: 54, column: 9, scope: !91)
!103 = !DILocation(line: 54, column: 22, scope: !91)
!104 = !DILocation(line: 54, column: 13, scope: !91)
!105 = !DILocalVariable(name: "j", scope: !91, file: !61, line: 55, type: !78)
!106 = !DILocation(line: 55, column: 9, scope: !91)
!107 = !DILocation(line: 55, column: 22, scope: !91)
!108 = !DILocation(line: 55, column: 13, scope: !91)
!109 = !DILocation(line: 57, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !91, file: !61, line: 57, column: 9)
!111 = !DILocation(line: 57, column: 13, scope: !110)
!112 = !DILocation(line: 57, column: 11, scope: !110)
!113 = !DILocation(line: 57, column: 9, scope: !91)
!114 = !DILocation(line: 58, column: 9, scope: !110)
!115 = !DILocation(line: 59, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !91, file: !61, line: 59, column: 9)
!117 = !DILocation(line: 59, column: 14, scope: !116)
!118 = !DILocation(line: 59, column: 11, scope: !116)
!119 = !DILocation(line: 59, column: 9, scope: !91)
!120 = !DILocation(line: 60, column: 9, scope: !116)
!121 = !DILocation(line: 61, column: 5, scope: !91)
!122 = !DILocation(line: 62, column: 1, scope: !91)
!123 = distinct !DISubprogram(name: "treetable_conf_init", scope: !61, file: !61, line: 70, type: !124, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "TreeTableConf", file: !128, line: 94, baseType: !129)
!128 = !DIFile(filename: "../ex2/treetable.h", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "065f0d2b52ad730b442c75c554f59b69")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "treetable_conf_s", file: !128, line: 89, size: 256, elements: !130)
!130 = !{!131, !133, !140, !144}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !129, file: !128, line: 90, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "mem_alloc", scope: !129, file: !128, line: 91, baseType: !134, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!79, !137}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 46, baseType: !139)
!138 = !DIFile(filename: "/tmp/llvm-160-install_O_D_A/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!139 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "mem_calloc", scope: !129, file: !128, line: 92, baseType: !141, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!79, !137, !137}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mem_free", scope: !129, file: !128, line: 93, baseType: !145, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !79}
!148 = !DILocalVariable(name: "conf", arg: 1, scope: !123, file: !61, line: 70, type: !126)
!149 = !DILocation(line: 70, column: 41, scope: !123)
!150 = !DILocation(line: 72, column: 5, scope: !123)
!151 = !DILocation(line: 72, column: 11, scope: !123)
!152 = !DILocation(line: 72, column: 22, scope: !123)
!153 = !DILocation(line: 73, column: 5, scope: !123)
!154 = !DILocation(line: 73, column: 11, scope: !123)
!155 = !DILocation(line: 73, column: 22, scope: !123)
!156 = !DILocation(line: 74, column: 5, scope: !123)
!157 = !DILocation(line: 74, column: 11, scope: !123)
!158 = !DILocation(line: 74, column: 22, scope: !123)
!159 = !DILocation(line: 75, column: 5, scope: !123)
!160 = !DILocation(line: 75, column: 11, scope: !123)
!161 = !DILocation(line: 75, column: 22, scope: !123)
!162 = !DILocation(line: 76, column: 1, scope: !123)
!163 = distinct !DISubprogram(name: "treetable_new", scope: !61, file: !61, line: 87, type: !164, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!164 = !DISubroutineType(types: !165)
!165 = !{!63, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "TreeTable", file: !128, line: 30, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "treetable_s", file: !61, line: 30, size: 448, elements: !170)
!170 = !{!171, !183, !184, !185, !186, !187, !188}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !169, file: !61, line: 31, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "RBNode", file: !128, line: 61, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode_s", file: !128, line: 37, size: 384, elements: !175)
!175 = !{!176, !177, !178, !179, !181, !182}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !174, file: !128, line: 40, baseType: !79, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !174, file: !128, line: 44, baseType: !79, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !174, file: !128, line: 48, baseType: !4, size: 8, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !174, file: !128, line: 52, baseType: !180, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !174, file: !128, line: 56, baseType: !180, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !174, file: !128, line: 60, baseType: !180, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !169, file: !61, line: 32, baseType: !172, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !169, file: !61, line: 33, baseType: !137, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !169, file: !61, line: 35, baseType: !132, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mem_alloc", scope: !169, file: !61, line: 36, baseType: !134, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mem_calloc", scope: !169, file: !61, line: 37, baseType: !141, size: 64, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "mem_free", scope: !169, file: !61, line: 38, baseType: !145, size: 64, offset: 384)
!189 = !DILocalVariable(name: "tt", arg: 1, scope: !163, file: !61, line: 87, type: !166)
!190 = !DILocation(line: 87, column: 40, scope: !163)
!191 = !DILocalVariable(name: "conf", scope: !163, file: !61, line: 89, type: !127)
!192 = !DILocation(line: 89, column: 19, scope: !163)
!193 = !DILocation(line: 90, column: 5, scope: !163)
!194 = !DILocation(line: 91, column: 38, scope: !163)
!195 = !DILocation(line: 91, column: 12, scope: !163)
!196 = !DILocation(line: 91, column: 5, scope: !163)
!197 = distinct !DISubprogram(name: "treetable_new_conf", scope: !61, file: !61, line: 107, type: !198, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!198 = !DISubroutineType(types: !199)
!199 = !{!63, !200, !166}
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!203 = !DILocalVariable(name: "conf", arg: 1, scope: !197, file: !61, line: 107, type: !200)
!204 = !DILocation(line: 107, column: 61, scope: !197)
!205 = !DILocalVariable(name: "tt", arg: 2, scope: !197, file: !61, line: 107, type: !166)
!206 = !DILocation(line: 107, column: 79, scope: !197)
!207 = !DILocalVariable(name: "table", scope: !197, file: !61, line: 109, type: !167)
!208 = !DILocation(line: 109, column: 16, scope: !197)
!209 = !DILocation(line: 109, column: 24, scope: !197)
!210 = !DILocation(line: 109, column: 30, scope: !197)
!211 = !DILocation(line: 111, column: 10, scope: !212)
!212 = distinct !DILexicalBlock(scope: !197, file: !61, line: 111, column: 9)
!213 = !DILocation(line: 111, column: 9, scope: !197)
!214 = !DILocation(line: 112, column: 9, scope: !212)
!215 = !DILocalVariable(name: "sentinel", scope: !197, file: !61, line: 114, type: !172)
!216 = !DILocation(line: 114, column: 13, scope: !197)
!217 = !DILocation(line: 114, column: 24, scope: !197)
!218 = !DILocation(line: 114, column: 30, scope: !197)
!219 = !DILocation(line: 116, column: 10, scope: !220)
!220 = distinct !DILexicalBlock(scope: !197, file: !61, line: 116, column: 9)
!221 = !DILocation(line: 116, column: 9, scope: !197)
!222 = !DILocation(line: 117, column: 9, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !61, line: 116, column: 20)
!224 = !DILocation(line: 117, column: 15, scope: !223)
!225 = !DILocation(line: 117, column: 24, scope: !223)
!226 = !DILocation(line: 118, column: 9, scope: !223)
!227 = !DILocation(line: 121, column: 5, scope: !197)
!228 = !DILocation(line: 121, column: 15, scope: !197)
!229 = !DILocation(line: 121, column: 23, scope: !197)
!230 = !DILocation(line: 123, column: 5, scope: !197)
!231 = !DILocation(line: 123, column: 12, scope: !197)
!232 = !DILocation(line: 123, column: 23, scope: !197)
!233 = !DILocation(line: 124, column: 25, scope: !197)
!234 = !DILocation(line: 124, column: 31, scope: !197)
!235 = !DILocation(line: 124, column: 5, scope: !197)
!236 = !DILocation(line: 124, column: 12, scope: !197)
!237 = !DILocation(line: 124, column: 23, scope: !197)
!238 = !DILocation(line: 125, column: 25, scope: !197)
!239 = !DILocation(line: 125, column: 31, scope: !197)
!240 = !DILocation(line: 125, column: 5, scope: !197)
!241 = !DILocation(line: 125, column: 12, scope: !197)
!242 = !DILocation(line: 125, column: 23, scope: !197)
!243 = !DILocation(line: 126, column: 25, scope: !197)
!244 = !DILocation(line: 126, column: 31, scope: !197)
!245 = !DILocation(line: 126, column: 5, scope: !197)
!246 = !DILocation(line: 126, column: 12, scope: !197)
!247 = !DILocation(line: 126, column: 23, scope: !197)
!248 = !DILocation(line: 127, column: 25, scope: !197)
!249 = !DILocation(line: 127, column: 31, scope: !197)
!250 = !DILocation(line: 127, column: 5, scope: !197)
!251 = !DILocation(line: 127, column: 12, scope: !197)
!252 = !DILocation(line: 127, column: 23, scope: !197)
!253 = !DILocation(line: 128, column: 25, scope: !197)
!254 = !DILocation(line: 128, column: 5, scope: !197)
!255 = !DILocation(line: 128, column: 12, scope: !197)
!256 = !DILocation(line: 128, column: 23, scope: !197)
!257 = !DILocation(line: 129, column: 25, scope: !197)
!258 = !DILocation(line: 129, column: 5, scope: !197)
!259 = !DILocation(line: 129, column: 12, scope: !197)
!260 = !DILocation(line: 129, column: 23, scope: !197)
!261 = !DILocation(line: 131, column: 11, scope: !197)
!262 = !DILocation(line: 131, column: 6, scope: !197)
!263 = !DILocation(line: 131, column: 9, scope: !197)
!264 = !DILocation(line: 132, column: 5, scope: !197)
!265 = !DILocation(line: 133, column: 1, scope: !197)
!266 = distinct !DISubprogram(name: "treetable_destroy", scope: !61, file: !61, line: 159, type: !267, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !167}
!269 = !DILocalVariable(name: "table", arg: 1, scope: !266, file: !61, line: 159, type: !167)
!270 = !DILocation(line: 159, column: 35, scope: !266)
!271 = !DILocation(line: 161, column: 18, scope: !266)
!272 = !DILocation(line: 161, column: 25, scope: !266)
!273 = !DILocation(line: 161, column: 32, scope: !266)
!274 = !DILocation(line: 161, column: 5, scope: !266)
!275 = !DILocation(line: 163, column: 5, scope: !266)
!276 = !DILocation(line: 163, column: 12, scope: !266)
!277 = !DILocation(line: 163, column: 21, scope: !266)
!278 = !DILocation(line: 163, column: 28, scope: !266)
!279 = !DILocation(line: 164, column: 5, scope: !266)
!280 = !DILocation(line: 164, column: 12, scope: !266)
!281 = !DILocation(line: 164, column: 21, scope: !266)
!282 = !DILocation(line: 165, column: 1, scope: !266)
!283 = distinct !DISubprogram(name: "tree_destroy", scope: !61, file: !61, line: 141, type: !284, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !96)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !167, !172}
!286 = !DILocalVariable(name: "table", arg: 1, scope: !283, file: !61, line: 141, type: !167)
!287 = !DILocation(line: 141, column: 37, scope: !283)
!288 = !DILocalVariable(name: "n", arg: 2, scope: !283, file: !61, line: 141, type: !172)
!289 = !DILocation(line: 141, column: 52, scope: !283)
!290 = !DILocation(line: 143, column: 9, scope: !291)
!291 = distinct !DILexicalBlock(scope: !283, file: !61, line: 143, column: 9)
!292 = !DILocation(line: 143, column: 14, scope: !291)
!293 = !DILocation(line: 143, column: 21, scope: !291)
!294 = !DILocation(line: 143, column: 11, scope: !291)
!295 = !DILocation(line: 143, column: 9, scope: !283)
!296 = !DILocation(line: 146, column: 18, scope: !283)
!297 = !DILocation(line: 146, column: 25, scope: !283)
!298 = !DILocation(line: 146, column: 28, scope: !283)
!299 = !DILocation(line: 146, column: 5, scope: !283)
!300 = !DILocation(line: 147, column: 18, scope: !283)
!301 = !DILocation(line: 147, column: 25, scope: !283)
!302 = !DILocation(line: 147, column: 28, scope: !283)
!303 = !DILocation(line: 147, column: 5, scope: !283)
!304 = !DILocation(line: 149, column: 5, scope: !283)
!305 = !DILocation(line: 149, column: 12, scope: !283)
!306 = !DILocation(line: 149, column: 21, scope: !283)
!307 = !DILocation(line: 150, column: 1, scope: !283)
!308 = distinct !DISubprogram(name: "treetable_get", scope: !61, file: !61, line: 177, type: !309, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!309 = !DISubroutineType(types: !310)
!310 = !{!63, !311, !94, !314}
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!315 = !DILocalVariable(name: "table", arg: 1, scope: !308, file: !61, line: 177, type: !311)
!316 = !DILocation(line: 177, column: 52, scope: !308)
!317 = !DILocalVariable(name: "key", arg: 2, scope: !308, file: !61, line: 177, type: !94)
!318 = !DILocation(line: 177, column: 71, scope: !308)
!319 = !DILocalVariable(name: "out", arg: 3, scope: !308, file: !61, line: 177, type: !314)
!320 = !DILocation(line: 177, column: 83, scope: !308)
!321 = !DILocalVariable(name: "node", scope: !308, file: !61, line: 179, type: !172)
!322 = !DILocation(line: 179, column: 13, scope: !308)
!323 = !DILocation(line: 179, column: 41, scope: !308)
!324 = !DILocation(line: 179, column: 48, scope: !308)
!325 = !DILocation(line: 179, column: 20, scope: !308)
!326 = !DILocation(line: 181, column: 10, scope: !327)
!327 = distinct !DILexicalBlock(scope: !308, file: !61, line: 181, column: 9)
!328 = !DILocation(line: 181, column: 9, scope: !308)
!329 = !DILocation(line: 182, column: 9, scope: !327)
!330 = !DILocation(line: 184, column: 12, scope: !308)
!331 = !DILocation(line: 184, column: 18, scope: !308)
!332 = !DILocation(line: 184, column: 6, scope: !308)
!333 = !DILocation(line: 184, column: 10, scope: !308)
!334 = !DILocation(line: 185, column: 5, scope: !308)
!335 = !DILocation(line: 186, column: 1, scope: !308)
!336 = distinct !DISubprogram(name: "get_tree_node_by_key", scope: !61, file: !61, line: 473, type: !337, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !96)
!337 = !DISubroutineType(types: !338)
!338 = !{!172, !311, !94}
!339 = !DILocalVariable(name: "table", arg: 1, scope: !336, file: !61, line: 473, type: !311)
!340 = !DILocation(line: 473, column: 61, scope: !336)
!341 = !DILocalVariable(name: "key", arg: 2, scope: !336, file: !61, line: 473, type: !94)
!342 = !DILocation(line: 473, column: 80, scope: !336)
!343 = !DILocation(line: 475, column: 9, scope: !344)
!344 = distinct !DILexicalBlock(scope: !336, file: !61, line: 475, column: 9)
!345 = !DILocation(line: 475, column: 16, scope: !344)
!346 = !DILocation(line: 475, column: 21, scope: !344)
!347 = !DILocation(line: 475, column: 9, scope: !336)
!348 = !DILocation(line: 476, column: 9, scope: !344)
!349 = !DILocalVariable(name: "n", scope: !336, file: !61, line: 478, type: !172)
!350 = !DILocation(line: 478, column: 13, scope: !336)
!351 = !DILocation(line: 478, column: 17, scope: !336)
!352 = !DILocation(line: 478, column: 24, scope: !336)
!353 = !DILocalVariable(name: "s", scope: !336, file: !61, line: 479, type: !172)
!354 = !DILocation(line: 479, column: 13, scope: !336)
!355 = !DILocation(line: 479, column: 17, scope: !336)
!356 = !DILocation(line: 479, column: 24, scope: !336)
!357 = !DILocalVariable(name: "cmp", scope: !336, file: !61, line: 481, type: !78)
!358 = !DILocation(line: 481, column: 9, scope: !336)
!359 = !DILocation(line: 482, column: 5, scope: !336)
!360 = !DILocation(line: 483, column: 15, scope: !361)
!361 = distinct !DILexicalBlock(scope: !336, file: !61, line: 482, column: 8)
!362 = !DILocation(line: 483, column: 22, scope: !361)
!363 = !DILocation(line: 483, column: 26, scope: !361)
!364 = !DILocation(line: 483, column: 31, scope: !361)
!365 = !DILocation(line: 483, column: 34, scope: !361)
!366 = !DILocation(line: 483, column: 13, scope: !361)
!367 = !DILocation(line: 485, column: 13, scope: !368)
!368 = distinct !DILexicalBlock(scope: !361, file: !61, line: 485, column: 13)
!369 = !DILocation(line: 485, column: 17, scope: !368)
!370 = !DILocation(line: 485, column: 13, scope: !361)
!371 = !DILocation(line: 486, column: 17, scope: !368)
!372 = !DILocation(line: 486, column: 20, scope: !368)
!373 = !DILocation(line: 486, column: 15, scope: !368)
!374 = !DILocation(line: 486, column: 13, scope: !368)
!375 = !DILocation(line: 487, column: 18, scope: !376)
!376 = distinct !DILexicalBlock(scope: !368, file: !61, line: 487, column: 18)
!377 = !DILocation(line: 487, column: 22, scope: !376)
!378 = !DILocation(line: 487, column: 18, scope: !368)
!379 = !DILocation(line: 488, column: 17, scope: !376)
!380 = !DILocation(line: 488, column: 20, scope: !376)
!381 = !DILocation(line: 488, column: 15, scope: !376)
!382 = !DILocation(line: 490, column: 20, scope: !376)
!383 = !DILocation(line: 490, column: 13, scope: !376)
!384 = !DILocation(line: 491, column: 14, scope: !336)
!385 = !DILocation(line: 491, column: 19, scope: !336)
!386 = !DILocation(line: 491, column: 16, scope: !336)
!387 = !DILocation(line: 491, column: 21, scope: !336)
!388 = !DILocation(line: 491, column: 5, scope: !361)
!389 = distinct !{!389, !359, !390, !391}
!390 = !DILocation(line: 491, column: 32, scope: !336)
!391 = !{!"llvm.loop.mustprogress"}
!392 = !DILocation(line: 493, column: 5, scope: !336)
!393 = !DILocation(line: 494, column: 1, scope: !336)
!394 = distinct !DISubprogram(name: "treetable_get_first_key", scope: !61, file: !61, line: 198, type: !395, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!395 = !DISubroutineType(types: !396)
!396 = !{!63, !311, !314}
!397 = !DILocalVariable(name: "table", arg: 1, scope: !394, file: !61, line: 198, type: !311)
!398 = !DILocation(line: 198, column: 62, scope: !394)
!399 = !DILocalVariable(name: "out", arg: 2, scope: !394, file: !61, line: 198, type: !314)
!400 = !DILocation(line: 198, column: 76, scope: !394)
!401 = !DILocalVariable(name: "node", scope: !394, file: !61, line: 200, type: !172)
!402 = !DILocation(line: 200, column: 13, scope: !394)
!403 = !DILocation(line: 200, column: 29, scope: !394)
!404 = !DILocation(line: 200, column: 36, scope: !394)
!405 = !DILocation(line: 200, column: 43, scope: !394)
!406 = !DILocation(line: 200, column: 20, scope: !394)
!407 = !DILocation(line: 202, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !394, file: !61, line: 202, column: 9)
!409 = !DILocation(line: 202, column: 17, scope: !408)
!410 = !DILocation(line: 202, column: 24, scope: !408)
!411 = !DILocation(line: 202, column: 14, scope: !408)
!412 = !DILocation(line: 202, column: 9, scope: !394)
!413 = !DILocation(line: 203, column: 16, scope: !414)
!414 = distinct !DILexicalBlock(scope: !408, file: !61, line: 202, column: 34)
!415 = !DILocation(line: 203, column: 22, scope: !414)
!416 = !DILocation(line: 203, column: 10, scope: !414)
!417 = !DILocation(line: 203, column: 14, scope: !414)
!418 = !DILocation(line: 204, column: 9, scope: !414)
!419 = !DILocation(line: 206, column: 5, scope: !394)
!420 = !DILocation(line: 207, column: 1, scope: !394)
!421 = distinct !DISubprogram(name: "tree_min", scope: !61, file: !61, line: 389, type: !422, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !96)
!422 = !DISubroutineType(types: !423)
!423 = !{!172, !311, !172}
!424 = !DILocalVariable(name: "table", arg: 1, scope: !421, file: !61, line: 389, type: !311)
!425 = !DILocation(line: 389, column: 56, scope: !421)
!426 = !DILocalVariable(name: "n", arg: 2, scope: !421, file: !61, line: 389, type: !172)
!427 = !DILocation(line: 389, column: 71, scope: !421)
!428 = !DILocalVariable(name: "s", scope: !421, file: !61, line: 391, type: !172)
!429 = !DILocation(line: 391, column: 13, scope: !421)
!430 = !DILocation(line: 391, column: 17, scope: !421)
!431 = !DILocation(line: 391, column: 24, scope: !421)
!432 = !DILocation(line: 393, column: 5, scope: !421)
!433 = !DILocation(line: 393, column: 12, scope: !421)
!434 = !DILocation(line: 393, column: 15, scope: !421)
!435 = !DILocation(line: 393, column: 23, scope: !421)
!436 = !DILocation(line: 393, column: 20, scope: !421)
!437 = !DILocation(line: 394, column: 13, scope: !421)
!438 = !DILocation(line: 394, column: 16, scope: !421)
!439 = !DILocation(line: 394, column: 11, scope: !421)
!440 = distinct !{!440, !432, !438, !391}
!441 = !DILocation(line: 395, column: 12, scope: !421)
!442 = !DILocation(line: 395, column: 5, scope: !421)
!443 = distinct !DISubprogram(name: "treetable_get_greater_than", scope: !61, file: !61, line: 219, type: !309, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!444 = !DILocalVariable(name: "table", arg: 1, scope: !443, file: !61, line: 219, type: !311)
!445 = !DILocation(line: 219, column: 65, scope: !443)
!446 = !DILocalVariable(name: "key", arg: 2, scope: !443, file: !61, line: 219, type: !94)
!447 = !DILocation(line: 219, column: 84, scope: !443)
!448 = !DILocalVariable(name: "out", arg: 3, scope: !443, file: !61, line: 219, type: !314)
!449 = !DILocation(line: 219, column: 96, scope: !443)
!450 = !DILocalVariable(name: "n", scope: !443, file: !61, line: 221, type: !172)
!451 = !DILocation(line: 221, column: 13, scope: !443)
!452 = !DILocation(line: 221, column: 38, scope: !443)
!453 = !DILocation(line: 221, column: 45, scope: !443)
!454 = !DILocation(line: 221, column: 17, scope: !443)
!455 = !DILocalVariable(name: "s", scope: !443, file: !61, line: 222, type: !172)
!456 = !DILocation(line: 222, column: 13, scope: !443)
!457 = !DILocation(line: 222, column: 36, scope: !443)
!458 = !DILocation(line: 222, column: 43, scope: !443)
!459 = !DILocation(line: 222, column: 17, scope: !443)
!460 = !DILocation(line: 224, column: 9, scope: !461)
!461 = distinct !DILexicalBlock(scope: !443, file: !61, line: 224, column: 9)
!462 = !DILocation(line: 224, column: 11, scope: !461)
!463 = !DILocation(line: 225, column: 16, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !61, line: 224, column: 17)
!465 = !DILocation(line: 225, column: 19, scope: !464)
!466 = !DILocation(line: 225, column: 10, scope: !464)
!467 = !DILocation(line: 225, column: 14, scope: !464)
!468 = !DILocation(line: 226, column: 9, scope: !464)
!469 = !DILocation(line: 228, column: 5, scope: !443)
!470 = !DILocation(line: 229, column: 1, scope: !443)
!471 = distinct !DISubprogram(name: "get_successor_node", scope: !61, file: !61, line: 504, type: !422, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !96)
!472 = !DILocalVariable(name: "table", arg: 1, scope: !471, file: !61, line: 504, type: !311)
!473 = !DILocation(line: 504, column: 59, scope: !471)
!474 = !DILocalVariable(name: "x", arg: 2, scope: !471, file: !61, line: 504, type: !172)
!475 = !DILocation(line: 504, column: 74, scope: !471)
!476 = !DILocation(line: 506, column: 9, scope: !477)
!477 = distinct !DILexicalBlock(scope: !471, file: !61, line: 506, column: 9)
!478 = !DILocation(line: 506, column: 11, scope: !477)
!479 = !DILocation(line: 506, column: 9, scope: !471)
!480 = !DILocation(line: 507, column: 9, scope: !477)
!481 = !DILocation(line: 509, column: 9, scope: !482)
!482 = distinct !DILexicalBlock(scope: !471, file: !61, line: 509, column: 9)
!483 = !DILocation(line: 509, column: 12, scope: !482)
!484 = !DILocation(line: 509, column: 21, scope: !482)
!485 = !DILocation(line: 509, column: 28, scope: !482)
!486 = !DILocation(line: 509, column: 18, scope: !482)
!487 = !DILocation(line: 509, column: 9, scope: !471)
!488 = !DILocation(line: 510, column: 25, scope: !482)
!489 = !DILocation(line: 510, column: 32, scope: !482)
!490 = !DILocation(line: 510, column: 35, scope: !482)
!491 = !DILocation(line: 510, column: 16, scope: !482)
!492 = !DILocation(line: 510, column: 9, scope: !482)
!493 = !DILocalVariable(name: "y", scope: !471, file: !61, line: 512, type: !172)
!494 = !DILocation(line: 512, column: 13, scope: !471)
!495 = !DILocation(line: 512, column: 17, scope: !471)
!496 = !DILocation(line: 512, column: 20, scope: !471)
!497 = !DILocation(line: 514, column: 5, scope: !471)
!498 = !DILocation(line: 514, column: 12, scope: !471)
!499 = !DILocation(line: 514, column: 17, scope: !471)
!500 = !DILocation(line: 514, column: 24, scope: !471)
!501 = !DILocation(line: 514, column: 14, scope: !471)
!502 = !DILocation(line: 514, column: 33, scope: !471)
!503 = !DILocation(line: 514, column: 36, scope: !471)
!504 = !DILocation(line: 514, column: 41, scope: !471)
!505 = !DILocation(line: 514, column: 44, scope: !471)
!506 = !DILocation(line: 514, column: 38, scope: !471)
!507 = !DILocation(line: 515, column: 13, scope: !508)
!508 = distinct !DILexicalBlock(scope: !471, file: !61, line: 514, column: 51)
!509 = !DILocation(line: 515, column: 11, scope: !508)
!510 = !DILocation(line: 516, column: 13, scope: !508)
!511 = !DILocation(line: 516, column: 16, scope: !508)
!512 = !DILocation(line: 516, column: 11, scope: !508)
!513 = distinct !{!513, !497, !514, !391}
!514 = !DILocation(line: 517, column: 5, scope: !471)
!515 = !DILocation(line: 518, column: 12, scope: !471)
!516 = !DILocation(line: 518, column: 5, scope: !471)
!517 = !DILocation(line: 519, column: 1, scope: !471)
!518 = distinct !DISubprogram(name: "treetable_size", scope: !61, file: !61, line: 239, type: !519, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!519 = !DISubroutineType(types: !520)
!520 = !{!137, !311}
!521 = !DILocalVariable(name: "table", arg: 1, scope: !518, file: !61, line: 239, type: !311)
!522 = !DILocation(line: 239, column: 47, scope: !518)
!523 = !DILocation(line: 241, column: 12, scope: !518)
!524 = !DILocation(line: 241, column: 19, scope: !518)
!525 = !DILocation(line: 241, column: 5, scope: !518)
!526 = distinct !DISubprogram(name: "treetable_contains_key", scope: !61, file: !61, line: 252, type: !527, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!527 = !DISubroutineType(types: !528)
!528 = !{!529, !311, !94}
!529 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!530 = !DILocalVariable(name: "table", arg: 1, scope: !526, file: !61, line: 252, type: !311)
!531 = !DILocation(line: 252, column: 53, scope: !526)
!532 = !DILocalVariable(name: "key", arg: 2, scope: !526, file: !61, line: 252, type: !94)
!533 = !DILocation(line: 252, column: 72, scope: !526)
!534 = !DILocalVariable(name: "node", scope: !526, file: !61, line: 254, type: !172)
!535 = !DILocation(line: 254, column: 13, scope: !526)
!536 = !DILocation(line: 254, column: 41, scope: !526)
!537 = !DILocation(line: 254, column: 48, scope: !526)
!538 = !DILocation(line: 254, column: 20, scope: !526)
!539 = !DILocation(line: 256, column: 9, scope: !540)
!540 = distinct !DILexicalBlock(scope: !526, file: !61, line: 256, column: 9)
!541 = !DILocation(line: 256, column: 9, scope: !526)
!542 = !DILocation(line: 257, column: 9, scope: !540)
!543 = !DILocation(line: 259, column: 5, scope: !526)
!544 = !DILocation(line: 260, column: 1, scope: !526)
!545 = distinct !DISubprogram(name: "treetable_contains_value", scope: !61, file: !61, line: 270, type: !546, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!546 = !DISubroutineType(types: !547)
!547 = !{!137, !311, !94}
!548 = !DILocalVariable(name: "table", arg: 1, scope: !545, file: !61, line: 270, type: !311)
!549 = !DILocation(line: 270, column: 57, scope: !545)
!550 = !DILocalVariable(name: "value", arg: 2, scope: !545, file: !61, line: 270, type: !94)
!551 = !DILocation(line: 270, column: 76, scope: !545)
!552 = !DILocalVariable(name: "node", scope: !545, file: !61, line: 272, type: !172)
!553 = !DILocation(line: 272, column: 13, scope: !545)
!554 = !DILocation(line: 272, column: 29, scope: !545)
!555 = !DILocation(line: 272, column: 36, scope: !545)
!556 = !DILocation(line: 272, column: 43, scope: !545)
!557 = !DILocation(line: 272, column: 20, scope: !545)
!558 = !DILocalVariable(name: "o", scope: !545, file: !61, line: 274, type: !137)
!559 = !DILocation(line: 274, column: 12, scope: !545)
!560 = !DILocation(line: 275, column: 5, scope: !545)
!561 = !DILocation(line: 275, column: 12, scope: !545)
!562 = !DILocation(line: 275, column: 20, scope: !545)
!563 = !DILocation(line: 275, column: 27, scope: !545)
!564 = !DILocation(line: 275, column: 17, scope: !545)
!565 = !DILocation(line: 276, column: 13, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !61, line: 276, column: 13)
!567 = distinct !DILexicalBlock(scope: !545, file: !61, line: 275, column: 37)
!568 = !DILocation(line: 276, column: 19, scope: !566)
!569 = !DILocation(line: 276, column: 28, scope: !566)
!570 = !DILocation(line: 276, column: 25, scope: !566)
!571 = !DILocation(line: 276, column: 13, scope: !567)
!572 = !DILocation(line: 277, column: 14, scope: !566)
!573 = !DILocation(line: 277, column: 13, scope: !566)
!574 = !DILocation(line: 278, column: 35, scope: !567)
!575 = !DILocation(line: 278, column: 42, scope: !567)
!576 = !DILocation(line: 278, column: 16, scope: !567)
!577 = !DILocation(line: 278, column: 14, scope: !567)
!578 = distinct !{!578, !560, !579, !391}
!579 = !DILocation(line: 279, column: 5, scope: !545)
!580 = !DILocation(line: 280, column: 12, scope: !545)
!581 = !DILocation(line: 280, column: 5, scope: !545)
!582 = distinct !DISubprogram(name: "treetable_add", scope: !61, file: !61, line: 297, type: !583, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!583 = !DISubroutineType(types: !584)
!584 = !{!63, !167, !79, !79}
!585 = !DILocalVariable(name: "table", arg: 1, scope: !582, file: !61, line: 297, type: !167)
!586 = !DILocation(line: 297, column: 39, scope: !582)
!587 = !DILocalVariable(name: "key", arg: 2, scope: !582, file: !61, line: 297, type: !79)
!588 = !DILocation(line: 297, column: 52, scope: !582)
!589 = !DILocalVariable(name: "val", arg: 3, scope: !582, file: !61, line: 297, type: !79)
!590 = !DILocation(line: 297, column: 63, scope: !582)
!591 = !DILocalVariable(name: "y", scope: !582, file: !61, line: 299, type: !172)
!592 = !DILocation(line: 299, column: 13, scope: !582)
!593 = !DILocation(line: 299, column: 17, scope: !582)
!594 = !DILocation(line: 299, column: 24, scope: !582)
!595 = !DILocalVariable(name: "x", scope: !582, file: !61, line: 300, type: !172)
!596 = !DILocation(line: 300, column: 13, scope: !582)
!597 = !DILocation(line: 300, column: 17, scope: !582)
!598 = !DILocation(line: 300, column: 24, scope: !582)
!599 = !DILocalVariable(name: "cmp", scope: !582, file: !61, line: 302, type: !78)
!600 = !DILocation(line: 302, column: 9, scope: !582)
!601 = !DILocation(line: 303, column: 5, scope: !582)
!602 = !DILocation(line: 303, column: 12, scope: !582)
!603 = !DILocation(line: 303, column: 17, scope: !582)
!604 = !DILocation(line: 303, column: 24, scope: !582)
!605 = !DILocation(line: 303, column: 14, scope: !582)
!606 = !DILocation(line: 304, column: 15, scope: !607)
!607 = distinct !DILexicalBlock(scope: !582, file: !61, line: 303, column: 34)
!608 = !DILocation(line: 304, column: 22, scope: !607)
!609 = !DILocation(line: 304, column: 26, scope: !607)
!610 = !DILocation(line: 304, column: 31, scope: !607)
!611 = !DILocation(line: 304, column: 34, scope: !607)
!612 = !DILocation(line: 304, column: 13, scope: !607)
!613 = !DILocation(line: 305, column: 15, scope: !607)
!614 = !DILocation(line: 305, column: 13, scope: !607)
!615 = !DILocation(line: 307, column: 13, scope: !616)
!616 = distinct !DILexicalBlock(scope: !607, file: !61, line: 307, column: 13)
!617 = !DILocation(line: 307, column: 17, scope: !616)
!618 = !DILocation(line: 307, column: 13, scope: !607)
!619 = !DILocation(line: 308, column: 17, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !61, line: 307, column: 22)
!621 = !DILocation(line: 308, column: 20, scope: !620)
!622 = !DILocation(line: 308, column: 15, scope: !620)
!623 = !DILocation(line: 309, column: 9, scope: !620)
!624 = !DILocation(line: 309, column: 20, scope: !625)
!625 = distinct !DILexicalBlock(scope: !616, file: !61, line: 309, column: 20)
!626 = !DILocation(line: 309, column: 24, scope: !625)
!627 = !DILocation(line: 309, column: 20, scope: !616)
!628 = !DILocation(line: 310, column: 17, scope: !629)
!629 = distinct !DILexicalBlock(scope: !625, file: !61, line: 309, column: 29)
!630 = !DILocation(line: 310, column: 20, scope: !629)
!631 = !DILocation(line: 310, column: 15, scope: !629)
!632 = !DILocation(line: 312, column: 24, scope: !633)
!633 = distinct !DILexicalBlock(scope: !625, file: !61, line: 311, column: 16)
!634 = !DILocation(line: 312, column: 13, scope: !633)
!635 = !DILocation(line: 312, column: 16, scope: !633)
!636 = !DILocation(line: 312, column: 22, scope: !633)
!637 = !DILocation(line: 313, column: 13, scope: !633)
!638 = distinct !{!638, !601, !639, !391}
!639 = !DILocation(line: 315, column: 5, scope: !582)
!640 = !DILocalVariable(name: "n", scope: !582, file: !61, line: 316, type: !172)
!641 = !DILocation(line: 316, column: 13, scope: !582)
!642 = !DILocation(line: 316, column: 17, scope: !582)
!643 = !DILocation(line: 316, column: 24, scope: !582)
!644 = !DILocation(line: 318, column: 17, scope: !582)
!645 = !DILocation(line: 318, column: 5, scope: !582)
!646 = !DILocation(line: 318, column: 8, scope: !582)
!647 = !DILocation(line: 318, column: 15, scope: !582)
!648 = !DILocation(line: 319, column: 17, scope: !582)
!649 = !DILocation(line: 319, column: 5, scope: !582)
!650 = !DILocation(line: 319, column: 8, scope: !582)
!651 = !DILocation(line: 319, column: 15, scope: !582)
!652 = !DILocation(line: 320, column: 17, scope: !582)
!653 = !DILocation(line: 320, column: 5, scope: !582)
!654 = !DILocation(line: 320, column: 8, scope: !582)
!655 = !DILocation(line: 320, column: 15, scope: !582)
!656 = !DILocation(line: 321, column: 17, scope: !582)
!657 = !DILocation(line: 321, column: 24, scope: !582)
!658 = !DILocation(line: 321, column: 5, scope: !582)
!659 = !DILocation(line: 321, column: 8, scope: !582)
!660 = !DILocation(line: 321, column: 15, scope: !582)
!661 = !DILocation(line: 322, column: 17, scope: !582)
!662 = !DILocation(line: 322, column: 24, scope: !582)
!663 = !DILocation(line: 322, column: 5, scope: !582)
!664 = !DILocation(line: 322, column: 8, scope: !582)
!665 = !DILocation(line: 322, column: 15, scope: !582)
!666 = !DILocation(line: 324, column: 5, scope: !582)
!667 = !DILocation(line: 324, column: 12, scope: !582)
!668 = !DILocation(line: 324, column: 16, scope: !582)
!669 = !DILocation(line: 326, column: 9, scope: !670)
!670 = distinct !DILexicalBlock(scope: !582, file: !61, line: 326, column: 9)
!671 = !DILocation(line: 326, column: 14, scope: !670)
!672 = !DILocation(line: 326, column: 21, scope: !670)
!673 = !DILocation(line: 326, column: 11, scope: !670)
!674 = !DILocation(line: 326, column: 9, scope: !582)
!675 = !DILocation(line: 327, column: 23, scope: !676)
!676 = distinct !DILexicalBlock(scope: !670, file: !61, line: 326, column: 31)
!677 = !DILocation(line: 327, column: 9, scope: !676)
!678 = !DILocation(line: 327, column: 16, scope: !676)
!679 = !DILocation(line: 327, column: 21, scope: !676)
!680 = !DILocation(line: 328, column: 9, scope: !676)
!681 = !DILocation(line: 328, column: 12, scope: !676)
!682 = !DILocation(line: 328, column: 21, scope: !676)
!683 = !DILocation(line: 329, column: 5, scope: !676)
!684 = !DILocation(line: 330, column: 9, scope: !685)
!685 = distinct !DILexicalBlock(scope: !670, file: !61, line: 329, column: 12)
!686 = !DILocation(line: 330, column: 12, scope: !685)
!687 = !DILocation(line: 330, column: 18, scope: !685)
!688 = !DILocation(line: 331, column: 13, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !61, line: 331, column: 13)
!690 = !DILocation(line: 331, column: 20, scope: !689)
!691 = !DILocation(line: 331, column: 24, scope: !689)
!692 = !DILocation(line: 331, column: 29, scope: !689)
!693 = !DILocation(line: 331, column: 32, scope: !689)
!694 = !DILocation(line: 331, column: 37, scope: !689)
!695 = !DILocation(line: 331, column: 13, scope: !685)
!696 = !DILocation(line: 332, column: 23, scope: !697)
!697 = distinct !DILexicalBlock(scope: !689, file: !61, line: 331, column: 42)
!698 = !DILocation(line: 332, column: 13, scope: !697)
!699 = !DILocation(line: 332, column: 16, scope: !697)
!700 = !DILocation(line: 332, column: 21, scope: !697)
!701 = !DILocation(line: 333, column: 9, scope: !697)
!702 = !DILocation(line: 334, column: 24, scope: !703)
!703 = distinct !DILexicalBlock(scope: !689, file: !61, line: 333, column: 16)
!704 = !DILocation(line: 334, column: 13, scope: !703)
!705 = !DILocation(line: 334, column: 16, scope: !703)
!706 = !DILocation(line: 334, column: 22, scope: !703)
!707 = !DILocation(line: 336, column: 32, scope: !685)
!708 = !DILocation(line: 336, column: 39, scope: !685)
!709 = !DILocation(line: 336, column: 9, scope: !685)
!710 = !DILocation(line: 338, column: 5, scope: !582)
!711 = !DILocation(line: 339, column: 1, scope: !582)
!712 = distinct !DISubprogram(name: "rebalance_after_insert", scope: !61, file: !61, line: 347, type: !284, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !96)
!713 = !DILocalVariable(name: "table", arg: 1, scope: !712, file: !61, line: 347, type: !167)
!714 = !DILocation(line: 347, column: 47, scope: !712)
!715 = !DILocalVariable(name: "z", arg: 2, scope: !712, file: !61, line: 347, type: !172)
!716 = !DILocation(line: 347, column: 62, scope: !712)
!717 = !DILocalVariable(name: "y", scope: !712, file: !61, line: 349, type: !172)
!718 = !DILocation(line: 349, column: 13, scope: !712)
!719 = !DILocation(line: 351, column: 5, scope: !712)
!720 = !DILocation(line: 351, column: 12, scope: !712)
!721 = !DILocation(line: 351, column: 15, scope: !712)
!722 = !DILocation(line: 351, column: 23, scope: !712)
!723 = !DILocation(line: 351, column: 29, scope: !712)
!724 = !DILocation(line: 352, column: 13, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !61, line: 352, column: 13)
!726 = distinct !DILexicalBlock(scope: !712, file: !61, line: 351, column: 40)
!727 = !DILocation(line: 352, column: 16, scope: !725)
!728 = !DILocation(line: 352, column: 26, scope: !725)
!729 = !DILocation(line: 352, column: 29, scope: !725)
!730 = !DILocation(line: 352, column: 37, scope: !725)
!731 = !DILocation(line: 352, column: 45, scope: !725)
!732 = !DILocation(line: 352, column: 23, scope: !725)
!733 = !DILocation(line: 352, column: 13, scope: !726)
!734 = !DILocation(line: 353, column: 17, scope: !735)
!735 = distinct !DILexicalBlock(scope: !725, file: !61, line: 352, column: 51)
!736 = !DILocation(line: 353, column: 20, scope: !735)
!737 = !DILocation(line: 353, column: 28, scope: !735)
!738 = !DILocation(line: 353, column: 36, scope: !735)
!739 = !DILocation(line: 353, column: 15, scope: !735)
!740 = !DILocation(line: 354, column: 17, scope: !741)
!741 = distinct !DILexicalBlock(scope: !735, file: !61, line: 354, column: 17)
!742 = !DILocation(line: 354, column: 20, scope: !741)
!743 = !DILocation(line: 354, column: 26, scope: !741)
!744 = !DILocation(line: 354, column: 17, scope: !735)
!745 = !DILocation(line: 355, column: 17, scope: !746)
!746 = distinct !DILexicalBlock(scope: !741, file: !61, line: 354, column: 37)
!747 = !DILocation(line: 355, column: 20, scope: !746)
!748 = !DILocation(line: 355, column: 28, scope: !746)
!749 = !DILocation(line: 355, column: 42, scope: !746)
!750 = !DILocation(line: 356, column: 17, scope: !746)
!751 = !DILocation(line: 356, column: 20, scope: !746)
!752 = !DILocation(line: 356, column: 42, scope: !746)
!753 = !DILocation(line: 357, column: 17, scope: !746)
!754 = !DILocation(line: 357, column: 20, scope: !746)
!755 = !DILocation(line: 357, column: 28, scope: !746)
!756 = !DILocation(line: 357, column: 36, scope: !746)
!757 = !DILocation(line: 357, column: 42, scope: !746)
!758 = !DILocation(line: 358, column: 21, scope: !746)
!759 = !DILocation(line: 358, column: 24, scope: !746)
!760 = !DILocation(line: 358, column: 32, scope: !746)
!761 = !DILocation(line: 358, column: 19, scope: !746)
!762 = !DILocation(line: 359, column: 13, scope: !746)
!763 = !DILocation(line: 360, column: 21, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !61, line: 360, column: 21)
!765 = distinct !DILexicalBlock(scope: !741, file: !61, line: 359, column: 20)
!766 = !DILocation(line: 360, column: 26, scope: !764)
!767 = !DILocation(line: 360, column: 29, scope: !764)
!768 = !DILocation(line: 360, column: 37, scope: !764)
!769 = !DILocation(line: 360, column: 23, scope: !764)
!770 = !DILocation(line: 360, column: 21, scope: !765)
!771 = !DILocation(line: 361, column: 25, scope: !772)
!772 = distinct !DILexicalBlock(scope: !764, file: !61, line: 360, column: 44)
!773 = !DILocation(line: 361, column: 28, scope: !772)
!774 = !DILocation(line: 361, column: 23, scope: !772)
!775 = !DILocation(line: 362, column: 33, scope: !772)
!776 = !DILocation(line: 362, column: 40, scope: !772)
!777 = !DILocation(line: 362, column: 21, scope: !772)
!778 = !DILocation(line: 363, column: 17, scope: !772)
!779 = !DILocation(line: 364, column: 17, scope: !765)
!780 = !DILocation(line: 364, column: 20, scope: !765)
!781 = !DILocation(line: 364, column: 28, scope: !765)
!782 = !DILocation(line: 364, column: 42, scope: !765)
!783 = !DILocation(line: 365, column: 17, scope: !765)
!784 = !DILocation(line: 365, column: 20, scope: !765)
!785 = !DILocation(line: 365, column: 28, scope: !765)
!786 = !DILocation(line: 365, column: 36, scope: !765)
!787 = !DILocation(line: 365, column: 42, scope: !765)
!788 = !DILocation(line: 366, column: 30, scope: !765)
!789 = !DILocation(line: 366, column: 37, scope: !765)
!790 = !DILocation(line: 366, column: 40, scope: !765)
!791 = !DILocation(line: 366, column: 48, scope: !765)
!792 = !DILocation(line: 366, column: 17, scope: !765)
!793 = !DILocation(line: 369, column: 17, scope: !794)
!794 = distinct !DILexicalBlock(scope: !725, file: !61, line: 368, column: 16)
!795 = !DILocation(line: 369, column: 20, scope: !794)
!796 = !DILocation(line: 369, column: 28, scope: !794)
!797 = !DILocation(line: 369, column: 36, scope: !794)
!798 = !DILocation(line: 369, column: 15, scope: !794)
!799 = !DILocation(line: 370, column: 17, scope: !800)
!800 = distinct !DILexicalBlock(scope: !794, file: !61, line: 370, column: 17)
!801 = !DILocation(line: 370, column: 20, scope: !800)
!802 = !DILocation(line: 370, column: 26, scope: !800)
!803 = !DILocation(line: 370, column: 17, scope: !794)
!804 = !DILocation(line: 371, column: 17, scope: !805)
!805 = distinct !DILexicalBlock(scope: !800, file: !61, line: 370, column: 37)
!806 = !DILocation(line: 371, column: 20, scope: !805)
!807 = !DILocation(line: 371, column: 28, scope: !805)
!808 = !DILocation(line: 371, column: 42, scope: !805)
!809 = !DILocation(line: 372, column: 17, scope: !805)
!810 = !DILocation(line: 372, column: 20, scope: !805)
!811 = !DILocation(line: 372, column: 42, scope: !805)
!812 = !DILocation(line: 373, column: 17, scope: !805)
!813 = !DILocation(line: 373, column: 20, scope: !805)
!814 = !DILocation(line: 373, column: 28, scope: !805)
!815 = !DILocation(line: 373, column: 36, scope: !805)
!816 = !DILocation(line: 373, column: 42, scope: !805)
!817 = !DILocation(line: 374, column: 21, scope: !805)
!818 = !DILocation(line: 374, column: 24, scope: !805)
!819 = !DILocation(line: 374, column: 32, scope: !805)
!820 = !DILocation(line: 374, column: 19, scope: !805)
!821 = !DILocation(line: 375, column: 13, scope: !805)
!822 = !DILocation(line: 376, column: 21, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !61, line: 376, column: 21)
!824 = distinct !DILexicalBlock(scope: !800, file: !61, line: 375, column: 20)
!825 = !DILocation(line: 376, column: 26, scope: !823)
!826 = !DILocation(line: 376, column: 29, scope: !823)
!827 = !DILocation(line: 376, column: 37, scope: !823)
!828 = !DILocation(line: 376, column: 23, scope: !823)
!829 = !DILocation(line: 376, column: 21, scope: !824)
!830 = !DILocation(line: 377, column: 25, scope: !831)
!831 = distinct !DILexicalBlock(scope: !823, file: !61, line: 376, column: 43)
!832 = !DILocation(line: 377, column: 28, scope: !831)
!833 = !DILocation(line: 377, column: 23, scope: !831)
!834 = !DILocation(line: 378, column: 34, scope: !831)
!835 = !DILocation(line: 378, column: 41, scope: !831)
!836 = !DILocation(line: 378, column: 21, scope: !831)
!837 = !DILocation(line: 379, column: 17, scope: !831)
!838 = !DILocation(line: 380, column: 17, scope: !824)
!839 = !DILocation(line: 380, column: 20, scope: !824)
!840 = !DILocation(line: 380, column: 28, scope: !824)
!841 = !DILocation(line: 380, column: 42, scope: !824)
!842 = !DILocation(line: 381, column: 17, scope: !824)
!843 = !DILocation(line: 381, column: 20, scope: !824)
!844 = !DILocation(line: 381, column: 28, scope: !824)
!845 = !DILocation(line: 381, column: 36, scope: !824)
!846 = !DILocation(line: 381, column: 42, scope: !824)
!847 = !DILocation(line: 382, column: 29, scope: !824)
!848 = !DILocation(line: 382, column: 36, scope: !824)
!849 = !DILocation(line: 382, column: 39, scope: !824)
!850 = !DILocation(line: 382, column: 47, scope: !824)
!851 = !DILocation(line: 382, column: 17, scope: !824)
!852 = distinct !{!852, !719, !853, !391}
!853 = !DILocation(line: 385, column: 5, scope: !712)
!854 = !DILocation(line: 386, column: 5, scope: !712)
!855 = !DILocation(line: 386, column: 12, scope: !712)
!856 = !DILocation(line: 386, column: 18, scope: !712)
!857 = !DILocation(line: 386, column: 24, scope: !712)
!858 = !DILocation(line: 387, column: 1, scope: !712)
!859 = distinct !DISubprogram(name: "rotate_left", scope: !61, file: !61, line: 443, type: !284, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !96)
!860 = !DILocalVariable(name: "table", arg: 1, scope: !859, file: !61, line: 443, type: !167)
!861 = !DILocation(line: 443, column: 36, scope: !859)
!862 = !DILocalVariable(name: "x", arg: 2, scope: !859, file: !61, line: 443, type: !172)
!863 = !DILocation(line: 443, column: 51, scope: !859)
!864 = !DILocalVariable(name: "y", scope: !859, file: !61, line: 445, type: !172)
!865 = !DILocation(line: 445, column: 13, scope: !859)
!866 = !DILocation(line: 445, column: 17, scope: !859)
!867 = !DILocation(line: 445, column: 20, scope: !859)
!868 = !DILocation(line: 447, column: 16, scope: !859)
!869 = !DILocation(line: 447, column: 19, scope: !859)
!870 = !DILocation(line: 447, column: 5, scope: !859)
!871 = !DILocation(line: 447, column: 8, scope: !859)
!872 = !DILocation(line: 447, column: 14, scope: !859)
!873 = !DILocation(line: 449, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !859, file: !61, line: 449, column: 9)
!875 = !DILocation(line: 449, column: 12, scope: !874)
!876 = !DILocation(line: 449, column: 20, scope: !874)
!877 = !DILocation(line: 449, column: 27, scope: !874)
!878 = !DILocation(line: 449, column: 17, scope: !874)
!879 = !DILocation(line: 449, column: 9, scope: !859)
!880 = !DILocation(line: 450, column: 27, scope: !874)
!881 = !DILocation(line: 450, column: 9, scope: !874)
!882 = !DILocation(line: 450, column: 12, scope: !874)
!883 = !DILocation(line: 450, column: 18, scope: !874)
!884 = !DILocation(line: 450, column: 25, scope: !874)
!885 = !DILocation(line: 452, column: 17, scope: !859)
!886 = !DILocation(line: 452, column: 20, scope: !859)
!887 = !DILocation(line: 452, column: 5, scope: !859)
!888 = !DILocation(line: 452, column: 8, scope: !859)
!889 = !DILocation(line: 452, column: 15, scope: !859)
!890 = !DILocation(line: 454, column: 9, scope: !891)
!891 = distinct !DILexicalBlock(scope: !859, file: !61, line: 454, column: 9)
!892 = !DILocation(line: 454, column: 12, scope: !891)
!893 = !DILocation(line: 454, column: 22, scope: !891)
!894 = !DILocation(line: 454, column: 29, scope: !891)
!895 = !DILocation(line: 454, column: 19, scope: !891)
!896 = !DILocation(line: 454, column: 9, scope: !859)
!897 = !DILocation(line: 455, column: 23, scope: !891)
!898 = !DILocation(line: 455, column: 9, scope: !891)
!899 = !DILocation(line: 455, column: 16, scope: !891)
!900 = !DILocation(line: 455, column: 21, scope: !891)
!901 = !DILocation(line: 456, column: 14, scope: !902)
!902 = distinct !DILexicalBlock(scope: !891, file: !61, line: 456, column: 14)
!903 = !DILocation(line: 456, column: 19, scope: !902)
!904 = !DILocation(line: 456, column: 22, scope: !902)
!905 = !DILocation(line: 456, column: 30, scope: !902)
!906 = !DILocation(line: 456, column: 16, scope: !902)
!907 = !DILocation(line: 456, column: 14, scope: !891)
!908 = !DILocation(line: 457, column: 27, scope: !902)
!909 = !DILocation(line: 457, column: 9, scope: !902)
!910 = !DILocation(line: 457, column: 12, scope: !902)
!911 = !DILocation(line: 457, column: 20, scope: !902)
!912 = !DILocation(line: 457, column: 25, scope: !902)
!913 = !DILocation(line: 459, column: 28, scope: !902)
!914 = !DILocation(line: 459, column: 9, scope: !902)
!915 = !DILocation(line: 459, column: 12, scope: !902)
!916 = !DILocation(line: 459, column: 20, scope: !902)
!917 = !DILocation(line: 459, column: 26, scope: !902)
!918 = !DILocation(line: 461, column: 17, scope: !859)
!919 = !DILocation(line: 461, column: 5, scope: !859)
!920 = !DILocation(line: 461, column: 8, scope: !859)
!921 = !DILocation(line: 461, column: 15, scope: !859)
!922 = !DILocation(line: 462, column: 17, scope: !859)
!923 = !DILocation(line: 462, column: 5, scope: !859)
!924 = !DILocation(line: 462, column: 8, scope: !859)
!925 = !DILocation(line: 462, column: 15, scope: !859)
!926 = !DILocation(line: 463, column: 1, scope: !859)
!927 = distinct !DISubprogram(name: "rotate_right", scope: !61, file: !61, line: 414, type: !284, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !96)
!928 = !DILocalVariable(name: "table", arg: 1, scope: !927, file: !61, line: 414, type: !167)
!929 = !DILocation(line: 414, column: 37, scope: !927)
!930 = !DILocalVariable(name: "x", arg: 2, scope: !927, file: !61, line: 414, type: !172)
!931 = !DILocation(line: 414, column: 52, scope: !927)
!932 = !DILocalVariable(name: "y", scope: !927, file: !61, line: 416, type: !172)
!933 = !DILocation(line: 416, column: 13, scope: !927)
!934 = !DILocation(line: 416, column: 17, scope: !927)
!935 = !DILocation(line: 416, column: 20, scope: !927)
!936 = !DILocation(line: 418, column: 15, scope: !927)
!937 = !DILocation(line: 418, column: 18, scope: !927)
!938 = !DILocation(line: 418, column: 5, scope: !927)
!939 = !DILocation(line: 418, column: 8, scope: !927)
!940 = !DILocation(line: 418, column: 13, scope: !927)
!941 = !DILocation(line: 420, column: 9, scope: !942)
!942 = distinct !DILexicalBlock(scope: !927, file: !61, line: 420, column: 9)
!943 = !DILocation(line: 420, column: 12, scope: !942)
!944 = !DILocation(line: 420, column: 21, scope: !942)
!945 = !DILocation(line: 420, column: 28, scope: !942)
!946 = !DILocation(line: 420, column: 18, scope: !942)
!947 = !DILocation(line: 420, column: 9, scope: !927)
!948 = !DILocation(line: 421, column: 28, scope: !942)
!949 = !DILocation(line: 421, column: 9, scope: !942)
!950 = !DILocation(line: 421, column: 12, scope: !942)
!951 = !DILocation(line: 421, column: 19, scope: !942)
!952 = !DILocation(line: 421, column: 26, scope: !942)
!953 = !DILocation(line: 423, column: 17, scope: !927)
!954 = !DILocation(line: 423, column: 20, scope: !927)
!955 = !DILocation(line: 423, column: 5, scope: !927)
!956 = !DILocation(line: 423, column: 8, scope: !927)
!957 = !DILocation(line: 423, column: 15, scope: !927)
!958 = !DILocation(line: 425, column: 9, scope: !959)
!959 = distinct !DILexicalBlock(scope: !927, file: !61, line: 425, column: 9)
!960 = !DILocation(line: 425, column: 12, scope: !959)
!961 = !DILocation(line: 425, column: 22, scope: !959)
!962 = !DILocation(line: 425, column: 29, scope: !959)
!963 = !DILocation(line: 425, column: 19, scope: !959)
!964 = !DILocation(line: 425, column: 9, scope: !927)
!965 = !DILocation(line: 426, column: 23, scope: !959)
!966 = !DILocation(line: 426, column: 9, scope: !959)
!967 = !DILocation(line: 426, column: 16, scope: !959)
!968 = !DILocation(line: 426, column: 21, scope: !959)
!969 = !DILocation(line: 427, column: 14, scope: !970)
!970 = distinct !DILexicalBlock(scope: !959, file: !61, line: 427, column: 14)
!971 = !DILocation(line: 427, column: 19, scope: !970)
!972 = !DILocation(line: 427, column: 22, scope: !970)
!973 = !DILocation(line: 427, column: 30, scope: !970)
!974 = !DILocation(line: 427, column: 16, scope: !970)
!975 = !DILocation(line: 427, column: 14, scope: !959)
!976 = !DILocation(line: 428, column: 28, scope: !970)
!977 = !DILocation(line: 428, column: 9, scope: !970)
!978 = !DILocation(line: 428, column: 12, scope: !970)
!979 = !DILocation(line: 428, column: 20, scope: !970)
!980 = !DILocation(line: 428, column: 26, scope: !970)
!981 = !DILocation(line: 430, column: 27, scope: !970)
!982 = !DILocation(line: 430, column: 9, scope: !970)
!983 = !DILocation(line: 430, column: 12, scope: !970)
!984 = !DILocation(line: 430, column: 20, scope: !970)
!985 = !DILocation(line: 430, column: 25, scope: !970)
!986 = !DILocation(line: 432, column: 17, scope: !927)
!987 = !DILocation(line: 432, column: 5, scope: !927)
!988 = !DILocation(line: 432, column: 8, scope: !927)
!989 = !DILocation(line: 432, column: 15, scope: !927)
!990 = !DILocation(line: 433, column: 17, scope: !927)
!991 = !DILocation(line: 433, column: 5, scope: !927)
!992 = !DILocation(line: 433, column: 8, scope: !927)
!993 = !DILocation(line: 433, column: 15, scope: !927)
!994 = !DILocation(line: 434, column: 1, scope: !927)
!995 = distinct !DISubprogram(name: "balanced", scope: !61, file: !61, line: 547, type: !996, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!996 = !DISubroutineType(types: !997)
!997 = !{!78, !167}
!998 = !DILocalVariable(name: "t", arg: 1, scope: !995, file: !61, line: 547, type: !167)
!999 = !DILocation(line: 547, column: 25, scope: !995)
!1000 = !DILocation(line: 548, column: 24, scope: !995)
!1001 = !DILocation(line: 548, column: 27, scope: !995)
!1002 = !DILocation(line: 548, column: 30, scope: !995)
!1003 = !DILocation(line: 548, column: 12, scope: !995)
!1004 = !DILocation(line: 548, column: 36, scope: !995)
!1005 = !DILocation(line: 548, column: 5, scope: !995)
!1006 = distinct !DISubprogram(name: "tree_height", scope: !61, file: !61, line: 526, type: !1007, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !96)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!78, !167, !172}
!1009 = !DILocalVariable(name: "t", arg: 1, scope: !1006, file: !61, line: 526, type: !167)
!1010 = !DILocation(line: 526, column: 35, scope: !1006)
!1011 = !DILocalVariable(name: "n", arg: 2, scope: !1006, file: !61, line: 526, type: !172)
!1012 = !DILocation(line: 526, column: 46, scope: !1006)
!1013 = !DILocation(line: 527, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1006, file: !61, line: 527, column: 9)
!1015 = !DILocation(line: 527, column: 14, scope: !1014)
!1016 = !DILocation(line: 527, column: 17, scope: !1014)
!1017 = !DILocation(line: 527, column: 11, scope: !1014)
!1018 = !DILocation(line: 527, column: 9, scope: !1006)
!1019 = !DILocation(line: 528, column: 9, scope: !1014)
!1020 = !DILocalVariable(name: "left_h", scope: !1006, file: !61, line: 530, type: !78)
!1021 = !DILocation(line: 530, column: 9, scope: !1006)
!1022 = !DILocation(line: 530, column: 30, scope: !1006)
!1023 = !DILocation(line: 530, column: 33, scope: !1006)
!1024 = !DILocation(line: 530, column: 36, scope: !1006)
!1025 = !DILocation(line: 530, column: 18, scope: !1006)
!1026 = !DILocalVariable(name: "right_h", scope: !1006, file: !61, line: 531, type: !78)
!1027 = !DILocation(line: 531, column: 9, scope: !1006)
!1028 = !DILocation(line: 531, column: 31, scope: !1006)
!1029 = !DILocation(line: 531, column: 34, scope: !1006)
!1030 = !DILocation(line: 531, column: 37, scope: !1006)
!1031 = !DILocation(line: 531, column: 19, scope: !1006)
!1032 = !DILocation(line: 533, column: 9, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1006, file: !61, line: 533, column: 9)
!1034 = !DILocation(line: 533, column: 16, scope: !1033)
!1035 = !DILocation(line: 533, column: 22, scope: !1033)
!1036 = !DILocation(line: 534, column: 9, scope: !1033)
!1037 = !DILocalVariable(name: "diff", scope: !1006, file: !61, line: 536, type: !78)
!1038 = !DILocation(line: 536, column: 9, scope: !1006)
!1039 = !DILocation(line: 536, column: 16, scope: !1006)
!1040 = !DILocation(line: 536, column: 25, scope: !1006)
!1041 = !DILocation(line: 536, column: 23, scope: !1006)
!1042 = !DILocation(line: 537, column: 9, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1006, file: !61, line: 537, column: 9)
!1044 = !DILocation(line: 537, column: 14, scope: !1043)
!1045 = !DILocation(line: 537, column: 18, scope: !1043)
!1046 = !DILocation(line: 538, column: 9, scope: !1043)
!1047 = !DILocation(line: 540, column: 17, scope: !1006)
!1048 = !DILocation(line: 540, column: 26, scope: !1006)
!1049 = !DILocation(line: 540, column: 24, scope: !1006)
!1050 = !DILocation(line: 540, column: 14, scope: !1006)
!1051 = !DILocation(line: 540, column: 5, scope: !1006)
!1052 = !DILocation(line: 541, column: 1, scope: !1006)
!1053 = distinct !DISubprogram(name: "sorted", scope: !61, file: !61, line: 575, type: !996, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !60, retainedNodes: !96)
!1054 = !DILocalVariable(name: "t", arg: 1, scope: !1053, file: !61, line: 575, type: !167)
!1055 = !DILocation(line: 575, column: 23, scope: !1053)
!1056 = !DILocation(line: 576, column: 26, scope: !1053)
!1057 = !DILocation(line: 576, column: 29, scope: !1053)
!1058 = !DILocation(line: 576, column: 32, scope: !1053)
!1059 = !DILocation(line: 576, column: 12, scope: !1053)
!1060 = !DILocation(line: 576, column: 5, scope: !1053)
!1061 = distinct !DISubprogram(name: "sorted_helper", scope: !61, file: !61, line: 556, type: !1062, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !60, retainedNodes: !96)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!78, !167, !172, !79, !79}
!1064 = !DILocalVariable(name: "t", arg: 1, scope: !1061, file: !61, line: 556, type: !167)
!1065 = !DILocation(line: 556, column: 37, scope: !1061)
!1066 = !DILocalVariable(name: "n", arg: 2, scope: !1061, file: !61, line: 556, type: !172)
!1067 = !DILocation(line: 556, column: 48, scope: !1061)
!1068 = !DILocalVariable(name: "min", arg: 3, scope: !1061, file: !61, line: 556, type: !79)
!1069 = !DILocation(line: 556, column: 57, scope: !1061)
!1070 = !DILocalVariable(name: "max", arg: 4, scope: !1061, file: !61, line: 556, type: !79)
!1071 = !DILocation(line: 556, column: 68, scope: !1061)
!1072 = !DILocation(line: 557, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1061, file: !61, line: 557, column: 9)
!1074 = !DILocation(line: 557, column: 14, scope: !1073)
!1075 = !DILocation(line: 557, column: 17, scope: !1073)
!1076 = !DILocation(line: 557, column: 11, scope: !1073)
!1077 = !DILocation(line: 557, column: 9, scope: !1061)
!1078 = !DILocation(line: 558, column: 9, scope: !1073)
!1079 = !DILocation(line: 560, column: 9, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1061, file: !61, line: 560, column: 9)
!1081 = !DILocation(line: 560, column: 13, scope: !1080)
!1082 = !DILocation(line: 560, column: 21, scope: !1080)
!1083 = !DILocation(line: 560, column: 24, scope: !1080)
!1084 = !DILocation(line: 560, column: 27, scope: !1080)
!1085 = !DILocation(line: 560, column: 31, scope: !1080)
!1086 = !DILocation(line: 560, column: 34, scope: !1080)
!1087 = !DILocation(line: 560, column: 39, scope: !1080)
!1088 = !DILocation(line: 560, column: 44, scope: !1080)
!1089 = !DILocation(line: 560, column: 9, scope: !1061)
!1090 = !DILocation(line: 561, column: 9, scope: !1080)
!1091 = !DILocation(line: 563, column: 9, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1061, file: !61, line: 563, column: 9)
!1093 = !DILocation(line: 563, column: 13, scope: !1092)
!1094 = !DILocation(line: 563, column: 21, scope: !1092)
!1095 = !DILocation(line: 563, column: 24, scope: !1092)
!1096 = !DILocation(line: 563, column: 27, scope: !1092)
!1097 = !DILocation(line: 563, column: 31, scope: !1092)
!1098 = !DILocation(line: 563, column: 34, scope: !1092)
!1099 = !DILocation(line: 563, column: 39, scope: !1092)
!1100 = !DILocation(line: 563, column: 44, scope: !1092)
!1101 = !DILocation(line: 563, column: 9, scope: !1061)
!1102 = !DILocation(line: 564, column: 9, scope: !1092)
!1103 = !DILocation(line: 566, column: 26, scope: !1061)
!1104 = !DILocation(line: 566, column: 29, scope: !1061)
!1105 = !DILocation(line: 566, column: 32, scope: !1061)
!1106 = !DILocation(line: 566, column: 39, scope: !1061)
!1107 = !DILocation(line: 566, column: 47, scope: !1061)
!1108 = !DILocation(line: 566, column: 50, scope: !1061)
!1109 = !DILocation(line: 566, column: 12, scope: !1061)
!1110 = !DILocation(line: 567, column: 9, scope: !1061)
!1111 = !DILocation(line: 567, column: 26, scope: !1061)
!1112 = !DILocation(line: 567, column: 29, scope: !1061)
!1113 = !DILocation(line: 567, column: 32, scope: !1061)
!1114 = !DILocation(line: 567, column: 39, scope: !1061)
!1115 = !DILocation(line: 567, column: 42, scope: !1061)
!1116 = !DILocation(line: 567, column: 47, scope: !1061)
!1117 = !DILocation(line: 567, column: 12, scope: !1061)
!1118 = !DILocation(line: 0, scope: !1061)
!1119 = !DILocation(line: 566, column: 5, scope: !1061)
!1120 = !DILocation(line: 568, column: 1, scope: !1061)
!1121 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 15, type: !1122, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !80, retainedNodes: !96)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!78}
!1124 = !DILocalVariable(name: "k1", scope: !1121, file: !2, line: 17, type: !78)
!1125 = !DILocation(line: 17, column: 9, scope: !1121)
!1126 = !DILocalVariable(name: "k2", scope: !1121, file: !2, line: 17, type: !78)
!1127 = !DILocation(line: 17, column: 13, scope: !1121)
!1128 = !DILocalVariable(name: "k3", scope: !1121, file: !2, line: 17, type: !78)
!1129 = !DILocation(line: 17, column: 17, scope: !1121)
!1130 = !DILocalVariable(name: "v1", scope: !1121, file: !2, line: 18, type: !78)
!1131 = !DILocation(line: 18, column: 9, scope: !1121)
!1132 = !DILocalVariable(name: "v2", scope: !1121, file: !2, line: 18, type: !78)
!1133 = !DILocation(line: 18, column: 13, scope: !1121)
!1134 = !DILocalVariable(name: "v3", scope: !1121, file: !2, line: 18, type: !78)
!1135 = !DILocation(line: 18, column: 17, scope: !1121)
!1136 = !DILocation(line: 20, column: 5, scope: !1121)
!1137 = !DILocation(line: 21, column: 5, scope: !1121)
!1138 = !DILocation(line: 22, column: 5, scope: !1121)
!1139 = !DILocation(line: 24, column: 5, scope: !1121)
!1140 = !DILocation(line: 25, column: 5, scope: !1121)
!1141 = !DILocation(line: 26, column: 5, scope: !1121)
!1142 = !DILocalVariable(name: "t", scope: !1121, file: !2, line: 28, type: !1143)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "TreeTable", file: !1145, line: 30, baseType: !1146)
!1145 = !DIFile(filename: "Ex3SymbTestSuite/../../ex2/treetable.h", directory: "/home/klee/work/ex3", checksumkind: CSK_MD5, checksum: "065f0d2b52ad730b442c75c554f59b69")
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "treetable_s", file: !1145, line: 30, flags: DIFlagFwdDecl)
!1147 = !DILocation(line: 28, column: 16, scope: !1121)
!1148 = !DILocation(line: 30, column: 5, scope: !1121)
!1149 = !DILocalVariable(name: "out", scope: !1121, file: !2, line: 35, type: !79)
!1150 = !DILocation(line: 35, column: 11, scope: !1121)
!1151 = !DILocation(line: 37, column: 5, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 37, column: 5)
!1153 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 37, column: 5)
!1154 = !DILocation(line: 37, column: 5, scope: !1153)
!1155 = !DILocation(line: 43, column: 19, scope: !1121)
!1156 = !DILocation(line: 43, column: 5, scope: !1121)
!1157 = !DILocation(line: 44, column: 19, scope: !1121)
!1158 = !DILocation(line: 44, column: 5, scope: !1121)
!1159 = !DILocation(line: 45, column: 19, scope: !1121)
!1160 = !DILocation(line: 45, column: 5, scope: !1121)
!1161 = !DILocation(line: 47, column: 5, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 47, column: 5)
!1163 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 47, column: 5)
!1164 = !DILocation(line: 47, column: 5, scope: !1163)
!1165 = !DILocation(line: 48, column: 5, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 48, column: 5)
!1167 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 48, column: 5)
!1168 = !DILocation(line: 48, column: 5, scope: !1167)
!1169 = !DILocation(line: 53, column: 5, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 53, column: 5)
!1171 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 53, column: 5)
!1172 = !DILocation(line: 53, column: 5, scope: !1171)
!1173 = !DILocalVariable(name: "returned", scope: !1121, file: !2, line: 56, type: !78)
!1174 = !DILocation(line: 56, column: 9, scope: !1121)
!1175 = !DILocation(line: 56, column: 27, scope: !1121)
!1176 = !DILocation(line: 56, column: 20, scope: !1121)
!1177 = !DILocation(line: 61, column: 5, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 61, column: 5)
!1179 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 61, column: 5)
!1180 = !DILocation(line: 61, column: 5, scope: !1179)
!1181 = !DILocation(line: 62, column: 5, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 62, column: 5)
!1183 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 62, column: 5)
!1184 = !DILocation(line: 62, column: 5, scope: !1183)
!1185 = !DILocation(line: 63, column: 5, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !2, line: 63, column: 5)
!1187 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 63, column: 5)
!1188 = !DILocation(line: 63, column: 5, scope: !1187)
!1189 = !DILocation(line: 68, column: 5, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 68, column: 5)
!1191 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 68, column: 5)
!1192 = !DILocation(line: 68, column: 5, scope: !1191)
!1193 = !DILocation(line: 72, column: 23, scope: !1121)
!1194 = !DILocation(line: 72, column: 5, scope: !1121)
!1195 = !DILocation(line: 74, column: 5, scope: !1121)

.class public final Lg/yk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I

.field public c:J

.field public d:I

.field public e:J

.field public final f:Lg/fnq;

.field public g:J

.field public h:I

.field public i:J

.field public final j:Lg/eqi;

.field public k:J

.field public l:J

.field public m:J


# direct methods
.method public constructor <init>(Lg/fnq;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/yk;->f:Lg/fnq;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Picasso-Stats"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    sget-object v1, Lg/dxc;->a:Ljava/lang/StringBuilder;

    new-instance v1, Lg/dae;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lg/dae;-><init>(Landroid/os/Looper;IZ)V

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance v0, Lg/eqi;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v1, 0x6

    invoke-direct {v0, p1, p0, v1}, Lg/eqi;-><init>(Landroid/os/Looper;Ljava/lang/Object;I)V

    iput-object v0, p0, Lg/yk;->j:Lg/eqi;

    return-void
.end method


# virtual methods
.method public final n()Lg/dsl;
    .locals 28

    move-object/from16 v0, p0

    new-instance v1, Lg/dsl;

    iget-object v2, v0, Lg/yk;->f:Lg/fnq;

    iget-object v2, v2, Lg/fnq;->f:Ljava/lang/Object;

    check-cast v2, Lg/cjm;

    move-object v3, v2

    invoke-virtual {v3}, Landroid/util/LruCache;->maxSize()I

    move-result v2

    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    move-result v3

    iget-wide v4, v0, Lg/yk;->l:J

    iget-wide v6, v0, Lg/yk;->c:J

    iget-wide v8, v0, Lg/yk;->e:J

    iget-wide v10, v0, Lg/yk;->g:J

    iget-wide v12, v0, Lg/yk;->m:J

    iget-wide v14, v0, Lg/yk;->a:J

    move-object/from16 v16, v1

    move/from16 v17, v2

    iget-wide v1, v0, Lg/yk;->i:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lg/yk;->k:J

    move-wide/from16 v20, v1

    iget v1, v0, Lg/yk;->b:I

    iget v2, v0, Lg/yk;->d:I

    move/from16 v22, v1

    iget v1, v0, Lg/yk;->h:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move/from16 v25, v22

    move/from16 v22, v1

    move-object/from16 v1, v16

    move-wide/from16 v26, v20

    move/from16 v21, v2

    move/from16 v2, v17

    move-wide/from16 v16, v18

    move-wide/from16 v18, v26

    move/from16 v20, v25

    invoke-direct/range {v1 .. v24}, Lg/dsl;-><init>(IIJJJJJJJJIIIJ)V

    move-object/from16 v16, v1

    return-object v16
.end method

.class public final Lcom/bytedance/sdk/openadsdk/core/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Initializer;


# static fields
.field private static d:Ljava/lang/Boolean;

.field private static dq:I


# instance fields
.field private final ox:Lcom/bytedance/sdk/openadsdk/core/ir;

.field private volatile p:Z

.field private s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ir;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->ox:Lcom/bytedance/sdk/openadsdk/core/ir;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->p:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    const-string v0, "_pl_update_event_listener_"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Lcom/bykv/vk/openvk/api/proto/EventListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq()Lcom/bytedance/sdk/openadsdk/core/e/dq/d;

    move-result-object v0

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/EventListener;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/dq/d;->dq(Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic d()I
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->ox()I

    move-result v0

    return v0
.end method

.method private d(Landroid/content/Context;JJJLcom/bytedance/sdk/openadsdk/core/kx;ZLcom/bytedance/sdk/openadsdk/f/d/ox/dq;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p13    # Lcom/bykv/vk/openvk/api/proto/ValueSet;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->ox()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->vw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/p$8;

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move-object/from16 v15, p8

    move/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v8, p11

    move/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v15}, Lcom/bytedance/sdk/openadsdk/core/p$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;JZLcom/bytedance/sdk/openadsdk/f/d/ox/dq;Landroid/content/Context;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/ValueSet;JJLcom/bytedance/sdk/openadsdk/core/kx;)V

    const-string v2, "pangle_sdk_init"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/p;Landroid/content/Context;JJJLcom/bytedance/sdk/openadsdk/core/kx;ZLcom/bytedance/sdk/openadsdk/f/d/ox/dq;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/bytedance/sdk/openadsdk/core/p;->d(Landroid/content/Context;JJJLcom/bytedance/sdk/openadsdk/core/kx;ZLcom/bytedance/sdk/openadsdk/f/d/ox/dq;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 3
    .param p1    # Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p2    # Lcom/bykv/vk/openvk/api/proto/ValueSet;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/16 v1, 0x10

    const-class v2, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {p2, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/no;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->ox(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->ox()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->ox(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->iw(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->iw()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->d(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->mn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->p(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->kk()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->dq([I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->jy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->mn(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->no()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v1, 0x157c

    if-lt v0, v1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->mp()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->p(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->ig()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->p(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {p2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(I)V

    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ig;->d()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/tools/d;->d()V

    :cond_5
    :try_start_0
    const-class p1, Ljava/lang/Boolean;

    const/16 v0, 0xe

    invoke-interface {p2, v0, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/core/op;->dq:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_1
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/p;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private dq(Landroid/content/Context;JJJLcom/bytedance/sdk/openadsdk/core/kx;ZLcom/bytedance/sdk/openadsdk/f/d/ox/dq;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p13    # Lcom/bykv/vk/openvk/api/proto/ValueSet;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->dq()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/p$7;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v1 .. v15}, Lcom/bytedance/sdk/openadsdk/core/p$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;Landroid/content/Context;JJJLcom/bytedance/sdk/openadsdk/core/kx;ZLcom/bytedance/sdk/openadsdk/f/d/ox/dq;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private dq(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 16
    .param p2    # Lcom/bykv/vk/openvk/api/proto/ValueSet;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p3    # Lcom/bykv/vk/openvk/api/proto/EventListener;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v12, p2

    move-object/from16 v5, p3

    const/4 v13, 0x2

    const/4 v14, 0x1

    :try_start_0
    new-instance v4, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-direct {v4, v12}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-interface {v12, v14, v2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(IJ)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v13, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move-object v10, v6

    goto :goto_2

    :catch_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v6

    const/4 v7, 0x3

    invoke-interface {v12, v7, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(II)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    move v11, v0

    goto :goto_4

    :catch_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    goto :goto_3

    :goto_4
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :cond_0
    move-wide v6, v2

    const-string v0, "duration"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/kx;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kx;

    move-result-object v2

    iget-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/core/p;->p:Z

    if-eqz v0, :cond_1

    invoke-direct {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    goto :goto_7

    :cond_1
    invoke-direct {v1, v4, v12}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-string v0, "sync_cost"

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    sget-object v0, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/no;->no()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v15

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p$1;

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v12}, Lcom/bytedance/sdk/openadsdk/core/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/kx;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Lcom/bykv/vk/openvk/api/proto/EventListener;JJLjava/lang/String;ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-interface {v15, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->dq(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dq/d/d;->dq()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p$2;

    const-string v2, "init sync"

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/p$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    sput-boolean v14, Lcom/bytedance/sdk/openadsdk/core/le;->dq:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :goto_5
    if-eqz v5, :cond_3

    invoke-static {}, Lg/cpq;->f()Lg/cpq;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lg/cpq;->e:Z

    const/16 v4, 0xfa0

    iput v4, v2, Lg/cpq;->d:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "init error"

    goto :goto_6

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_6
    iput-object v4, v2, Lg/cpq;->a:Ljava/lang/Object;

    invoke-virtual {v2}, Lg/cpq;->h()Lg/gok;

    move-result-object v2

    invoke-interface {v5, v14, v2}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v13, [Ljava/lang/Object;

    const-string v4, " Pangle exec init fail, msg = "

    aput-object v4, v2, v3

    aput-object v0, v2, v14

    const-string v0, "TTAdSdk"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, v1, Lcom/bytedance/sdk/openadsdk/core/p;->p:Z

    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;

    invoke-direct {v0, v12}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/p;->p:Z

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Z)V

    :cond_3
    :goto_7
    return-void
.end method

.method private dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p$4;

    const-string v1, "init sync"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;Ljava/lang/String;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;)V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/o/mn;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->o()Z

    move-result p2

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->dq()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/p$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/p$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;ZLandroid/content/Context;)V

    const-wide/16 p1, 0x2710

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->dq()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/p$6;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/p$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;)V

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Lcom/bytedance/sdk/openadsdk/core/kx;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/iw;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/cd;->dq()V

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq()V

    invoke-static {}, Lcom/bytedance/sdk/component/kk/dq;->dq()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/tools/d;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_1
    :goto_0
    const-string v0, "debug_set_cost"

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/multipro/p;->dq(Landroid/content/Context;)V

    const-string v0, "web_dir_cost"

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->dq()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lcom/bytedance/sdk/component/kk/ox/dq;->dq(Ljava/util/concurrent/ThreadPoolExecutor;)V

    const-string v0, "thread_pool_cost"

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->o()Z

    move-result v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/api/ox;->dq(Z)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->o()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->dq()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/no;->k()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->d()V

    :goto_1
    const-string p2, "multi_cost"

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/ox;->dq(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/dq;->dq(Landroid/content/Context;)V

    const-string p2, "video_config_cost"

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->s()V

    const-string p2, "dyna_init_cost"

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/k;->dq(Landroid/content/Context;)V

    const-string p1, "armor_init_cost"

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    return-void
.end method

.method private dq(Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/dq;->dq()V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->dq()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/p$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/p;Landroid/content/Context;JJJLcom/bytedance/sdk/openadsdk/core/kx;ZLcom/bytedance/sdk/openadsdk/f/d/ox/dq;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Landroid/content/Context;JJJLcom/bytedance/sdk/openadsdk/core/kx;ZLcom/bytedance/sdk/openadsdk/f/d/ox/dq;Ljava/lang/String;ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 0
    .param p1    # Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p2    # Lcom/bykv/vk/openvk/api/proto/ValueSet;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le;->p()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->d()V

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s;->dq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->o()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq()V

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->o()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq(Z)V

    return-void
.end method

.method private static dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Z)V
    .locals 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "0"

    const-string v1, "1"

    if-eqz p1, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->no()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->dq()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/tools/d;->d(ILjava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.bytedance.sdk.openadsdk.core.GlobalInfo"

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V

    :goto_1
    const/4 p0, 0x0

    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/op;->ox:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/tools/d;->d(ILjava/lang/String;)V

    return-void
.end method

.method private static dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)V
    .locals 5

    if-nez p0, :cond_0

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/no;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    :cond_0
    if-eqz p0, :cond_7

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/no;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    if-ne p0, v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :goto_0
    const/16 v1, 0x13

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->dq()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ia()Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;->dq()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;->d()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    const/16 v2, 0x8

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->ox()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->kk()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    const/16 v2, 0xa

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x11

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v2, 0x11f8

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->iw()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x16

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    :goto_3
    const/16 v2, 0x12

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->no()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->no()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_4
    const/16 p0, 0xd

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/tools/d;->ox(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Get oaid from controller failed"

    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static synthetic dq()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->p()Z

    move-result v0

    return v0
.end method

.method private dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Lcom/bykv/vk/openvk/api/proto/EventListener;Lcom/bytedance/sdk/openadsdk/core/kx;)Z
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param
    .param p3    # Lcom/bykv/vk/openvk/api/proto/EventListener;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    const-string v0, "TTAdSdk"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->p:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    return v2

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Lcom/bytedance/sdk/openadsdk/core/kx;)V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->p:Z

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;)V

    const-string p1, "async_init_cost"

    invoke-virtual {p4, p1}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    const-string p1, "Init done finish: 6607"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "init error"

    :cond_1
    invoke-static {}, Lg/cpq;->f()Lg/cpq;

    move-result-object p4

    iput-boolean v2, p4, Lg/cpq;->e:Z

    const/16 v3, 0xfa0

    iput v3, p4, Lg/cpq;->d:I

    iput-object p1, p4, Lg/cpq;->a:Ljava/lang/Object;

    invoke-virtual {p4}, Lg/cpq;->h()Lg/gok;

    move-result-object p1

    invoke-interface {p3, v1, p1}, Lcom/bykv/vk/openvk/api/proto/EventListener;->onEvent(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    :cond_2
    const-string p1, "Init done failed"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/p;->p:Z

    :goto_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->p:Z

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Z)V

    return v1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/p;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Lcom/bykv/vk/openvk/api/proto/EventListener;Lcom/bytedance/sdk/openadsdk/core/kx;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;Lcom/bykv/vk/openvk/api/proto/EventListener;Lcom/bytedance/sdk/openadsdk/core/kx;)Z

    move-result p0

    return p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/dq;->ia()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/ia;->dq()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static ox()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/p;->dq:I

    if-nez v0, :cond_0

    :try_start_0
    sget v0, Landroidx/core/content/FileProvider;->a:I

    const/4 v0, 0x1

    sput v0, Lcom/bytedance/sdk/openadsdk/core/p;->dq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    sget v0, Landroidx/core/content/FileProvider;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/bytedance/sdk/openadsdk/core/p;->dq:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    const/4 v0, -0x1

    sput v0, Lcom/bytedance/sdk/openadsdk/core/p;->dq:I

    :cond_0
    :goto_0
    sget v0, Lcom/bytedance/sdk/openadsdk/core/p;->dq:I

    return v0
.end method

.method private static p()Z
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->d:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->d:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/p;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getManager()Lcom/bykv/vk/openvk/api/proto/Manager;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->ox:Lcom/bytedance/sdk/openadsdk/core/ir;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 2

    const/16 v0, 0xf

    const-class v1, Lcom/bykv/vk/openvk/api/proto/EventListener;

    invoke-interface {p2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/EventListener;

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->dq(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    return-void
.end method

.method public isInitSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->p:Z

    return v0
.end method

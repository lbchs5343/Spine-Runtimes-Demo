.class public Lcom/bytedance/msdk/core/mn/dq;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/bytedance/msdk/core/mn/dq;


# instance fields
.field private d:J

.field private ox:J

.field private final p:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/mn/dq;->p:Ljava/util/Queue;

    return-void
.end method

.method public static dq()Lcom/bytedance/msdk/core/mn/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/core/mn/dq;->dq:Lcom/bytedance/msdk/core/mn/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/core/mn/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/core/mn/dq;->dq:Lcom/bytedance/msdk/core/mn/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/core/mn/dq;

    invoke-direct {v1}, Lcom/bytedance/msdk/core/mn/dq;-><init>()V

    sput-object v1, Lcom/bytedance/msdk/core/mn/dq;->dq:Lcom/bytedance/msdk/core/mn/dq;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/msdk/core/mn/dq;->dq:Lcom/bytedance/msdk/core/mn/dq;

    return-object v0
.end method


# virtual methods
.method public d()Z
    .locals 9

    const-class v0, Lcom/bytedance/msdk/core/mn/dq;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/bytedance/msdk/core/mn/dq;->d:J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_4

    iget-wide v1, p0, Lcom/bytedance/msdk/core/mn/dq;->ox:J

    cmp-long v6, v1, v4

    if-gtz v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/dq;->p:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/bytedance/msdk/core/mn/dq;->d:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_3

    :goto_0
    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/dq;->p:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/bytedance/msdk/core/mn/dq;->d:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/dq;->p:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/dq;->p:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/msdk/core/mn/dq;->ox:J

    cmp-long v8, v4, v6

    if-gtz v8, :cond_2

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_2
    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/dq;->p:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/dq;->p:Ljava/util/Queue;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/dq;->p:Ljava/util/Queue;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit v0

    return v3

    :cond_4
    :goto_2
    monitor-exit v0

    return v3

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dq(JJ)V
    .locals 4

    const-class v0, Lcom/bytedance/msdk/core/mn/dq;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/bytedance/msdk/core/mn/dq;->d:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    iget-wide v1, p0, Lcom/bytedance/msdk/core/mn/dq;->ox:J

    cmp-long v3, v1, p3

    if-eqz v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/bytedance/msdk/core/mn/dq;->d:J

    iput-wide p3, p0, Lcom/bytedance/msdk/core/mn/dq;->ox:J

    iget-object p1, p0, Lcom/bytedance/msdk/core/mn/dq;->p:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ox()Z
    .locals 9

    const-class v0, Lcom/bytedance/msdk/core/mn/dq;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/bytedance/msdk/core/mn/dq;->d:J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_3

    iget-wide v1, p0, Lcom/bytedance/msdk/core/mn/dq;->ox:J

    cmp-long v6, v1, v4

    if-gtz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/dq;->p:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/bytedance/msdk/core/mn/dq;->d:J

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    :goto_0
    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/dq;->p:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/bytedance/msdk/core/mn/dq;->d:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/dq;->p:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/bytedance/msdk/core/mn/dq;->p:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-wide v4, p0, Lcom/bytedance/msdk/core/mn/dq;->ox:J

    cmp-long v6, v1, v4

    if-gtz v6, :cond_2

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_2
    monitor-exit v0

    return v3

    :cond_3
    :goto_1
    monitor-exit v0

    return v3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

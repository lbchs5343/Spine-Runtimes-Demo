.class public Lcom/bytedance/sdk/component/ia/d/d/ox/p;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

.field public final dq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final ia:Lcom/bytedance/sdk/component/ia/d/d/d;

.field private final iw:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mn:Lcom/bytedance/sdk/component/ia/dq/s;

.field private volatile ox:J

.field private volatile p:J

.field private final s:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ia/dq/s;Lcom/bytedance/sdk/component/ia/d/d/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ox:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->p:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->iw:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ia:Lcom/bytedance/sdk/component/ia/d/d/d;

    return-void
.end method

.method private d(Ljava/util/List;ZJILjava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;ZJI",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ia/dq/d;

    sget-object v2, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->wp()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v2, v1, v3}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/d;->p()B

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/ia/d/d;->ia()Lcom/bytedance/sdk/component/ia/dq/dq/dq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/ia/dq/dq/dq;->dq(Ljava/util/List;)Lcom/bytedance/sdk/component/ia/d/d/ox/d;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(Lcom/bytedance/sdk/component/ia/d/d/ox/d;Ljava/util/List;)V

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/bytedance/sdk/component/ia/d/d/ox/d;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, v2, v3}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_0
    :goto_0
    move-object v4, v0

    goto :goto_4

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/ia/dq/d;

    invoke-interface {v4}, Lcom/bytedance/sdk/component/ia/dq/d;->mn()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    const-string v3, "stats_list"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "json exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    :goto_3
    invoke-static {}, Lcom/bytedance/sdk/component/ia/d/d;->ia()Lcom/bytedance/sdk/component/ia/dq/dq/dq;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/component/ia/dq/dq/dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/ia/d/d/ox/d;

    move-result-object v0

    goto :goto_0

    :goto_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-object v2, p0

    move-object v5, p1

    move v3, p2

    move-wide v6, p3

    move v9, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(ZLcom/bytedance/sdk/component/ia/d/d/ox/d;Ljava/util/List;JLjava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "inner exception:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    sget-object p1, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->s()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, v1, p2}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method private dq(ILjava/util/List;JLjava/lang/Object;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;J",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->d:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    monitor-enter p5

    if-eqz p2, :cond_11

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->d()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2, p3, p4, v2}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(ILjava/util/List;JLcom/bytedance/sdk/component/ia/dq/s;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq()Lcom/bytedance/sdk/component/ia/d/dq/s;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/bytedance/sdk/component/ia/d/dq/s;->dq(ILjava/util/List;)Lcom/bytedance/sdk/component/ia/d/dq/d;

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/p;->ig()Lcom/bytedance/sdk/component/ia/dq/ia;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_0
    const/4 p2, -0x2

    const/4 p3, 0x1

    const/4 p4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, p2, :cond_a

    const/4 p2, -0x1

    if-eq p1, p2, :cond_6

    if-eqz p1, :cond_a

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_6

    const/16 p2, 0x1fd

    if-eq p1, p2, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ia:Lcom/bytedance/sdk/component/ia/d/d/d;

    iput-boolean p3, p1, Lcom/bytedance/sdk/component/ia/d/d/d;->d:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ia:Lcom/bytedance/sdk/component/ia/d/d/d;

    iput-boolean v2, p1, Lcom/bytedance/sdk/component/ia/d/d/d;->ox:Z

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    monitor-exit p5

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ox:J

    sub-long/2addr p1, v4

    const-wide/16 v4, 0x7530

    cmp-long p3, p1, v4

    if-gez p3, :cond_4

    monitor-exit p5

    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ox:J

    invoke-virtual {v1, p4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v1, p4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(IJLandroid/os/Handler;)V

    goto/16 :goto_1

    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ia:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/ia/d/d/d;->d:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ia:Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/ia/d/d/d;->ox:Z

    if-eqz p1, :cond_e

    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ia:Lcom/bytedance/sdk/component/ia/d/d/d;

    iput-boolean v2, p1, Lcom/bytedance/sdk/component/ia/d/d/d;->d:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ia:Lcom/bytedance/sdk/component/ia/d/d/d;

    iput-boolean v2, p1, Lcom/bytedance/sdk/component/ia/d/d/d;->ox:Z

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    invoke-virtual {v1, p4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v1, p4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->p:J

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ox:J

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->iw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object p1, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->iw()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p3, p2}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    const-string p1, "handle_result"

    invoke-virtual {v0, v3, p1}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->dq(ILjava/lang/String;)V

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ia:Lcom/bytedance/sdk/component/ia/d/d/d;

    iput-boolean v2, p1, Lcom/bytedance/sdk/component/ia/d/d/d;->d:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ia:Lcom/bytedance/sdk/component/ia/d/d/d;

    iput-boolean p3, p1, Lcom/bytedance/sdk/component/ia/d/d/d;->ox:Z

    invoke-virtual {v1, p4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_b

    monitor-exit p5

    return-void

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->p:J

    sub-long/2addr p1, v4

    const-wide/16 v4, 0x3a98

    cmp-long p3, p1, v4

    if-gez p3, :cond_c

    monitor-exit p5

    return-void

    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->p:J

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    invoke-virtual {p0, p4, v4, v5, v1}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(IJLandroid/os/Handler;)V

    :cond_e
    :goto_1
    if-ne p6, v3, :cond_f

    invoke-virtual {p5}, Ljava/lang/Object;->notify()V

    :cond_f
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ia:Lcom/bytedance/sdk/component/ia/d/d/d;

    if-eqz p1, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "upload thread reuse or close --> run:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/d/ox/ox;->ox()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " queueSize:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ia:Lcom/bytedance/sdk/component/ia/d/d/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ia/d/d/d;->p()Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " message:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->d(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    :cond_10
    return-void

    :cond_11
    :goto_2
    :try_start_1
    monitor-exit p5

    return-void

    :goto_3
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dq(Lcom/bytedance/sdk/component/ia/d/d/ox/d;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/ia/d/d/ox/d;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/ia/d/d/ox/d;->dq:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/component/ia/d/dq;->dq()Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ia/dq/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/d;->s()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->iw(Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/s;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/ia/dq/ox;

    if-eqz v3, :cond_1

    invoke-interface {v3, v1, v0}, Lcom/bytedance/sdk/component/ia/dq/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/d/d/ox/p;Ljava/util/List;ZJILjava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->d(Ljava/util/List;ZJILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/d/d/ox/p;ZLcom/bytedance/sdk/component/ia/d/d/ox/d;Ljava/util/List;JLjava/lang/Object;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(ZLcom/bytedance/sdk/component/ia/d/d/ox/d;Ljava/util/List;JLjava/lang/Object;I)V

    return-void
.end method

.method private dq(Ljava/util/List;ZJILjava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;ZJI",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->kk()Ljava/util/concurrent/Executor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/ia/dq/d;

    invoke-interface {v3}, Lcom/bytedance/sdk/component/ia/dq/d;->s()B

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v2

    :cond_0
    move-object v9, v2

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;

    const-string v2, "csj_log_upload"

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/component/ia/d/d/ox/p$1;-><init>(Lcom/bytedance/sdk/component/ia/d/d/ox/p;Ljava/lang/String;Ljava/util/List;ZJILjava/lang/Object;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private dq(Ljava/util/List;ZJLjava/lang/Object;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;ZJ",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sget-object v0, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->wp()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    const/4 v7, 0x1

    invoke-static {v0, v7, v2}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->o()Lcom/bytedance/sdk/component/ia/dq/no;

    move-result-object v8

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;

    move-object v1, p0

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/ia/d/d/ox/p$2;-><init>(Lcom/bytedance/sdk/component/ia/d/d/ox/p;ZJLjava/lang/Object;I)V

    invoke-interface {v8, p1, v0}, Lcom/bytedance/sdk/component/ia/dq/no;->dq(Ljava/util/List;Lcom/bytedance/sdk/component/ia/dq/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "outer exception\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    sget-object v0, Lcom/bytedance/sdk/component/ia/d/d/d;->dq:Lcom/bytedance/sdk/component/ia/d/d/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/d/dq/dq;->s()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0, v7, v2}, Lcom/bytedance/sdk/component/ia/d/ox/d;->dq(Ljava/util/concurrent/atomic/AtomicLong;ILcom/bytedance/sdk/component/ia/dq/s;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method private dq(ZLcom/bytedance/sdk/component/ia/d/d/ox/d;Ljava/util/List;JLjava/lang/Object;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/bytedance/sdk/component/ia/d/d/ox/d;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;J",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    if-nez p1, :cond_9

    if-eqz p2, :cond_8

    iget p1, p2, Lcom/bytedance/sdk/component/ia/d/d/ox/d;->d:I

    iget-boolean v0, p2, Lcom/bytedance/sdk/component/ia/d/d/ox/d;->s:Z

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x2

    :cond_1
    :goto_0
    const/16 v0, 0x1fe

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1ff

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 p1, -0x2

    :cond_3
    iget-boolean p2, p2, Lcom/bytedance/sdk/component/ia/d/d/ox/d;->dq:Z

    if-nez p2, :cond_6

    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_4

    const/16 p2, 0x1fd

    if-lt p1, p2, :cond_5

    :cond_4
    const/16 p2, 0x201

    if-le p1, p2, :cond_6

    :cond_5
    const/4 v3, -0x2

    goto :goto_1

    :cond_6
    move v3, p1

    :goto_1
    if-eqz p3, :cond_7

    invoke-interface {p3}, Ljava/util/List;->size()I

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    :cond_7
    move-object v2, p0

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(ILjava/util/List;JLjava/lang/Object;I)V

    return-void

    :cond_8
    const/4 v5, -0x1

    move-object v4, p0

    move-object v6, p3

    move-wide v7, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(ILjava/util/List;JLjava/lang/Object;I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ia:Lcom/bytedance/sdk/component/ia/d/d/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bytedance/sdk/component/ia/d/d/d;->d:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->p:J

    iput-wide v2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ox:J

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->iw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public dq(IJLandroid/os/Handler;)V
    .locals 3

    if-nez p4, :cond_0

    const-string p1, "mHandler == null"

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    rem-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x1

    int-to-long v1, p1

    mul-long v1, v1, p2

    invoke-virtual {p4, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->iw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    rem-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x1

    int-to-long v1, p1

    mul-long v1, v1, p2

    invoke-virtual {p4, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_2
    const-string p1, "sendMonitorMessage error state"

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method public dq(Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;Lcom/bytedance/sdk/component/ia/d/dq/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ia/dq/d;",
            ">;Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/bytedance/sdk/component/ia/d/dq/d;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->ia:Lcom/bytedance/sdk/component/ia/d/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ia/d/d/d;->s()Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->d:Lcom/bytedance/sdk/component/ia/d/d/ox/ox;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p4, p3, v0}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(Ljava/util/List;ILjava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->mn:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->o()Lcom/bytedance/sdk/component/ia/dq/no;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v7, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(Ljava/util/List;ZJLjava/lang/Object;I)V

    return-void

    :cond_0
    move-object v2, p1

    move v3, p2

    move v6, p4

    move-object v7, p5

    invoke-static {v2, p3, p6}, Lcom/bytedance/sdk/component/ia/d/ox/dq;->dq(Ljava/util/List;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/d/dq/d;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/ia/d/d/ox/p;->dq(Ljava/util/List;ZJILjava/lang/Object;)V

    return-void
.end method

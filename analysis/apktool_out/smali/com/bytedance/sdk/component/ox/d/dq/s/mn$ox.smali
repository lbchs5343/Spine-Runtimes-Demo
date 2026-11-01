.class Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;
.super Lcom/bytedance/sdk/component/ox/d/dq/d;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ox"
.end annotation


# instance fields
.field final dq:Lcom/bytedance/sdk/component/ox/d/dq/s/ia;

.field final synthetic ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn;Lcom/bytedance/sdk/component/ox/d/dq/s/ia;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->s:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/ia;

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/ox/d/dq/s/q;)V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$3;

    const-string v2, "OkHttp %s ACK Settings"

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v3, v3, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->s:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-direct {v1, p0, v2, v4, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$3;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;Ljava/lang/String;[Ljava/lang/Object;Lcom/bytedance/sdk/component/ox/d/dq/s/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public dq(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(ILjava/util/List;)V

    return-void
.end method

.method public dq(IJ)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-wide v1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->no:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->no:J

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(I)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    move-result-object p1

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq(J)V

    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    return-void
.end method

.method public dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ox(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d(I)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    :cond_1
    return-void
.end method

.method public dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;Lcom/bytedance/sdk/component/ox/dq/iw;)V
    .locals 3

    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object p3, p3, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ia:Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d(I)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dq(ZII)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ox(I)Lcom/bytedance/sdk/component/ox/d/dq/s/ig;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/ig;->d()V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(ZIILcom/bytedance/sdk/component/ox/d/dq/s/ig;)V

    return-void
.end method

.method public dq(ZIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ox/d/dq/s/ox;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p(I)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {p3, p2, p4, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(ILjava/util/List;Z)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(I)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-boolean v0, v3, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ia:Z

    if-eqz v0, :cond_1

    monitor-exit p3

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_1
    iget v0, v3, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->iw:I

    if-gt p2, v0, :cond_2

    monitor-exit p3

    return-void

    :cond_2
    rem-int/lit8 v0, p2, 0x2

    iget v1, v3, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->mn:I

    const/4 v7, 0x2

    rem-int/2addr v1, v7

    if-ne v0, v1, :cond_3

    monitor-exit p3

    return-void

    :cond_3
    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    const/4 v4, 0x0

    move v5, p1

    move v2, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;-><init>(ILcom/bytedance/sdk/component/ox/d/dq/s/mn;ZZLjava/util/List;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iput v2, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->iw:I

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$1;

    const-string p4, "OkHttp %s stream %d"

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->s:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-direct {p2, p0, p4, v3, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$1;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;Ljava/lang/String;[Ljava/lang/Object;Lcom/bytedance/sdk/component/ox/d/dq/s/kk;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :try_start_2
    monitor-exit p3

    goto :goto_0

    :cond_4
    move v5, p1

    move-object v6, p4

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq(Ljava/util/List;)V

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->kk()V

    :cond_5
    :goto_0
    return-void

    :goto_1
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public dq(ZILcom/bytedance/sdk/component/ox/dq/s;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(ILcom/bytedance/sdk/component/ox/dq/s;IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(I)Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->d:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(ILcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    int-to-long p1, p4

    invoke-interface {p3, p1, p2}, Lcom/bytedance/sdk/component/ox/dq/s;->ia(J)V

    return-void

    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq(Lcom/bytedance/sdk/component/ox/dq/s;I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->kk()V

    :cond_2
    return-void
.end method

.method public dq(ZLcom/bytedance/sdk/component/ox/d/dq/s/q;)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->p()I

    move-result v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->dq()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/q;)V

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/q;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->mp:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->p()I

    move-result p1

    const/4 p2, -0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_2

    sub-int/2addr p1, v1

    int-to-long p1, p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-boolean v6, v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->q:Z

    if-nez v6, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(J)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iput-boolean v2, v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->q:Z

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v5, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v5, v5, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->p:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lcom/bytedance/sdk/component/ox/d/dq/s/kk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    move-wide p1, v3

    :cond_3
    :goto_1
    const/4 v1, 0x0

    :try_start_1
    sget-object v6, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$2;

    const-string v8, "OkHttp %s settings"

    iget-object v9, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object v9, v9, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->s:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v9, v2, v1

    invoke-direct {v7, p0, v8, v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox$2;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_4

    cmp-long v0, p1, v3

    if-eqz v0, :cond_4

    array-length v0, v5

    :goto_2
    if-ge v1, v0, :cond_4

    aget-object v2, v5, v1

    monitor-enter v2

    :try_start_3
    invoke-virtual {v2, p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq(J)V

    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_4
    return-void

    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public ox()V
    .locals 4

    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/ia;

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/ia$d;)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/ia;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/ia;->dq(ZLcom/bytedance/sdk/component/ox/d/dq/s/ia$d;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/d;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/d;Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-object v1, v0

    :catch_2
    :try_start_3
    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->d:Lcom/bytedance/sdk/component/ox/d/dq/s/d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    :goto_1
    invoke-virtual {v1, v0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/d;Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_3
    move-object v1, v0

    :catch_4
    :try_start_5
    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->d:Lcom/bytedance/sdk/component/ox/d/dq/s/d;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :goto_2
    :try_start_7
    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->ox:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v3, v1, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(Lcom/bytedance/sdk/component/ox/d/dq/s/d;Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/mn$ox;->dq:Lcom/bytedance/sdk/component/ox/d/dq/s/ia;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    throw v2
.end method

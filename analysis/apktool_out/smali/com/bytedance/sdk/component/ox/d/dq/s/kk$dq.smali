.class final Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/dq/cd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "dq"
.end annotation


# static fields
.field static final synthetic ox:Z = true


# instance fields
.field d:Z

.field dq:Z

.field final synthetic p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

.field private final s:Lcom/bytedance/sdk/component/ox/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/s/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    return-void
.end method

.method private dq(Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mn:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-wide v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->d:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->dq:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ig()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_0
    :try_start_2
    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mn:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;->ia()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->no()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-wide v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d:J

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-wide v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d:J

    sub-long/2addr v2, v10

    iput-wide v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d:J

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mn:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq()V

    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v6, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget v7, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v0

    cmp-long p1, v10, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    const/4 v8, 0x0

    :goto_1
    iget-object v9, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual/range {v6 .. v11}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(IZLcom/bytedance/sdk/component/ox/dq/ox;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mn:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;->ia()V

    return-void

    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mn:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;->ia()V

    throw p1

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mn:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;->ia()V

    throw p1

    :goto_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method


# virtual methods
.method public a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->ox:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/ox;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V

    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide p1

    const-wide/16 v0, 0x4000

    cmp-long p3, p1, v0

    if-ltz p3, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->dq(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->ox:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->dq:Z

    if-eqz v0, :cond_2

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->s:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->dq(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v2, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget v3, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(IZLcom/bytedance/sdk/component/ox/dq/ox;J)V

    :cond_4
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    monitor-enter v2

    :try_start_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->dq:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->o()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->mn:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    return-object v0
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->ox:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->no()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$dq;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->d()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.class final Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/dq/gh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/s/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# static fields
.field static final synthetic ox:Z = true


# instance fields
.field d:Z

.field dq:Z

.field private final iw:Lcom/bytedance/sdk/component/ox/dq/ox;

.field private final mn:J

.field final synthetic p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

.field private final s:Lcom/bytedance/sdk/component/ox/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/s/kk;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    new-instance p1, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->iw:Lcom/bytedance/sdk/component/ox/dq/ox;

    iput-wide p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->mn:J

    return-void
.end method

.method private d()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->iw:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->dq:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;->ia()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;->ia()V

    throw v0
.end method

.method private ox()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->dq:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/ox/d/dq/s/jy;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ia:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/s/jy;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->dq:Z

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->iw:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->cd()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->o()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->d()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->ox()V

    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->iw:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    const-wide/16 p1, -0x1

    monitor-exit v2

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->iw:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide p1

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-wide v3, p3, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq:J

    iget-object p3, p3, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-object p3, p3, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ig:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->p()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v5, p3

    cmp-long p3, v3, v5

    if-ltz p3, :cond_1

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v3, p3, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget v4, p3, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->ox:I

    iget-wide v5, p3, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(IJ)V

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iput-wide v0, p3, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->dq:J

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object p3, p3, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    monitor-enter p3

    :try_start_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v2, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-wide v3, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->o:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->o:J

    iget-object v2, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->ig:Lcom/bytedance/sdk/component/ox/d/dq/s/q;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/d/dq/s/q;->p()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v2, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iget-wide v3, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->o:J

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->dq(IJ)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v2, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/mn;

    iput-wide v0, v2, Lcom/bytedance/sdk/component/ox/d/dq/s/mn;->o:J

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p3

    return-wide p1

    :goto_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount < 0: "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->iw:Lcom/bytedance/sdk/component/ox/d/dq/s/kk$ox;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/s;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->ox:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

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
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->d:Z

    iget-object v4, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->iw:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->mn:J

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmp-long v10, v4, v6

    if-lez v10, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/s;->ia(J)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    sget-object p2, Lcom/bytedance/sdk/component/ox/d/dq/s/d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/d;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/ox/d/dq/s/kk;->d(Lcom/bytedance/sdk/component/ox/d/dq/s/d;)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/s;->ia(J)V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-interface {p1, v2, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    sub-long/2addr p2, v2

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->iw:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ox/dq/ox;->d()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_5

    const/4 v8, 0x1

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->iw:Lcom/bytedance/sdk/component/ox/dq/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->s:Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)J

    if-eqz v8, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/s/kk$d;->p:Lcom/bytedance/sdk/component/ox/d/dq/s/kk;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_6
    :goto_2
    monitor-exit v2

    goto :goto_0

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_8
    return-void
.end method

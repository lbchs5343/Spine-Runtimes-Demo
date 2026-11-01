.class final Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/dq/cd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/p/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field private final d:Lcom/bytedance/sdk/component/ox/dq/kk;

.field final synthetic dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

.field private ox:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/p/dq;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/kk;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ox/dq/cd;->dq()Lcom/bytedance/sdk/component/ox/dq/r;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/kk;-><init>(Lcom/bytedance/sdk/component/ox/dq/r;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->d:Lcom/bytedance/sdk/component/ox/dq/kk;

    return-void
.end method


# virtual methods
.method public a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->ox:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/p;->no(J)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/cd;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->ox:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->ox:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/ox/dq/p;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->d:Lcom/bytedance/sdk/component/ox/dq/kk;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->dq(Lcom/bytedance/sdk/component/ox/dq/kk;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    const/4 v1, 0x3

    iput v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->d:Lcom/bytedance/sdk/component/ox/dq/kk;

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->ox:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq$d;->dq:Lcom/bytedance/sdk/component/ox/d/dq/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/p/dq;->p:Lcom/bytedance/sdk/component/ox/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/p;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

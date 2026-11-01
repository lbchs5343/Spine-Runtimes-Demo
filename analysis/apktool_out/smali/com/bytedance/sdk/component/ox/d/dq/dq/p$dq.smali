.class public final Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ox/d/dq/dq/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "dq"
.end annotation


# instance fields
.field final d:[Z

.field final dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

.field final synthetic ox:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

.field private p:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/p;Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->ox:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    iget-boolean p2, p2, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->s:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->p:I

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->d:[Z

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->ox:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->p:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->ox:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    invoke-virtual {v1, p0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->dq(Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->p:Z

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dq(I)Lcom/bytedance/sdk/component/ox/dq/cd;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->ox:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->p:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    iget-object v2, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    if-eq v2, p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq()Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-boolean v2, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->s:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->d:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    :cond_1
    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->p:[Ljava/io/File;

    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->ox:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    invoke-interface {v1, p1}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->d(Ljava/io/File;)Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq$1;-><init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;Lcom/bytedance/sdk/component/ox/dq/cd;)V

    monitor-exit v0

    return-object v1

    :catch_0
    invoke-static {}, Lcom/bytedance/sdk/component/ox/dq/ig;->dq()Lcom/bytedance/sdk/component/ox/dq/cd;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    iget-object v0, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->ox:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    iget v2, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->p:I

    if-ge v0, v2, :cond_0

    :try_start_0
    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->d:Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    iget-object v2, v2, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->p:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/ox/d/dq/iw/dq;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    :cond_1
    return-void
.end method

.method public ox()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->ox:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->p:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;

    iget-object v1, v1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$d;->iw:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->ox:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p;->dq(Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->p:Z

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

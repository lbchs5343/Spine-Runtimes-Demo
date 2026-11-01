.class Lcom/bytedance/sdk/component/ox/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/dq/cd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/dq/cd;)Lcom/bytedance/sdk/component/ox/dq/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/ox/dq/dq;

.field final synthetic dq:Lcom/bytedance/sdk/component/ox/dq/cd;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/dq/dq;Lcom/bytedance/sdk/component/ox/dq/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ox/dq/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->d:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/ox/dq/i;->dq(JJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-wide p2, v4

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    iget-object v2, p1, Lcom/bytedance/sdk/component/ox/dq/ox;->dq:Lcom/bytedance/sdk/component/ox/dq/jy;

    :goto_1
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    iget v3, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->ox:I

    iget v4, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->d:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_0

    move-wide v0, p2

    goto :goto_2

    :cond_0
    iget-object v2, v2, Lcom/bytedance/sdk/component/ox/dq/jy;->iw:Lcom/bytedance/sdk/component/ox/dq/jy;

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq()V

    :try_start_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ox/dq/cd;

    invoke-interface {v2, p1, v0, v1}, Lcom/bytedance/sdk/component/ox/dq/cd;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p2, v0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    :try_start_2
    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Z)V

    throw p1

    :cond_2
    return-void

    :catch_1
    move-exception v0

    move-object p1, v0

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq()V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ox/dq/cd;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/cd;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Z)V

    throw v0
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    return-object v0
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq()V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ox/dq/cd;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/cd;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Z)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ox/dq/cd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

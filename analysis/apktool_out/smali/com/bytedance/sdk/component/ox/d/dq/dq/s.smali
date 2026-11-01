.class Lcom/bytedance/sdk/component/ox/d/dq/dq/s;
.super Lcom/bytedance/sdk/component/ox/dq/mn;


# instance fields
.field private dq:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/dq/cd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ox/dq/mn;-><init>(Lcom/bytedance/sdk/component/ox/dq/cd;)V

    return-void
.end method


# virtual methods
.method public a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/s;->dq:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/ox;->ia(J)V

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/mn;->a_(Lcom/bytedance/sdk/component/ox/dq/ox;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/s;->dq:Z

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ox/d/dq/dq/s;->dq(Ljava/io/IOException;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/s;->dq:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/bytedance/sdk/component/ox/dq/mn;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/s;->dq:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/s;->dq(Ljava/io/IOException;)V

    return-void
.end method

.method public dq(Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/s;->dq:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/bytedance/sdk/component/ox/dq/mn;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/s;->dq:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/s;->dq(Ljava/io/IOException;)V

    return-void
.end method

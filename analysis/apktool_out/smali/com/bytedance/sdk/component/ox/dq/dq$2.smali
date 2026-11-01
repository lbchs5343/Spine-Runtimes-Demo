.class Lcom/bytedance/sdk/component/ox/dq/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ox/dq/gh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Lcom/bytedance/sdk/component/ox/dq/gh;)Lcom/bytedance/sdk/component/ox/dq/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/ox/dq/dq;

.field final synthetic dq:Lcom/bytedance/sdk/component/ox/dq/gh;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/dq/dq;Lcom/bytedance/sdk/component/ox/dq/gh;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->dq:Lcom/bytedance/sdk/component/ox/dq/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq()V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->dq:Lcom/bytedance/sdk/component/ox/dq/gh;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/gh;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Z)V

    throw v0
.end method

.method public dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq()V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->dq:Lcom/bytedance/sdk/component/ox/dq/gh;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/dq/gh;->dq(Lcom/bytedance/sdk/component/ox/dq/ox;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Z)V

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/ox/dq/dq;->dq(Z)V

    throw p1
.end method

.method public dq()Lcom/bytedance/sdk/component/ox/dq/r;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->d:Lcom/bytedance/sdk/component/ox/dq/dq;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/ox/dq/dq$2;->dq:Lcom/bytedance/sdk/component/ox/dq/gh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

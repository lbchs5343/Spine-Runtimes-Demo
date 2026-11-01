.class Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;->dq(Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;->d(Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;->ox(Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;->p(Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$1;->dq:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;->dq(Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;I)I

    :cond_1
    monitor-exit v0

    return-object v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

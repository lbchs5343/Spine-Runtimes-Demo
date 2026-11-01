.class Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq$1;
.super Lcom/bytedance/sdk/component/ox/d/dq/dq/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->dq(I)Lcom/bytedance/sdk/component/ox/dq/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;Lcom/bytedance/sdk/component/ox/dq/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq$1;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/ox/d/dq/dq/s;-><init>(Lcom/bytedance/sdk/component/ox/dq/cd;)V

    return-void
.end method


# virtual methods
.method public dq(Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq$1;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    iget-object p1, p1, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->ox:Lcom/bytedance/sdk/component/ox/d/dq/dq/p;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq$1;->dq:Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ox/d/dq/dq/p$dq;->dq()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

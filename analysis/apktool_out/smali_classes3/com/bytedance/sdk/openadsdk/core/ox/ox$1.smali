.class Lcom/bytedance/sdk/openadsdk/core/ox/ox$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ox/ox;->kk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/ox/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ox/ox;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/ox/ox;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/ox/ox;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ox/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->d(Lcom/bytedance/sdk/openadsdk/core/ox/ox;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

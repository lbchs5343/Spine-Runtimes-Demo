.class Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->s(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/s;

    const/4 v2, 0x1

    const-string v3, "load splash material fail"

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/f/d/s;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/s;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->p()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->iw()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/f/d/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    :cond_1
    return-void
.end method

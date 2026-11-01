.class Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$4;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$4;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$4;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;->dq()Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;Lcom/bytedance/sdk/openadsdk/f/d/d/d;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$4;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;->dq()Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    :cond_0
    return-void
.end method

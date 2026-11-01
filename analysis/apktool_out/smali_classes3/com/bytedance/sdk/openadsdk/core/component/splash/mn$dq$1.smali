.class Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ig(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->o()Lcom/bytedance/sdk/openadsdk/f/d/d/d;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/d/s;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->p()I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->iw()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/f/d/s;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;Lcom/bytedance/sdk/openadsdk/f/d/d/dq;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSplashRenderFail\u56de\u8c03 true "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Splash_FullLink"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

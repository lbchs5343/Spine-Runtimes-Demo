.class Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1$3;
.super Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "new api onSplashCardClose"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;->wp(Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/dq/d/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;->fw(Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;)Lcom/bytedance/msdk/dq/d/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/dq/d/s;->z_()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "new api onSplashCardClick"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;->k(Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/dq/d/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;->fw(Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;)Lcom/bytedance/msdk/dq/d/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/dq/d/s;->A_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new api onSplashCardReadyToShow csjSplashAd.getSplashCardView()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->ox()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;->i(Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/msdk/dq/d/s;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;->fw(Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;)Lcom/bytedance/msdk/dq/d/s;

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;->le(Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/msdk/dq/d/s;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1$3;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq$1;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;->fw(Lcom/bytedance/msdk/ox/ox/d/dq/d/ig$dq;)Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/dq/d/s;->y_()V

    :cond_2
    return-void
.end method

.class Lcom/bytedance/msdk/dq/ox/mp$dq$1$4;
.super Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/mp$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$4;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "new api onSplashClickEyeClose"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$4;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/mp$dq;->e(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/dq/d/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$4;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/mp$dq;->jy(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/dq/d/s;->x_()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "new api onSplashClickEyeClick"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$4;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/mp$dq;->wp(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/dq/d/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$4;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/mp$dq;->jy(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/dq/d/s;->iw()V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V
    .locals 1

    const-string p1, "TTMediationSDK"

    const-string v0, "new api onSplashClickEyeReadyToShow"

    invoke-static {p1, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$4;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/bytedance/msdk/dq/ox/mp$dq;->dq:Z

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->k(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/msdk/dq/d/s;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/dq/ox/mp$dq$1$4;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq$1;

    iget-object p1, p1, Lcom/bytedance/msdk/dq/ox/mp$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/mp$dq;

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/mp$dq;->jy(Lcom/bytedance/msdk/dq/ox/mp$dq;)Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/dq/d/s;->F_()V

    :cond_0
    return-void
.end method

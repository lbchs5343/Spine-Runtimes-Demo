.class Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;
.super Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/ig$dq$1;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/kx/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onAdVideoBarClick"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->h(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->kx(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->s_()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onAdShow"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->e(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->kx(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->E_()V

    :cond_0
    return-void
.end method

.method public dq(ZILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->i(Lcom/bytedance/msdk/dq/ox/ig$dq;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onRewardArrived-------------2"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->ir(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->kx(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3$2;-><init>(Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;ZLandroid/os/Bundle;I)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    :cond_0
    return-void
.end method

.method public dq(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->i(Lcom/bytedance/msdk/dq/ox/ig$dq;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onRewardVerify-------------2"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->op(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->kx(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3$1;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3$1;-><init>(Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;ZILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    :cond_0
    return-void
.end method

.method public iw()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onSkippedVideo"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->u(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->kx(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->iw()V

    :cond_0
    return-void
.end method

.method public ox()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onAdClose"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->ji(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->kx(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->t_()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onVideoComplete"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->bl(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->kx(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->u_()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle_reward:onVideoError"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->n(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/dq/d/iw;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ig$dq$1$3;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq$1;

    iget-object v0, v0, Lcom/bytedance/msdk/dq/ox/ig$dq$1;->dq:Lcom/bytedance/msdk/dq/ox/ig$dq;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/ig$dq;->kx(Lcom/bytedance/msdk/dq/ox/ig$dq;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->v_()V

    :cond_0
    return-void
.end method

.class public abstract Lcom/bytedance/msdk/ox/dq/dq/ox;
.super Lcom/bytedance/msdk/d/s;


# instance fields
.field protected d:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field protected dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/d/s;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;

    iput-object p2, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-void
.end method


# virtual methods
.method public ce()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->ce()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->no()V

    :cond_0
    return-void
.end method

.method public d(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/ox/dq/dq/ox;->dq(ZDILjava/util/Map;)V

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;->OTHER:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;->getLossReason()I

    move-result v0

    :try_start_0
    const-string v1, "bidding_lose_reason"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;->getLossReason()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    move v5, v0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/msdk/ox/dq/dq/ox;->dq(ZDILjava/util/Map;)V

    return-void
.end method

.method public dq(ZDILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZDI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->dq(ZDILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public er()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->er()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->ig()V

    :cond_0
    return-void
.end method

.method public kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->o()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->p()V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/dq/ox;->dq:Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/ox/d/dq/dq/d;->mp()V

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/bytedance/sdk/openadsdk/mediation/MediationNativeManagerDefault;
.super Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdLoadInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public getBestEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationAdEcpmInfoDefault;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/mediation/MediationAdEcpmInfoDefault;-><init>()V

    return-object v0
.end method

.method public getCacheList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/dq;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public getMultiBiddingEcpm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/dq;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public getShowEcpm()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationAdEcpmInfoDefault;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/mediation/MediationAdEcpmInfoDefault;-><init>()V

    return-object v0
.end method

.method public hasDislike()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isExpress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public setShakeViewListener(Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/iw;)V
    .locals 0

    return-void
.end method

.method public setUseCustomVideo(Z)V
    .locals 0

    return-void
.end method

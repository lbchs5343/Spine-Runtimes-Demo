.class public Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mp;
.super Lcom/bytedance/sdk/openadsdk/f/dq/dq/ig;


# instance fields
.field private dq:Lcom/bykv/vk/openvk/api/proto/Bridge;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/dq/dq/ig;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mp;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-void
.end method


# virtual methods
.method public setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lg/hat;->g(I)Lg/hat;

    move-result-object v1

    instance-of v2, p1, Lcom/bytedance/sdk/openadsdk/mediation/IMediationInterstitialFullAdListener;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/d/d;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/mediation/IMediationInterstitialFullAdListener;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/d/d;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/IMediationInterstitialFullAdListener;)V

    invoke-virtual {v1, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v1, v0, v0}, Lg/hat;->o(II)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/k/dq/dq/dq/dq;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/k/dq/dq/dq/dq;-><init>(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    invoke-virtual {v1, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v1, v0, v3}, Lg/hat;->o(II)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/mp;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x1fc35

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

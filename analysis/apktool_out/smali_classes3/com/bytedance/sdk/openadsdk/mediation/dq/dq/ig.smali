.class public Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/ig;
.super Lcom/bytedance/sdk/openadsdk/f/dq/dq/no;


# instance fields
.field private dq:Lcom/bykv/vk/openvk/api/proto/Bridge;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/f/dq/dq/no;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/ig;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-void
.end method


# virtual methods
.method public setExpressRenderListener(Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {v0}, Lg/hat;->g(I)Lg/hat;

    move-result-object v1

    instance-of v2, p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationExpressRenderListener;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/iw;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationExpressRenderListener;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/dq/d/iw;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/ad/MediationExpressRenderListener;)V

    invoke-virtual {v1, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v1, v0, v0}, Lg/hat;->o(II)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/wp/dq/dq/dq/ox;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/wp/dq/dq/dq/ox;-><init>(Lcom/bytedance/sdk/openadsdk/TTNativeAd$ExpressRenderListener;)V

    invoke-virtual {v1, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v1, v0, v3}, Lg/hat;->o(II)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/dq/dq/ig;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x2234f

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.class public Lcom/bytedance/sdk/openadsdk/f/dq/ox/d;
.super Ljava/lang/Object;


# direct methods
.method public static final d(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v1, 0x3f7a1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7a2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7a3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7a4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7a5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isAutoPlay()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const v1, 0x3f7a6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const v1, 0x3f7a7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const v1, 0x3f7a8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->l(IF)V

    const v1, 0x3f7a9

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->l(IF)V

    const v1, 0x3f7aa

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isSupportDeepLink()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const v1, 0x3f7ab

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isSupportRenderConrol()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    const v1, 0x27ac4c

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const v1, 0x3f7ad

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediaExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7ae

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7af

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const v1, 0x3f7b0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const v1, 0x3f7b1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExternalABVid()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    const v1, 0x3f7b2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdloadSeq()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const v1, 0x3f7b3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getPrimeRit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7b4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    const v1, 0x3f7b5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7b6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->n(ILjava/lang/String;)V

    const v1, 0x3f7b7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdLoadType()Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/dq/ox/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    const v2, 0x3f7b8

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/dq/ox/d$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    const v2, 0x3f7b9

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/dq/ox/d$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    const v2, 0x3f7ba

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    const v1, 0x7e09bc

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediationAdSlot()Lcom/bytedance/sdk/openadsdk/mediation/ad/IMediationAdSlot;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    return-object p0
.end method

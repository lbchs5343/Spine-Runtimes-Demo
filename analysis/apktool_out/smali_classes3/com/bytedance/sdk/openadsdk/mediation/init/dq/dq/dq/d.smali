.class public Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/d;
.super Ljava/lang/Object;


# direct methods
.method public static final dq(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationPrivacyConfig;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationPrivacyConfig;)V

    const v2, 0x3ffe2

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/d$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationPrivacyConfig;)V

    const v2, 0x3ffe3

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/d$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationPrivacyConfig;)V

    const v2, 0x3ffe4

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/d$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationPrivacyConfig;)V

    const v2, 0x3ffe5

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/d$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationPrivacyConfig;)V

    const p0, 0x3ffe6

    invoke-virtual {v0, p0, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    return-object p0
.end method

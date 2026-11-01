.class public Lcom/bytedance/sdk/openadsdk/f/dq/ox/p;
.super Ljava/lang/Object;


# direct methods
.method public static final dq(Lcom/bytedance/sdk/openadsdk/TTCustomController;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 4

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    const v3, 0x3ffd5

    invoke-virtual {v0, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$6;-><init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    const v3, 0x3ffd6

    invoke-virtual {v0, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$7;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$7;-><init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    const v3, 0x3ffd7

    invoke-virtual {v0, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$8;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$8;-><init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    const v3, 0x3ffd8

    invoke-virtual {v0, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$9;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$9;-><init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    const v3, 0x3ffd9

    invoke-virtual {v0, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$10;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$10;-><init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    const v3, 0x3ffda

    invoke-virtual {v0, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$11;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$11;-><init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    const v3, 0x3ffdb

    invoke-virtual {v0, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$12;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$12;-><init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    const v3, 0x3ffdc

    invoke-virtual {v0, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$13;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$13;-><init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    const v3, 0x3ffdd

    invoke-virtual {v0, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$2;-><init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    const v3, 0x3ffde

    invoke-virtual {v0, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getMediationPrivacyConfig()Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationPrivacyConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTCustomController;->getMediationPrivacyConfig()Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationPrivacyConfig;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationPrivacyConfig;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    :cond_1
    const v2, 0x3ffe1

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$3;-><init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    const v2, 0x3ffe0

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$4;-><init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    const v2, 0x3ffdf

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/dq/ox/p$5;-><init>(Lcom/bytedance/sdk/openadsdk/TTCustomController;)V

    const p0, 0x3ffe7

    invoke-virtual {v0, p0, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    return-object p0
.end method

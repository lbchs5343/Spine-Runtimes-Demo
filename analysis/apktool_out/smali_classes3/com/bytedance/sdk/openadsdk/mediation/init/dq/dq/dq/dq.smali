.class public Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq;
.super Ljava/lang/Object;


# direct methods
.method public static final dq(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 4

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)V

    const v3, 0x407a5

    invoke-virtual {v0, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$3;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)V

    const v3, 0x407a6

    invoke-virtual {v0, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;->getMediationConfigUserInfoForSegment()Lcom/bytedance/sdk/openadsdk/mediation/init/MediationConfigUserInfoForSegment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;->getMediationConfigUserInfoForSegment()Lcom/bytedance/sdk/openadsdk/mediation/init/MediationConfigUserInfoForSegment;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/mediation/init/MediationConfigUserInfoForSegment;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    :cond_1
    const v2, 0x407a7

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$4;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)V

    const v2, 0x407a8

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$5;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)V

    const v2, 0x407a9

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$6;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)V

    const v2, 0x407aa

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$7;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)V

    const v2, 0x407ab

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$8;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)V

    const v2, 0x407ac

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$9;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$9;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)V

    const v2, 0x407ad

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$10;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$10;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)V

    const v2, 0x407ae

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/dq/dq/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/init/IMediationConfig;)V

    const p0, 0x407af

    invoke-virtual {v0, p0, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    return-object p0
.end method

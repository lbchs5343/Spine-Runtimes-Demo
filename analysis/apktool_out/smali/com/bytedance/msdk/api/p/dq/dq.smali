.class public Lcom/bytedance/msdk/api/p/dq/dq;
.super Ljava/lang/Object;


# direct methods
.method public static dq(ILcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)Lcom/bytedance/msdk/api/dq/d;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/msdk/core/mp/dq;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    new-instance p2, Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->ox()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/bytedance/msdk/api/dq/d;-><init>(ILcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

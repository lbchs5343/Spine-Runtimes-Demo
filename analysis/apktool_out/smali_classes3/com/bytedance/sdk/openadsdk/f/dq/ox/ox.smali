.class public Lcom/bytedance/sdk/openadsdk/f/dq/ox/ox;
.super Ljava/lang/Object;


# direct methods
.method public static final dq(Lcom/bytedance/sdk/openadsdk/LocationProvider;)Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 4

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const v1, 0x3ff71

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/LocationProvider;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lg/hat;->j(ID)V

    const v1, 0x3ff72

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/LocationProvider;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lg/hat;->j(ID)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    return-object p0
.end method

.class public Lcom/bytedance/msdk/ia/p/d;
.super Ljava/lang/Object;


# static fields
.field private static dq:Lcom/bykv/vk/openvk/api/proto/Bridge;


# direct methods
.method private static d(Lcom/bytedance/msdk/s/dq;Z)V
    .locals 3

    sget-object v0, Lcom/bytedance/msdk/ia/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const/16 v2, 0x2712

    if-eqz p1, :cond_0

    const/16 p1, 0x4e23

    invoke-virtual {p0}, Lcom/bytedance/msdk/s/dq;->ox()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lg/hat;->n(ILjava/lang/String;)V

    sget-object p0, Lcom/bytedance/msdk/ia/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    invoke-interface {p0, v2, p1, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void

    :cond_0
    const/16 p1, 0x4e22

    invoke-virtual {p0}, Lcom/bytedance/msdk/s/dq;->ox()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lg/hat;->n(ILjava/lang/String;)V

    sget-object p0, Lcom/bytedance/msdk/ia/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    invoke-interface {p0, v2, p1, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    sput-object p0, Lcom/bytedance/msdk/ia/p/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/s/dq;Z)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/bytedance/msdk/ia/p/d;->d(Lcom/bytedance/msdk/s/dq;Z)V

    return-void
.end method

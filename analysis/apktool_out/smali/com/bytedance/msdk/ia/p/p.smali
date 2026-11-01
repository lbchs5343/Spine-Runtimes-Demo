.class public Lcom/bytedance/msdk/ia/p/p;
.super Ljava/lang/Object;


# static fields
.field private static dq:Lcom/bykv/vk/openvk/api/proto/Bridge;


# direct methods
.method public static d()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/bytedance/msdk/ia/p/p;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x2715

    const-class v3, Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static dq()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/bytedance/msdk/ia/p/p;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x2714

    const-class v3, Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    sput-object p0, Lcom/bytedance/msdk/ia/p/p;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-void
.end method

.method public static ox()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/bytedance/msdk/ia/p/p;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x2716

    const-class v3, Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

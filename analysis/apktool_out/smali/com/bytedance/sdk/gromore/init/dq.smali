.class public Lcom/bytedance/sdk/gromore/init/dq;
.super Ljava/lang/Object;


# direct methods
.method public static d()Lcom/bytedance/sdk/openadsdk/core/ir;
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;->getCsjManger()Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object v0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/ir;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ir;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static dq()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    return v0
.end method

.method public static dq(I)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/dq;->d()Lcom/bytedance/sdk/openadsdk/core/ir;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ir;->dq(I)V

    :cond_0
    return-void
.end method

.method public static dq(Z)V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/dq;->d()Lcom/bytedance/sdk/openadsdk/core/ir;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_paid"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const-class p0, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir;->dq(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static ox()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/op;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    const-string v0, "6.6.0.7"

    return-object v0
.end method

.method public static s()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;->isInitSuccess()Z

    move-result v0

    return v0
.end method

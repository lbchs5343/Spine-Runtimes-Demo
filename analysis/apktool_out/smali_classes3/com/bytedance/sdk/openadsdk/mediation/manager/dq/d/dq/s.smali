.class public abstract Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;
.super Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/ox;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/ox;-><init>()V

    return-void
.end method

.method private dq()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/ox;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    invoke-static {v0}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s$1;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;)V

    const v2, 0x41eb8

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s$2;-><init>(Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;)V

    const v2, 0x41ebb

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/ValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;->onPause()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;->onResume()V

    goto :goto_0

    :sswitch_2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/iw;

    const-class v2, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {p2, v0, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/iw;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;->setShakeViewListener(Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/iw;)V

    goto :goto_0

    :sswitch_3
    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;->setUseCustomVideo(Z)V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/ox;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x41eb9 -> :sswitch_3
        0x41eba -> :sswitch_2
        0x422c8 -> :sswitch_1
        0x422c9 -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract hasDislike()Z
.end method

.method public abstract isExpress()Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setShakeViewListener(Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/iw;)V
.end method

.method public abstract setUseCustomVideo(Z)V
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;->dq()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method

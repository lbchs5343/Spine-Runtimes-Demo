.class public abstract Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/iw;
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
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/ox;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    invoke-static {v0}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object v0

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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

    const v0, 0x41eb7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/iw;->destroy()V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/ox;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract destroy()V
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/iw;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/iw;->dq()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/iw;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method

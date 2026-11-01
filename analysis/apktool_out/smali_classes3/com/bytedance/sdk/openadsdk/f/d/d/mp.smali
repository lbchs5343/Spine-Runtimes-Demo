.class public abstract Lcom/bytedance/sdk/openadsdk/f/d/d/mp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private iw()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/mp$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp$1;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/mp;)V

    const v2, 0x38272

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/mp$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp$2;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/mp;)V

    const v2, 0x38271

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/mp$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp$3;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/mp;)V

    const v2, 0x38273

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/mp$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp$4;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/mp;)V

    const v2, 0x38274

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/mp$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp$5;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/mp;)V

    const v2, 0x38275

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract d()I
.end method

.method public abstract dq()I
.end method

.method public abstract ox()Ljava/lang/String;
.end method

.method public abstract p()D
.end method

.method public abstract s()Z
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->iw()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method

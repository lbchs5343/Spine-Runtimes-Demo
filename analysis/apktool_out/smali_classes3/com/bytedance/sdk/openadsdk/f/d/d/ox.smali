.class public abstract Lcom/bytedance/sdk/openadsdk/f/d/d/ox;
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

.method private kk()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/ox;)V

    const v2, 0x3d091

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/ox;)V

    const v2, 0x3d092

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$3;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/ox;)V

    const v2, 0x3d093

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$4;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/ox;)V

    const v2, 0x3d094

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$5;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/ox;)V

    const v2, 0x3d096

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$6;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/ox;)V

    const v2, 0x3d095

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$7;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/ox;)V

    const v2, 0x3d097

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox$8;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/ox;)V

    const v2, 0x3d098

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

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract dq()Ljava/lang/String;
.end method

.method public abstract ia()Ljava/lang/String;
.end method

.method public abstract iw()Ljava/lang/String;
.end method

.method public abstract mn()Ljava/lang/String;
.end method

.method public abstract ox()Ljava/lang/String;
.end method

.method public abstract p()Ljava/lang/String;
.end method

.method public abstract s()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->kk()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method

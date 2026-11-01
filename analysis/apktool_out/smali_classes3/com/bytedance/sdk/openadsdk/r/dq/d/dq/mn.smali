.class public Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;
.super Ljava/lang/Object;


# instance fields
.field private final dq:Lcom/bykv/vk/openvk/api/proto/Bridge;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lg/hat;->a:Lg/gaw;

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lg/hat;->g(I)Lg/hat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x1e4c7

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public dq()V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lg/hat;->g(I)Lg/hat;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v2, Ljava/lang/Void;

    const v3, 0x1e4c8

    invoke-interface {v1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Lg/hat;->g(I)Lg/hat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lg/hat;->o(II)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, p2}, Lg/hat;->n(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class v0, Ljava/lang/Void;

    const v1, 0x1e4c5

    invoke-interface {p1, v1, p2, v0}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lg/hat;->g(I)Lg/hat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/mn;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x1e4c6

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

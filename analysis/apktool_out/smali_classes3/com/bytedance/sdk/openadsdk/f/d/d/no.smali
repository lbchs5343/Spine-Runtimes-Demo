.class public abstract Lcom/bytedance/sdk/openadsdk/f/d/d/no;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/q;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;-><init>()V

    return-void
.end method

.method private kx()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    invoke-static {v0}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/no$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no$1;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V

    const v2, 0x27101

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/no$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no$2;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V

    const v2, 0x27102

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/no$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no$3;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V

    const v2, 0x27103

    invoke-virtual {v0, v2, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/d/no$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no$4;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V

    const v2, 0x27104

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

    const-class v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;

    invoke-interface {p2, v1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->dq(Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;)V

    goto :goto_0

    :pswitch_1
    new-instance v2, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

    invoke-interface {p2, v1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->dq(Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;)V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x27165
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;
.end method

.method public abstract dq()D
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;)V
.end method

.method public abstract dq(Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;)V
.end method

.method public abstract ox()I
.end method

.method public abstract p()I
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->kx()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-object v0
.end method

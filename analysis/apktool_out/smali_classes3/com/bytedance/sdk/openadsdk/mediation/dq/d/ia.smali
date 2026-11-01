.class public abstract Lcom/bytedance/sdk/openadsdk/mediation/dq/d/ia;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/no;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;-><init>()V

    return-void
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

    const v0, 0x2234f

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    const-class p3, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p2

    if-ne p2, p3, :cond_0

    new-instance p2, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/s;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/s;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

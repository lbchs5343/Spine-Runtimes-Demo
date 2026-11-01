.class public Lcom/bytedance/sdk/openadsdk/tools/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/tools/ox;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/tools/ox;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/tools/ox;->dq:Lcom/bytedance/sdk/openadsdk/tools/ox;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/tools/ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/tools/ox;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/tools/ox;->dq:Lcom/bytedance/sdk/openadsdk/tools/ox;

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/tools/ox;->dq:Lcom/bytedance/sdk/openadsdk/tools/ox;

    return-object v0
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
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

    const/16 p3, 0x2711

    const/4 v0, 0x1

    if-ne p1, p3, :cond_0

    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/no;->o(Z)V

    goto/16 :goto_0

    :cond_0
    const/16 p3, 0x2712

    if-ne p1, p3, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/no;->uh()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 p3, 0x2713

    const-class v1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v2, 0x0

    if-ne p1, p3, :cond_2

    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    goto :goto_0

    :cond_2
    const/16 p3, 0x2714

    if-ne p1, p3, :cond_3

    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/bykv/vk/openvk/api/proto/Bridge;

    const-class p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    const/4 p3, 0x2

    invoke-interface {p2, p3, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    const/4 p3, 0x3

    invoke-interface {p2, p3, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Ljava/lang/String;

    const/4 p3, 0x4

    invoke-interface {p2, p3, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    goto :goto_0

    :cond_3
    const/16 p2, 0x2715

    if-ne p1, p2, :cond_4

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/no;->yy()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/no;->v()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {p1}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

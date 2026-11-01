.class public Lcom/bytedance/sdk/openadsdk/f/d/ox/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/f/d/ox/p$dq;
    }
.end annotation


# instance fields
.field public final d:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lg/hat;->b:Lg/cpo;

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffd7

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    return v0
.end method

.method public dq()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffd5

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    return v0
.end method

.method public ia()Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffd6

    const-class v2, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ig()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffe0

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public iw()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffde

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    return v0
.end method

.method public kk()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffd9

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public mn()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffdf

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    return v0
.end method

.method public mp()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffe7

    const-class v2, Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public no()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffdd

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffdb

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ox()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffd8

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffda

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    return v0
.end method

.method public q()Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffe1

    const-class v2, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/d/ox/p;->d:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x3ffdc

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    return v0
.end method

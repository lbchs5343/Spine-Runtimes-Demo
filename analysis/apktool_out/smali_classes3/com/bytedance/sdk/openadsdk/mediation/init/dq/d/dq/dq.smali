.class public Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;
.super Ljava/lang/Object;


# instance fields
.field public final dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lg/hat;->b:Lg/cpo;

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x407a6

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    return v0
.end method

.method public dq()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x407a5

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ia()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x407ac

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    return v0
.end method

.method public iw()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x407aa

    const-class v2, Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public kk()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x407ad

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    return v0
.end method

.method public mn()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x407ab

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public no()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x407af

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x407ae

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    return v0
.end method

.method public ox()Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x407a7

    const-class v2, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/ox;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x407a8

    const-class v2, Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/mediation/init/dq/d/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    const v1, 0x407a9

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v0

    return v0
.end method

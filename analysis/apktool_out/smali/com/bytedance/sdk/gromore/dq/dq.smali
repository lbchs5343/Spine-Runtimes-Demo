.class public Lcom/bytedance/sdk/gromore/dq/dq;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

.field private dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;-><init>(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    iput-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->o()I

    move-result v0

    return v0
.end method

.method public dq()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kk()I

    move-result v0

    return v0
.end method

.method public ia()Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    const/16 v1, 0x206e

    const-class v2, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/api/proto/Bridge;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public kk()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn()Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/gromore/dq/dq;->iw()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/gromore/dq/dq;->iw()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->mp()Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/ox;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->no()F

    move-result v0

    return v0
.end method

.method public p()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ig()F

    move-result v0

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/bytedance/msdk/ox/dq/s;
.super Lcom/bytedance/msdk/ox/dq/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/s/d/dq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/dq/p;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;)V

    return-void
.end method

.method private kf()Lcom/bytedance/msdk/api/p/dq/p/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/p/dq;

    return-object v0
.end method


# virtual methods
.method public dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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

    const/16 p3, 0x1fcf

    if-ne p1, p3, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p3, 0x1faf

    if-ne p1, p3, :cond_2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/dq/p;->u()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->jv()Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_1
    const/16 p1, 0x1f50

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    goto/16 :goto_1

    :cond_2
    const/16 p3, 0x1fc1

    const/4 v0, 0x0

    if-ne p1, p3, :cond_3

    if-eqz p2, :cond_c

    const/16 p1, 0x1f61

    invoke-interface {p2, p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    goto/16 :goto_1

    :cond_3
    const/16 p3, 0x3f0

    if-ne p1, p3, :cond_4

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->D_()V

    goto/16 :goto_1

    :cond_4
    const/16 p3, 0x3f9

    if-ne p1, p3, :cond_6

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    if-eqz p1, :cond_c

    if-eqz p2, :cond_5

    const/16 p1, 0x1f4e

    invoke-interface {p2, p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(II)I

    move-result v0

    const/16 p1, 0x1f4f

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string p1, ""

    :goto_0
    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p2

    new-instance p3, Lcom/bytedance/msdk/api/dq;

    invoke-direct {p3, v0, p1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/bytedance/msdk/api/p/dq/p/dq;->b_(Lcom/bytedance/msdk/api/dq;)V

    goto/16 :goto_1

    :cond_6
    const/16 p3, 0x3f1

    if-ne p1, p3, :cond_7

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->o_()V

    goto/16 :goto_1

    :cond_7
    const/16 p3, 0x3f6

    if-ne p1, p3, :cond_8

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->p_()V

    goto :goto_1

    :cond_8
    const/16 p3, 0x402

    if-ne p1, p3, :cond_9

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->q_()V

    goto :goto_1

    :cond_9
    const/16 p3, 0x3fd

    if-ne p1, p3, :cond_a

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->r_()V

    goto :goto_1

    :cond_a
    const/16 p3, 0x40d

    if-ne p1, p3, :cond_b

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->iw()V

    goto :goto_1

    :cond_b
    const/16 p3, 0x3fa

    if-ne p1, p3, :cond_c

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object p1

    if-eqz p1, :cond_c

    const/16 p1, 0x1f51

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result p1

    const/16 p3, 0x1f52

    invoke-interface {p2, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p3

    int-to-float p3, p3

    const/16 v0, 0x1f53

    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/dq/s;->kf()Lcom/bytedance/msdk/api/p/dq/p/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/ox/dq/s$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/bytedance/msdk/ox/dq/s$1;-><init>(Lcom/bytedance/msdk/ox/dq/s;ZFLjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/p/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    :cond_c
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/msdk/ox/dq/p;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p2, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p2

    const/16 p3, 0x4e41

    invoke-virtual {p2, p3, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/dq/p;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    const/16 v0, 0x1fb1

    invoke-interface {p1, v0, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/p;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x2013

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->e()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->e()Z

    move-result v0

    return v0
.end method

.method public iw()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/p;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const/16 v3, 0x1fd3

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->iw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/p;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-class v2, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    const/16 v3, 0x1fb9

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/bytedance/msdk/core/dq/mn;
.super Lcom/bytedance/msdk/core/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/dq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/d;-><init>(Lcom/bytedance/msdk/dq/dq;)V

    return-void
.end method

.method private dn()Lcom/bytedance/msdk/api/p/dq/ia/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    return-object v0
.end method

.method private kf()Lcom/bytedance/msdk/api/p/dq/ia/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    return-object v0
.end method


# virtual methods
.method public dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
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

    const/16 v0, 0x1fb3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->kf()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->s_()V

    :cond_0
    :goto_0
    move-object v7, p0

    goto/16 :goto_2

    :cond_1
    const/16 v0, 0x1fb4

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->kf()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->t_()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1fb5

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->kf()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->v_()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x1fb6

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->kf()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->u_()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x1fb7

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->kf()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->iw()V

    goto :goto_0

    :cond_5
    const/16 v0, 0x2026

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->kf()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->E_()V

    goto :goto_0

    :cond_6
    const/16 v0, 0x2027

    const-class v1, Ljava/util/Map;

    const/16 v2, 0x1f54

    const/16 v3, 0x1f53

    const/16 v4, 0x1f52

    const/16 v5, 0x1f51

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_0

    invoke-interface {p2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v8

    invoke-interface {p2, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result p1

    int-to-float v9, p1

    invoke-interface {p2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_7

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_7
    new-instance v6, Lcom/bytedance/msdk/core/dq/mn$1;

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/bytedance/msdk/core/dq/mn$1;-><init>(Lcom/bytedance/msdk/core/dq/mn;ZFLjava/lang/String;Ljava/util/Map;)V

    const-string p1, "GMRewardAd reward verify"

    invoke-static {v6, p1}, Lcom/bytedance/sdk/gromore/dq/dq/s/mn;->dq(Lcom/bytedance/msdk/api/ox/dq;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->kf()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    goto/16 :goto_2

    :cond_8
    move-object v7, p0

    const/16 v0, 0x3f9

    if-ne p1, v0, :cond_a

    iget-object p1, v7, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    if-eqz p2, :cond_9

    const/16 v0, 0x1f4e

    invoke-interface {p2, v0, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(II)I

    move-result p1

    const/16 v0, 0x1f4f

    invoke-interface {p2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_9
    const-string p2, ""

    :goto_1
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->kf()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->c_(Lcom/bytedance/msdk/api/dq;)V

    goto/16 :goto_2

    :cond_a
    const/16 v0, 0x2028

    if-ne p1, v0, :cond_b

    iget-object p1, v7, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_13

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->dn()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->s_()V

    goto/16 :goto_2

    :cond_b
    const/16 v0, 0x2029

    if-ne p1, v0, :cond_c

    iget-object p1, v7, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_13

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->dn()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->t_()V

    goto/16 :goto_2

    :cond_c
    const/16 v0, 0x202a

    if-ne p1, v0, :cond_d

    iget-object p1, v7, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_13

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->dn()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->v_()V

    goto/16 :goto_2

    :cond_d
    const/16 v0, 0x202b

    if-ne p1, v0, :cond_e

    iget-object p1, v7, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_13

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->dn()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->u_()V

    goto/16 :goto_2

    :cond_e
    const/16 v0, 0x202c

    if-ne p1, v0, :cond_f

    iget-object p1, v7, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_13

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->dn()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->iw()V

    goto :goto_2

    :cond_f
    const/16 v0, 0x202d

    if-ne p1, v0, :cond_10

    iget-object p1, v7, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_13

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->dn()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->E_()V

    goto :goto_2

    :cond_10
    const/16 v0, 0x202e

    if-ne p1, v0, :cond_12

    iget-object p1, v7, Lcom/bytedance/msdk/d/s;->mp:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p1, p1, Lcom/bytedance/msdk/api/p/dq/ia/dq;

    if-eqz p1, :cond_13

    invoke-interface {p2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result p1

    invoke-interface {p2, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_11

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_11
    move v3, v0

    new-instance v0, Lcom/bytedance/msdk/core/dq/mn$2;

    move v2, p1

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/msdk/core/dq/mn$2;-><init>(Lcom/bytedance/msdk/core/dq/mn;ZFLjava/lang/String;Ljava/util/Map;)V

    const-string p1, "GMRewardAd play again reward verify"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/gromore/dq/dq/s/mn;->dq(Lcom/bytedance/msdk/api/ox/dq;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/mn;->dn()Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->dq(Lcom/bytedance/msdk/api/ox/dq;)V

    goto :goto_2

    :cond_12
    const/16 v0, 0x1faf

    if-ne p1, v0, :cond_13

    const/16 p1, 0x1f50

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_13
    :goto_2
    invoke-static {p3}, Lcom/bytedance/msdk/core/cd/dq;->dq(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p2, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p2

    const/16 p3, 0x4e41

    invoke-virtual {p2, p3, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

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

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

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

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

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

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

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

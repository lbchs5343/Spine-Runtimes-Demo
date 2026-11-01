.class public Lcom/bytedance/msdk/core/dq/ia;
.super Lcom/bytedance/msdk/core/dq/d;


# instance fields
.field private ox:Lcom/bytedance/msdk/dq/d/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/dq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/d;-><init>(Lcom/bytedance/msdk/dq/dq;)V

    return-void
.end method

.method private kf()Lcom/bytedance/msdk/dq/d/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    check-cast v0, Lcom/bytedance/msdk/dq/d/s;

    return-object v0
.end method


# virtual methods
.method public d(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/bytedance/msdk/d/s;->d(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x4e5c

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const/16 v2, 0x1809

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
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

    const/16 p3, 0x1fcf

    if-ne p1, p3, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p3, 0x3f1

    const/16 v0, 0x4e48

    const/4 v1, 0x0

    if-ne p1, p3, :cond_3

    if-eqz p2, :cond_1

    invoke-interface {p2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(IZ)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/ia;->ox:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p2, p1, Lcom/bytedance/msdk/api/p/dq/kk/d;

    if-eqz p2, :cond_19

    check-cast p1, Lcom/bytedance/msdk/api/p/dq/kk/d;

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/kk/d;->mn()V

    goto/16 :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/kk/d;->mn()V

    goto/16 :goto_1

    :cond_3
    const/16 p3, 0x3f9

    if-ne p1, p3, :cond_5

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    if-eqz p1, :cond_19

    if-eqz p2, :cond_4

    const/16 p1, 0x1f4e

    invoke-interface {p2, p1, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(II)I

    move-result v1

    const/16 p1, 0x1f4f

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, ""

    :goto_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p2

    new-instance p3, Lcom/bytedance/msdk/api/dq;

    invoke-direct {p3, v1, p1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/bytedance/msdk/api/p/dq/kk/d;->d_(Lcom/bytedance/msdk/api/dq;)V

    goto/16 :goto_1

    :cond_5
    const/16 p3, 0x3f3

    const/16 v2, 0x2168

    if-ne p1, p3, :cond_9

    if-eqz p2, :cond_6

    invoke-interface {p2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(IZ)Z

    move-result v1

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p2, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    :cond_7
    const/4 p1, 0x2

    if-eqz v1, :cond_8

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/ia;->ox:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p3, p2, Lcom/bytedance/msdk/api/p/dq/kk/d;

    if-eqz p3, :cond_19

    check-cast p2, Lcom/bytedance/msdk/api/p/dq/kk/d;

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/kk/d;->d(I)V

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p2

    if-eqz p2, :cond_19

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/kk/d;->d(I)V

    goto/16 :goto_1

    :cond_9
    const/16 p3, 0x3f0

    if-ne p1, p3, :cond_c

    if-eqz p2, :cond_a

    invoke-interface {p2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(IZ)Z

    move-result v1

    :cond_a
    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/ia;->ox:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p2, p1, Lcom/bytedance/msdk/api/p/dq/kk/d;

    if-eqz p2, :cond_19

    check-cast p1, Lcom/bytedance/msdk/api/p/dq/kk/d;

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/kk/d;->w_()V

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/kk/d;->w_()V

    goto/16 :goto_1

    :cond_c
    const/16 p3, 0x3fb

    if-ne p1, p3, :cond_10

    if-eqz p2, :cond_d

    invoke-interface {p2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(IZ)Z

    move-result v1

    :cond_d
    if-eqz p2, :cond_e

    invoke-interface {p2, v2}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    :cond_e
    const/4 p1, 0x1

    if-eqz v1, :cond_f

    iget-object p2, p0, Lcom/bytedance/msdk/core/dq/ia;->ox:Lcom/bytedance/msdk/dq/d/iw;

    instance-of p3, p2, Lcom/bytedance/msdk/api/p/dq/kk/d;

    if-eqz p3, :cond_19

    check-cast p2, Lcom/bytedance/msdk/api/p/dq/kk/d;

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/kk/d;->dq(I)V

    goto/16 :goto_1

    :cond_f
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p2

    if-eqz p2, :cond_19

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/bytedance/msdk/api/p/dq/kk/d;->dq(I)V

    goto/16 :goto_1

    :cond_10
    const/16 p3, 0x432

    if-ne p1, p3, :cond_11

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/dq/d/s;->getActivity()Landroid/app/Activity;

    move-result-object p1

    return-object p1

    :cond_11
    const/16 p3, 0x431

    if-ne p1, p3, :cond_12

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    const/16 p1, 0x20ec

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    goto/16 :goto_1

    :cond_12
    const/16 p3, 0x430

    if-ne p1, p3, :cond_13

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/dq/d/s;->z_()V

    goto :goto_1

    :cond_13
    const/16 p3, 0x42f

    if-ne p1, p3, :cond_14

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/dq/d/s;->y_()V

    goto :goto_1

    :cond_14
    const/16 p3, 0x180f

    if-ne p1, p3, :cond_15

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/dq/d/s;->iw()V

    goto :goto_1

    :cond_15
    const/16 p3, 0x41b

    if-ne p1, p3, :cond_16

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/dq/d/s;->F_()V

    goto :goto_1

    :cond_16
    const/16 p3, 0x41c

    if-ne p1, p3, :cond_17

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/dq/d/s;->x_()V

    goto :goto_1

    :cond_17
    const/16 p3, 0x180c

    if-ne p1, p3, :cond_18

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/ia;->kf()Lcom/bytedance/msdk/dq/d/s;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/dq/d/s;->A_()V

    goto :goto_1

    :cond_18
    const/16 p3, 0x1faf

    if-ne p1, p3, :cond_19

    const/16 p1, 0x1f50

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_19
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/bytedance/msdk/d/s;->dq(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x4e5c

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const/16 v2, 0x1808

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x4e5c

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p1, 0x4e41

    invoke-virtual {v0, p1, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class v0, Ljava/lang/Void;

    const/16 v1, 0x180a

    invoke-interface {p1, v1, p2, v0}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
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

.class public Lcom/bytedance/msdk/ox/dq/ox;
.super Lcom/bytedance/msdk/ox/dq/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/s/d/dq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/dq/p;-><init>(Lcom/bytedance/msdk/ox/s/d/dq;)V

    return-void
.end method

.method private kf()Lcom/bytedance/msdk/api/p/dq/dq/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/dq/dq;

    return-object v0
.end method


# virtual methods
.method public dq(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 32
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

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x3f0

    if-eq v1, v3, :cond_8

    const/16 v3, 0x3f1

    if-eq v1, v3, :cond_7

    const/16 v3, 0x3f6

    if-eq v1, v3, :cond_5

    const/16 v3, 0x3f8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x1faf

    if-eq v1, v3, :cond_4

    const/16 v3, 0x1fcc

    const/16 v6, 0x1f7a

    if-eq v1, v3, :cond_2

    const/16 v3, 0x200f

    if-eq v1, v3, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_1
    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->mp(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x1f6d

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1f6e

    invoke-interface {v2, v3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x1f6f

    invoke-interface {v2, v7}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v7

    const/16 v8, 0x1f70

    invoke-interface {v2, v8}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f71

    invoke-interface {v2, v9}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1f72

    invoke-interface {v2, v10}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1f73

    invoke-interface {v2, v11}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v11

    const/16 v12, 0x1f74

    invoke-interface {v2, v12}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v12

    const/16 v13, 0x1f75

    const-class v14, Ljava/util/List;

    invoke-interface {v2, v13, v14}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    const/16 v14, 0x1f76

    invoke-interface {v2, v14}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1f77

    invoke-interface {v2, v15}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v15

    const/16 v4, 0x1f78

    invoke-interface {v2, v4}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f79

    invoke-interface {v2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f64

    move-object/from16 p1, v5

    const-class v5, Ljava/lang/Object;

    invoke-interface {v2, v6, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x1f7a

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    const/16 v6, 0x1f50

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide v5

    move-wide/from16 v18, v5

    const/16 v5, 0x1f61

    invoke-interface {v2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->booleanValue(I)Z

    move-result v5

    const/16 v6, 0x1f7c

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v6

    move/from16 v20, v6

    const/16 v6, 0x1f7d

    move/from16 v21, v5

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v22, v6

    const/16 v6, 0x1f8e

    move-object/from16 v23, v5

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->longValue(I)J

    move-result-wide v5

    move-wide/from16 v24, v5

    const/16 v5, 0x1f8f

    invoke-interface {v2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20eb

    move-object/from16 v26, v5

    const-class v5, Ljava/util/Map;

    invoke-interface {v2, v6, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const/16 v6, 0x1f90

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v27, v6

    const/16 v6, 0x1f91

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v28, v6

    const/16 v6, 0x1f92

    move-object/from16 v29, v5

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide v5

    move-wide/from16 v30, v5

    const/16 v5, 0x1f7b

    invoke-interface {v2, v5}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->intValue(I)I

    move-result v5

    const/16 v6, 0x2167

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->stringValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->n(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/d/s;->op(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/bytedance/msdk/d/s;->i(I)V

    invoke-virtual {v0, v8}, Lcom/bytedance/msdk/d/s;->kx(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/bytedance/msdk/d/s;->ir(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/bytedance/msdk/d/s;->h(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/bytedance/msdk/d/s;->r(I)V

    invoke-virtual {v0, v12}, Lcom/bytedance/msdk/d/s;->gh(I)V

    invoke-virtual {v0, v13}, Lcom/bytedance/msdk/d/s;->dq(Ljava/util/List;)V

    invoke-virtual {v0, v14}, Lcom/bytedance/msdk/d/s;->bl(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lcom/bytedance/msdk/d/s;->ia(Z)V

    invoke-virtual {v0, v4}, Lcom/bytedance/msdk/d/s;->i(Ljava/lang/String;)V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->le(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v1

    const-string v3, "baidu"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "baidu_dislike_info"

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v3}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->mp(Ljava/lang/String;)V

    move-wide/from16 v3, v18

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/msdk/d/s;->dq(D)V

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->ig(I)V

    invoke-virtual {v0, v5}, Lcom/bytedance/msdk/d/s;->mp(I)V

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->ji(Ljava/lang/String;)V

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->r(Ljava/lang/String;)V

    move-wide/from16 v3, v24

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/msdk/d/s;->d(J)V

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->k(Ljava/lang/String;)V

    move-object/from16 v5, v29

    invoke-virtual {v0, v5}, Lcom/bytedance/msdk/d/s;->s(Ljava/util/Map;)V

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->wp(Ljava/lang/String;)V

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/d/s;->e(Ljava/lang/String;)V

    move-wide/from16 v3, v30

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/msdk/d/s;->p(D)V

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/d/s;->no(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0x1f50

    invoke-interface {v2, v6}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->doubleValue(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    instance-of v1, v1, Lcom/bytedance/msdk/api/p/dq/dq/dq;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/bytedance/msdk/ox/dq/p;->d:Lcom/bytedance/msdk/ox/s/d/dq;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/bytedance/msdk/ox/s/d/dq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/core/d/dq;->dq(Ljava/lang/String;)V

    :cond_6
    invoke-direct {v0}, Lcom/bytedance/msdk/ox/dq/ox;->kf()Lcom/bytedance/msdk/api/p/dq/dq/dq;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->C_()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    instance-of v1, v1, Lcom/bytedance/msdk/api/p/dq/dq/dq;

    if-eqz v1, :cond_0

    invoke-direct {v0}, Lcom/bytedance/msdk/ox/dq/ox;->kf()Lcom/bytedance/msdk/api/p/dq/dq/dq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->dq(Landroid/view/View;)V

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    instance-of v1, v1, Lcom/bytedance/msdk/api/p/dq/dq/dq;

    if-eqz v1, :cond_9

    invoke-direct {v0}, Lcom/bytedance/msdk/ox/dq/ox;->kf()Lcom/bytedance/msdk/api/p/dq/dq/dq;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/bytedance/msdk/api/p/dq/dq/dq;->d(Landroid/view/View;)V

    :cond_9
    :goto_1
    return-object v2
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/p/dq/mn/no;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object p7, p0, Lcom/bytedance/msdk/ox/dq/p;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p7, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p7

    const/16 v0, 0x4e41

    invoke-virtual {p7, v0, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p1, 0x1f83

    invoke-virtual {p7, p1, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p1, 0x1f84

    invoke-virtual {p7, p1, p3}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p1, 0x1f85

    invoke-virtual {p7, p1, p4}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p1, 0x1f86

    invoke-virtual {p7, p1, p5}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p1, 0x1f87

    invoke-static {p6}, Lcom/bytedance/msdk/api/p/dq/mn/no;->dq(Lcom/bytedance/msdk/api/p/dq/mn/no;)Lcom/bytedance/msdk/dq/p/d/dq;

    move-result-object p2

    invoke-virtual {p7, p1, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/dq/p;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {p7}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    const/16 p4, 0x1fdf

    invoke-interface {p1, p4, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public ig()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/p;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Landroid/view/View;

    const/16 v3, 0x17c1

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->ig()Landroid/view/View;

    move-result-object v0

    return-object v0
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

.method public o()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/dq/p;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/Boolean;

    const/16 v2, 0x1fc7

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->o()Z

    move-result v0

    return v0
.end method

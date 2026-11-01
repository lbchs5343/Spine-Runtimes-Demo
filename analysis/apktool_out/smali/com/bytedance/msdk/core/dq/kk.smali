.class public Lcom/bytedance/msdk/core/dq/kk;
.super Lcom/bytedance/msdk/dq/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/dq/kk$dq;
    }
.end annotation


# instance fields
.field private iw:Ljava/lang/String;

.field private mn:Lcom/bytedance/msdk/core/dq/kk$dq;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/kk;->iw:Ljava/lang/String;

    return-void
.end method

.method private d(Landroid/content/Context;Lg/hat;)V
    .locals 6

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mp/dq;->mn()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/dq;->dq()I

    move-result v1

    const/16 v2, 0x170c

    const-class v3, Ljava/lang/Void;

    const/16 v4, 0x1faa

    const/16 v5, 0x1f49

    if-lt v1, v2, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/dq;->dq(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p1, 0x20e8

    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    invoke-interface {v0, v4, p1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/dq;->dq(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    invoke-interface {v0, v4, p1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string p1, "TTMediationSDK"

    const-string p2, "load ad class loader is null "

    invoke-static {p1, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/msdk/dq/dq;Ljava/util/Map;Ljava/lang/String;)Lg/hat;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/dq/dq;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lg/hat;"
        }
    .end annotation

    move-object/from16 v0, p2

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/dq/dq;->dq()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/dq/dq;->dq()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->i()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v3

    iget-object v4, v3, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/dq/dq;->dq()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->i()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    move-result-object v6

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->j()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v7

    invoke-static {v7}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object v7

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->fw()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lg/hat;->c:Landroid/util/SparseArray;

    const/16 v10, 0xf

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0xd

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lg/hat;->o(II)V

    const/4 v8, 0x7

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kk()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lg/hat;->o(II)V

    const/16 v8, 0x8

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->o()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lg/hat;->o(II)V

    const/16 v8, 0x10

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->cd()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lg/hat;->o(II)V

    const/16 v8, 0x14

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->i()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lg/hat;->o(II)V

    const/16 v8, 0xb

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mp()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lg/hat;->i(IZ)V

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->fw()I

    move-result v8

    const/16 v9, 0x11

    invoke-virtual {v7, v9, v8}, Lg/hat;->o(II)V

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v8

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v11

    const-string v12, "wf_dynamic_adapter_type"

    const-string v13, "dynamic_adapter_type"

    if-eqz v11, :cond_2

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->iw()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->iw()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/dq/dq;->d()Lcom/bytedance/msdk/core/no/no;

    move-result-object v11

    if-eqz v11, :cond_1

    const-string v11, "waterfall_config"

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/dq/dq;->d()Lcom/bytedance/msdk/core/no/no;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/msdk/mn/dq/dq;->iw()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/msdk/mn/dq/dq;->mn()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/dq/dq;->dq()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/dq/dq;->d()Lcom/bytedance/msdk/core/no/no;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lcom/bytedance/msdk/core/p/dq;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Ljava/util/Map;)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->ox()Z

    move-result v11

    const/16 v12, 0x20fc

    invoke-virtual {v8, v12, v11}, Lg/hat;->i(IZ)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->dq()Z

    move-result v11

    const/16 v12, 0x20fd

    invoke-virtual {v8, v12, v11}, Lg/hat;->i(IZ)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->d()Z

    move-result v11

    const/16 v12, 0x20fe

    invoke-virtual {v8, v12, v11}, Lg/hat;->i(IZ)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->p()F

    move-result v11

    const/16 v12, 0x20ff

    invoke-virtual {v8, v12, v11}, Lg/hat;->l(IF)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->s()Z

    move-result v11

    const/16 v12, 0x2100

    invoke-virtual {v8, v12, v11}, Lg/hat;->i(IZ)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->mn()Z

    move-result v11

    const/16 v12, 0x2102

    invoke-virtual {v8, v12, v11}, Lg/hat;->i(IZ)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->ia()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v8, Lg/hat;->c:Landroid/util/SparseArray;

    const/16 v13, 0x2103

    invoke-virtual {v12, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->kk()Z

    move-result v11

    const/16 v12, 0x2106

    invoke-virtual {v8, v12, v11}, Lg/hat;->i(IZ)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->no()F

    move-result v11

    const/16 v12, 0x2107

    invoke-virtual {v8, v12, v11}, Lg/hat;->l(IF)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->ig()F

    move-result v11

    const/16 v12, 0x2108

    invoke-virtual {v8, v12, v11}, Lg/hat;->l(IF)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/msdk/mn/dq/dq;->iw()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/msdk/mn/dq/dq;->mn()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/msdk/core/d;->bl()Lcom/bytedance/msdk/api/p/q;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/msdk/api/p/q;->d()Lcom/bytedance/msdk/api/p/kk;

    move-result-object v11

    const-string v12, "loc_time"

    const-string v13, "lat"

    const-string v14, "lng"

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/bytedance/msdk/api/p/kk;->d()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v10, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/bytedance/msdk/api/p/kk;->dq()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v10, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v10, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v1, "load_type"

    invoke-static {}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/mn/dq/dq;->no()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v11, "load_can_log"

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2101

    invoke-virtual {v8, v1, v10}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v1, 0x1f6c

    invoke-virtual {v8, v1, v10}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-static {v8, v6}, Lcom/bytedance/msdk/core/dq/kk;->dq(Lg/hat;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;)V

    const/16 v1, 0x20fb

    invoke-virtual {v8}, Lg/hat;->k()Lg/cpo;

    move-result-object v6

    invoke-virtual {v7, v1, v6}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->j()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v1

    invoke-static {v1}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object v1

    invoke-virtual {v7}, Lg/hat;->k()Lg/cpo;

    move-result-object v6

    iget-object v7, v1, Lg/hat;->c:Landroid/util/SparseArray;

    const/16 v8, 0x1f99

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object v1

    const/16 v6, 0x1f9a

    invoke-virtual {v3, v6, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v1, 0x1f47

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/dq/dq;->no()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lg/hat;->n(ILjava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/dq/dq;->ig()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v1, 0x1f43

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/dq/dq;->fw()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->fw()I

    move-result v1

    invoke-virtual {v3, v9, v1}, Lg/hat;->o(II)V

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-nez v7, :cond_4

    move-object v7, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move-object v2, v1

    :cond_6
    if-eqz v2, :cond_7

    const/16 v1, 0x1f4d

    invoke-virtual {v3, v1, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    :cond_7
    if-eqz v0, :cond_9

    const-string v1, "ad_load_timeout"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4

    :cond_8
    const/16 v1, 0xbb8

    :goto_4
    const/16 v2, 0x1fa0

    invoke-virtual {v3, v2, v1}, Lg/hat;->o(II)V

    :cond_9
    const-string v1, "contentUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_a

    const/16 v2, 0x1f93

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Lg/hat;->n(ILjava/lang/String;)V

    :cond_a
    const-string v1, "testDevices"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_b

    const/16 v2, 0x1f94

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Lg/hat;->n(ILjava/lang/String;)V

    :cond_b
    const-string v1, "tt_ad_origin_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_c

    const/4 v6, 0x3

    if-ne v2, v6, :cond_d

    :cond_c
    const/16 v2, 0x1f61

    invoke-virtual {v3, v2, v5}, Lg/hat;->i(IZ)V

    :cond_d
    const/16 v2, 0x1f95

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_e
    const-string v1, "tt_ad_sub_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    check-cast v1, Ljava/lang/Integer;

    const/16 v2, 0x1f9e

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_f
    const-string v1, "render_control"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_10

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x2169

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_10
    return-object v3

    :cond_11
    return-object v2
.end method

.method private dq(Landroid/content/Context;Lg/hat;)V
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->ox()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->mp()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;II)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    const/16 v2, 0x1f49

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/dq;->dq(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 p1, 0x20e8

    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const-class p2, Ljava/lang/Void;

    const/16 v1, 0x2031

    invoke-interface {v0, v1, p1, p2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/core/dq/kk;->d(Landroid/content/Context;Lg/hat;)V

    return-void
.end method

.method private static dq(Lg/hat;Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;)V
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v0

    const/16 v1, 0x2105

    const/16 v2, 0x2104

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->jy()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->jy()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lg/hat;->o(II)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ji()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ji()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lg/hat;->o(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;)Ljava/lang/String;
    .locals 5

    const-string v0, "bidding_token"

    const-string v1, "true"

    invoke-static {v0, v1}, Lg/tn;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/kk;->mn:Lcom/bytedance/msdk/core/dq/kk$dq;

    if-nez v1, :cond_1

    new-instance v1, Lcom/bytedance/msdk/core/dq/kk$dq;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/dq/kk$dq;-><init>(Lcom/bytedance/msdk/dq/dq;)V

    iput-object v1, p0, Lcom/bytedance/msdk/core/dq/kk;->mn:Lcom/bytedance/msdk/core/dq/kk$dq;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    const/16 v2, 0x1f4b

    iget-object v3, p0, Lcom/bytedance/msdk/core/dq/kk;->mn:Lcom/bytedance/msdk/core/dq/kk$dq;

    invoke-virtual {v1, v2, v3}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v2, 0x1f4a

    iget-object v3, p0, Lcom/bytedance/msdk/core/dq/kk;->iw:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v2

    const/16 v3, 0x2101

    invoke-virtual {v2, v3, v0}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v3, 0x20fb

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->j()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v2

    invoke-static {v2}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object v2

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    iget-object v3, v2, Lg/hat;->c:Landroid/util/SparseArray;

    const/16 v4, 0x1f99

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/16 v2, 0x1f9a

    invoke-virtual {v1, v2, v0}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mp/dq;->mn()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v2

    const/16 v3, 0x1f49

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/dq;->dq(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v3, 0x20e8

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    const/16 v3, 0x1faa

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "TTMediationSDK"

    const-string v1, "load ad class loader is null "

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/kk;->mn:Lcom/bytedance/msdk/core/dq/kk$dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->i()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->i()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq;->dq()Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/d;->iw()Ljava/util/Map;

    move-result-object v1

    :cond_2
    iget-object p3, p0, Lcom/bytedance/msdk/core/dq/kk;->mn:Lcom/bytedance/msdk/core/dq/kk$dq;

    invoke-static {v1}, Lcom/bytedance/msdk/core/cd/dq;->dq(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, Lcom/bytedance/msdk/core/dq/kk$dq;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public final dq(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/dq/kk;->fw()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, p2, v0}, Lcom/bytedance/msdk/core/dq/kk;->dq(Landroid/content/Context;Lcom/bytedance/msdk/dq/dq;Ljava/util/Map;Ljava/lang/String;)Lg/hat;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/bytedance/msdk/core/dq/kk$dq;

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->mp()I

    move-result v2

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/msdk/core/dq/kk$dq;-><init>(IILcom/bytedance/msdk/dq/dq;)V

    iput-object v0, p0, Lcom/bytedance/msdk/core/dq/kk;->mn:Lcom/bytedance/msdk/core/dq/kk$dq;

    const/16 v0, 0x20ed

    iget-object v1, p0, Lcom/bytedance/msdk/dq/dq;->dq:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v0, 0x20ee

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/dq;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lg/hat;->n(ILjava/lang/String;)V

    const/16 v0, 0x1f4b

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/kk;->mn:Lcom/bytedance/msdk/core/dq/kk$dq;

    invoke-virtual {p2, v0, v1}, Lg/hat;->m(ILjava/lang/Object;)V

    const/16 v0, 0x1f4a

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/kk;->iw:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/dq/kk;->fw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/dq/kk;->fw()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gdt"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/core/dq/kk;->dq(Landroid/content/Context;Lg/hat;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/msdk/core/dq/kk;->d(Landroid/content/Context;Lg/hat;)V

    :cond_1
    return-void
.end method

.method public fw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/dq;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/iw/d/d;->dq()Lcom/bytedance/msdk/iw/d/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/dq/kk;->fw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/iw/d/d;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/dq/dq/p;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

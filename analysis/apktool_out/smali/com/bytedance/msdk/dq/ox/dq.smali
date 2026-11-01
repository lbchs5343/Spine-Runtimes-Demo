.class public Lcom/bytedance/msdk/dq/ox/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/dq/dq/p;


# instance fields
.field private dq:Lcom/bytedance/msdk/dq/ox/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/dq;->ia()V

    :cond_0
    return-void
.end method

.method private ia()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/dq;->dq:Lcom/bytedance/msdk/dq/ox/q;

    invoke-virtual {v0}, Lcom/bytedance/msdk/dq/ox/q;->mn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    invoke-static {}, Lcom/bytedance/msdk/dq/ox/d;->dq()Ljava/lang/String;

    move-result-object v1

    const-string v2, "personal_ads_type"

    invoke-static {v1, v2, v0}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/dq;->ox()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Lcom/bytedance/msdk/api/p/ox;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dq()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/dq/ox/dq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dq(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/dq;->s()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_23

    sget-object v3, Lcom/bytedance/msdk/dq/dq/dq;->dq:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/bytedance/msdk/dq/dq/dq;->p:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/String;

    move-object v7, v4

    goto :goto_0

    :cond_1
    move-object v7, v2

    :goto_0
    sget-object v4, Lcom/bytedance/msdk/dq/dq/dq;->iw:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/lang/String;

    move-object v8, v4

    goto :goto_1

    :cond_2
    move-object v8, v2

    :goto_1
    sget-object v4, Lcom/bytedance/msdk/dq/dq/dq;->ox:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    instance-of v5, v3, Lcom/bytedance/msdk/api/dq/d;

    if-eqz v5, :cond_23

    move-object v5, v3

    check-cast v5, Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v2

    const/16 v3, 0xa

    const/16 v12, 0x9

    const/4 v13, 0x3

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/4 v6, 0x2

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-ne v2, v3, :cond_6

    if-ne v4, v10, :cond_5

    const/4 v2, 0x2

    :cond_4
    :goto_3
    const/4 v3, 0x2

    goto :goto_7

    :cond_5
    if-ne v4, v6, :cond_4

    :goto_4
    const/16 v2, 0x8

    goto :goto_3

    :cond_6
    const/4 v3, 0x4

    if-ne v2, v10, :cond_8

    if-ne v4, v13, :cond_7

    :goto_5
    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    if-ne v4, v3, :cond_4

    :goto_6
    const/4 v2, 0x5

    goto :goto_3

    :cond_8
    if-ne v2, v15, :cond_a

    const/4 v3, 0x6

    if-ne v4, v3, :cond_9

    const/4 v2, 0x7

    goto :goto_3

    :cond_9
    if-ne v4, v15, :cond_4

    goto :goto_4

    :cond_a
    if-ne v2, v9, :cond_4

    if-ne v4, v3, :cond_b

    goto :goto_6

    :cond_b
    if-ne v4, v9, :cond_c

    const/16 v2, 0x9

    goto :goto_3

    :cond_c
    if-ne v4, v13, :cond_4

    goto :goto_5

    :goto_7
    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x5

    const/4 v9, 0x0

    const/16 v16, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static/range {v5 .. v10}, Lcom/bytedance/msdk/dq/ox/d;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->mn(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v7

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->u()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->p(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v7

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->ir()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->iw(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v7

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->op()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    sget-object v7, Lcom/bytedance/msdk/dq/dq/dq;->d:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_8

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_8
    const/high16 v7, 0x44870000    # 1080.0f

    const/4 v8, 0x0

    if-eq v2, v13, :cond_1b

    if-eq v2, v15, :cond_1b

    if-ne v2, v14, :cond_e

    goto/16 :goto_f

    :cond_e
    const/16 v9, 0x280

    const/16 v10, 0x154

    if-eq v2, v11, :cond_16

    if-ne v2, v3, :cond_f

    goto/16 :goto_c

    :cond_f
    if-eq v2, v4, :cond_11

    if-ne v2, v12, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v6, v10}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    const/high16 v0, 0x43aa0000    # 340.0f

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    const/high16 v5, 0x44200000    # 640.0f

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto/16 :goto_13

    :cond_11
    :goto_9
    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v12

    invoke-virtual {v6, v12}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->ox(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v12

    cmpl-float v12, v12, v8

    if-lez v12, :cond_12

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v12

    cmpg-float v12, v12, v8

    if-gtz v12, :cond_12

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_a

    :cond_12
    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v12

    cmpl-float v12, v12, v8

    if-lez v12, :cond_13

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v12

    cmpl-float v8, v12, v8

    if-lez v8, :cond_13

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_a

    :cond_13
    invoke-static {v0, v7}, Lcom/bytedance/msdk/dq/s/mn;->dq(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v7

    const v8, 0x443b8000    # 750.0f

    invoke-static {v0, v8}, Lcom/bytedance/msdk/dq/s/mn;->dq(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :goto_a
    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->kx()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->e()I

    move-result v0

    if-gtz v0, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->e()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->kx()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto/16 :goto_13

    :cond_15
    :goto_b
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto/16 :goto_13

    :cond_16
    :goto_c
    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v12

    cmpl-float v12, v12, v8

    if-lez v12, :cond_17

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v12

    cmpg-float v12, v12, v8

    if-gtz v12, :cond_17

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_d

    :cond_17
    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v12

    cmpl-float v12, v12, v8

    if-lez v12, :cond_18

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v12

    cmpl-float v8, v12, v8

    if-lez v8, :cond_18

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_d

    :cond_18
    invoke-static {v0, v7}, Lcom/bytedance/msdk/dq/s/mn;->dq(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v7

    const/high16 v8, 0x44160000    # 600.0f

    invoke-static {v0, v8}, Lcom/bytedance/msdk/dq/s/mn;->dq(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :goto_d
    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->e()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->kx()I

    move-result v0

    if-gtz v0, :cond_19

    goto :goto_e

    :cond_19
    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->e()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->kx()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_13

    :cond_1a
    :goto_e
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_13

    :cond_1b
    :goto_f
    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v9

    cmpg-float v9, v9, v8

    if-lez v9, :cond_1d

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v9

    cmpg-float v8, v9, v8

    if-gtz v8, :cond_1c

    goto :goto_10

    :cond_1c
    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->q()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->jy()F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_11

    :cond_1d
    :goto_10
    invoke-static {v0, v7}, Lcom/bytedance/msdk/dq/s/mn;->dq(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v7

    const/high16 v8, 0x44f00000    # 1920.0f

    invoke-static {v0, v8}, Lcom/bytedance/msdk/dq/s/mn;->dq(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(F)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :goto_11
    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->e()I

    move-result v0

    if-lez v0, :cond_1f

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->kx()I

    move-result v0

    if-gtz v0, :cond_1e

    goto :goto_12

    :cond_1e
    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->e()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->kx()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    goto :goto_13

    :cond_1f
    :goto_12
    const/16 v0, 0x438

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    move-result-object v0

    const/16 v5, 0x780

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->d(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :goto_13
    if-eqz v1, :cond_20

    if-ne v1, v11, :cond_20

    if-ne v2, v4, :cond_20

    invoke-virtual {v6, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->s(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :cond_20
    if-eq v2, v11, :cond_21

    if-ne v2, v3, :cond_22

    :cond_21
    invoke-virtual {v6, v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->s(I)Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;

    :cond_22
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/h;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    return-object v2
.end method

.method public dq(Landroid/content/Context;Ljava/util/Map;Lcom/bytedance/msdk/dq/dq/ox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/msdk/dq/dq/ox;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/d;->d()Lcom/bytedance/msdk/dq/ox/q;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/dq;->dq:Lcom/bytedance/msdk/dq/ox/q;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/dq;->ia()V

    invoke-interface {p3}, Lcom/bytedance/msdk/dq/dq/ox;->dq()V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/q;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V
    .locals 1

    const/16 p1, 0x2145

    const-class v0, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-interface {p2, p1, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/ValueSet;

    iget-object p2, p0, Lcom/bytedance/msdk/dq/ox/dq;->dq:Lcom/bytedance/msdk/dq/ox/q;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/dq/ox/q;->d(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/dq/ox/dq;->dq(Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/bytedance/msdk/dq/dq/dq;->s:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/bytedance/sdk/gromore/init/dq;->dq(I)V

    return-void
.end method

.method public iw()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mn()V
    .locals 0

    return-void
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/dq;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public s()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

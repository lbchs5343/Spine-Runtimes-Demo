.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;
.super Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;


# instance fields
.field private gh:Lg/dlv;

.field private i:Lg/dlv;

.field private r:Lg/dlv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private d(Lg/dlv;Ljava/lang/String;Lg/blw;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v2, v2, Lg/blw;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xa

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "dislike"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v15, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "openAppPolicy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v15, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "muteVideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v15, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "convert"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v15, 0x7

    goto :goto_0

    :sswitch_4
    const-string v3, "videoControl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v15, 0x6

    goto :goto_0

    :sswitch_5
    const-string v3, "openAppFunction"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v15, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v15, 0x4

    goto :goto_0

    :sswitch_7
    const-string v3, "skip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v15, 0x3

    goto :goto_0

    :sswitch_8
    const-string v3, "pauseVideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v15, 0x2

    goto :goto_0

    :sswitch_9
    const-string v3, "openPrivacy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v15, 0x1

    goto :goto_0

    :sswitch_a
    const-string v3, "openAppPermission"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v15, 0x0

    :goto_0
    packed-switch v15, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v4, 0x3

    goto :goto_1

    :pswitch_1
    const/16 v4, 0x9

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x5

    goto :goto_1

    :pswitch_3
    const/4 v4, 0x2

    goto :goto_1

    :pswitch_4
    const/16 v4, 0xc

    goto :goto_1

    :pswitch_5
    const/16 v4, 0x8

    goto :goto_1

    :pswitch_6
    const/4 v4, 0x6

    goto :goto_1

    :pswitch_7
    const/4 v4, 0x4

    goto :goto_1

    :pswitch_8
    const/4 v4, 0x7

    :goto_1
    :pswitch_9
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;-><init>()V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->q()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->p(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->jy()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->ox(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->f()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lg/dlv;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ig()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ig:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->mp()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "shake"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "twist"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    :try_start_0
    const-string v1, "convertActionType"

    invoke-virtual {v3, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v1

    :try_start_1
    instance-of v5, v1, Landroid/widget/TextView;

    if-eqz v5, :cond_d

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u4e0b\u8f7d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "is_compliant_download"

    invoke-virtual {v3, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_d
    :goto_2
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/k$dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/k$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/k;

    move-result-object v2

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->kk:Lcom/bytedance/sdk/component/adexpress/d/ia;

    if-eqz v3, :cond_e

    invoke-interface {v3, v1, v4, v2}, Lcom/bytedance/sdk/component/adexpress/d/ia;->dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V

    :cond_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ca7475a -> :sswitch_a
        -0x1e7a3222 -> :sswitch_9
        -0x353b7db -> :sswitch_8
        0x35e57f -> :sswitch_7
        0x5a5ddf8 -> :sswitch_6
        0x117f306f -> :sswitch_5
        0x2ff1f862 -> :sswitch_4
        0x38b81db3 -> :sswitch_3
        0x44a639e2 -> :sswitch_2
        0x49c19b89 -> :sswitch_1
        0x63a33d25 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;Lg/dlv;Ljava/lang/String;Lg/blw;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;->d(Lg/dlv;Ljava/lang/String;Lg/blw;)V

    return-void
.end method

.method private mp()V
    .locals 4

    new-instance v0, Lg/dmm;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/d/mp;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "shake_value"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/d/mp;->le()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "calculation_method"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/d/mp;->cd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "rotation_angle"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/d/mp;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "calculation_method_twist"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/d/mp;->gh()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "twist_config"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/d/mp;->ig()Ljava/util/Map;

    move-result-object v2

    const-string v3, "image_info"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/d/mp;->jy()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cache_dir"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/d/mp;->r()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "shake_interact_conf"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/d/mp;->i()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "twist_interact_conf"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lg/dmm;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->d:Landroid/content/Context;

    iput-object v1, v0, Lg/dmm;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->s:Lorg/json/JSONObject;

    iput-object v1, v0, Lg/dmm;->b:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq:Lg/ajp;

    iput-object v0, v2, Lg/ajp;->a:Lg/dmm;

    iput-object v1, v2, Lg/ajp;->g:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/component/adexpress/d/mn;)V
    .locals 4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;->mp()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq:Lg/ajp;

    invoke-virtual {v0, p0}, Lg/ajp;->s(Lg/cyx;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq:Lg/ajp;

    iput-object p0, v0, Lg/ajp;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ny()Lcom/bytedance/sdk/openadsdk/core/r/ws;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ws;->s()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq:Lg/ajp;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->p:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->s:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v0}, Lg/ajp;->p(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lg/dlv;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    goto :goto_0

    :catchall_0
    nop

    goto/16 :goto_1

    :catch_0
    nop

    goto/16 :goto_2

    :catch_1
    nop

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->dq:Lg/ajp;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->p:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->s:Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lg/ajp;->p(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lg/dlv;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    if-eqz v0, :cond_4

    const-string v1, "RVCountdown"

    invoke-virtual {v0, v1}, Lg/dlv;->p(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;->gh:Lg/dlv;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    const-string v1, "FVCountdown"

    invoke-virtual {v0, v1}, Lg/dlv;->p(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;->gh:Lg/dlv;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    const-string v1, "RVSkip"

    invoke-virtual {v0, v1}, Lg/dlv;->p(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;->i:Lg/dlv;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    const-string v1, "FVSkip"

    invoke-virtual {v0, v1}, Lg/dlv;->p(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;->i:Lg/dlv;

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    const-string v1, "CycleCountDownView"

    invoke-virtual {v0, v1}, Lg/dlv;->p(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;->r:Lg/dlv;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->cd:Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;

    if-nez v0, :cond_3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/d/mp;->ox()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->cd:Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->cd:Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;->gh:Lg/dlv;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;->i:Lg/dlv;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;->r:Lg/dlv;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/no/dq;->dq(Lg/dlv;Lg/dlv;Lg/dlv;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->n()Lg/dbw;

    move-result-object v0

    invoke-interface {v0}, Lg/dbw;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;->n()Lg/dbw;

    move-result-object v0

    invoke-interface {v0}, Lg/dbw;->ox()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    if-eqz p1, :cond_5

    const/16 v0, 0x8d

    const-string v1, "ugen other fail"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    goto :goto_4

    :goto_2
    if-eqz p1, :cond_5

    const/16 v0, 0x8c

    const-string v1, "ugen no class def found error"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    goto :goto_4

    :goto_3
    if-eqz p1, :cond_5

    const/16 v0, 0x8b

    const-string v1, "ugen yoga so load fail"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/d/mn;->dq(ILjava/lang/String;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public dq()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->ox()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "xTemplate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public dq(Lg/dlv;Ljava/lang/String;Lg/blw;)V
    .locals 2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "shake"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "twist"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;->d(Lg/dlv;Ljava/lang/String;Lg/blw;)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mp:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mp:Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/s;Lg/dlv;Ljava/lang/String;Lg/blw;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ir;->dq(Ljava/lang/ref/WeakReference;Lcom/bytedance/sdk/openadsdk/core/d/ox;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public dq(Ljava/lang/CharSequence;IIZ)V
    .locals 0

    return-void
.end method

.method public kk()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->mn:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/d/mp;->ox()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public p()Lg/dlv;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->ox:Lg/dlv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "VideoV3"

    invoke-virtual {v0, v1}, Lg/dlv;->p(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    return-object v0
.end method

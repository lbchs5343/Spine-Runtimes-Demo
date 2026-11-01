.class public abstract Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;
.super Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$dq;
    }
.end annotation


# instance fields
.field protected volatile iw:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Ljava/lang/String;

.field protected s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;-><init>()V

    return-void
.end method

.method public static d(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lg/dyp;->NO_VALUE:Lg/dyp;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lg/dyp;->LIVE_CARD:Lg/dyp;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lg/dyp;->LIVE_CELL:Lg/dyp;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Ljava/util/Map;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v4, "context"

    invoke-virtual {v3, v4, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v3

    const-string v4, "bundle"

    invoke-direct {p0, p1, p2, p5}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->ox(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v6, 0x1

    invoke-static {v6}, Lg/hat;->g(I)Lg/hat;

    move-result-object v6

    iget-object v7, v6, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v6}, Lg/hat;->k()Lg/cpo;

    move-result-object v3

    const-class v6, Ljava/lang/Integer;

    invoke-interface {v4, v8, v3, v6}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->p:Ljava/lang/String;

    if-nez v3, :cond_4

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->iw:Ljava/lang/ref/SoftReference;

    invoke-static {p5}, Lcom/bytedance/sdk/openadsdk/core/live/p/ox;->dq(Ljava/util/Map;)I

    move-result v4

    const/16 v5, 0x65

    if-eq v4, v5, :cond_3

    const/16 v5, 0x66

    if-ne v4, v5, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p2, v4}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v8

    const/4 v5, 0x7

    if-nez v8, :cond_1

    :try_start_0
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;-><init>()V

    invoke-virtual {v6, p4}, Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v3, v0

    :goto_0
    move-object v1, p0

    move-object v2, p2

    move v0, v3

    move v6, v8

    const/4 v4, 0x7

    :goto_1
    move-object v3, p4

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    move v0, p3

    move v5, v0

    :goto_2
    move-object v1, p0

    move-object v2, p2

    move v4, v5

    move v6, v8

    move v5, v0

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_3
    shl-int/lit8 v0, v4, 0x8

    or-int/2addr v3, v0

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move v5, v4

    move v0, v3

    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    const/4 v8, 0x3

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move v5, v4

    move v0, v3

    const/4 v6, 0x3

    goto :goto_1

    :goto_4
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;III)V

    return v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Ljava/util/Map;)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public static dq(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    sget-object p0, Lg/dnf;->AD_UNION_EXCITATION:Lg/dnf;

    invoke-virtual {p0}, Lg/dnf;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    sget-object p0, Lg/dnf;->AD_UNION_INSERT:Lg/dnf;

    invoke-virtual {p0}, Lg/dnf;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    sget-object p0, Lg/dnf;->AD_UNION_FEED:Lg/dnf;

    invoke-virtual {p0}, Lg/dnf;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v0, 0x9

    if-ne p0, v0, :cond_3

    sget-object p0, Lg/dnf;->AD_UNION_DRAW:Lg/dnf;

    invoke-virtual {p0}, Lg/dnf;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    const-string p0, "ad_union_banner"

    return-object p0

    :cond_4
    const/4 v0, 0x3

    if-eq p0, v0, :cond_8

    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    const-string p0, "ad_union_former_insert"

    return-object p0

    :cond_6
    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    const-string p0, "ad_union_patch"

    return-object p0

    :cond_7
    sget-object p0, Lg/dnf;->NO_VALUE:Lg/dnf;

    invoke-virtual {p0}, Lg/dnf;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_0
    const-string p0, "ad_union_topview"

    return-object p0
.end method

.method private ox(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)Landroid/os/Bundle;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v4, "pangle_live_room_data"

    const-string v5, "enter_request"

    const-string v6, "log_extra"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v8, 0x1

    if-eqz v2, :cond_18

    :try_start_0
    const-string v0, "room_id"

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ap()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v7, v0, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/core/live/p/ox;->dq(Ljava/util/Map;)I

    move-result v0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ma()Lcom/bytedance/sdk/openadsdk/core/r/yy;

    move-result-object v11

    const/4 v12, 0x3

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/r/yy;->ox()I

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/r/yy;->d()I

    move-result v11

    if-ne v11, v8, :cond_0

    const/16 v11, 0x65

    goto :goto_1

    :cond_0
    if-ne v11, v12, :cond_1

    const/16 v11, 0x68

    goto :goto_1

    :cond_1
    move v11, v0

    :goto_1
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->po()I

    move-result v15

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->nr()Lcom/bytedance/sdk/openadsdk/core/r/er;

    move-result-object v16

    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->d(I)Z

    move-result v17

    const/16 v18, 0x0

    const-string v12, "TTLiveSDkBridge"

    const-string v8, "live_auth_extra_info"

    const-string v13, "auth_reward_gold"

    const-string v14, "live_auto_auth_login_source"

    move-object/from16 v21, v10

    const-string v10, "live_popup_dou_auth_dialog"

    const/16 v22, 0x0

    move/from16 v23, v15

    if-eqz v17, :cond_b

    const/16 v15, 0x65

    if-eq v11, v15, :cond_5

    const/16 v15, 0x66

    if-eq v11, v15, :cond_5

    const/16 v15, 0x68

    if-ne v11, v15, :cond_2

    goto :goto_4

    :cond_2
    const/16 v15, 0x67

    if-ne v11, v15, :cond_3

    const/4 v15, 0x1

    :try_start_1
    invoke-virtual {v9, v10, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v10, v22

    :goto_2
    const/4 v15, -0x1

    goto :goto_8

    :catch_1
    move-exception v0

    :goto_3
    const/4 v3, 0x1

    const/4 v15, -0x1

    goto/16 :goto_b

    :cond_3
    move-object/from16 v10, v22

    :cond_4
    move/from16 v11, v23

    goto :goto_2

    :cond_5
    :goto_4
    :try_start_2
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    if-eqz v16, :cond_4

    const/16 v15, 0x65

    if-ne v11, v15, :cond_6

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    const/16 v15, 0x68

    if-ne v11, v15, :cond_7

    const/4 v15, 0x3

    goto :goto_5

    :cond_7
    const/4 v15, 0x2

    :goto_5
    :try_start_3
    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move/from16 p1, v11

    const-string v11, "live_auto_auth_success_has_ticket"

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->nl()Ljava/lang/String;

    move-result-object v19
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v20, v15

    :try_start_4
    invoke-static/range {v19 .. v19}, Lcom/bytedance/sdk/openadsdk/core/live/p/ox;->dq(Ljava/lang/String;)Z

    move-result v15

    invoke-virtual {v10, v11, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v11, "live_auto_auth_promotion_id"

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/sdk/openadsdk/core/r/er;->d()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v11, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v11, p1

    move/from16 v15, v20

    goto :goto_8

    :catch_2
    move-exception v0

    move/from16 v15, v20

    :goto_6
    move/from16 v11, v23

    :goto_7
    const/4 v3, 0x1

    goto :goto_b

    :catch_3
    move-exception v0

    move/from16 v20, v15

    goto :goto_6

    :goto_8
    if-lez v0, :cond_9

    if-nez v10, :cond_8

    :try_start_5
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_8
    move/from16 p1, v11

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_7

    :goto_9
    :try_start_6
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move/from16 v19, v15

    :try_start_7
    new-instance v15, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v15, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v11, v15}, Lcom/bytedance/sdk/openadsdk/core/e;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_a

    :catch_5
    move-exception v0

    move/from16 v11, p1

    move/from16 v15, v19

    goto :goto_7

    :catch_6
    move-exception v0

    move/from16 v19, v15

    move/from16 v11, p1

    goto :goto_7

    :cond_9
    move/from16 p1, v11

    move/from16 v19, v15

    :goto_a
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v9, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_a
    move/from16 v15, p1

    move/from16 v3, v19

    goto/16 :goto_e

    :catch_7
    move-exception v0

    move/from16 v11, v23

    goto/16 :goto_3

    :goto_b
    new-array v8, v3, [Ljava/lang/Object;

    aput-object v0, v8, v18

    invoke-static {v12, v8}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v15

    move v15, v11

    goto :goto_e

    :cond_b
    if-lez v0, :cond_c

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->p()I

    move-result v3

    const/4 v11, 0x2

    if-eq v3, v11, :cond_c

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_8
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/Integer;

    const/4 v15, 0x1

    invoke-direct {v11, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/core/e;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_d

    :catch_8
    move-exception v0

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/Object;

    aput-object v0, v3, v18

    invoke-static {v12, v3}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_c
    const/4 v15, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->po()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_d

    invoke-virtual {v9, v10, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->po()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_f

    const-string v0, "live_popup_dou_deeplink_dialog"

    invoke-virtual {v9, v0, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz v21, :cond_e

    invoke-virtual/range {v21 .. v21}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->dq()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_e
    const-string v0, ""

    :goto_c
    const-string v3, "live_popup_dou_deeplink_url"

    invoke-virtual {v9, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_d
    move/from16 v15, v23

    const/4 v3, -0x1

    :goto_e
    if-eqz v16, :cond_11

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/sdk/openadsdk/core/r/er;->mn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "live_csj_libra_param"

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/sdk/openadsdk/core/r/er;->mn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v0, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/sdk/openadsdk/core/r/er;->ia()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v8, "live_tob_task_center_config"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "live_tob_task_key"

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const-string v8, "enter_from_merge"

    if-eqz v21, :cond_15

    invoke-virtual/range {v21 .. v21}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    :try_start_9
    invoke-virtual/range {v21 .. v21}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v10, Lorg/json/JSONObject;

    const-string v11, "ad_data_params"

    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_12

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "ad_event_aid"

    const-string v2, "aid"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ad_event_source"

    const-string v11, "source"

    invoke-static {v0, v11}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ad_event_gd_label"

    const-string v11, "gd_label"

    invoke-static {v0, v11}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ad_event_union_user_id"

    const-string v11, "union_user_id"

    invoke-static {v0, v11}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ad_event_app_siteid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/no;->mp()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ad_event_live_type"

    const-string v11, "1"

    invoke-virtual {v1, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    :catch_9
    move-exception v0

    goto :goto_10

    :cond_12
    :goto_f
    const-string v1, "cid"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "creativeID"

    invoke-virtual {v13, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "IESLiveEffectAdTrackExtraServiceKey"

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_other_channel"

    const-string v6, "union_ad"

    invoke-virtual {v12, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "value"

    invoke-virtual {v12, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "live_effect_ad_log_extra_map"

    invoke-virtual {v7, v1, v12}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v7, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const-string v1, "owner_open_id"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v1, "user_id"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_14
    const-string v2, "anchor_id"

    invoke-virtual {v9, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "live.intent.extra.REQUEST_ID"

    const-string v2, "request_id"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_11

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_11
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->dq(I)Ljava/lang/String;

    move-result-object v22

    :cond_16
    move-object/from16 v0, v22

    invoke-virtual {v9, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->d(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter_method"

    invoke-virtual {v9, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "live_pangle_interaction_type"

    invoke-virtual {v9, v0, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "live.intent.extra.ENTER_LIVE_EXTRA"

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->nl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eq v3, v1, :cond_17

    :try_start_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "live_commerce_sdk_custom_params"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :cond_17
    const-string v1, "ecom_live_params"

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_18
    move-object/from16 v4, p3

    move-object v3, v2

    move-object v2, v1

    :goto_12
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->zr()Lcom/bytedance/sdk/openadsdk/core/r/gx;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_13

    :cond_19
    const-string v0, "reward_countdown"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1a

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    if-lez v3, :cond_1a

    const-string v3, "csj.reward_countdown_duration_ms"

    invoke-virtual {v7, v3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "android.app.activity.request_code"

    const/4 v15, 0x1

    invoke-virtual {v7, v0, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "reward_live_scene"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v15, :cond_1a

    const-string v0, "live_popup_reward_auth"

    invoke-virtual {v7, v0, v15}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "rewardAuthFlag"

    const-string v1, "liv pop rew auth:  1"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    :goto_13
    return-object v7
.end method

.method private p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->rq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object p1

    const-class v1, Ljava/lang/Integer;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/e;->dq(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "auth_reward_gold"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "TTLiveSDkBridge"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public Q_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b_(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x2

    return p1
.end method

.method public b_(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->s:Ljava/lang/String;

    return-void
.end method

.method public d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    const-string v2, "reward_countdown"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "TTLiveSDkBridge"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-wide v2, v0

    :goto_0
    const/4 v4, 0x5

    if-eqz p1, :cond_6

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    instance-of v5, p1, Landroid/app/Activity;

    if-nez v5, :cond_2

    const/4 p1, 0x7

    return p1

    :cond_2
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/gx;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v5

    if-nez v5, :cond_3

    return v4

    :cond_3
    cmp-long v4, v2, v0

    if-gez v4, :cond_4

    const/16 p1, 0x8

    return p1

    :cond_4
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/gx;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/16 p1, 0x9

    return p1

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v4
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->a_(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x6

    return p1

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "event_tag"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->po()I

    move-result v4

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->s()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v10, 0x1

    if-nez v0, :cond_3

    const/4 p1, 0x7

    if-ne v4, p1, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    :goto_2
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;III)V

    move-object v5, v1

    return v10

    :cond_3
    move-object v5, p0

    move-object v2, p2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    iget-object p2, v5, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p2, :cond_6

    iput-object v3, v5, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->d:Ljava/lang/String;

    move v8, v4

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$1;

    move-object v6, p1

    move-object v9, p3

    move-object v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/util/Map;)V

    move-object p1, v4

    move-object v2, v6

    move v4, v8

    move-object v6, v9

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->p()I

    move-result p2

    if-eq p2, v1, :cond_4

    invoke-virtual {p0, v7, p1, v10}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$dq;Z)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    move-object v1, v5

    move-object v5, v3

    move-object v3, v7

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    return p1

    :goto_3
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Ljava/util/Map;)I

    move-result p1

    return p1

    :cond_6
    const/4 p1, 0x4

    return p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/live/d/d;Z)I
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "expand_method_name"

    const-string v1, "requestDyAuth"

    invoke-static {v0, v1}, Lg/tn;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/no;->by()Landroid/app/Activity;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    aput-object v2, v3, p1

    const-string p1, "expand_method_param"

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v2

    iget-object v3, v2, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-interface {p1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "requestDyAuth:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", syncAuth = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTLiveSDkBridge"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 p1, 0xb

    return p1

    :cond_1
    const/16 p1, 0xc

    return p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public dq(Ljava/lang/String;)I
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->by()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, 0xd

    return p1

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;-><init>()V

    const-string v2, "context"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object v0

    const-string v1, "scheme_uri"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ir/op;->dq(Ljava/lang/Object;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/ir/op;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x1

    invoke-static {v1}, Lg/hat;->g(I)Lg/hat;

    move-result-object v2

    iget-object v3, v2, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x8

    invoke-interface {v0, v3, p1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    return v1

    :cond_2
    :goto_0
    const/16 p1, 0xa

    return p1

    :catch_0
    const/16 p1, 0xe

    return p1

    :cond_3
    const/16 p1, 0xb

    return p1

    :cond_4
    const/16 p1, 0xc

    return p1
.end method

.method public dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V

    return-void
.end method

.method public dq(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->s()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v0, "expand_method_name"

    invoke-static {v0, p1}, Lg/tn;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "expand_method_param"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iget-object v2, v0, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-interface {p2, v1, p1, v0}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->a_(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    return p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$dq;Z)Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->s:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ma()Lcom/bytedance/sdk/openadsdk/core/r/yy;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/yy;->ox()I

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->s:Ljava/lang/String;

    const-string v3, "\\."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x339d5

    if-ge v2, v3, :cond_3

    return v1

    :catch_0
    nop

    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/yy;->d()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-eqz p3, :cond_6

    if-ne v0, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_1
    if-eqz v3, :cond_8

    new-instance p3, Ljava/lang/ref/SoftReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->iw:Ljava/lang/ref/SoftReference;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$2;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;Lcom/bytedance/sdk/openadsdk/core/live/dq/iw$dq;)V

    if-ne v0, v4, :cond_7

    const/4 p2, 0x1

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/live/d/d;Z)I

    move-result p1

    if-ne p1, v2, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/iw;->s:Ljava/lang/String;

    return-object v0
.end method

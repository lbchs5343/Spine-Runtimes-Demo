.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/d;


# instance fields
.field protected ia:Z

.field private ig:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

.field protected iw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private kk:I

.field protected mn:Ljava/lang/String;

.field private mp:Z

.field private no:Ljava/lang/String;

.field private o:I

.field protected s:Lcom/bytedance/sdk/openadsdk/core/r/kk;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->kk:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->o:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->mp:Z

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->kk:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->o:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->mp:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->iw:Ljava/util/Map;

    return-void
.end method

.method private iw()V
    .locals 9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    const-string v1, "click_to_live_duration"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "click_livead_duration"

    cmp-long v7, v4, v2

    if-nez v7, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->iw:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;J)J

    return-void
.end method

.method private ox(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "splash_ad"

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "slide_banner_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "draw_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "interaction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "embeded_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "banner_ad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    const-string p1, "banner_call"

    packed-switch v2, :pswitch_data_0

    const-string p1, ""

    :pswitch_0
    return-object p1

    :pswitch_1
    const-string p1, "interaction_call"

    return-object p1

    :pswitch_2
    return-object v1

    :pswitch_3
    const-string p1, "feed_call"

    :pswitch_4
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_5
        -0x2a77c376 -> :sswitch_4
        0xa6dd8fb -> :sswitch_3
        0x6deace12 -> :sswitch_2
        0x72060cfe -> :sswitch_1
        0x7cab2108 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->o:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->no:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->ia:Z

    return-void
.end method

.method public dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->mp:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->no()I

    move-result v2

    if-ne v2, v4, :cond_1

    return v3

    :cond_1
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    if-nez v2, :cond_2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;-><init>()V

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    :cond_2
    const-string v2, "splash_ad"

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->mn:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "cache_splash_ad"

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->mn:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "splash_ad_landingpage"

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->mn:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->kk:I

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->kk:I

    :cond_5
    const-string v2, "convert_res"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_6

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v9, v2

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/kk;

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->p()Lcom/bytedance/sdk/openadsdk/core/r/kk;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/kk;

    :cond_7
    const-string v2, "is_reward_live"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_8

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_9

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->iw()V

    :cond_9
    const-string v2, "is_need_report_click_button"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_a

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    :goto_3
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/o;->s()Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v16, 0x1

    goto :goto_4

    :cond_b
    const/4 v5, 0x2

    const/16 v16, 0x2

    :goto_4
    if-eqz v2, :cond_c

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/kk;

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->mn:Ljava/lang/String;

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->iw:Ljava/util/Map;

    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->ia:Z

    const-string v10, "click_button"

    const/4 v14, 0x1

    move/from16 v17, v2

    invoke-static/range {v10 .. v17}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/kk;Ljava/lang/String;ZLjava/util/Map;IZ)V

    :cond_c
    const-string v2, "is_need_report_click_call"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_d

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->mn:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/kk;

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->iw:Ljava/util/Map;

    iget-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->ia:Z

    const-string v10, "click_call"

    const/4 v14, 0x1

    move/from16 v17, v2

    invoke-static/range {v10 .. v17}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/kk;Ljava/lang/String;ZLjava/util/Map;IZ)V

    :cond_e
    const-string v2, "reward_browse_banner_from"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->iw:Ljava/util/Map;

    const-string v5, "refer"

    const-string v6, "banner"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/h;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/mp/s;->dq(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->eo()Lcom/bytedance/sdk/openadsdk/core/r/h;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->iw:Ljava/util/Map;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/j;->eo()Lcom/bytedance/sdk/openadsdk/core/r/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/h;->ox()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "refresh_num"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v2, "click_saas_action"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_11

    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_11

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->iw:Ljava/util/Map;

    invoke-interface {v6, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const-string v2, "click_saas_area"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v5, :cond_12

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_12

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->iw:Ljava/util/Map;

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Z)V

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/kk;

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->mn:Ljava/lang/String;

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->iw:Ljava/util/Map;

    iget-boolean v12, v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->ia:Z

    const-string v5, "click"

    move/from16 v11, v16

    invoke-static/range {v5 .. v12}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/kk;Ljava/lang/String;ZLjava/util/Map;IZ)V

    return v3
.end method

.method public dq()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->kk:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/kk;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->ig:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->mn:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->iw:Ljava/util/Map;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->iw:Ljava/util/Map;

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->mp:Z

    return-void
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->no:Ljava/lang/String;

    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/openadsdk/core/r/kk;
    .locals 9

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->kk:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->kk:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->iw(Landroid/content/Context;)F

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ia(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->mn(Landroid/content/Context;)F

    move-result v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->mn()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/o;->iw()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;-><init>()V

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/o;->q()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->iw(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/o;->jy()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/o;->f()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/o;->fw()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ig()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/r/o;->mp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v6

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;)[I

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v6

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->dq(Landroid/view/View;)[I

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v6

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/view/View;)[I

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/view/View;)[I

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p([I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/o;->o()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/no;->ox()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->no:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->iw(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->o:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->mn(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->gh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ia(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/kk;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->iw:Ljava/util/Map;

    return-object v0
.end method

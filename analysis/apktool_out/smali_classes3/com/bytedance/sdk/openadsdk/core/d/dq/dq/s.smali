.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;
.super Ljava/lang/Object;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/r/o;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/o;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->q()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->o()Ljava/util/Map;

    move-result-object v2

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_2

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    const-string v0, "openPlayableLandingPage"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "allow_open_playable_landing_page"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_play_with_download"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/gx;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->eb()Lcom/bytedance/sdk/openadsdk/core/r/c;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/c;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/gx;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/c;->s()J

    move-result-wide v3

    sget-object v5, Lcom/bytedance/sdk/openadsdk/TTAdConstant;->LIVE_REWARD_TIME:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-lez v8, :cond_3

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    :cond_3
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_5

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    cmp-long v1, v3, v6

    if-lez v1, :cond_4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    :cond_4
    const-string p1, "ad_slot_type"

    const/4 v1, -0x1

    invoke-virtual {v5, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/c;->ox(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    cmp-long v1, v3, v6

    if-gtz v1, :cond_6

    move-wide v3, v6

    :cond_6
    const-string v1, "count_down_time"

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "pkg_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "act_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/r/c;->p(Ljava/lang/String;)V

    :cond_7
    const-string p1, "is_reward_live"

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq()Z
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ff()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->zi()Lcom/bytedance/sdk/openadsdk/core/r/r;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/r;->p()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-class v3, Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/e;->dq(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;

    if-nez v2, :cond_2

    return v1

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "is_button"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x64

    invoke-virtual {v2, v5, v1}, Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;->dq(ILjava/util/Map;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fa()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/d/d;->dq(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "convert_result"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    return v4

    :cond_4
    :goto_0
    return v1
.end method

.method public dq(Ljava/util/Map;ZLjava/lang/String;ZZZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/String;",
            "ZZZ)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    const/4 v6, 0x0

    if-nez v1, :cond_0

    return v6

    :cond_0
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->q()I

    move-result v1

    const-string v2, "key_open_video_detail_page_direct"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/o;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq(ZLjava/lang/String;ZZZ)Z

    move-result v1

    goto :goto_6

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ia()Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v1

    if-eqz p6, :cond_5

    if-eqz v1, :cond_5

    invoke-interface {v1, v7}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->p(Z)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/o;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    :goto_3
    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/o;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq(ZLjava/lang/String;ZZZ)Z

    move-result v1

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ia()Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1, v7}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->p(Z)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/o;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    if-eqz v2, :cond_c

    if-nez p4, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object v2

    if-eqz p5, :cond_b

    if-nez v1, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->ox()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    return v6

    :cond_b
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->d()V

    const-string v2, "convert_res"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    :cond_c
    :goto_7
    return v6
.end method

.method public dq(ZLjava/lang/String;ZZZ)Z
    .locals 3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq()Z

    move-result v0

    const-string v1, "int:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "do"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Z)V

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-static {p4, p2, p1, p3, p5}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Ljava/lang/String;ZZZ)Z

    move-result p1

    return p1
.end method

.method public ox()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->no()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->kk()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->d:Lcom/bytedance/sdk/openadsdk/core/r/o;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq(ZLjava/lang/String;ZZZ)Z

    return-void
.end method

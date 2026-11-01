.class public Lcom/bytedance/msdk/s/ox/dq;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/bytedance/msdk/s/ox/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(Lcom/bytedance/msdk/s/p;)V
    .locals 2

    const-string v0, "block_pacing"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    const-string v0, "rit_adn_show_rule_id"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    const-string v0, "block_show_count"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    return-void
.end method

.method public static dq()Lcom/bytedance/msdk/s/ox/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/msdk/s/ox/dq;->dq:Lcom/bytedance/msdk/s/ox/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/s/ox/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/s/ox/dq;->dq:Lcom/bytedance/msdk/s/ox/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/s/ox/d;

    invoke-direct {v1}, Lcom/bytedance/msdk/s/ox/d;-><init>()V

    sput-object v1, Lcom/bytedance/msdk/s/ox/dq;->dq:Lcom/bytedance/msdk/s/ox/dq;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/msdk/s/ox/dq;->dq:Lcom/bytedance/msdk/s/ox/dq;

    return-object v0
.end method

.method private static dq(Lcom/bytedance/msdk/s/p;)V
    .locals 2

    const-string v0, "block_pacing"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    const-string v0, "waterfall_show_rule_id"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    const-string v0, "block_show_count"

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;I)V
    .locals 1

    const-string v0, "get_config_error"

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0, p3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "total_load_fail"

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v1, "waterfall_abtest"

    invoke-virtual {v0, v1, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const-string v0, "server_bidding_extra"

    invoke-virtual {p4, v0, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    iget p4, p3, Lcom/bytedance/msdk/api/dq;->dq:I

    const/16 p5, 0x2713

    if-ne p4, p5, :cond_0

    const/16 p3, 0x271a

    invoke-virtual {p1, p3}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const-string p4, "Ad load timeout!"

    invoke-virtual {p3, p4}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    invoke-static {p1}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;)V

    goto/16 :goto_0

    :cond_0
    const p5, 0xc5c65

    if-ne p4, p5, :cond_1

    invoke-virtual {p1, p4}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    iget-object p3, p3, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {p4, p3}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    invoke-static {p1}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;)V

    goto :goto_0

    :cond_1
    instance-of p5, p3, Lcom/bytedance/msdk/api/d/ox;

    const-string v0, "waterfall_show_rule_id"

    if-eqz p5, :cond_2

    move-object p5, p3

    check-cast p5, Lcom/bytedance/msdk/api/d/ox;

    invoke-virtual {p1, p4}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    iget-object p3, p3, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {p4, p3}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    const-string p3, "block_pacing"

    invoke-virtual {p5}, Lcom/bytedance/msdk/api/d/ox;->dq()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-virtual {p5}, Lcom/bytedance/msdk/api/d/ox;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    goto :goto_0

    :cond_2
    instance-of p5, p3, Lcom/bytedance/msdk/api/d/d;

    if-eqz p5, :cond_3

    move-object p5, p3

    check-cast p5, Lcom/bytedance/msdk/api/d/d;

    invoke-virtual {p1, p4}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    iget-object p3, p3, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {p4, p3}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    const-string p3, "block_show_count"

    invoke-virtual {p5}, Lcom/bytedance/msdk/api/d/d;->dq()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-virtual {p5}, Lcom/bytedance/msdk/api/d/d;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    goto :goto_0

    :cond_3
    instance-of p5, p3, Lcom/bytedance/msdk/api/d/dq;

    if-eqz p5, :cond_4

    invoke-virtual {p1, p4}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    iget-object p3, p3, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {p4, p3}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    invoke-static {p1}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;)V

    goto :goto_0

    :cond_4
    const/16 p3, 0x2766

    invoke-virtual {p1, p3}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const-string p4, "Ad load fail all loadsorts! "

    invoke-virtual {p3, p4}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    invoke-static {p1}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;)V

    :goto_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/dq/d;->no()Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p4, :cond_5

    const-string p5, "behavior"

    invoke-virtual {p3, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result p4

    goto :goto_1

    :cond_6
    const/4 p4, 0x0

    :goto_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "ad_count"

    invoke-virtual {p1, p5, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    const/4 p4, 0x0

    invoke-static {p1, p2, p4, p4, p3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/p/d;Ljava/lang/String;I)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string v0, "return_bidding_result"

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    iget-wide v1, p3, Lcom/bytedance/msdk/core/p/d;->mn:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/s/p;->dq(J)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    iget v1, p3, Lcom/bytedance/msdk/core/p/d;->iw:I

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->setResult(I)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    iget-object v1, p3, Lcom/bytedance/msdk/core/p/d;->ia:Lcom/bytedance/msdk/api/dq;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, v1, Lcom/bytedance/msdk/api/dq;->dq:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    iget-object v1, p3, Lcom/bytedance/msdk/core/p/d;->ia:Lcom/bytedance/msdk/api/dq;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(I)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "fill_type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v0, v1, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p5

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "waterfall_abtest"

    invoke-virtual {p5, v0, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const-string p5, "server_bidding_extra"

    iget-object v0, p3, Lcom/bytedance/msdk/core/p/d;->p:Ljava/lang/String;

    invoke-virtual {p4, p5, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    iget p5, p3, Lcom/bytedance/msdk/core/p/d;->kk:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string v0, "ad_count"

    invoke-virtual {p4, v0, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iget p5, p3, Lcom/bytedance/msdk/core/p/d;->o:I

    iget-object v0, p3, Lcom/bytedance/msdk/core/p/d;->dq:Ljava/util/List;

    invoke-static {p5, v0, p4}, Lcom/bytedance/msdk/core/o/p;->dq(ILjava/util/List;Ljava/util/Map;)V

    iget-object p3, p3, Lcom/bytedance/msdk/core/p/d;->no:Lorg/json/JSONObject;

    if-eqz p3, :cond_3

    const-string p5, "token_time"

    invoke-virtual {p4, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3, p4}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JIIILjava/lang/String;IILcom/bytedance/msdk/core/no/d;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "%.2f"

    const-string v1, "mediation_request_end"

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/bytedance/msdk/s/p;->dq(J)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object p5

    invoke-virtual {p5, p9}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string p9, "waterfall_abtest"

    invoke-virtual {p4, p9, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const-string p5, "ad_count"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    invoke-virtual {p4, p5, p9}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const-string p5, "reason"

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    invoke-virtual {p4, p5, p9}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    invoke-virtual {p4, p8}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const/4 p5, 0x0

    invoke-static {p1, p2, p5, p3, p4}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    const-string p3, "requested_adn_count"

    const-string p5, "requested_level_count"

    invoke-static {p6, p4, p3, p7, p5}, Lg/tn;->e(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p13, :cond_0

    const-string p3, "auto_detail"

    invoke-virtual {p4, p3, p13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p12, :cond_1

    :try_start_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "layer_time_rate"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p6

    invoke-virtual {p12}, Lcom/bytedance/msdk/core/no/d;->d()D

    move-result-wide p7

    invoke-static {p7, p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p7

    const/4 p8, 0x1

    new-array p9, p8, [Ljava/lang/Object;

    const/4 p10, 0x0

    aput-object p7, p9, p10

    invoke-static {p6, v0, p9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p5, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "req_interval"

    invoke-virtual {p12}, Lcom/bytedance/msdk/core/no/d;->p()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p3, p5, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "total_time_rate"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p6

    invoke-virtual {p12}, Lcom/bytedance/msdk/core/no/d;->ox()D

    move-result-wide p11

    invoke-static {p11, p12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p7

    new-array p8, p8, [Ljava/lang/Object;

    aput-object p7, p8, p10

    invoke-static {p6, v0, p8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p5, p6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "preload_req"

    invoke-virtual {p4, p5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/dq/d;->no()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p3, "behavior"

    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JLjava/lang/String;)V
    .locals 1

    const-string v0, "mediation_video_cached"

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/bytedance/msdk/s/p;->dq(J)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object p5

    invoke-virtual {p5, p6}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string p6, "waterfall_abtest"

    invoke-virtual {p4, p6, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const/4 p5, 0x0

    invoke-static {p1, p2, p5, p3, p4}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/no/no;)V
    .locals 1

    const-string v0, "media_cache_success"

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2, p4, p3, v0}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "start_bidding_request"

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(I)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "waterfall_abtest"

    invoke-virtual {v0, v1, p3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ad_count"

    invoke-virtual {p3, v1, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_1

    const-string v0, "token_time"

    invoke-virtual {p3, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p4, 0x0

    invoke-static {p1, p2, p4, p4, p3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/s/p;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p6, :cond_0

    invoke-static {p6}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    const/4 p6, 0x0

    :goto_0
    const/4 v2, 0x3

    if-eqz p6, :cond_2

    if-eqz p4, :cond_1

    const/4 p4, 0x2

    goto :goto_1

    :cond_1
    const/4 p4, 0x3

    goto :goto_1

    :cond_2
    xor-int/lit8 p4, p4, 0x1

    :goto_1
    const-string v3, "mediation_request"

    invoke-virtual {p1, v3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v4, "waterfall_abtest"

    invoke-virtual {v3, v4, p3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const-string v3, "server_bidding_extra"

    invoke-virtual {p3, v3, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const-string p5, "mediation_req_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p5, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v0

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "ad_count"

    invoke-virtual {p3, p5, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    invoke-virtual {p3, p6}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    if-eqz p7, :cond_4

    invoke-interface {p7}, Ljava/util/Map;->size()I

    move-result p4

    if-lez p4, :cond_4

    invoke-virtual {p3, p7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/dq/d;->ox()I

    move-result p4

    const/4 p5, 0x5

    if-ne p4, p5, :cond_5

    :try_start_0
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "parallel_num"

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object p6

    invoke-virtual {p6}, Lcom/bytedance/msdk/core/s/d/p;->ox()I

    move-result p6

    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "interval"

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object p6

    invoke-virtual {p6}, Lcom/bytedance/msdk/core/s/d/p;->p()I

    move-result p6

    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "primerit_list"

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object p6

    invoke-virtual {p6}, Lcom/bytedance/msdk/core/s/d/p;->d()Ljava/util/List;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "preload_info"

    invoke-virtual {p3, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p4

    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result p4

    if-ne p4, v2, :cond_6

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/util/Map;)V

    :cond_6
    const-string p4, "csj_plugin_version"

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->ox()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-static {p1, p2, p4, p4, p3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    move-object/from16 v0, p13

    instance-of v1, p2, Lcom/bytedance/msdk/api/d/ox;

    const-string v2, "adn_rit_show_rule_id"

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/bytedance/msdk/api/d/ox;

    iget v3, p2, Lcom/bytedance/msdk/api/dq;->dq:I

    invoke-virtual {p1, v3}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object v3

    iget-object p2, p2, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v3, p2}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    const-string p2, "block_pacing"

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/d/ox;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/d/ox;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    goto :goto_2

    :cond_0
    instance-of v1, p2, Lcom/bytedance/msdk/api/d/d;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/bytedance/msdk/api/d/d;

    iget v3, p2, Lcom/bytedance/msdk/api/dq;->dq:I

    invoke-virtual {p1, v3}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object v3

    iget-object p2, p2, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v3, p2}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    const-string p2, "block_show_count"

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/d/d;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/d/d;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    goto :goto_2

    :cond_1
    instance-of v1, p2, Lcom/bytedance/msdk/api/d/dq;

    if-eqz v1, :cond_2

    iget v1, p2, Lcom/bytedance/msdk/api/dq;->dq:I

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    iget-object p2, p2, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    invoke-static {p1}, Lcom/bytedance/msdk/s/ox/dq;->d(Lcom/bytedance/msdk/s/p;)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    iget v1, p2, Lcom/bytedance/msdk/api/dq;->ox:I

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    if-eqz p2, :cond_4

    iget-object p2, p2, Lcom/bytedance/msdk/api/dq;->p:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string p2, "unknown error"

    :goto_1
    invoke-virtual {v1, p2}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    invoke-static {p1}, Lcom/bytedance/msdk/s/ox/dq;->d(Lcom/bytedance/msdk/s/p;)V

    :goto_2
    const-string p2, "media_fill_fail"

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    invoke-virtual {p2, p9, p10}, Lcom/bytedance/msdk/s/p;->dq(J)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    invoke-virtual {p2, p8}, Lcom/bytedance/msdk/s/p;->iw(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    const-string p8, "adn_count"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p2, p8, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    const-string p5, "adn_preload"

    const/4 p8, 0x0

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p5, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    const-string p5, "mediationrit_req_type"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    const-string p5, "mediationrit_req_type_src"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-wide/16 p5, 0x0

    cmp-long p7, p14, p5

    if-ltz p7, :cond_5

    const/4 p8, 0x1

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Lcom/bytedance/msdk/core/no/no;->wn()Z

    move-result p5

    if-eqz p5, :cond_6

    invoke-static {}, Lcom/bytedance/msdk/ia/r;->dq()D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    const-string p6, "custom_adn_sample_ratio"

    invoke-virtual {p2, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "custom_adn_sample_ratio_result"

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p8, :cond_6

    const-string p5, "custom_adn_rec_time"

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/4 p5, 0x0

    invoke-static {p1, p3, p4, p5, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1, p11}, Lcom/bytedance/msdk/s/p;->kk(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    :cond_7
    invoke-static/range {p12 .. p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    const-string p3, "level_tag"

    move-object/from16 p4, p12

    invoke-virtual {p1, p3, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_8
    if-eqz v0, :cond_9

    const-string p3, "sub_adn_name"

    invoke-virtual {p1, p3, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_9
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;II)V
    .locals 3

    const-string v0, "adapter_request_fail"

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/msdk/s/p;->dq(J)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->iw(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const v2, -0x1869f

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v2, "adapter create fail !"

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v2, "mediationrit_req_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, v2, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const-string v0, "mediationrit_req_type_src"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, v0, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p3, p2, v1, p4}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V
    .locals 1

    const-string v0, "get_bidding_adm_to_adn"

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/bytedance/msdk/s/p;->iw(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0, p4}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/dq;JZZ)V
    .locals 3

    instance-of v1, p10, Lcom/bytedance/msdk/api/d/ox;

    if-nez v1, :cond_0

    instance-of v1, p10, Lcom/bytedance/msdk/api/d/d;

    if-nez v1, :cond_0

    instance-of v1, p10, Lcom/bytedance/msdk/api/d/dq;

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p10, Lcom/bytedance/msdk/api/dq;->dq:I

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    iget-object v0, p10, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    :cond_1
    const/4 v0, 0x1

    xor-int/2addr p5, v0

    const-string v1, "media_request"

    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/bytedance/msdk/s/p;->iw(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ad_count"

    invoke-virtual {p4, v2, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const-string v1, "adn_count"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p4, v1, p7}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const-string p7, "mediationrit_req_type"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    invoke-virtual {p4, p7, p8}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const-string p7, "mediationrit_req_type_src"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    invoke-virtual {p4, p7, p8}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const-string p7, "mediation_req_type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p7, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const-string p5, "media_req_type"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string p5, "timeout_req"

    const-string p6, "is_callback"

    move/from16 p7, p13

    move/from16 p8, p14

    invoke-static {p7, p4, p5, p8, p6}, Lg/tn;->e(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->nh()Lcom/bytedance/msdk/core/no/d;

    move-result-object p5

    if-eqz p5, :cond_3

    if-eqz p2, :cond_3

    const-string p5, "pangle"

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result p5

    const/4 p6, 0x5

    if-ne p5, p6, :cond_3

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->nh()Lcom/bytedance/msdk/core/no/d;

    move-result-object p5

    invoke-virtual {p5}, Lcom/bytedance/msdk/core/no/d;->dq()I

    move-result p5

    if-ne p5, v0, :cond_3

    const-string p6, "support_render_control"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-wide/16 p5, -0x1

    cmp-long p7, p11, p5

    if-eqz p7, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p5

    sub-long/2addr p5, p11

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string p6, "start_time"

    invoke-virtual {p4, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 p5, 0x0

    invoke-static {p1, p3, p2, p5, p4}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/d/s;ILjava/lang/String;JLcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;JJ)V
    .locals 5

    move-object/from16 v0, p11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "media_fill"

    invoke-virtual {p1, v4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Lcom/bytedance/msdk/s/p;->dq(J)Lcom/bytedance/msdk/s/p;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const-string p4, "adn_count"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const-string p4, "adn_preload"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const-string p4, "ad_count"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    const-string p3, "fill_type"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    if-eqz v0, :cond_1

    const-string p3, "sub_adn_name"

    invoke-virtual {p1, p3, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_1
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-wide/16 p4, 0x0

    cmp-long p6, p12, p4

    if-ltz p6, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->zc()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/ia/r;->dq()D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    const-string p5, "custom_adn_sample_ratio"

    invoke-virtual {p3, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "custom_adn_sample_ratio_result"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    const-string p4, "custom_adn_rec_time"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-wide/16 p4, -0x1

    cmp-long p6, p14, p4

    if-eqz p6, :cond_4

    const-string p4, "end_time"

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 p4, 0x5

    if-eqz p2, :cond_5

    const-string p5, "pangle"

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result p5

    if-ne p5, p4, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->nh()I

    move-result p5

    if-ne p5, v2, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->nh()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string p6, "if_to_express"

    invoke-virtual {p3, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p5

    invoke-virtual {p5}, Lcom/bytedance/msdk/core/f/ox;->t()Z

    move-result p5

    if-eqz p5, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result p5

    if-ne p4, p5, :cond_6

    invoke-static {}, Lcom/bytedance/msdk/s/ia;->dq()Lcom/bytedance/msdk/s/ia;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/bytedance/msdk/s/ia;->dq(Lcom/bytedance/msdk/d/s;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "ex_info"

    invoke-virtual {p1, p5, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_6
    const/4 p4, 0x0

    invoke-static {p1, p7, p4, p2, p3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;JLjava/lang/String;ZIZZ)V
    .locals 1

    const-string v0, "mediation_fill"

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Lcom/bytedance/msdk/s/p;->dq(J)Lcom/bytedance/msdk/s/p;

    move-result-object p5

    const/4 p6, 0x0

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v0

    invoke-virtual {p4}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p6

    :goto_0
    const-string v0, "waterfall_abtest"

    invoke-virtual {p5, v0, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const-string p5, "server_bidding_extra"

    invoke-virtual {p4, p5, p7}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    xor-int/lit8 p5, p8, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string p7, "mediation_req_type"

    invoke-virtual {p4, p7, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const-string p5, "ad_count"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p4, p5, p7}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    const-string p5, ""

    invoke-virtual {p4, p5}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result p5

    const/4 p7, 0x3

    if-ne p5, p7, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/bytedance/msdk/mn/dq/dq;->d(Ljava/util/Map;)V

    :cond_1
    invoke-static {p1, p3, p6, p2, p4}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    const-string p2, "timeout_req"

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "is_callback"

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p4}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;)V
    .locals 1

    const-string v0, "bidding_adm_cache"

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p3, p4, p2, v0}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;J)V
    .locals 1

    const-string v0, "bidding_adm_load"

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Lcom/bytedance/msdk/s/p;->dq(J)Lcom/bytedance/msdk/s/p;

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p6

    invoke-virtual {p6}, Lcom/bytedance/msdk/core/f/ox;->t()Z

    move-result p6

    if-eqz p6, :cond_0

    if-eqz p2, :cond_0

    const/4 p6, 0x5

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v0

    if-ne p6, v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/s/ia;->dq()Lcom/bytedance/msdk/s/ia;

    move-result-object p6

    invoke-virtual {p6, p2}, Lcom/bytedance/msdk/s/ia;->dq(Lcom/bytedance/msdk/d/s;)Ljava/lang/String;

    move-result-object p6

    const-string v0, "ex_info"

    invoke-virtual {p1, v0, p6}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_0
    invoke-static {p1, p3, p4, p2, p5}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p5}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/s/p;",
            "Lcom/bytedance/msdk/d/s;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "bidding_win_event"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static {v0, v4, v2, v3, v1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static/range {p4 .. p4}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v3

    const-string v4, "pricing_type"

    const-string v5, "loss_callback"

    const-string v6, "win_callback"

    const-string v7, "ad_extra"

    const-string v8, "win_state"

    const-string v9, "req_bidding_type"

    const-string v10, "m_aid"

    const-string v11, "rit_cpm"

    const-string v12, "exchange_rate"

    const-string v13, "show_sort"

    const-string v14, "load_sort"

    const-string v15, "adn_name"

    move/from16 p2, v3

    const-string v3, "mediation_rit"

    if-nez p2, :cond_2

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/bytedance/msdk/d/s;

    if-eqz v17, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v18, v1

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/msdk/d/s;->io()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/msdk/d/s;->vw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/msdk/d/s;->y()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/msdk/d/s;->ha()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/msdk/d/s;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/msdk/d/s;->ds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/msdk/d/s;->ip()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/bytedance/msdk/d/s;->xz()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :catch_0
    :goto_1
    nop

    goto :goto_3

    :cond_0
    :goto_2
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    goto/16 :goto_0

    :catch_1
    move-object/from16 v18, v1

    goto :goto_1

    :cond_1
    move-object/from16 v18, v1

    goto :goto_3

    :cond_2
    move-object/from16 v18, v1

    invoke-static/range {p5 .. p5}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_4

    move-object/from16 p2, v0

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 p3, v1

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->io()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->vw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->y()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->ha()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->ds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->ip()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/d/s;->xz()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :catch_2
    nop

    goto :goto_6

    :cond_3
    :goto_5
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    move-object/from16 v0, p2

    goto/16 :goto_4

    :cond_4
    move-object/from16 p2, v0

    goto :goto_6

    :cond_5
    const-string v0, "others"

    move-object/from16 v1, v18

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-static {v0, v2, v1}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

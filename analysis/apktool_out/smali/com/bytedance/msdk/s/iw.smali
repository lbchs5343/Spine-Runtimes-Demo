.class public Lcom/bytedance/msdk/s/iw;
.super Ljava/lang/Object;


# static fields
.field private static d:I

.field private static dq:I

.field private static ox:I


# direct methods
.method public static d()V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "start_up"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static d(J)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "sdk_backstage"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/bytedance/msdk/s/p;->dq(J)Lcom/bytedance/msdk/s/p;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/msdk/mn/dq/dq;->ox(Ljava/util/Map;)V

    const-string p1, "v3"

    invoke-static {p1}, Lcom/bytedance/msdk/ia/bl;->mn(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v1"

    invoke-static {p1}, Lcom/bytedance/msdk/ia/bl;->mn(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v2Enc_config"

    invoke-static {p1}, Lcom/bytedance/msdk/ia/bl;->mn(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v4Enc_config"

    invoke-static {p1}, Lcom/bytedance/msdk/ia/bl;->mn(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v2Enc_exchange"

    invoke-static {p1}, Lcom/bytedance/msdk/ia/bl;->mn(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v4Enc_exchange"

    invoke-static {p1}, Lcom/bytedance/msdk/ia/bl;->mn(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v2Enc_reward"

    invoke-static {p1}, Lcom/bytedance/msdk/ia/bl;->mn(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "v4Enc_reward"

    invoke-static {p1}, Lcom/bytedance/msdk/ia/bl;->mn(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/f/ox;->ce()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "enable_label_return"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/d;->dq()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "if_labelapi_call"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/iw/d/s;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "adn_init_duration"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/bytedance/msdk/core/dq/dq/dq;->dq:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "unSupportedGdtVersion"

    sget-object v1, Lcom/bytedance/msdk/core/dq/dq/dq;->dq:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    sput-object p1, Lcom/bytedance/msdk/core/dq/dq/dq;->dq:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/ia/bl;->p()Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    const-string v1, "sp_v3_bug"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static d(Lcom/bytedance/msdk/api/dq/d;I)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;I)V

    return-void
.end method

.method public static d(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "mt_ra_cc"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "waterfall_abtest"

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1, p1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static d(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JLjava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "media_click_listen"

    invoke-virtual {v0, v4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v4

    const-string v5, "adn_preload"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v3

    const-string v4, "play_again"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    const-string v3, "is_repeat"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p2, v3, p7}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    if-eqz p3, :cond_1

    const-string p2, "sub_adn_name"

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "callstack_message"

    invoke-virtual {v0, p2, p6}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-wide/16 p6, 0x0

    cmp-long p3, p4, p6

    if-ltz p3, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->zc()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/bytedance/msdk/ia/r;->dq()D

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string p6, "custom_adn_sample_ratio"

    invoke-virtual {p2, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "custom_adn_sample_ratio_result"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-virtual {p2, p3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    const-string p3, "custom_adn_rec_time"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 p3, 0x0

    invoke-static {v0, p1, p3, p0, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static d(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JZ)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/bytedance/msdk/s/iw;->d(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JLjava/lang/String;Z)V

    return-void
.end method

.method public static dq()V
    .locals 6

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "mediation_sdk_init"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-wide v2, Lcom/bytedance/sdk/gromore/init/iw;->dq:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "call_init_time"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-wide v2, Lcom/bytedance/sdk/gromore/init/iw;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "call_init_csj_start_time"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-wide v2, Lcom/bytedance/sdk/gromore/init/iw;->ox:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "call_init_csj_end_time"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-wide v2, Lcom/bytedance/sdk/gromore/init/iw;->d:J

    sget-wide v4, Lcom/bytedance/sdk/gromore/init/iw;->dq:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "call_init_csj_duration"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-wide v2, Lcom/bytedance/sdk/gromore/init/iw;->ox:J

    sget-wide v4, Lcom/bytedance/sdk/gromore/init/iw;->d:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "init_csj_duration"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-wide v2, Lcom/bytedance/sdk/gromore/init/iw;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "call_init_gromore_start_time"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-wide v2, Lcom/bytedance/sdk/gromore/init/iw;->s:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "call_init_gromore_end_time"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-wide v2, Lcom/bytedance/sdk/gromore/init/iw;->p:J

    sget-wide v4, Lcom/bytedance/sdk/gromore/init/iw;->dq:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "call_init_gromore_duration"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-wide v2, Lcom/bytedance/sdk/gromore/init/iw;->s:J

    sget-wide v4, Lcom/bytedance/sdk/gromore/init/iw;->p:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "init_gromore_duration"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-wide v2, Lcom/bytedance/sdk/gromore/init/iw;->s:J

    sget-wide v4, Lcom/bytedance/sdk/gromore/init/iw;->dq:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "init_total_duration"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v2, v1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(IIJZZLorg/json/JSONObject;JLorg/json/JSONObject;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/mn/s;->dq()Lcom/bytedance/msdk/ia/bl;

    move-result-object v1

    const-string v2, "is_config_from_assert"

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/ia/bl;->s(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p4, :cond_2

    if-nez p0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x2

    :goto_1
    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/s/p;->setResult(I)Lcom/bytedance/msdk/s/p;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/msdk/s/p;->dq(J)Lcom/bytedance/msdk/s/p;

    move-result-object p0

    const-string p2, "get_config_final"

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/s/p;->iw(I)Lcom/bytedance/msdk/s/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/f/ox;->kk()Ljava/lang/String;

    move-result-object p1

    const-string p2, "transparent_params"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p5, v0, p6, p0}, Lcom/bytedance/msdk/core/o/p;->dq(ZLcom/bytedance/msdk/s/p;Lorg/json/JSONObject;Ljava/util/Map;)V

    if-eqz p9, :cond_3

    const-string p1, "cfg_handle_time"

    invoke-virtual {p0, p1, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string p1, "config_size"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(J)V
    .locals 9

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "sdk_init"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/bytedance/msdk/s/p;->ox(J)Lcom/bytedance/msdk/s/p;

    invoke-static {}, Lcom/bytedance/msdk/mn/s;->kk()Lcom/bytedance/msdk/ia/bl;

    move-result-object p0

    const-string p1, "check_unity3d"

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ia/bl;->s(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "check_unity3d_time"

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/ia/bl;->p(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz v1, :cond_1

    sub-long v3, v5, v3

    const-wide v7, 0x9a7ec800L

    cmp-long v1, v3, v7

    if-lez v1, :cond_1

    :try_start_0
    const-string v1, "com.unity3d.player.UnityPlayer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "unity_pure"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "com.bytedance.android.NativeAdManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "unity"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :catchall_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    const-string v3, "develop_type"

    invoke-virtual {v0, v3, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Z)V

    invoke-virtual {p0, v2, v5, v6}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;J)V

    :cond_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/mn/ox/dq;->dq()Lcom/bytedance/msdk/mn/ox/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/mn/ox/dq;->iw()I

    move-result p1

    if-lez p1, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/mn/ox/dq;->dq()Lcom/bytedance/msdk/mn/ox/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/mn/ox/dq;->mn()V

    const-string v1, "discard_num"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "csj_plugin_version"

    invoke-static {}, Lcom/bytedance/msdk/iw/ox;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/ia/bl;->s()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "init_time"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {p0}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/util/Map;)V

    invoke-static {p0}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(JIIJLorg/json/JSONObject;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIJ",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "sdk_init_end"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/msdk/s/p;->dq(J)Lcom/bytedance/msdk/s/p;

    invoke-virtual {v0, p4, p5}, Lcom/bytedance/msdk/s/p;->ox(J)Lcom/bytedance/msdk/s/p;

    const-string p0, "adn_count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p7, :cond_0

    invoke-interface {p7}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0, p7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string p1, "is_from_local_config"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "adapter_version_list"

    invoke-static {}, Lcom/bytedance/msdk/ia/mn;->dq()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_1

    const-string p1, "local_init_time"

    invoke-virtual {p0, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;I)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "media_carousel_fail"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-static {p1}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1, p1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "is_video_cache_success"

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/p/d;Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/p/d;Ljava/lang/String;I)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JLjava/lang/String;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/no/no;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/no/no;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "rit_cache_cannot_use"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    const-string v2, "cache_invalid_info"

    invoke-virtual {v1, v2, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "mediationrit_req_type"

    invoke-virtual {v0, p1, p0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "media_will_show"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "waterfall_abtest"

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1, p1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "mt_ra_c"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "waterfall_abtest"

    invoke-virtual {p2, v1, p1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 p2, 0x0

    invoke-static {v0, p0, p2, p2, p1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;II)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "mt_ra_s"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "waterfall_abtest"

    invoke-virtual {p2, v1, p1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "pre_req"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {v0, p0, p2, p2, p1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "cache_cannot_use"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    const-string v2, "cache_invalid_info"

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "waterfall_abtest"

    invoke-virtual {p1, v1, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 p2, 0x0

    invoke-static {v0, p0, p2, p2, p1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/gromore/d/dq;->dq()Lcom/bytedance/sdk/gromore/d/dq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bytedance/msdk/s/dq;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/gromore/d/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v4

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    move v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;J)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "bidding_adm_load_fail"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Lcom/bytedance/msdk/s/p;->dq(J)Lcom/bytedance/msdk/s/p;

    move-result-object p7

    invoke-virtual {p7, p6}, Lcom/bytedance/msdk/s/p;->iw(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object p6

    if-eqz p0, :cond_0

    iget p7, p0, Lcom/bytedance/msdk/api/dq;->ox:I

    goto :goto_0

    :cond_0
    const/4 p7, -0x1

    :goto_0
    invoke-virtual {p6, p7}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p6

    if-eqz p0, :cond_1

    iget-object p7, p0, Lcom/bytedance/msdk/api/dq;->p:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p7, "unknown error"

    :goto_1
    invoke-virtual {p6, p7}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object p6

    const-string p7, "adn_count"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p6, p7, p3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const/4 p6, 0x0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const-string p7, "adn_preload"

    invoke-virtual {p3, p7, p6}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const-string p6, "mediationrit_req_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p6, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const-string p4, "mediationrit_req_type_src"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    instance-of p3, p0, Lcom/bytedance/msdk/api/d/dq;

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/bytedance/msdk/api/dq;->dq:I

    iput p3, v0, Lcom/bytedance/msdk/s/p;->q:I

    iget-object p0, p0, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    iput-object p0, v0, Lcom/bytedance/msdk/s/p;->no:Ljava/lang/String;

    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    invoke-static {v0, p1, p2, p3, p0}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-wide/from16 v14, p12

    invoke-virtual/range {v0 .. v15}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;II)V
    .locals 6

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;II)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "bidding_info_invalid"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->h()I

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "ad_count"

    invoke-virtual {p3, v1, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/msdk/core/f/d;->dq(Lcom/bytedance/msdk/core/f/dq;)Lcom/bytedance/msdk/core/f/d;

    invoke-static {}, Lcom/bytedance/msdk/core/f/d;->d()Lorg/json/JSONObject;

    move-result-object p4

    const-string v1, "grouping_params"

    invoke-virtual {p3, v1, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const/4 p4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "log_source"

    invoke-virtual {p3, v1, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, p1, p0, p2, p3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p3}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/dq;JZZ)V
    .locals 15

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-wide/from16 v11, p9

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v0 .. v14}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/dq;JZZ)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;ILjava/lang/String;JLcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;JJ)V
    .locals 16

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-virtual/range {v0 .. v15}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/d/s;ILjava/lang/String;JLcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;JJ)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bytedance/msdk/s/p;->setResult(I)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const-string v1, "media_show_after"

    invoke-virtual {p3, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const-string v1, "play_again"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, v1, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const-string p4, "reason"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "callstack_message"

    invoke-virtual {v0, p2, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    invoke-static {v0, p1, p3, p0, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JIILjava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "media_reward_verify"

    invoke-virtual {v0, v4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v4

    const-string v5, "adn_preload"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v3

    const-string v4, "reason"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {v3, v4, p6}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p6

    const-string v3, "play_again"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p6, v3, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    if-eqz p7, :cond_1

    const/16 p2, 0x4e20

    if-eq p7, p2, :cond_1

    invoke-virtual {v0, p7}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    invoke-virtual {p2, p8}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-wide/16 p6, 0x0

    cmp-long p8, p4, p6

    if-ltz p8, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->zc()Z

    move-result p6

    if-eqz p6, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/ia/r;->dq()D

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p6

    const-string p7, "custom_adn_sample_ratio"

    invoke-virtual {p2, p7, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "custom_adn_sample_ratio_result"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p7

    invoke-virtual {p2, p6, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    const-string p6, "custom_adn_rec_time"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p6, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result p6

    const/16 p7, 0x65

    invoke-virtual {p4, p5, p6, p7}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/bytedance/msdk/core/no/d;->ob()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const-string p6, "reward_callback_type"

    invoke-virtual {p2, p6, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/bytedance/msdk/core/no/d;->vf()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "reward_start_time"

    invoke-virtual {p2, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p3, :cond_5

    const-string p4, "sub_adn_name"

    invoke-virtual {v0, p4, p3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_5
    const/4 p3, 0x0

    invoke-static {v0, p1, p3, p0, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JLjava/lang/String;Z)V
    .locals 6

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "media_show_listen"

    invoke-virtual {v0, v4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v4

    const-string v5, "adn_preload"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v3

    const-string v4, "play_again"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    const-string v3, "is_repeat"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p2, v3, p7}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    if-eqz p3, :cond_1

    const-string p2, "sub_adn_name"

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_1
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "callstack_message"

    invoke-virtual {v0, p2, p6}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/msdk/core/f/ox;->ce()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p6, "enable_label_return"

    invoke-virtual {p2, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/msdk/core/d;->dq()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p6, "if_labelapi_call"

    invoke-virtual {p2, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/bytedance/msdk/core/d/ox;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V

    const-wide/16 p6, 0x0

    cmp-long p3, p4, p6

    if-ltz p3, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->zc()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/bytedance/msdk/ia/r;->dq()D

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string p6, "custom_adn_sample_ratio"

    invoke-virtual {p2, p6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "custom_adn_sample_ratio_result"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-virtual {p2, p3, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    const-string p3, "custom_adn_rec_time"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 p3, 0x0

    invoke-static {v0, p1, p3, p0, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JZ)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ILjava/lang/String;JLjava/lang/String;Z)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;J)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-static/range {v0 .. v8}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/api/dq;IILjava/lang/String;JLjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bytedance/msdk/s/p;->setResult(I)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget v2, p2, Lcom/bytedance/msdk/api/dq;->ox:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p3, v2}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/bytedance/msdk/api/dq;->p:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p2, v2

    :goto_1
    invoke-virtual {p3, p2}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    const-string p3, "media_show_fail_listen"

    invoke-virtual {p2, p3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    const-string p3, "play_again"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    if-eqz p5, :cond_2

    const-string p2, "sub_adn_name"

    invoke-virtual {v0, p2, p5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_2
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "callstack_message"

    invoke-virtual {v0, p2, p8}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-wide/16 p3, 0x0

    cmp-long p5, p6, p3

    if-ltz p5, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->zc()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/bytedance/msdk/ia/r;->dq()D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const-string p4, "custom_adn_sample_ratio"

    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "custom_adn_sample_ratio_result"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    const-string p3, "custom_adn_rec_time"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {v0, p1, v2, p0, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;JLjava/lang/String;ZIZZ)V
    .locals 12

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;JLjava/lang/String;ZIZZ)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;J)V
    .locals 7

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;J)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "media_show_dislike"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p0, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;I)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "callstack_static"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    const-string v2, "callstack_message"

    invoke-virtual {v1, v2, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p2

    const-string v1, "callstack_report_time"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    invoke-static {v0, p1, p3, p0, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;ZI)V
    .locals 4

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "media_show"

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    const-string v3, "adn_preload"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    const-string v2, "play_again"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object p3

    const-string v1, "is_repeat"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, v1, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 p3, 0x0

    invoke-static {v0, p1, p3, p0, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p2}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/s/p;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Lcom/bytedance/msdk/core/no/no;",
            "Lcom/bytedance/msdk/d/s;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_20

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/s/p;->d(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/s/p;->p(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/s/p;->ox(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->ob()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/msdk/s/p;->d(J)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/s/p;->s(I)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "if_test"

    invoke-virtual {v2, v5, v3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->xz()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "segment_id"

    invoke-virtual {v2, v5, v3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    const-string v3, "segment_version"

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->yy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    const-string v3, "waterfall_extra"

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    const-string v3, "transparent_params"

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->iw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->ox()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "primerit_req_type"

    invoke-virtual {v2, v5, v3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->p()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "req_type"

    invoke-virtual {v2, v5, v3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->gx()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "parallel_type"

    invoke-virtual {v2, v5, v3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->by()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "req_parallel_num"

    invoke-virtual {v2, v5, v3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->t()D

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmpl-double v7, v2, v5

    if-lez v7, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->t()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "waterfall_bidfloor"

    invoke-virtual {p0, v3, v2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->wp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "scenario_id"

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->wp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_0
    const-string v3, "pangle_vid"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, [I

    if-eqz v3, :cond_3

    check-cast v2, [I

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_2

    :cond_3
    instance-of v3, v2, [Ljava/lang/Integer;

    if-eqz v3, :cond_5

    check-cast v2, [Ljava/lang/Integer;

    array-length v3, v2

    new-array v3, v3, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    array-length v5, v2

    if-ge v4, v5, :cond_4

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_1
    move-exception v2

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    move-object v2, v3

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_6

    array-length v3, v2

    if-lez v3, :cond_6

    if-eqz p4, :cond_6

    invoke-static {v2}, Lcom/bytedance/msdk/ia/gh;->dq([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "external_vid"

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-nez p4, :cond_7

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->ia()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_ra"

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->mn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ad_req_optmize"

    invoke-interface {p4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->vf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "mediation_map_request"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v2, "if_reuse"

    const-string v3, "ad_extra"

    const-string v4, "m_aid"

    const-string v5, "pricing_type"

    const-string v6, "sub_adtype"

    const-string v7, "origin_type"

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bytedance/msdk/s/p;->s(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->ia(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->ox(I)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->p(I)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->dq(I)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->kk(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->q()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->no(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v9

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->kx()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "waterfall_abtest"

    invoke-virtual {v8, v10, v9}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    const-string v9, "server_bidding_extra"

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->o()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/msdk/core/no/kk;->ox()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/msdk/core/no/kk;->p()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/msdk/core/no/kk;->dq()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {p0, v4, v8}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    if-eqz p4, :cond_a

    invoke-interface {p4, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-nez p4, :cond_b

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_b
    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->kk()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p4, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-eqz p3, :cond_18

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/bytedance/msdk/s/p;->s(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->ia(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->s(I)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->y()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->dq(I)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->io()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->no(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->iw()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->mn(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->cc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->iw(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->ox(I)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->p(I)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->kk(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->pa()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/bytedance/msdk/s/p;->dq(Ljava/util/Map;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_d
    move-object v9, v0

    :goto_4
    invoke-virtual {p3, v9}, Lcom/bytedance/msdk/d/s;->ia(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "mediationrit_req_type"

    invoke-virtual {v8, v10, v9}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v8

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v0

    :cond_e
    invoke-virtual {p3, v0}, Lcom/bytedance/msdk/d/s;->kk(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v9, "mediationrit_req_type_src"

    invoke-virtual {v8, v9, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->dc()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v0

    const/16 v6, 0x8

    if-eq v0, v6, :cond_f

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v0

    const/4 v6, 0x7

    if-ne v0, v6, :cond_10

    :cond_f
    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->fx()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "is_video_cache_success"

    invoke-virtual {p0, v6, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->e()Z

    move-result v6

    xor-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "is_mock_video_cache_api"

    invoke-virtual {v0, v6, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_10
    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->ij()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "level_tag"

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->ij()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_11
    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->vw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->ha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v6, p0, Lcom/bytedance/msdk/s/p;->dq:Ljava/lang/String;

    const-string v7, "media_show_fail"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {p0, v4, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p4, :cond_13

    invoke-interface {p4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object v0, p0, Lcom/bytedance/msdk/s/p;->dq:Ljava/lang/String;

    const-string v1, "bidding_win_event"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "win_callback"

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_14
    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->ds()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "fail_callback"

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->ds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_15
    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->ip()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->xz()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_16
    if-nez p4, :cond_17

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_17
    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->vf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "timeout_req"

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->ob()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_callback"

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    if-eqz p1, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_req_id"

    if-eqz p2, :cond_19

    invoke-static {v0}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    goto :goto_5

    :cond_19
    if-eqz p3, :cond_1a

    invoke-static {v0}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_1a
    :goto_5
    iget-object p2, p0, Lcom/bytedance/msdk/s/p;->ox:Ljava/lang/String;

    const-string p3, "pangle"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1b

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/d;->ce()Z

    move-result p2

    if-eqz p2, :cond_1b

    const-string p2, "sub_adn_name"

    const-string p3, "pangleoppo"

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_1b
    iget-object p2, p0, Lcom/bytedance/msdk/s/p;->ox:Ljava/lang/String;

    const-string p3, "gdt"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/dq;->dq()I

    move-result p2

    const/16 v0, 0x189c

    if-lt p2, v0, :cond_1e

    invoke-static {}, Lcom/bytedance/msdk/core/dq/dq/dq;->d()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1e

    iget-object p2, p0, Lcom/bytedance/msdk/s/p;->dq:Ljava/lang/String;

    const-string v0, "media_request"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "adapter_plugin_loader"

    if-eqz p2, :cond_1c

    invoke-static {}, Lcom/bytedance/msdk/core/dq/dq/dq;->d()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    iget-object p2, p0, Lcom/bytedance/msdk/s/p;->dq:Ljava/lang/String;

    const-string v1, "media_fill"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1d

    iget-object p2, p0, Lcom/bytedance/msdk/s/p;->dq:Ljava/lang/String;

    const-string v1, "media_fill_fail"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1d

    iget-object p2, p0, Lcom/bytedance/msdk/s/p;->dq:Ljava/lang/String;

    const-string v1, "media_show"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1d

    iget-object p2, p0, Lcom/bytedance/msdk/s/p;->dq:Ljava/lang/String;

    const-string v1, "media_show_listen"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1e

    :cond_1d
    invoke-static {}, Lcom/bytedance/msdk/core/dq/dq/dq;->d()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/bytedance/msdk/core/dq/dq/dq;->ox(Lcom/bytedance/msdk/api/dq/d;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "adapter_plugin_status"

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    invoke-static {p3}, Lcom/bytedance/msdk/core/dq/dq/dq;->dq(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_dex_adapter"

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    const-string p1, "isFusion"

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_20
    return-void
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    const-string v1, "callstack_dynamic"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    const-string v1, "callstack_message"

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "callstack_report_time"

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    if-eqz p4, :cond_0

    iget v1, p4, Lcom/bytedance/msdk/api/dq;->dq:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    if-eqz p4, :cond_1

    iget-object p4, p4, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    invoke-virtual {v1, p4}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object p4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, ""

    :cond_2
    invoke-virtual {p4, p0}, Lcom/bytedance/msdk/s/p;->s(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object p0

    const-string p4, "custom_adn_init_fail"

    invoke-virtual {p0, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, p2, p3, p1, p0}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p0}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v3

    const-string v4, "media_show_fail"

    invoke-virtual {v3, v4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    if-nez p2, :cond_4

    const p2, 0x9c74

    invoke-virtual {v3, p2}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    if-eqz v2, :cond_5

    :try_start_0
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/d/s;

    if-eqz v4, :cond_1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "adn"

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "type"

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v7

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v8

    invoke-static {v7, v8}, Lcom/bytedance/msdk/d/dq;->dq(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "adnSlotId"

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "loadSort"

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "showSort"

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    const-string v6, "isReady"

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    const-string v6, "hasShown"

    invoke-virtual {v4}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_4
    invoke-virtual {v3, p2}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    invoke-static {p2}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    :cond_5
    :goto_4
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, p1, v1, v2, p0}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    const-string p1, "is_video_cache_success"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3, p0}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    if-lez p0, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/msdk/d/s;

    goto :goto_0

    :cond_3
    move-object p0, p2

    :goto_0
    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v1

    const-string v2, "media_show_is_ready"

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v3, "waterfall_abtest"

    invoke-virtual {v2, v3, p4}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    if-nez p5, :cond_d

    :try_start_0
    new-instance p4, Lorg/json/JSONArray;

    invoke-direct {p4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    if-eqz v2, :cond_5

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "adn"

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "type"

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v5

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->cv()I

    move-result v6

    invoke-static {v5, v6}, Lcom/bytedance/msdk/d/dq;->dq(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "adnSlotId"

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "loadSort"

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "showSort"

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p3, :cond_6

    const-string v4, "isReady"

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_6
    :goto_2
    const-string v4, "hasShown"

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->e()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "is_video_cache_success"

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->fx()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7
    const-string v4, "mediationrit_req_type"

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_8
    move-object v5, p2

    :goto_3
    invoke-virtual {v2, v5}, Lcom/bytedance/msdk/d/s;->ia(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "mediationrit_req_type_src"

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_9
    move-object v5, p2

    :goto_4
    invoke-virtual {v2, v5}, Lcom/bytedance/msdk/d/s;->kk(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-nez v0, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_a

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/d/s;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->xi()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_b
    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    const/4 p1, -0x1

    :goto_5
    invoke-virtual {v1, p1}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :cond_d
    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Lcom/bytedance/msdk/s/p;->d(I)Lcom/bytedance/msdk/s/p;

    invoke-static {p5}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/msdk/s/p;->o(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    :goto_7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, p3, p2, p0, p1}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, p1}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

.method public static dq(Ljava/util/Map;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JIIILjava/lang/String;IILcom/bytedance/msdk/core/no/d;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Lcom/bytedance/msdk/d/s;",
            "JIII",
            "Ljava/lang/String;",
            "II",
            "Lcom/bytedance/msdk/core/no/d;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "rule_id"

    const-string v2, "serverBidding_timeout"

    const-string v3, "has_serverBidding"

    const-string v4, "rule_in_use"

    const-string v5, "price_from"

    const-string v6, "price_source"

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v8

    if-eqz v0, :cond_b

    const-string v7, "group_type"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Integer;

    if-eqz v9, :cond_0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const-string v9, "ecpm"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Ljava/lang/Double;

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_1

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    goto :goto_1

    :cond_1
    move-wide v14, v12

    :goto_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "grout_type"

    invoke-virtual {v9, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "target_ecpm_origin"

    invoke-virtual {v5, v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v11, "target_ecpm_upper"

    const-string v10, "upper_cpm_x"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "price"

    invoke-virtual {v9, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eq v7, v5, :cond_5

    if-eq v7, v6, :cond_5

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    if-nez v3, :cond_6

    const/4 v10, 0x1

    goto :goto_5

    :cond_6
    cmpl-double v3, v14, v12

    if-nez v3, :cond_7

    const/4 v10, 0x2

    goto :goto_5

    :cond_7
    if-nez v4, :cond_8

    const/4 v10, 0x5

    goto :goto_5

    :cond_8
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    :goto_4
    if-ne v7, v6, :cond_a

    if-nez v10, :cond_a

    const/4 v10, 0x3

    goto :goto_5

    :cond_a
    const/4 v10, 0x4

    :goto_5
    const-string v2, "pos_state"

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rule_inuse"

    invoke-virtual {v9, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_6
    move-object/from16 v20, v9

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    goto :goto_6

    :goto_7
    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v7

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v11, p3

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v16, p8

    move/from16 v17, p9

    move/from16 v18, p10

    move-object/from16 v19, p11

    invoke-virtual/range {v7 .. v20}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;JIIILjava/lang/String;IILcom/bytedance/msdk/core/no/d;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static dq(Z)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/s/p;->d()Lcom/bytedance/msdk/s/p;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/mn/s;->dq()Lcom/bytedance/msdk/ia/bl;

    move-result-object v1

    const-string v2, "is_config_from_assert"

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/ia/bl;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz p0, :cond_1

    if-eqz v1, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v1, "get_config_start"

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/s/p;

    move-result-object v1

    const-string v2, "reason"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V

    return-void
.end method

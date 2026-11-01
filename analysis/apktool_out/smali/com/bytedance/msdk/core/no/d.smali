.class public Lcom/bytedance/msdk/core/no/d;
.super Ljava/lang/Object;


# instance fields
.field private bl:I

.field private by:J

.field private c:I

.field private cd:I

.field private ce:I

.field private d:I

.field private dq:Ljava/lang/String;

.field private ds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private er:I

.field private f:I

.field private fw:J

.field private gh:Ljava/lang/String;

.field private gx:D

.field private h:Z

.field private i:I

.field private ia:Ljava/lang/String;

.field private ig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ir:I

.field private iw:J

.field private j:Lcom/bytedance/msdk/core/kk/mn;

.field private ji:Z

.field private jy:I

.field private k:I

.field private kk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation
.end field

.field private kx:J

.field private l:I

.field private le:I

.field private mn:J

.field private mp:D

.field private n:D

.field private nh:I

.field private no:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;>;"
        }
    .end annotation
.end field

.field private ob:I

.field private op:I

.field private ox:I

.field private p:J

.field private q:D

.field private r:Ljava/lang/String;

.field private s:J

.field private t:D

.field private u:I

.field private uh:I

.field private v:I

.field private vf:Lorg/json/JSONObject;

.field private wn:Lcom/bytedance/msdk/core/kk/kk;

.field private wp:Ljava/lang/String;

.field private xz:I

.field private yy:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/no/d;->kk:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/no/d;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/no/d;->no:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/no/d;->ig:Ljava/util/List;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->mp:D

    iput-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->q:D

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/bytedance/msdk/core/no/d;->l:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/msdk/core/no/d;->xz:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/bytedance/msdk/core/no/d;->yy:I

    iput v0, p0, Lcom/bytedance/msdk/core/no/d;->v:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/no/d;->ds:Ljava/util/Map;

    return-void
.end method

.method private static d(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result p0

    if-nez p0, :cond_3

    return-object v0

    :cond_3
    return-object v1

    :catch_0
    return-object v0
.end method

.method public static dq(Lorg/json/JSONObject;Ljava/util/Map;)Lcom/bytedance/msdk/core/no/d;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/iw;",
            ">;>;)",
            "Lcom/bytedance/msdk/core/no/d;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "adn_name"

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    new-instance v4, Lcom/bytedance/msdk/core/no/d;

    invoke-direct {v4}, Lcom/bytedance/msdk/core/no/d;-><init>()V

    invoke-virtual {v4, v0}, Lcom/bytedance/msdk/core/no/d;->dq(Lorg/json/JSONObject;)V

    const-string v5, "bid_floor"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/msdk/core/no/d;->ox(D)V

    const-string v5, "rit_id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/d;->p(Ljava/lang/String;)V

    const-string v5, "version"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/d;->ox(Ljava/lang/String;)V

    const-string v5, "waterfall_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/msdk/core/no/d;->ox(J)V

    const-string v5, "rit_type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/d;->q(I)V

    const-string v5, "look_type"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/d;->jy(I)V

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->ce()I

    move-result v5

    invoke-static {v5}, Lcom/bytedance/msdk/core/no/d;->i(I)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v5, "time_min"

    invoke-virtual {v0, v5, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/bytedance/msdk/core/no/d;->p(J)V

    const-string v5, "layer_time_out"

    const-wide/16 v7, 0x7d0

    invoke-virtual {v0, v5, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/bytedance/msdk/core/no/d;->s(J)V

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->ce()I

    move-result v5

    invoke-static {v5}, Lcom/bytedance/msdk/core/no/d;->le(I)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v5, "total_time_out"

    invoke-virtual {v0, v5, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/bytedance/msdk/core/no/d;->iw(J)V

    const-string v5, "multilevel_time_out"

    invoke-virtual {v0, v5, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/bytedance/msdk/core/no/d;->d(J)V

    const-string v5, "cache_time_out"

    const-wide/16 v7, 0xbb8

    invoke-virtual {v0, v5, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/bytedance/msdk/core/no/d;->mn(J)V

    const-string v5, "req_type"

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/d;->ig(I)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v5

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->le()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lcom/bytedance/msdk/core/s/d/p;->dq(Ljava/lang/String;I)V

    const-string v5, "segment_id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/d;->mp(I)V

    const-string v5, "segment_version"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/d;->d(Ljava/lang/String;)V

    const-string v5, "waterfall_extra"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/d;->dq(Ljava/lang/String;)V

    const-string v5, "multilevel_after_p"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/d;->no(I)V

    const-string v5, "refresh_time"

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/no/d;->o(I)V

    const-string v5, "is_refresh"

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->iw(I)V

    const-string v8, "refresh_num"

    const/4 v9, 0x2

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->mn(I)V

    const-string v8, "parallel_type"

    invoke-virtual {v0, v8, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->cd(I)V

    const-string v8, "is_adprime"

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->p(I)V

    const-string v8, "req_parallel_num"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->gh(I)V

    const-string v8, "reward_start_time"

    const/16 v10, 0x3a98

    invoke-virtual {v0, v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->f(I)V

    const-string v8, "reward_callback_type"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->fw(I)V

    const-string v8, "req_interval"

    const-wide/16 v10, 0x3e8

    invoke-virtual {v0, v8, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/bytedance/msdk/core/no/d;->dq(J)V

    const-string v8, "total_time_rate"

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {v0, v8, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/bytedance/msdk/core/no/d;->d(D)V

    const-string v8, "layer_time_rate"

    const-wide v10, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v0, v8, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/bytedance/msdk/core/no/d;->dq(D)V

    const-string v8, "support_render_control"

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->dq(I)V

    const-string v8, "behavior_ttl"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->r(I)V

    const-string v8, "ad_count"

    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v10, 0x3

    if-gez v8, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    if-le v8, v10, :cond_1

    const/4 v8, 0x3

    :cond_1
    :goto_0
    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->ia(I)V

    const-string v8, "group_type"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->d(I)V

    const-string v8, "bidding_time_out"

    const/16 v11, 0x3e8

    invoke-virtual {v0, v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->ox(I)V

    const-string v8, "waterfall_abtest"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->s(Ljava/lang/String;)V

    :cond_2
    const-string v8, "waterfall_timing_mode"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/bytedance/msdk/core/no/d;->s(I)V

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->o()Z

    move-result v11

    const-string v19, "[]"

    if-eqz v11, :cond_5

    const-string v11, "waterfall_show_pacing_rule"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "waterfall_show_rules_version"

    if-eqz v11, :cond_3

    new-instance v13, Lcom/bytedance/msdk/core/kk/kk;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v10, "waterfall_show_pacing"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v10, "waterfall_show_pacing_rule_id"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v11, v13

    const-string v13, ""

    move-object v10, v12

    move-object v12, v15

    const-string v15, ""

    move/from16 v16, v8

    invoke-direct/range {v11 .. v18}, Lcom/bytedance/msdk/core/kk/kk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Lcom/bytedance/msdk/core/no/d;->dq(Lcom/bytedance/msdk/core/kk/kk;)V

    goto :goto_1

    :cond_3
    move/from16 v16, v8

    move-object v10, v12

    :goto_1
    const-string v8, "waterfall_show_freqctl_rules"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v11, Lcom/bytedance/msdk/core/kk/mn;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v8, :cond_4

    move-object/from16 v17, v19

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v8

    :goto_2
    const-string v13, ""

    const-string v15, ""

    invoke-direct/range {v11 .. v17}, Lcom/bytedance/msdk/core/kk/mn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, v11}, Lcom/bytedance/msdk/core/no/d;->dq(Lcom/bytedance/msdk/core/kk/mn;)V

    :cond_5
    const-string v8, "is_ra"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_6

    new-instance v8, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;

    invoke-direct {v8}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;-><init>()V

    const-string v10, "ra_id"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->dq(Ljava/lang/String;)V

    const-string v10, "ra_max"

    invoke-virtual {v0, v10, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->d(I)V

    const-string v10, "ra_ecpm"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->d(D)V

    const-string v10, "ra_in"

    const-wide/16 v11, 0x0

    invoke-virtual {v0, v10, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->dq(J)V

    const-string v10, "ra_h_max"

    invoke-virtual {v0, v10, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->dq(I)V

    const-string v10, "ra_ra"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;->dq(D)V

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Ljava/lang/String;Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->o(Ljava/lang/String;)V

    :goto_3
    const-string v8, "adn_rit_conf"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_14

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v11, v0, :cond_14

    :try_start_0
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v12, Lcom/bytedance/msdk/core/no/no;

    invoke-direct {v12}, Lcom/bytedance/msdk/core/no/no;-><init>()V

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/bytedance/msdk/core/no/no;->ox(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v13

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/bytedance/msdk/core/f/ox;->ox(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "custom_adn_name"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/bytedance/msdk/core/no/no;->p(Ljava/lang/String;)V

    goto :goto_6

    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    :goto_5
    const/4 v13, 0x3

    goto/16 :goto_d

    :cond_7
    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->p(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/bytedance/msdk/core/no/no;->mn(Ljava/lang/String;)V

    const-string v13, "adn_slot_id"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/bytedance/msdk/core/no/no;->s(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/bytedance/msdk/core/no/no;->dq(I)V

    const-string v14, "freqctl_timing_mode"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Lcom/bytedance/msdk/core/no/no;->d(I)V

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->p()Z

    move-result v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v15, :cond_a

    :try_start_1
    const-string v15, "show_pacing_rule"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_8

    new-instance v21, Lcom/bytedance/msdk/core/kk/kk;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v16, v3

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    const-string v25, ""

    const-string v3, "pacing"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v3, "rule_id"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v23, v13

    move/from16 v26, v14

    invoke-direct/range {v21 .. v28}, Lcom/bytedance/msdk/core/kk/kk;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v21

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->dq(Lcom/bytedance/msdk/core/kk/kk;)V

    goto :goto_8

    :catch_1
    move-exception v0

    :goto_7
    const/4 v9, 0x2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_7

    :cond_8
    move-object/from16 v16, v3

    move-object/from16 v23, v13

    move/from16 v26, v14

    :goto_8
    const-string v3, "show_freqctl_rules"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v21, Lcom/bytedance/msdk/core/kk/mn;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    const-string v9, "show_freqctl_rules_version"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-nez v3, :cond_9

    move-object/from16 v27, v19

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v3

    :goto_9
    invoke-direct/range {v21 .. v27}, Lcom/bytedance/msdk/core/kk/mn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v3, v21

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->dq(Lcom/bytedance/msdk/core/kk/mn;)V

    goto :goto_a

    :cond_a
    move-object/from16 v16, v3

    :goto_a
    const-string v3, "req_bidding_type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->o(I)V

    const-string v3, "slot_cpm"

    const-string v9, "0"

    invoke-virtual {v0, v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->iw(Ljava/lang/String;)V

    const-string v3, "exchange_rate"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->d(Ljava/lang/String;)V

    const-string v3, "load_sort"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->no(I)V

    const-string v3, "show_sort"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->ig(I)V

    const-string v3, "ad_expired_time"

    const v9, 0x1b7740

    invoke-virtual {v0, v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->p(I)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v3

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->ia()I

    move-result v14

    invoke-virtual {v3, v9, v13, v14}, Lcom/bytedance/msdk/core/s/dq;->dq(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v3

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->ia()I

    move-result v14

    invoke-virtual {v3, v9, v13, v14}, Lcom/bytedance/msdk/core/s/dq;->dq(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "if_is_ready"

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->ia(I)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/d/p;->dq()Lcom/bytedance/msdk/core/s/d/p;

    move-result-object v3

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->ig()I

    move-result v14

    invoke-virtual {v3, v9, v13, v14}, Lcom/bytedance/msdk/core/s/dq;->d(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v3

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->ig()I

    move-result v14

    invoke-virtual {v3, v9, v13, v14}, Lcom/bytedance/msdk/core/s/dq;->d(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "if_reuse_ads"

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->s(I)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v3

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->kk()I

    move-result v14

    invoke-virtual {v3, v9, v13, v14}, Lcom/bytedance/msdk/core/s/dq/dq;->ox(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "if_pre_request"

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->mn(I)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v3

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->no()I

    move-result v14

    invoke-virtual {v3, v9, v13, v14}, Lcom/bytedance/msdk/core/s/dq/dq;->iw(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->ce()I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->kk(I)V

    const-string v3, "%1$s%2$sAdapter"

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->dq(Ljava/lang/String;)V

    const-string v3, "origin_type"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->iw(I)V

    const-string v3, "sub_adtype"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->ox(I)V

    const-string v3, "multilevel_slot_cpm"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/msdk/core/no/d;->d(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->dq(Ljava/util/Map;)V

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v3

    if-ne v3, v6, :cond_b

    invoke-virtual {v4, v6}, Lcom/bytedance/msdk/core/no/d;->d(Z)V

    const/4 v9, 0x2

    :goto_b
    const/4 v13, 0x3

    goto :goto_c

    :cond_b
    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v9, 0x2

    if-ne v3, v9, :cond_c

    :try_start_3
    invoke-virtual {v4, v6}, Lcom/bytedance/msdk/core/no/d;->dq(Z)V

    goto :goto_b

    :catch_3
    move-exception v0

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v13, 0x3

    if-ne v3, v13, :cond_d

    :try_start_4
    invoke-virtual {v4, v6}, Lcom/bytedance/msdk/core/no/d;->d(Z)V

    goto :goto_c

    :catch_4
    move-exception v0

    goto/16 :goto_d

    :cond_d
    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v3

    const/16 v14, 0x64

    if-eq v3, v14, :cond_11

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->wp()D

    move-result-wide v14

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    cmpl-double v3, v14, v17

    if-eqz v3, :cond_e

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->wp()D

    move-result-wide v14

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v20

    cmpg-double v3, v14, v20

    if-gez v3, :cond_f

    :cond_e
    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/bytedance/msdk/core/no/d;->p(D)V

    :cond_f
    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->e()D

    move-result-wide v14

    cmpl-double v3, v14, v17

    if-eqz v3, :cond_10

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->e()D

    move-result-wide v14

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v17

    cmpl-double v3, v14, v17

    if-lez v3, :cond_11

    :cond_10
    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Lcom/bytedance/msdk/core/no/d;->s(D)V

    :cond_11
    :goto_c
    const-string v3, "customer_adapter_json"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/bytedance/msdk/core/no/no;->kk(Ljava/lang/String;)V

    const-string v3, "origin_csj_code_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz v1, :cond_13

    new-instance v20, Lcom/bytedance/msdk/core/no/iw;

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v22

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v24

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v25

    invoke-direct/range {v20 .. v25}, Lcom/bytedance/msdk/core/no/iw;-><init>(Ljava/lang/String;DII)V

    move-object/from16 v0, v20

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    if-nez v14, :cond_12

    new-instance v14, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v14}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    :cond_12
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_e

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    goto/16 :goto_4

    :cond_14
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v4, v10}, Lcom/bytedance/msdk/core/no/d;->d(Ljava/util/List;)V

    goto :goto_f

    :cond_15
    invoke-virtual {v4, v10}, Lcom/bytedance/msdk/core/no/d;->dq(Ljava/util/List;)V

    :goto_f
    return-object v4

    :cond_16
    move-object/from16 v16, v3

    return-object v16
.end method

.method private static i(I)Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static le(I)Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    return-object v0

    :cond_0
    const-wide/32 v0, 0x927c0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static mn(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/d;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "AdsenseRitConfig"

    const-string v0, "TMe jsonStr is null or empty"

    invoke-static {p0, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/no/d;->dq(Lorg/json/JSONObject;Ljava/util/Map;)Lcom/bytedance/msdk/core/no/d;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method private ox(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->no:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/bytedance/msdk/mn/ox/dq;->dq()Lcom/bytedance/msdk/mn/ox/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/mn/ox/dq;->ox()Z

    move-result v0

    const/16 v1, -0x3e8

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/core/no/no;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v4

    if-eq v4, v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v4

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/bytedance/msdk/core/no/d;->no:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v6, v4

    move v4, v1

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/bytedance/msdk/core/no/d;->no:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move v1, v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method private p(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->no:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/16 v0, -0x3e8

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/no/no;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v3

    if-eq v3, v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/bytedance/msdk/core/no/d;->no:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v5, v3

    move v3, v0

    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->no:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public bl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->gh:Ljava/lang/String;

    return-object v0
.end method

.method public by()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->u:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->dq:Ljava/lang/String;

    return-object v0
.end method

.method public cd()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->n:D

    return-wide v0
.end method

.method public cd(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->u:I

    return-void
.end method

.method public ce()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->d:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->f()Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    return-object v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->gx:D

    return-wide v0
.end method

.method public d(D)V
    .locals 5

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    :cond_0
    move-wide p1, v0

    :cond_1
    iput-wide p1, p0, Lcom/bytedance/msdk/core/no/d;->t:D

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->ob:I

    return-void
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/no/d;->kx:J

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/d;->gh:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/no/d;->ox(Ljava/util/List;)V

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/d;->kk:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/msdk/core/no/d;->jy:I

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->ig:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->kk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/bytedance/msdk/core/no/d;->f:I

    invoke-static {}, Lcom/bytedance/msdk/mn/ox/dq;->dq()Lcom/bytedance/msdk/mn/ox/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/mn/ox/dq;->ox()Z

    move-result v1

    const/16 v2, -0x3e8

    :goto_0
    iget-object v3, p0, Lcom/bytedance/msdk/core/no/d;->kk:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/core/no/no;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v4

    if-nez v4, :cond_1

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->jy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bytedance/msdk/core/no/d;->jy:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    if-nez v1, :cond_2

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->jy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bytedance/msdk/core/no/d;->jy:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v4

    if-eq v4, v2, :cond_3

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->jy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bytedance/msdk/core/no/d;->jy:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v4

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/bytedance/msdk/core/no/d;->o:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v6, v4

    move v4, v2

    move-object v2, v6

    :goto_1
    if-eqz v2, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/bytedance/msdk/core/no/d;->o:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move v2, v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/bytedance/msdk/core/no/d;->ig:Ljava/util/List;

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/no/d;->ji:Z

    return-void
.end method

.method public dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->uh:I

    return v0
.end method

.method public dq(D)V
    .locals 5

    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    :cond_0
    move-wide p1, v0

    :cond_1
    iput-wide p1, p0, Lcom/bytedance/msdk/core/no/d;->gx:D

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->uh:I

    return-void
.end method

.method public dq(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/msdk/core/no/d;->by:J

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/kk/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/d;->wn:Lcom/bytedance/msdk/core/kk/kk;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/core/kk/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/d;->j:Lcom/bytedance/msdk/core/kk/mn;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/d;->wp:Ljava/lang/String;

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/no/d;->p(Ljava/util/List;)V

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/d;->kk:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/msdk/core/no/d;->jy:I

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->ig:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->kk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/bytedance/msdk/core/no/d;->f:I

    const/16 v1, -0x3e8

    :goto_0
    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->kk:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/no/no;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v3

    if-eq v3, v1, :cond_1

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->jy:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/msdk/core/no/d;->jy:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/bytedance/msdk/core/no/d;->o:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v5, v3

    move v3, v1

    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->o:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v1, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/bytedance/msdk/core/no/d;->ig:Ljava/util/List;

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/d;->vf:Lorg/json/JSONObject;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/core/no/d;->h:Z

    return-void
.end method

.method public e()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->q:D

    return-wide v0
.end method

.method public er()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->p:J

    return-wide v0
.end method

.method public f()Lcom/bytedance/msdk/core/no/d;
    .locals 3

    new-instance v0, Lcom/bytedance/msdk/core/no/d;

    invoke-direct {v0}, Lcom/bytedance/msdk/core/no/d;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->dq:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/d;->dq:Ljava/lang/String;

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->d:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->d:I

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->ox:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->ox:I

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->p:J

    iput-wide v1, v0, Lcom/bytedance/msdk/core/no/d;->p:J

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->s:J

    iput-wide v1, v0, Lcom/bytedance/msdk/core/no/d;->s:J

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->iw:J

    iput-wide v1, v0, Lcom/bytedance/msdk/core/no/d;->iw:J

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->mn:J

    iput-wide v1, v0, Lcom/bytedance/msdk/core/no/d;->mn:J

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->ia:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/d;->ia:Ljava/lang/String;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->fw:J

    iput-wide v1, v0, Lcom/bytedance/msdk/core/no/d;->fw:J

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->k:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->k:I

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/d;->r:Ljava/lang/String;

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->cd:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->cd:I

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->gh:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/d;->gh:Ljava/lang/String;

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->i:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->i:I

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->le:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->le:I

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->wp:Ljava/lang/String;

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/d;->wp:Ljava/lang/String;

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->e:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->e:I

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->kx:J

    iput-wide v1, v0, Lcom/bytedance/msdk/core/no/d;->kx:J

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->bl:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->bl:I

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->n:D

    iput-wide v1, v0, Lcom/bytedance/msdk/core/no/d;->n:D

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->u:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->u:I

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->c:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->c:I

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->ce:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->ce:I

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->op:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->op:I

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->ir:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->ir:I

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->nh:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->nh:I

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->j:Lcom/bytedance/msdk/core/kk/mn;

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/d;->j:Lcom/bytedance/msdk/core/kk/mn;

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->wn:Lcom/bytedance/msdk/core/kk/kk;

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/d;->wn:Lcom/bytedance/msdk/core/kk/kk;

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->er:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->er:I

    iget-boolean v1, p0, Lcom/bytedance/msdk/core/no/d;->h:Z

    iput-boolean v1, v0, Lcom/bytedance/msdk/core/no/d;->h:Z

    iget-boolean v1, p0, Lcom/bytedance/msdk/core/no/d;->ji:Z

    iput-boolean v1, v0, Lcom/bytedance/msdk/core/no/d;->ji:Z

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->vf:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/d;->vf:Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->mp:D

    iput-wide v1, v0, Lcom/bytedance/msdk/core/no/d;->mp:D

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->f:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->f:I

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->kk:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/d;->kk:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->o:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/d;->o:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->jy:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->jy:I

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->ig:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/d;->ig:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->ds:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/d;->ds:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->no:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/bytedance/msdk/core/no/d;->no:Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->ob:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->ob:I

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->l:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->l:I

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->q:D

    iput-wide v1, v0, Lcom/bytedance/msdk/core/no/d;->q:D

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->by:J

    iput-wide v1, v0, Lcom/bytedance/msdk/core/no/d;->by:J

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->t:D

    iput-wide v1, v0, Lcom/bytedance/msdk/core/no/d;->t:D

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->gx:D

    iput-wide v1, v0, Lcom/bytedance/msdk/core/no/d;->gx:D

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->xz:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->xz:I

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->yy:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->yy:I

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->v:I

    iput v1, v0, Lcom/bytedance/msdk/core/no/d;->v:I

    return-object v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->op:I

    return-void
.end method

.method public fw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->ce:I

    return v0
.end method

.method public fw(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->ir:I

    return-void
.end method

.method public gh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->wp:Ljava/lang/String;

    return-object v0
.end method

.method public gh(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->c:I

    return-void
.end method

.method public gx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->r:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->fw:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->kx:J

    return-wide v0
.end method

.method public ia()Lcom/bytedance/msdk/core/kk/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->j:Lcom/bytedance/msdk/core/kk/mn;

    return-object v0
.end method

.method public ia(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->ce:I

    return-void
.end method

.method public ig(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->k:I

    return-void
.end method

.method public ig()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->nh:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public iw()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->ob:I

    return v0
.end method

.method public iw(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/no;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->kk:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->kk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    :goto_0
    return-object v1
.end method

.method public iw(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->xz:I

    return-void
.end method

.method public iw(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/no/d;->iw:J

    return-void
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->iw:J

    return-wide v0
.end method

.method public ji()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->cd:I

    return v0
.end method

.method public jy()Lcom/bytedance/msdk/core/no/d;
    .locals 4

    invoke-static {}, Lcom/bytedance/msdk/ia/ig;->dq()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/core/no/d;

    invoke-direct {v1}, Lcom/bytedance/msdk/core/no/d;-><init>()V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->dq:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/d;->dq:Ljava/lang/String;

    const-string v2, "mRitId"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->d:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->d:I

    const-string v2, "mRitType"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->ox:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->ox:I

    const-string v2, "mLookType"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/msdk/core/no/d;->p:J

    iput-wide v2, v1, Lcom/bytedance/msdk/core/no/d;->p:J

    const-string v2, "mMinWaitTime"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/msdk/core/no/d;->s:J

    iput-wide v2, v1, Lcom/bytedance/msdk/core/no/d;->s:J

    const-string v2, "mLayerTimeOut"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/msdk/core/no/d;->iw:J

    iput-wide v2, v1, Lcom/bytedance/msdk/core/no/d;->iw:J

    const-string v2, "mTotalTimeOut"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/msdk/core/no/d;->mn:J

    iput-wide v2, v1, Lcom/bytedance/msdk/core/no/d;->mn:J

    const-string v2, "mCacheTimeOut"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->ia:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/d;->ia:Ljava/lang/String;

    const-string v2, "mVersion"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/msdk/core/no/d;->fw:J

    iput-wide v2, v1, Lcom/bytedance/msdk/core/no/d;->fw:J

    const-string v2, "mWaterFallId"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->k:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->k:I

    const-string v2, "reqType"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->r:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/d;->r:Ljava/lang/String;

    const-string v2, "mWaterfallAbTestParam"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->cd:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->cd:I

    const-string v2, "segmentId"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->gh:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/d;->gh:Ljava/lang/String;

    const-string v2, "segmentVersion"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->i:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->i:I

    const-string v2, "preLoadSortControl"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->le:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->le:I

    const-string v2, "preShowSortControl"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->wp:Ljava/lang/String;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/d;->wp:Ljava/lang/String;

    const-string v2, "waterfallExtra"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->e:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->e:I

    const-string v2, "mMultilevelAfterP"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/msdk/core/no/d;->kx:J

    iput-wide v2, v1, Lcom/bytedance/msdk/core/no/d;->kx:J

    const-string v2, "mMultilevelTimeOut"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->bl:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->bl:I

    const-string v2, "mRefreshTime"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/msdk/core/no/d;->n:D

    iput-wide v2, v1, Lcom/bytedance/msdk/core/no/d;->n:D

    const-string v2, "mBidFloor"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->u:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->u:I

    const-string v2, "mParallelType"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->c:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->c:I

    const-string v2, "mReqParallelNum"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->ce:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->ce:I

    const-string v2, "mAdCount"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->op:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->op:I

    const-string v2, "serverSideVerifyPreRequestTime"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->ir:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->ir:I

    const-string v2, "serverSideRewardType"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->nh:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->nh:I

    const-string v2, "mAdPrime"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->yy:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->yy:I

    const-string v2, "mRefreshNum"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->xz:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->xz:I

    const-string v2, "mIsRefresh"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->j:Lcom/bytedance/msdk/core/kk/mn;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/d;->j:Lcom/bytedance/msdk/core/kk/mn;

    const-string v2, "mIntervalFreqctlBean"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/core/no/d;->wn:Lcom/bytedance/msdk/core/kk/kk;

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/d;->wn:Lcom/bytedance/msdk/core/kk/kk;

    const-string v2, "mIntervalPacingBean"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->er:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->er:I

    const-string v2, "mWaterFallTimingMode"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/msdk/core/no/d;->by:J

    iput-wide v2, v1, Lcom/bytedance/msdk/core/no/d;->by:J

    const-string v2, "mReqInterval"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/msdk/core/no/d;->t:D

    iput-wide v2, v1, Lcom/bytedance/msdk/core/no/d;->t:D

    const-string v2, "mTotalTimeoutRate"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/bytedance/msdk/core/no/d;->gx:D

    iput-wide v2, v1, Lcom/bytedance/msdk/core/no/d;->gx:D

    const-string v2, "mLayerTimeoutRate"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/bytedance/msdk/core/no/d;->ds:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/d;->ds:Ljava/util/Map;

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->ob:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->ob:I

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->l:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->l:I

    iget-wide v2, p0, Lcom/bytedance/msdk/core/no/d;->q:D

    iput-wide v2, v1, Lcom/bytedance/msdk/core/no/d;->q:D

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/bytedance/msdk/core/no/d;->no:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lcom/bytedance/msdk/core/no/d;->no:Ljava/util/Map;

    const-string v2, "AdsenseRitConfig"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->d(Ljava/util/List;Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/msdk/core/no/d;->v:I

    iput v2, v1, Lcom/bytedance/msdk/core/no/d;->v:I

    const-string v2, "mBehaviorTTL"

    invoke-static {v0, v2}, Lcom/bytedance/msdk/ia/ig;->dq(Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public jy(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->ox:I

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->f:I

    return v0
.end method

.method public kk(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->dq:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/bytedance/msdk/core/o/p;->dq(Ljava/lang/String;ILjava/util/Map;)I

    move-result p1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->bl:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return p1

    :cond_0
    iget p1, p0, Lcom/bytedance/msdk/core/no/d;->bl:I

    return p1
.end method

.method public kk()Lcom/bytedance/msdk/core/kk/kk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->wn:Lcom/bytedance/msdk/core/kk/kk;

    return-object v0
.end method

.method public kx()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->o:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->no:Ljava/util/Map;

    return-object v0
.end method

.method public le()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->k:I

    return v0
.end method

.method public mn()I
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->l:I

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public mn(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->yy:I

    return-void
.end method

.method public mn(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/no/d;->mn:J

    return-void
.end method

.method public mp()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->xz:I

    return v0
.end method

.method public mp(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->cd:I

    return-void
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/no/d;->h:Z

    return v0
.end method

.method public nh()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->mn:J

    return-wide v0
.end method

.method public no(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->e:I

    return-void
.end method

.method public no()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->u:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->bl:I

    return-void
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->er:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ob()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->ir:I

    return v0
.end method

.method public op()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/core/no/d;->ji:Z

    return v0
.end method

.method public ox()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->t:D

    return-wide v0
.end method

.method public ox(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/no/d;->n:D

    return-void
.end method

.method public ox(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->l:I

    return-void
.end method

.method public ox(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/no/d;->fw:J

    return-void
.end method

.method public ox(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/d;->ia:Ljava/lang/String;

    return-void
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->by:J

    return-wide v0
.end method

.method public p(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/no/d;->mp:D

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->nh:I

    return-void
.end method

.method public p(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/no/d;->p:J

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/d;->dq:Ljava/lang/String;

    return-void
.end method

.method public q()I
    .locals 2

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->yy:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public q(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->d:I

    return-void
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->e:I

    return v0
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->v:I

    return-void
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

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->ds:Ljava/util/Map;

    return-object v0
.end method

.method public s(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/no/d;->q:D

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/core/no/d;->er:I

    return-void
.end method

.method public s(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/msdk/core/no/d;->s:J

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/no/d;->r:Ljava/lang/String;

    return-void
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->kk:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdsenseRitConfig{mRitId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mIsSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasServerbidding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/msdk/core/no/d;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasClientOrMultiLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/msdk/core/no/d;->ji:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLookType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->ox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinWaitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLayerTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->iw:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterFallConfigList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->kk:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterFallConfMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->o:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLoadSortLevelList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->ig:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentCommonAdMaxCpm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/msdk/core/no/d;->mp:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalLoadLevelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->jy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalWaterFallCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaterfallAbTestParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/core/no/d;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServerSideVerifyPreRequestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->op:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServerSideVerifyRewardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/msdk/core/no/d;->ir:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lg/awf;->s(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/no/d;->ig:Ljava/util/List;

    return-object v0
.end method

.method public uh()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->c:I

    return v0
.end method

.method public vf()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->op:I

    return v0
.end method

.method public wn()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->s:J

    return-wide v0
.end method

.method public wp()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/msdk/core/no/d;->mp:D

    return-wide v0
.end method

.method public xz()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/core/no/d;->v:I

    return v0
.end method

.class public Lcom/bytedance/sdk/openadsdk/iw/d/d;
.super Ljava/lang/Object;


# static fields
.field private static final dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bykv/vk/openvk/component/video/api/d/dq;",
            "Lcom/bytedance/sdk/openadsdk/iw/ox/fw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq:Ljava/util/Map;

    return-void
.end method

.method public static synthetic d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->p(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V
    .locals 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->p()Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->s()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    cmp-long v8, v2, v6

    if-gtz v8, :cond_3

    goto :goto_0

    :cond_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/iw/ox/ia;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/iw/ox/ia;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/iw/ox/ia;->dq(J)V

    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/iw/ox/ia;->d(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->ox()I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v5

    invoke-static {v0, p0, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v4, "EXTRA_PLAY_ACTION"

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lorg/json/JSONObject;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-direct {v4, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ig()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq(Z)V

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ia()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_pause"

    invoke-static {v4, p1, p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;

    const-string v1, "play_start"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/iw/d/d$1;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public static d(Lcom/bytedance/sdk/openadsdk/iw/ox/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/iw/ox/d<",
            "Lcom/bytedance/sdk/openadsdk/iw/ox/mp;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_success"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;)V

    return-void
.end method

.method private static d(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)J
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;)Lcom/bykv/vk/openvk/component/video/api/ox/p;
    .locals 3

    const-class v0, Lcom/bytedance/sdk/openadsdk/iw/d/d;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->p()Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "feed_break"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string p0, "feed_play"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p0, "feed_over"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    const-string p0, "play_break"

    return-object p0

    :pswitch_1
    const-string p0, "play"

    return-object p0

    :pswitch_2
    const-string p0, "play_over"

    return-object p0

    :cond_5
    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x61fc1d2b -> :sswitch_2
        -0x61fbcecb -> :sswitch_1
        0x21bf731e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic dq()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq:Ljava/util/Map;

    return-object v0
.end method

.method public static dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "session_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-lez p2, :cond_1

    const-string p1, "play_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "is_audio"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->q()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->wp()Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object p0

    const-string p1, "codec"

    const-string p2, "h265"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->k()Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    const-string p1, "video_resolution"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->kk()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "video_size"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->s()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "video_url"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ig()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "player_type"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "play_speed_ratio"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->ia()F

    move-result p2

    float-to-double p2, p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mn()D

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmpl-double p3, p1, v1

    if-lez p3, :cond_4

    const-string p1, "start"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->mn()D

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_4
    if-eqz p4, :cond_5

    const-string p0, "dynamic_join_type"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kr()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-object v0
.end method

.method public static dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V
    .locals 7

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->p()Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->s()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ig()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    :cond_4
    new-instance v2, Lcom/bytedance/sdk/openadsdk/iw/ox/kk;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/kk;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->mp()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/iw/ox/kk;->dq(I)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/kk;->d(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->dq()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/kk;->dq(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->ox()I

    move-result v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v4

    invoke-static {v0, p0, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v3, "EXTRA_PLAY_START"

    invoke-virtual {v0, v3}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lorg/json/JSONObject;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-direct {v3, v1, v0, p0, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ig()Z

    move-result p0

    invoke-virtual {v3, p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq(Z)V

    const-string p0, "feed_play"

    invoke-static {v1, p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;Ljava/lang/String;)V
    .locals 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->p()Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->s()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    goto :goto_0

    :cond_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/iw/ox/jy;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/iw/ox/jy;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/iw/ox/jy;->dq(J)V

    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/iw/ox/jy;->d(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->p()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/jy;->dq(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->s()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/jy;->d(I)V

    invoke-virtual {v6, p2}, Lcom/bytedance/sdk/openadsdk/iw/ox/jy;->dq(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->ox()I

    move-result p2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v4

    invoke-static {v0, p0, p2, v4, v1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p2, "EXTRA_PLAY_START"

    invoke-virtual {v0, p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lorg/json/JSONObject;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-direct {v0, v1, p2, p0, v6}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ig()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq(Z)V

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "duration"

    invoke-virtual {p0, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ia()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "play_error"

    invoke-static {v0, p1, p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static dq(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/component/video/api/d/dq;",
            "Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->p()Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->s()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_3

    goto :goto_1

    :cond_3
    new-instance v7, Lcom/bytedance/sdk/openadsdk/iw/ox/s;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/iw/ox/s;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/iw/ox/s;->d(J)V

    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/iw/ox/s;->dq(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->kk()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/iw/ox/s;->dq(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->o()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/iw/ox/s;->d(I)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->ox()I

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v6

    invoke-static {v1, v0, v5, v6, v2}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lorg/json/JSONObject;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p2

    new-instance v5, Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-direct {v5, v2, p2, v0, v7}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ig()Z

    move-result p2

    invoke-virtual {v5, p2}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq(Z)V

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ia()I

    move-result p1

    const-string v0, "percent"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v3, v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/wp/mp;->dq(JLcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    const-string p1, "feed_break"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, p2}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method private static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/iw/d/d$3;

    invoke-direct {v1, p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d$3;-><init>(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    const-string p0, "pangle_video_play_state"

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/iw/ox/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/iw/ox/d<",
            "Lcom/bytedance/sdk/openadsdk/iw/ox/ig;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_start"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;)V

    return-void
.end method

.method private static dq(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->s(Lcom/bytedance/sdk/openadsdk/iw/ox/d;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "draw_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "embeded_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "stream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "customer_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/iw/d/d$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/iw/ox/d;)V

    invoke-static {v0, v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x352ab080 -> :sswitch_2
        -0x2a77c376 -> :sswitch_1
        0x72060cfe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static dq(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_3

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->d(Lcom/bykv/vk/openvk/component/video/api/ox/p;)J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->mp()Z

    move-result v2

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->iw()I

    move-result v3

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->ig()J

    move-result-wide v2

    long-to-int v3, v2

    :cond_0
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->d()I

    move-result p2

    if-lez p2, :cond_1

    move v3, p2

    :cond_1
    int-to-long v2, v3

    cmp-long p2, p0, v2

    if-ltz p2, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    if-ne p0, v1, :cond_4

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Z

    move-result p0

    return p0

    :cond_4
    return v0
.end method

.method public static iw(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V
    .locals 7

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->no()I

    move-result v0

    if-gtz v0, :cond_1

    const-string p0, "VideoEventManager"

    const-string p1, "Cancel log report when buffer count is 0"

    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->p()Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->s()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_4

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/bytedance/sdk/openadsdk/iw/ox/q;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/q;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/iw/ox/q;->dq(J)V

    invoke-virtual {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/iw/ox/q;->d(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->no()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/iw/ox/q;->dq(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->ox()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v3

    invoke-static {v0, p0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "EXTRA_PLAY_ACTION"

    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lorg/json/JSONObject;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-direct {v2, v1, v0, p0, v4}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ig()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq(Z)V

    const-string p0, "play_buffer"

    invoke-static {v2, p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static ox(Lcom/bykv/vk/openvk/component/video/api/ox/p;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->wp()Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->k()Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->iw()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    :cond_2
    return-wide v0
.end method

.method public static ox(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V
    .locals 9

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->p()Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->s()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    cmp-long v8, v2, v6

    if-gtz v8, :cond_3

    goto :goto_0

    :cond_3
    new-instance v6, Lcom/bytedance/sdk/openadsdk/iw/ox/iw;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/iw/ox/iw;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/iw/ox/iw;->dq(J)V

    invoke-virtual {v6, v4, v5}, Lcom/bytedance/sdk/openadsdk/iw/ox/iw;->d(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->ox()I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v5

    invoke-static {v0, p0, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v4, "EXTRA_PLAY_ACTION"

    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lorg/json/JSONObject;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-direct {v4, v1, v0, p0, v6}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ig()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq(Z)V

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ia()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "feed_continue"

    invoke-static {v4, p1, p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static ox(Lcom/bytedance/sdk/openadsdk/iw/ox/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/iw/ox/d<",
            "Lcom/bytedance/sdk/openadsdk/iw/ox/no;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_error"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;)V

    return-void
.end method

.method private static p(Lcom/bykv/vk/openvk/component/video/api/ox/p;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->fw()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V
    .locals 10

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->p()Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->s()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox()J

    move-result-wide v6

    new-instance p0, Lcom/bytedance/sdk/openadsdk/iw/ox/ox;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/ox;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/bytedance/sdk/openadsdk/iw/ox/ox;->dq(J)V

    invoke-virtual {p0, v6, v7}, Lcom/bytedance/sdk/openadsdk/iw/ox/ox;->d(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->iw()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/ox;->dq(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->mn()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/ox;->d(I)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->ox()I

    move-result v0

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v6

    invoke-static {v2, v1, v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "EXTRA_PLAY_START"

    invoke-virtual {v2, v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lorg/json/JSONObject;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-direct {v2, v3, v1, v0, p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ig()Z

    move-result p0

    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq(Z)V

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "percent"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ia()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "endcard_skip"

    invoke-static {v2, p1, p0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static p(Lcom/bytedance/sdk/openadsdk/iw/ox/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/iw/ox/d<",
            "Lcom/bytedance/sdk/openadsdk/iw/ox/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "load_video_cancel"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->d(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;)V

    return-void
.end method

.method public static s(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V
    .locals 10

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->iw(Lcom/bykv/vk/openvk/component/video/api/d/dq;Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;)V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->p()Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->s()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->dq()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ox()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gtz v9, :cond_3

    goto :goto_1

    :cond_3
    new-instance v7, Lcom/bytedance/sdk/openadsdk/iw/ox/mn;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/iw/ox/mn;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->d()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/sdk/openadsdk/iw/ox/mn;->d(J)V

    invoke-virtual {v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/iw/ox/mn;->dq(J)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->o()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/iw/ox/mn;->dq(I)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->ox()I

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->cd()I

    move-result v6

    invoke-static {v1, v0, v5, v6, v2}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Ljava/lang/String;IILcom/bytedance/sdk/openadsdk/core/r/j;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "EXTRA_PLAY_ACTION"

    invoke-virtual {v1, v5}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->s(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lorg/json/JSONObject;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/bytedance/sdk/openadsdk/iw/ox/d;

    invoke-direct {v6, v2, v5, v0, v7}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/ox/p;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ig()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq(Z)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "duration"

    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/iw/ox/fw$dq;->ia()I

    move-result p1

    const-string v5, "percent"

    invoke-virtual {v0, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v3, v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/wp/mp;->dq(JLcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bykv/vk/openvk/component/video/api/ox/p;)V

    const-string p1, "feed_over"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v0}, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq(Lcom/bytedance/sdk/openadsdk/iw/ox/d;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/iw/d/d;->dq:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method private static s(Lcom/bytedance/sdk/openadsdk/iw/ox/d;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->s()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/iw/ox/d;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ds()Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v2, p0, :cond_5

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "content_did"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const-string v8, "content_utmsource"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const-string v8, "content_sdk_version"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_4

    const/4 v5, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    return v6

    :cond_6
    return v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_7
    return v0
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/live/dq/s;
.super Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;-><init>()V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "TTLiveSDkBridge"

    const-string v1, ""

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/live/dq/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :try_start_0
    const-string p2, "sslocal://webcast_room"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "link: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "link: null"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V
    .locals 7

    const-string v0, "IESLiveEffectAdTrackExtraServiceKey"

    const-string v1, "request_id"

    const-string v2, "enter_method"

    const-string v3, "enter_from_merge"

    const-string v4, "room_id"

    :try_start_0
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez v5, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, p2, v5}, Lcom/bytedance/sdk/openadsdk/core/live/dq/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "anchor_id"

    const-string v6, "owner_open_id"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "action_type"

    const-string v3, "click"

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "duration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v5, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "is_other_channel"

    const-string p4, "union_ad"

    invoke-interface {v5, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v5, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p4

    iget-object v0, p4, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p4, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p4}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const-class p2, Ljava/lang/Void;

    const/4 p4, 0x4

    invoke-interface {p3, p4, p1, p2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ig;->ox()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "TTInnerLiveHelper"

    const-string p3, "Throwable : "

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/live/dq/s;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/live/dq/s;->d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V

    return-void
.end method


# virtual methods
.method public Q_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b_(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 p1, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return p1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "room_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Lg/hat;->o(II)V

    iget-object v4, v3, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-interface {v2, v4, v0, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v0

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    const-string v0, "TTLiveSDkBridge"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v1
.end method

.method public d()I
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lg/hat;->o(II)V

    invoke-virtual {v3}, Lg/hat;->k()Lg/cpo;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x3

    invoke-interface {v2, v5, v3, v4}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v2, "TTLiveSDkBridge"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method

.method public d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I
    .locals 0
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

    const/4 p1, -0x1

    return p1
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I
    .locals 9
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

    const/4 v0, -0x1

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->a_(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    const-string v2, "TTLiveSDkBridge"

    if-nez v1, :cond_1

    const-string p1, "mata has not le property"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "event_tag"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->po()I

    move-result v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/s;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const/4 p1, 0x7

    if-ne v6, p1, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x2

    const/4 v8, 0x2

    :goto_2
    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;III)V

    return v1

    :cond_4
    move-object v3, p0

    move-object v4, p2

    iget-object p2, v3, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p2, :cond_9

    iget-object p2, v3, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    invoke-direct {p0, v4, p3}, Lcom/bytedance/sdk/openadsdk/core/live/dq/s;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    iget-object v1, v0, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v1, v7, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p3

    const-class v0, Ljava/lang/Integer;

    invoke-interface {p2, v7, p3, v0}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0, v4, v7}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;I)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p2

    if-nez p2, :cond_5

    :try_start_0
    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;

    invoke-direct {p3}, Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;-><init>()V

    invoke-virtual {p3, v5}, Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;

    move-result-object p3

    invoke-virtual {p3, p1, v4}, Lcom/bytedance/sdk/openadsdk/core/live/ox/dq;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_5
    :goto_3
    move p1, p2

    goto :goto_5

    :cond_6
    const/4 p1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 p1, 0x3

    :goto_5
    if-nez v1, :cond_8

    const-string p2, "le openliv succ"

    goto :goto_6

    :cond_8
    const-string p2, "callR: "

    invoke-static {v1, p2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_6
    invoke-static {v2, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    move v8, p1

    goto :goto_7

    :cond_9
    const/4 v8, 0x1

    :goto_7
    move v7, v6

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;III)V

    return v1

    :cond_a
    :goto_8
    return v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/live/d/d;Z)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->nh()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "schema"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->nh()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p3, v0, v1}, Lg/hat;->o(II)V

    iget-object v0, p3, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p3}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-interface {p1, v0, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_4
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public dq(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "schema"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v0, v3}, Lg/hat;->o(II)V

    iget-object v3, v2, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-interface {p1, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    return v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "request_id"

    const-string v1, "pangle_live_room_data"

    const-string v2, "owner_open_id"

    const-string v3, "log_extra"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v5, "room_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ap()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v5, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Lg/hat;->o(II)V

    invoke-virtual {v7}, Lg/hat;->k()Lg/cpo;

    move-result-object v7

    const/4 v9, 0x1

    const-class v10, Ljava/lang/String;

    invoke-interface {v6, v9, v7, v10}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v11

    invoke-virtual {v11, v8, v5}, Lg/hat;->o(II)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v5

    invoke-virtual {v11, v9, v5}, Lg/hat;->i(IZ)V

    invoke-virtual {v11}, Lg/hat;->k()Lg/cpo;

    move-result-object v5

    const/4 v8, 0x2

    invoke-interface {v7, v8, v5, v10}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "enter_from_merge"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "enter_method"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v5, "host"

    const-string v6, "aweme"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "is_other_channel"

    const-string v6, "union_ad"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->nl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5, p2}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "ecom_live_params"

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->kf()Lcom/bytedance/sdk/openadsdk/core/r/fw;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->dq()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/fw;->dq()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    const-string v5, "ad_data_params"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "ad_event_aid"

    const-string v8, "aid"

    invoke-virtual {p2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ad_event_source"

    const-string v8, "source"

    invoke-static {p1, v8}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ad_event_gd_label"

    const-string v8, "gd_label"

    invoke-static {p1, v8}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ad_event_union_user_id"

    const-string v8, "union_user_id"

    invoke-static {p1, v8}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ad_event_app_siteid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/no;->mp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ad_event_live_type"

    const-string v8, "1"

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v3, "cid"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "creativeID"

    invoke-virtual {v6, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "creative_id"

    invoke-virtual {v4, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "IESLiveEffectAdTrackExtraServiceKey"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p2, "user_id"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-virtual {v4, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/live/ox;->dq(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_2
    return-object v4
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V
    .locals 7

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/live/dq/s$1;

    const-string v2, "csj_live_log_event_v2"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/live/dq/s$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/live/dq/s;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->a_(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public iw()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v3}, Lg/hat;->o(II)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-interface {v1, v4, v2, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "TTLiveSDkBridge"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mn()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->ox:Lorg/json/JSONObject;

    return-object v0
.end method

.method public ox()V
    .locals 0

    return-void
.end method

.method public p()I
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/dq/dq;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Lg/hat;->o(II)V

    invoke-virtual {v3}, Lg/hat;->k()Lg/cpo;

    move-result-object v3

    const-class v5, Ljava/lang/Object;

    invoke-interface {v0, v4, v3, v5}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "TTLiveSDkBridge"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    return v1
.end method

.method public s()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/s;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

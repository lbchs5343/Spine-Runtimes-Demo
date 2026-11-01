.class public Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p/dq/d;


# instance fields
.field protected dq:Lcom/bytedance/sdk/openadsdk/core/p/p/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/p/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/d;

    return-void
.end method

.method private d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 11

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq()Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x7

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq()Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->d(ZLjava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->f()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->h()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    cmp-long v10, v7, v5

    if-gez v10, :cond_4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/p/ox/p;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/p/ox/p;->dq(Ljava/lang/String;)V

    return v9

    :cond_4
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x7

    :cond_5
    invoke-static {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;I)I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_6

    return v9

    :cond_6
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->k()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hg()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hg()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return v1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Lcom/bytedance/sdk/openadsdk/core/r/dq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Ljava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Ljava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;)V
    .locals 5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->eo()Lcom/bytedance/sdk/openadsdk/core/r/h;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/r/h;->dq(Z)V

    :cond_1
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ve()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/p/p/ox;)V
    .locals 2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->dq(ILcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/p;

    move-result-object v0

    const-string v1, "material_meta"

    invoke-virtual {v0, v1, p2}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "ad_slot"

    invoke-virtual {v0, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/ox/p;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$4;

    invoke-direct {p1, p0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Lcom/bytedance/sdk/openadsdk/core/p/p/ox;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/p/d;->dq(Lcom/bykv/vk/openvk/component/video/api/ox/p;Lcom/bykv/vk/openvk/component/video/api/s/dq$dq;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq()Z

    move-result p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$5;

    invoke-direct {v0, p0, p3}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Lcom/bytedance/sdk/openadsdk/core/p/p/ox;)V

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq;->dq(ZLcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/dq$dq;)V

    return-void
.end method

.method private dq(Ljava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 1

    invoke-virtual {p4, p2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-virtual {p4, p3}, Lcom/bytedance/sdk/openadsdk/core/r/d;->d(Ljava/lang/String;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p3, "cache_strategy"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq()Z

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->dq(Z)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->mp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "rit"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p4, p2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lorg/json/JSONObject;)V

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method private dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wq()Lcom/bytedance/sdk/openadsdk/core/r/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ji;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/le/ox;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/le/ox;-><init>(Z)V

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/le/ox;->dq(Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/le/ox;->dq(I)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/le/ox;->ox(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/le/ox;->p(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/le/ox;->d(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ia/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ji;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/iw/o;->dq(Lcom/bytedance/sdk/component/iw/f;)Lcom/bytedance/sdk/component/iw/kk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;)Lcom/bytedance/sdk/openadsdk/core/p/p/ox;
    .locals 9

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p3, :cond_1

    move-object p3, v1

    goto :goto_0

    :cond_1
    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/r/nh;->f:Landroid/os/Bundle;

    :goto_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    const-string v3, "is_preload"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const-string v4, "is_playAgain"

    if-eqz p3, :cond_3

    invoke-virtual {p3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const-string v5, "start_time"

    const-wide/16 v6, 0x0

    if-nez p3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p3, v5, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    :goto_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p3}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->d(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v8

    if-eqz v8, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->xo()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0, p1, p4}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;)V

    if-eqz v3, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/d;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq()Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    move-result-object p1

    invoke-interface {p1, p4, p3}, Lcom/bytedance/sdk/openadsdk/core/p/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_7
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "cache_strategy"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq()Z

    move-result p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->dq(Z)I

    move-result p4

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "src_req_id"

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hz()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "is_map"

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ml()Z

    move-result p4

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p2

    const-string p4, "stats_reward_full_preload"

    invoke-virtual {p2, p3, p4, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v1

    :cond_8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "is_cache"

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, p3, p4, p5, p1}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Landroid/os/Bundle;)Lcom/bytedance/sdk/openadsdk/core/p/p/ox;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_4
    const/4 p1, -0x4

    if-eqz p5, :cond_a

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p5, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/p/p/s;->dq(ILjava/lang/String;)V

    :cond_a
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p3, p1, p4, p2}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Ljava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-object v1

    :cond_b
    :goto_5
    const/4 p1, -0x3

    if-eqz p5, :cond_c

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p5, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/p/p/s;->dq(ILjava/lang/String;)V

    :cond_c
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p3, p1, p4, p2}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Ljava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-object v1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Landroid/os/Bundle;)Lcom/bytedance/sdk/openadsdk/core/p/p/ox;
    .locals 10

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    const-string v0, "is_cache"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v0, "is_playAgain"

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v0, "start_time"

    invoke-virtual {p4, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v5, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d(Z)V

    if-eqz v2, :cond_0

    const/16 p4, 0x65

    goto :goto_0

    :cond_0
    const/16 p4, 0x66

    :goto_0
    invoke-virtual {v5, p4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ix()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p4, v0, v3

    if-gtz p4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v3, 0xa037a0

    add-long/2addr v0, v3

    invoke-virtual {v5, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq(J)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ix()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-virtual {v5, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq(J)V

    :goto_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/t;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p4

    if-nez p4, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->iw()V

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;ZLcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;Lcom/bytedance/sdk/openadsdk/core/p/p/s;ZJ)V

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 2

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/ox;->d()V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Lcom/bytedance/sdk/openadsdk/core/p/p/ox;)V

    invoke-virtual {v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/playable/dq$dq;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/p/p/ox;)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p3, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/p/p/ox;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 4

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->tv()Lcom/bytedance/sdk/openadsdk/core/r/j$dq;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j$dq;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j$dq;->kk()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/q;)V

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->r(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/r/xi;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->dq(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->ox(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/q;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/r/xi;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->dq(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->d(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;->ox(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->p()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/q;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/nh;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->d:I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->no(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->no()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mn:I

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;

    invoke-direct {v3, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    :cond_3
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Ljava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object v0

    if-eqz p3, :cond_1

    const-string p3, "rewarded_video"

    goto :goto_0

    :cond_1
    const-string p3, "fullscreen_interstitial_ad"

    :goto_0
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object p3

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object p2

    const-string p3, "get_preload_ad"

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$2;

    invoke-direct {p3, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ig/dq$dq;->dq(Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    return-void
.end method

.method public dq()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Z
    .locals 1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V

    const/4 p1, 0x1

    return p1
.end method

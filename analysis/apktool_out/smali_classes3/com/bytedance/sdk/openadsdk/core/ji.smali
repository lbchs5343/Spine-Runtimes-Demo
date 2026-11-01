.class public Lcom/bytedance/sdk/openadsdk/core/ji;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ji$d;,
        Lcom/bytedance/sdk/openadsdk/core/ji$ox;,
        Lcom/bytedance/sdk/openadsdk/core/ji$p;,
        Lcom/bytedance/sdk/openadsdk/core/ji$dq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/h<",
        "Lcom/bytedance/sdk/openadsdk/core/ig/dq;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Ljava/util/concurrent/atomic/AtomicLong;

.field private final dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ji;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji;->dq:Landroid/content/Context;

    return-void
.end method

.method private static d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ji;->ox(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->gh()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "name"

    if-ge v2, v3, :cond_4

    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, ""

    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "value"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_6
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_5
    return-object p0
.end method

.method private d(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/iw;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1
.end method

.method private static d(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3

    const-string v0, "0"

    :try_start_0
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    const-string v2, "is_shake_ads"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/no;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    return-object p0

    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_2
    return-object p0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/iw;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "action"

    const-string v3, "dislike"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ad_sdk_version"

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/op;->ox:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ji;->dq:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/jy/d;->dq(Landroid/content/Context;Lorg/json/JSONObject;)V

    if-eqz p1, :cond_1

    const-string v2, "extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "other"

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->dq(Ljava/lang/String;)V

    :cond_0
    const-string v2, "dislike_source"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "comment"

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string p1, "filter_words"

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p2, "actions"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&timestamp="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&ext="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "timestamp"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "sign"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ext"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$ox;IJ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/kk/dq;->d()Lcom/bytedance/sdk/component/kk/d/s;

    move-result-object p3

    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/io;->mn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/io;->dq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lorg/json/JSONObject;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/kk/d/p;->s(Ljava/util/Map;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->dq()Landroid/os/Handler;

    move-result-object p2

    new-instance p5, Lcom/bytedance/sdk/openadsdk/core/ji$10;

    invoke-direct {p5, p0, p1, p4}, Lcom/bytedance/sdk/openadsdk/core/ji$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V

    invoke-virtual {p2, p5, p6, p7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/ji$12;

    invoke-direct {p2, p0, p1, p4}, Lcom/bytedance/sdk/openadsdk/core/ji$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;Ljava/lang/String;I)V
    .locals 9

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/r/d;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/r/d;-><init>()V

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    const/4 v0, 0x5

    if-ne p6, v0, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    :goto_0
    move-object v1, p0

    move-object v6, p2

    move v7, p3

    move-object v4, p4

    move-object v3, v2

    move-object v2, p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :goto_1
    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;ZLcom/bytedance/sdk/openadsdk/core/r/nh;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v8, v3

    move-object v5, v4

    move-object v3, v6

    move v4, v7

    if-eqz p1, :cond_1

    return-void

    :cond_1
    move-object v1, p0

    move-object v6, p5

    move v7, p6

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/r/d;)Lcom/bytedance/sdk/component/kk/d/s;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_2

    const/16 p1, -0xf

    :try_start_2
    invoke-virtual {v8, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v5, p1, p2, v8}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_3

    :cond_2
    :try_start_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ji$19;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v1, v5

    move-object v5, v3

    move-object v3, v1

    move-object v1, p0

    move v6, v4

    move-object v4, v2

    move-object v2, v8

    :try_start_4
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ji$19;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v8, v2

    move-object v5, v3

    :try_start_5
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->dq()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/s;->ox()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v8, v2

    move-object v5, v3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v1, p0

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v8, v3

    move-object v5, v4

    goto :goto_2

    :goto_3
    invoke-direct {p0, p1, v8, v5}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Ljava/lang/Throwable;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;)V

    return-void
.end method

.method private d(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/bytedance/sdk/openadsdk/core/h$ox<",
            "Lcom/bytedance/sdk/component/kk/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "/api/ad/union/sdk/apply_coupon/v2"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ir/wn;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/kk/dq;->iw()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/wn;-><init>(Lcom/bytedance/sdk/component/d/dq/ig;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    const-string v0, "coupon_apply"

    invoke-virtual {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/wn;->ox(Lorg/json/JSONObject;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/kk/d/p;->s(Ljava/util/Map;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ji$16;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ji$16;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    return-void
.end method

.method private d(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private d(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mp/ox;->dq()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/mp/ox;->dq(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mp/ox;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Ljava/lang/String;JZ)V

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/r/d;)Lcom/bytedance/sdk/component/kk/d/s;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v5, p6

    move-object v2, p7

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;IILcom/bytedance/sdk/openadsdk/core/h$d;)Lcom/bytedance/sdk/openadsdk/core/ji/d;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 p3, 0x1

    invoke-static {p5, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object p5

    invoke-virtual {p5}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object p5

    invoke-virtual {p5}, Lcom/bytedance/sdk/component/kk/dq;->d()Lcom/bytedance/sdk/component/kk/d/s;

    move-result-object p5

    invoke-static {p5, p4}, Lcom/bytedance/sdk/openadsdk/mn/p;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/mn/p;->dq(Lcom/bytedance/sdk/openadsdk/core/ji/d;)V

    const/4 p6, 0x0

    const/4 p7, 0x5

    if-ne v5, p7, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ji/d;->p()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ji/d;->p()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p5, p6}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ji/d;->ox()[B

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ji/d;->ox()[B

    move-result-object p2

    const-string v2, "application/octet-stream"

    invoke-virtual {p5, v2, p2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Ljava/lang/String;[B)V

    invoke-virtual {p5, p3}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Z)V

    goto :goto_0

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ji/d;->p()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    :goto_0
    if-ne v5, p7, :cond_4

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    :goto_1
    const-string p6, "doHttpReqSignReady"

    invoke-virtual {v3, p6, p3}, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object p6

    invoke-virtual {p6}, Lcom/bytedance/sdk/openadsdk/core/no;->mp()Ljava/lang/String;

    move-result-object p6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/no;->kk()Lcom/bytedance/sdk/openadsdk/f/d/ox/p;

    move-result-object v2

    invoke-static {p6, v2}, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/p;)Lcom/bytedance/sdk/openadsdk/dq/dq/dq;

    move-result-object p6

    const-string v2, "MSInst"

    invoke-virtual {v3, v2, p3}, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq(Ljava/lang/String;Z)V

    invoke-virtual {p6, p4, p2}, Lcom/bytedance/sdk/openadsdk/dq/dq/dq;->dq(Ljava/lang/String;[B)Ljava/util/Map;

    move-result-object p4

    const-string p6, "doHttpReqSign"

    invoke-virtual {v3, p6, p3}, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq(Ljava/lang/String;Z)V

    if-nez p4, :cond_5

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_5
    if-ne v5, p7, :cond_6

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Lcom/bytedance/sdk/openadsdk/tools/d;->dq(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p6

    if-eqz p6, :cond_6

    invoke-interface {p4, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_6
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/ir/u;->dq(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ji/d;->s()Ljava/util/Map;

    move-result-object p6

    const-string p7, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, p7, v1}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_7

    invoke-interface {p4, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p7

    if-lez p7, :cond_8

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/util/Map$Entry;

    invoke-interface {p7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/String;

    invoke-virtual {p5, v1, p7}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, p2, p6, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq([BLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ji/d;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/bytedance/sdk/component/kk/d/p;->s(Ljava/util/Map;)V

    const-string p1, "appendHeader"

    invoke-virtual {v3, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq(Ljava/lang/String;Z)V

    return-object p5
.end method

.method private dq(Lcom/bytedance/sdk/component/kk/d/p;)Lcom/bytedance/sdk/openadsdk/core/ji/dq;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d/p;->ox()Ljava/util/Map;

    move-result-object p1

    const-string v0, "load_time_model"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/ji/dq;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/ji/dq;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->ox(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ji/dq;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;-><init>()V

    return-object p1
.end method

.method private static dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "0"

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "is_shake_ads"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "value"

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/no;->d(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v4

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/no;->d(Ljava/lang/String;)V

    :goto_1
    const/4 v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :cond_6
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_7

    :goto_2
    return-object p0

    :cond_7
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method private dq(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/iw;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;->dq()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private dq([BLjava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ji/d;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/ji/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ji/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->ia(J)V

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    array-length p1, p1

    int-to-long v2, p1

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->kk(J)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/ji/d;->d()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->ox(J)V

    if-eqz p2, :cond_1

    const-string p1, "x-pglcypher"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->dq(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/ji/d;->dq()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->dq(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/kk;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    :goto_1
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->d(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->mc()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->dq(I)V

    const-string p1, "load_time_model"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private static dq(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->iw()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    const-string v5, "device_id"

    const-string v6, "name"

    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "game_adapter_did"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v0

    :cond_5
    :goto_2
    return-object p0
.end method

.method private static dq(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    const-string v2, "can_use_sensor"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    return-object p0

    :cond_1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "adv_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/io;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "site_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/io;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "page_url"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "log_extra"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;I)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "keywords"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/no;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "protection_of_minors"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/no;->ir()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->o(I)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ji;->dq:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/jy/d;->p(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "data"

    const-string v3, "[]"

    if-nez v1, :cond_2

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "name"

    const-string v5, "dynamic_slot_ab_extra"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "value"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-direct {p0, v0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, v0, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-object v0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ILcom/bytedance/sdk/openadsdk/core/r/nh;)Lorg/json/JSONObject;
    .locals 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "prime_rit"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->le()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "show_seq"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "adtype"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "themeStatus"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/no;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "download_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->iw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/tools/d;->dq()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ad_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "creative_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->iw()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "ext"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->iw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/tools/d;->dq(Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string v3, "preview_ads"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/tools/d;->dq()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/no;->uh()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/tools/d;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_5
    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq p2, v3, :cond_6

    if-ne p2, v1, :cond_8

    :cond_6
    if-eqz p3, :cond_7

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "publisher_timeout_control"

    iget-wide v7, p3, Lcom/bytedance/sdk/openadsdk/core/r/nh;->o:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "time_out_control"

    iget-wide v7, p3, Lcom/bytedance/sdk/openadsdk/core/r/nh;->no:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "time_out"

    iget-wide v7, p3, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ig:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "tmax"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v5, "splash_button_type"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    const/4 v5, 0x2

    const-string v6, "render_method"

    const-string v7, "accepted_size"

    if-eqz p3, :cond_e

    :try_start_1
    iget v8, p3, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mn:I

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v6, p3, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mn:I

    if-ne v6, v4, :cond_a

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->p(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(ILorg/json/JSONObject;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kk()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->o()I

    move-result v8

    invoke-direct {p0, v0, v7, v6, v8}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONObject;Ljava/lang/String;II)V

    goto :goto_1

    :cond_a
    if-ne v6, v5, :cond_f

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->no()F

    move-result v6

    const/4 v8, 0x0

    cmpg-float v6, v6, v8

    if-lez v6, :cond_c

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ig()F

    move-result v6

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_b

    goto :goto_0

    :cond_b
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ji;->dq:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->no()F

    move-result v8

    invoke-static {v6, v8}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/ji;->dq:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ig()F

    move-result v9

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-direct {p0, v0, v7, v6, v8}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONObject;Ljava/lang/String;FF)V

    goto :goto_1

    :cond_c
    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->p(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(ILorg/json/JSONObject;)V

    goto :goto_1

    :cond_d
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kk()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->o()I

    move-result v8

    invoke-direct {p0, v0, v7, v6, v8}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONObject;Ljava/lang/String;II)V

    goto :goto_1

    :cond_e
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kk()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->o()I

    move-result v8

    invoke-direct {p0, v0, v7, v6, v8}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONObject;Ljava/lang/String;II)V

    :cond_f
    :goto_1
    const-string v6, "ptpl_ids"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/d;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/d;

    move-result-object v7

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Lcom/bytedance/sdk/openadsdk/core/ox/d;->dq(Ljava/lang/String;I)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ptpl_ids_v3"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/d;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/d;

    move-result-object v7

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Lcom/bytedance/sdk/openadsdk/core/ox/d;->d(Ljava/lang/String;I)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "pos"

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->s(I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "is_support_dpl"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mp()Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "if_support_render_control"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->q()Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "support_icon_style"

    sget v7, Lcom/bytedance/sdk/openadsdk/core/op;->d:I

    const/16 v8, 0x170c

    if-lt v7, v8, :cond_10

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->bl()Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    goto :goto_2

    :cond_10
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eq p2, v3, :cond_11

    if-ne p2, v1, :cond_12

    :cond_11
    const-string v1, "splash_load_type"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v3

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->kk(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_12
    if-eq p2, v4, :cond_13

    if-ne p2, v5, :cond_14

    :cond_13
    const-string v1, "is_origin_ad"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_14
    if-eqz p3, :cond_15

    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mp:Lorg/json/JSONObject;

    if-eqz v1, :cond_15

    const-string v3, "session_params"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->jy()I

    move-result v1

    const/4 v3, 0x7

    if-ne p2, v3, :cond_16

    const/4 v1, 0x1

    :cond_16
    const/16 v3, 0x8

    if-ne p2, v3, :cond_19

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->fw(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/mp/s;->dq(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "refresh_control"

    if-eqz p2, :cond_18

    if-eqz v1, :cond_17

    :try_start_2
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ji$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ji$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;)V

    const-string v2, "refresh_max"

    invoke-virtual {p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->d(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;)V

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_17
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->tv()I

    move-result v1

    goto :goto_4

    :cond_18
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    :cond_19
    :goto_4
    if-eqz p3, :cond_1a

    iget-object p2, p3, Lcom/bytedance/sdk/openadsdk/core/r/nh;->iw:Lorg/json/JSONArray;

    if-eqz p2, :cond_1a

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->jy()I

    move-result v1

    :cond_1a
    const-string p2, "ad_count"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/s;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)I

    move-result p1

    if-ne p1, v4, :cond_1b

    const-string p2, "group_load_more"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1b
    return-object v0
.end method

.method private dq()V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ji;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ji;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->dq()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ji$21;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ji$21;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private dq(ILorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(I)Z

    move-result p1

    const-string v0, "accepted_size"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ji;->dq:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->p(Landroid/content/Context;)I

    move-result p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ji;->dq:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->s(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONObject;Ljava/lang/String;II)V

    return-void

    :cond_0
    const/16 p1, 0x280

    const/16 v1, 0x140

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONObject;Ljava/lang/String;II)V

    return-void
.end method

.method private dq(Lcom/bykv/vk/openvk/api/proto/Bridge;ILjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lg/hat;->o(II)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2, p3}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const/4 p3, 0x0

    const/16 v0, 0x2711

    invoke-interface {p1, v0, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private dq(Lcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x2710

    invoke-interface {p1, v1, p2, v0}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;II)V
    .locals 22

    move-object/from16 v7, p3

    move-object/from16 v6, p4

    move/from16 v11, p8

    const-string v12, "NetApiImpl"

    const-string v9, "reason: "

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/kk/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-interface {v6, v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s/d;->d()V

    return-void

    :cond_1
    const/4 v15, 0x1

    if-ne v11, v15, :cond_2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v5, p6

    move/from16 v4, p7

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ILcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne v11, v0, :cond_3

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v6, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p6

    move/from16 v4, p7

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ILcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/component/kk/d/p;)V

    return-void

    :cond_3
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p6

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/component/kk/d/p;)Lcom/bytedance/sdk/openadsdk/core/ji/dq;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->iw(J)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq()V

    :try_start_0
    invoke-virtual {v6}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x5

    if-ne v11, v13, :cond_8

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/kk/d;->o()[B

    move-result-object v3

    const-string v5, "get_ads"

    invoke-static {v6, v5, v15}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq(Lcom/bytedance/sdk/component/kk/d;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v5

    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v13, 0x0

    goto :goto_0

    :cond_4
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v13, v3

    :goto_0
    invoke-virtual {v7, v4}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    move-object v15, v8

    move-object/from16 v18, v12

    goto/16 :goto_b

    :cond_5
    if-nez v3, :cond_6

    const-wide/16 v13, 0x0

    goto :goto_1

    :cond_6
    array-length v3, v3

    int-to-long v13, v3

    :goto_1
    sget-object v3, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->dq:Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    move-object v3, v0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ji$24;

    move-object v5, v3

    move v3, v2

    const-string v2, "logAdapter"

    move-object/from16 v18, v5

    move-object v5, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/ji$24;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Ljava/lang/String;ZLjava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    goto :goto_2

    :cond_7
    move-object/from16 v18, v0

    move-object v5, v1

    move v3, v2

    :goto_2
    move-object v0, v5

    move-wide v1, v13

    move v13, v3

    :goto_3
    move-object/from16 v14, v18

    goto :goto_6

    :cond_8
    move-object/from16 v18, v0

    invoke-virtual {v7, v4}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->dq:Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;

    if-eqz v0, :cond_9

    const-string v1, "response:"

    invoke-virtual {v0, v12, v1}, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->p(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->dq:Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;

    invoke-virtual {v0, v12, v4}, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-wide/16 v1, 0x0

    :goto_4
    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    int-to-long v1, v1

    goto :goto_4

    :goto_5
    invoke-static {v0, v3, v15}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq(Lorg/json/JSONObject;ZZ)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v13, 0x0

    goto :goto_3

    :goto_6
    invoke-virtual {v14, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->mn(J)V

    if-nez v0, :cond_b

    invoke-static {v8, v7}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_b
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/mn/p;->dq(Lorg/json/JSONObject;)V

    move-object/from16 v3, p5

    invoke-static {v0, v3, v10}, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Lcom/bytedance/sdk/openadsdk/core/ji$dq;

    move-result-object v1

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->o:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Ljava/util/ArrayList;)V

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->kk:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->dq(Ljava/lang/String;)V

    iget v2, v1, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->p:I

    const/16 v3, 0x4e20

    if-eq v2, v3, :cond_c

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->iw:I

    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/openadsdk/core/r/d;->d(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->iw:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->p:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v0, v7}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_c
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    if-nez v2, :cond_d

    invoke-static {v8, v7}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_d
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->dq(Lorg/json/JSONObject;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->d(J)V

    if-eqz v10, :cond_e

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->kk()J

    move-result-wide v2

    iget-wide v4, v10, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ia:J

    sub-long/2addr v2, v4

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->dq:I

    int-to-long v4, v4

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->iw()J

    move-result-wide v16

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->kk()J

    move-result-wide v18

    sub-long v16, v16, v18

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->d()J

    move-result-wide v18

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->iw()J

    move-result-wide v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v18, v18, v20

    move-wide v5, v4

    move-object v15, v8

    move-wide v3, v2

    move-object v2, v7

    move-wide/from16 v7, v16

    move/from16 v17, v13

    move-object v13, v10

    move-wide/from16 v9, v18

    move-object/from16 v18, v12

    move-object v12, v1

    move-object/from16 v1, p0

    :try_start_1
    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;JJJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v2

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v7, v2

    goto/16 :goto_b

    :cond_e
    move-object v15, v8

    move-object/from16 v18, v12

    move/from16 v17, v13

    move-object v12, v1

    move-object v13, v10

    move-object/from16 v1, p0

    :goto_7
    :try_start_2
    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-interface {v15, v2, v7}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v13, :cond_10

    iget-object v4, v13, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->e(Ljava/lang/String;)V

    goto :goto_9

    :catchall_2
    move-exception v0

    goto/16 :goto_b

    :cond_10
    :goto_9
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/ji;->dq:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/s/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq()Lcom/bytedance/sdk/openadsdk/upie/d;

    move-result-object v4

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/ji;->dq:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/s/dq;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/upie/dq;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/bytedance/sdk/openadsdk/upie/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/upie/dq;)V

    goto :goto_8

    :cond_11
    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->ig()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s;->dq()Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-static/range {p7 .. p7}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    if-eq v11, v5, :cond_12

    const/4 v6, 0x1

    goto :goto_a

    :cond_12
    const/4 v6, 0x0

    :goto_a
    invoke-virtual {v14, v6}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->d(Z)V

    if-ne v11, v5, :cond_13

    if-eqz v17, :cond_14

    :cond_13
    const/4 v3, 0x1

    :cond_14
    invoke-virtual {v14, v3}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->dq(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/kk/d;->s()J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->s(J)V

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/kk/d;->iw()J

    move-result-wide v5

    invoke-virtual {v14, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->p(J)V

    iget v3, v12, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->dq:I

    int-to-long v5, v3

    invoke-virtual {v14, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->dq(J)V

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/kk/d;->no()Lcom/bytedance/sdk/component/d/dq/no;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-wide v5, v3, Lcom/bytedance/sdk/component/d/dq/no;->dq:J

    invoke-virtual {v14, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->o(J)V

    iget-wide v5, v3, Lcom/bytedance/sdk/component/d/dq/no;->d:J

    invoke-virtual {v14, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->no(J)V

    iget-wide v5, v3, Lcom/bytedance/sdk/component/d/dq/no;->ox:J

    invoke-virtual {v14, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->ig(J)V

    iget-wide v5, v3, Lcom/bytedance/sdk/component/d/dq/no;->p:J

    invoke-virtual {v14, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->mp(J)V

    iget-wide v5, v3, Lcom/bytedance/sdk/component/d/dq/no;->s:J

    invoke-virtual {v14, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->q(J)V

    :cond_15
    invoke-direct {v1, v13, v2, v4, v14}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ji/dq;)V

    :cond_16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/d;->dq()Lcom/bytedance/sdk/openadsdk/d/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/d/d;->dq(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/s/d;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :goto_b
    const-string v2, "get ad error: "

    move-object/from16 v3, v18

    invoke-static {v3, v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v15, v7}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;)V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq()V

    if-eqz p2, :cond_0

    const/16 p1, 0x25a

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    const/16 p1, 0x259

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "onFailure: "

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string p1, "NetApiImpl"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ILcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 6

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x9

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ads"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->e()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "creative"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "adm"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v5, v2, v4}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq(Lorg/json/JSONObject;ZZ)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    if-eqz p5, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p5, v0, v4, p6}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-static {v4, p2, p4}, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Lcom/bytedance/sdk/openadsdk/core/ji$dq;

    move-result-object v4

    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-static {v5, p3, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;II)V

    if-eqz p5, :cond_2

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-interface {p5, v4, p6}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p5, v0, v4, p6}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, v0, p1, p6}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p5, :cond_4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, v0, p1, p6}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    :cond_4
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ILcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/component/kk/d/p;)V
    .locals 24

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v3, p6

    const-string v12, "auction_price"

    const-string v13, "NetApiImpl"

    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v2, p0

    move-object/from16 v4, p7

    :try_start_0
    invoke-direct {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/component/kk/d/p;)Lcom/bytedance/sdk/openadsdk/core/ji/dq;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Ljava/lang/String;)V

    sget-object v5, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->dq:Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;

    if-eqz v5, :cond_0

    const-string v6, "response:"

    invoke-virtual {v5, v13, v6}, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->p(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->dq:Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;

    invoke-virtual {v5, v13, v4}, Lcom/bytedance/sdk/openadsdk/tools/LogAdapter;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "status_code"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x4e20

    if-ne v4, v7, :cond_6

    const-string v4, "adms"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static {v8, v5, v9}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq(Lorg/json/JSONObject;ZZ)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static/range {p5 .. p6}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_1
    move-object/from16 v8, p2

    invoke-static {v5, v8, v0}, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Lcom/bytedance/sdk/openadsdk/core/ji$dq;

    move-result-object v9

    iget-object v10, v9, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Ljava/util/ArrayList;)V

    iget v10, v9, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->p:I

    if-eq v10, v7, :cond_2

    invoke-virtual {v3, v10}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reason: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->iw:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  message: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->s:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->p:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_2
    iget-object v10, v9, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    if-nez v10, :cond_3

    invoke-static/range {p5 .. p6}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_3
    invoke-virtual {v10, v5}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->dq(Lorg/json/JSONObject;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    if-eqz v0, :cond_4

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->kk()J

    move-result-wide v18

    iget-wide v7, v0, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ia:J

    sub-long v18, v18, v7

    iget v7, v9, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->dq:I

    int-to-long v7, v7

    invoke-virtual {v14}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->kk()J

    move-result-wide v20

    sub-long v20, v15, v20

    sub-long/2addr v10, v15

    move-object v0, v5

    move-object/from16 p3, v12

    move-object v12, v9

    move-wide/from16 v22, v18

    move-object/from16 v19, v4

    move-object/from16 v18, v6

    move-wide v6, v7

    move-wide/from16 v4, v22

    move-wide/from16 v8, v20

    const/16 v20, 0x4e20

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;JJJJ)V

    goto :goto_2

    :cond_4
    move-object/from16 v19, v4

    move-object v0, v5

    move-object/from16 v18, v6

    move-object/from16 p3, v12

    const/16 v20, 0x4e20

    move-object v12, v9

    :goto_2
    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/d/d;->dq()Lcom/bytedance/sdk/openadsdk/d/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/d/d;->dq(Lorg/json/JSONObject;)V

    const/16 v7, 0x4e20

    move-object/from16 v2, p0

    move-object/from16 v12, p3

    move-object/from16 v0, p4

    move-object/from16 v6, v18

    move-object/from16 v4, v19

    goto/16 :goto_1

    :cond_6
    const v0, 0x9c6e

    if-ne v4, v0, :cond_8

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_4
    const-string v2, "get ad error: "

    invoke-static {v13, v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {p5 .. p6}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/kk/d;->dq()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/kk/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-interface {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    :cond_8
    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/h$p;)V
    .locals 2

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h$p;->dq(ILjava/lang/String;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/h$s;)V
    .locals 2

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h$s;->dq(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bykv/vk/openvk/api/proto/Bridge;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;II)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;II)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/h$p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/h$p;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/h$s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/h$s;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$ox;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$ox;IJ)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ji;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/d;JJJJ)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(J)V

    invoke-virtual {p1, p6, p7}, Lcom/bytedance/sdk/openadsdk/core/r/d;->d(J)V

    invoke-virtual {p1, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/r/d;->ox(J)V

    invoke-virtual {p1, p8, p9}, Lcom/bytedance/sdk/openadsdk/core/r/d;->p(J)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/nh;I)V
    .locals 7

    const-string v0, "reason: "

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->ox(I)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq(Lorg/json/JSONObject;ZZ)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :catchall_0
    move-exception p2

    goto/16 :goto_1

    :cond_0
    invoke-static {v1, p2, p4}, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Lcom/bytedance/sdk/openadsdk/core/ji$dq;

    move-result-object v4

    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Ljava/util/ArrayList;)V

    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->kk:Ljava/lang/String;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/i;->dq(Ljava/lang/String;)V

    iget v5, v4, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->p:I

    const/16 v6, 0x4e20

    if-eq v5, v6, :cond_1

    invoke-virtual {p1, v5}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, v4, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->iw:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "  message: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, v4, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->s:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v4, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->p:I

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p4, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_1
    iget-object v0, v4, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    if-nez v0, :cond_2

    invoke-static {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_2
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->dq(Lorg/json/JSONObject;)V

    iget-object v0, v4, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/j;->wp()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p5}, Lcom/bytedance/sdk/openadsdk/core/ir/s;->dq(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/j;->iy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ji(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/j;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->dq()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v3

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/ji$20;

    invoke-direct {v5, p0, p3}, Lcom/bytedance/sdk/openadsdk/core/ji$20;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/h$d;)V

    invoke-interface {v3, p2, p4, p5, v5}, Lcom/bytedance/sdk/openadsdk/core/h;->ox(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    return-void

    :cond_6
    iget-object p2, v4, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->dq(Ljava/util/List;)V

    :cond_7
    iget-object p2, v4, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-interface {p3, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string p4, "NetApiImpl"

    const-string p5, "get ad error: "

    invoke-static {p4, p5, p2}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ji/dq;)V
    .locals 11

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->vw()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p4, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ia:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    const-string v2, "client_start_time"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->kk()J

    move-result-wide v3

    iget-wide v7, p1, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ia:J

    sub-long/2addr v3, v7

    invoke-virtual {v6, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->d()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ia:J

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_2
    move-wide v2, v0

    :goto_0
    iget-wide v4, p1, Lcom/bytedance/sdk/openadsdk/core/r/nh;->kk:J

    cmp-long v7, v4, v0

    if-lez v7, :cond_3

    const-string v4, "real_user_duration"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->d()J

    move-result-wide v7

    iget-wide v9, p1, Lcom/bytedance/sdk/openadsdk/core/r/nh;->kk:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "switch_st1_time"

    iget-wide v7, p1, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ia:J

    iget-wide v9, p1, Lcom/bytedance/sdk/openadsdk/core/r/nh;->kk:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_3
    move-wide v4, v2

    goto :goto_1

    :cond_4
    move-wide v4, v0

    :goto_1
    const-string v2, "net_send_time"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->s()J

    move-result-wide v7

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->kk()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "net_rcv_time"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->p()J

    move-result-wide v7

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->s()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "net_callback_time"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->iw()J

    move-result-wide v7

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->p()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "network_time"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->iw()J

    move-result-wide v7

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->kk()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "sever_time"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->dq()J

    move-result-wide v7

    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "client_end_time"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->d()J

    move-result-wide v7

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->iw()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->o()J

    move-result-wide v2

    cmp-long v7, v2, v0

    if-lez v7, :cond_5

    const-string v2, "req_body_length"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->o()J

    move-result-wide v7

    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->ia()J

    move-result-wide v2

    cmp-long v7, v2, v0

    if-lez v7, :cond_6

    const-string v2, "res_body_length"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->ia()J

    move-result-wide v7

    invoke-virtual {v6, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_6
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->no()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "x-pglcypher"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->no()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v2, "cypher_v"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->cd()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "armor_s"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->gh()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->ox()J

    move-result-wide v2

    cmp-long v7, v2, v0

    if-lez v7, :cond_8

    const-string v7, "raw_req_length"

    invoke-virtual {v6, v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_8
    const-string v2, "sdk_parallel_load"

    const/4 v3, 0x1

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "net_module"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->iw()I

    move-result v7

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "has_base64"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->mn()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_2

    :cond_9
    const/4 v3, 0x2

    :goto_2
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "req_build_opt"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->mn()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "is_boost"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/s;->ox()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->f()J

    move-result-wide v2

    cmp-long v7, v2, v0

    if-lez v7, :cond_a

    const-string v0, "net_whqueue"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->q()J

    move-result-wide v1

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->mp()J

    move-result-wide v7

    sub-long/2addr v1, v7

    invoke-virtual {v6, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "net_wtqueue"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->jy()J

    move-result-wide v1

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->q()J

    move-result-wide v7

    sub-long/2addr v1, v7

    invoke-virtual {v6, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "net_oconn"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->fw()J

    move-result-wide v1

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->f()J

    move-result-wide v7

    sub-long/2addr v1, v7

    invoke-virtual {v6, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "net_bconn"

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->f()J

    move-result-wide v1

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/ji/dq;->jy()J

    move-result-wide v7

    sub-long/2addr v1, v7

    invoke-virtual {v6, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_a
    :try_start_1
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/r/nh;->jy:Lcom/bytedance/sdk/openadsdk/core/kx;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kx;->dq(J)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p4

    :cond_b
    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    :cond_c
    :try_start_2
    const-string v3, "load_ad_time"

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_4
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;Ljava/lang/String;I)V

    return-void
.end method

.method private dq(Ljava/lang/Throwable;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;)V
    .locals 2

    if-eqz p3, :cond_0

    const/16 v0, 0xfa0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, " msg = "

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string p1, "NetApiImpl"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->ox(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->iw:Lorg/json/JSONArray;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "source_temai_product_ids"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private dq(Lorg/json/JSONObject;Ljava/lang/String;FF)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-lez v1, :cond_0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v2, "width"

    float-to-int p3, p3

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "height"

    float-to-int p4, p4

    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private dq(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "height"

    const-string v3, "width"

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    :try_start_0
    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/16 p3, 0x280

    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 p3, 0x140

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private dq(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private dq(ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->dq()Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/dq/d;->dq(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v2, "1"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cache_info"

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "req_id"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/h$d;ZLcom/bytedance/sdk/openadsdk/core/r/nh;I)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/iw;->dq()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0x3e8

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    const-string p4, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    invoke-interface {p3, p1, p4, p2}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return v0

    :cond_1
    if-eqz p4, :cond_4

    const-string v1, "execGetAdReady"

    invoke-virtual {p5, v1, p4}, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p5, Lcom/bytedance/sdk/openadsdk/core/r/nh;->s:I

    if-gtz v1, :cond_2

    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/h$d;Lcom/bytedance/sdk/openadsdk/core/r/nh;I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq()V

    return v0

    :cond_2
    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v6}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p1, -0x8

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v5, p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->dq()V

    return v0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    sub-long/2addr p5, p1

    const-string p1, "checkCallFreq"

    invoke-virtual {v6, p1, p5, p6, p4}, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq(Ljava/lang/String;JZ)V

    goto :goto_0

    :cond_4
    move-object v2, p0

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;I)Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->dq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ji$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ji$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/bytedance/sdk/openadsdk/core/ji;->s(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    :cond_0
    return v0
.end method

.method private dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/nh;)Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->p()F

    move-result v0

    if-eqz p2, :cond_0

    iget p2, p2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->s:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const/4 p2, 0x0

    cmpl-float p2, v0, p2

    if-lez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->ox(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private static ox(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Ljava/lang/String;
    .locals 17

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->cd()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->iw()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/no;->d(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->e()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "game_adapter_did"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    const-string v10, "is_shake_ads"

    const-string v11, "name"

    const-string v12, "value"

    const/4 v13, 0x1

    const-string v14, "0"

    if-ge v8, v6, :cond_7

    :try_start_2
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v15, v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v2, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v15, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v9

    invoke-virtual {v9, v14}, Lcom/bytedance/sdk/openadsdk/core/no;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v9

    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/no;->d(Ljava/lang/String;)V

    :goto_3
    const/4 v9, 0x1

    :cond_5
    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    :try_start_3
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_4
    if-ge v7, v1, :cond_b

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8, v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    invoke-static {v10, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-static {v2, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v8, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v9

    invoke-virtual {v9, v14}, Lcom/bytedance/sdk/openadsdk/core/no;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v9

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/bytedance/sdk/openadsdk/core/no;->d(Ljava/lang/String;)V

    :goto_5
    const/4 v9, 0x1

    :cond_9
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_b
    if-nez v9, :cond_c

    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    :cond_c
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    :catchall_0
    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_1
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ox(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mp/ox;->ox()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/mp/ox;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mp/ox;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Ljava/lang/String;JZ)V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private p(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/dq;->ox()Lcom/bytedance/sdk/component/kk/d/ox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ji$17;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ji$17;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/kk/d/ox;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    return-void
.end method

.method private p(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->o()I

    move-result v1

    const/16 v2, 0x140

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kk()I

    move-result p1

    const/16 v1, 0x280

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V
    .locals 7

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/dq/dq;

    invoke-direct {v4, p4}, Lcom/bytedance/sdk/openadsdk/core/dq/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/h$d;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p4, v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ji$11;

    const-string v2, "bid_pre"

    move-object v1, p0

    move-object v3, p1

    move v5, p3

    move-object v6, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ji$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    const-string v5, "/api/ad/union/server_bidding/pre_cache/"

    const/4 v6, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;Ljava/lang/String;I)V

    return-void
.end method

.method public dq(I)Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/iw;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->xv()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->m()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/kk/dq;->ox()Lcom/bytedance/sdk/component/kk/d/ox;

    move-result-object v3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/kk/d/ox;->dq()Lcom/bytedance/sdk/component/kk/d;

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne p1, v0, :cond_3

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/d;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/d;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;->p(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dq/ox/dq;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_4
    return-object v1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;IILcom/bytedance/sdk/openadsdk/core/h$d;)Lcom/bytedance/sdk/openadsdk/core/ji/d;
    .locals 9

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/tools/d;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    const/4 v0, 0x5

    if-ne p5, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "buildAdBodyReady"

    invoke-virtual {p3, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq(Ljava/lang/String;Z)V

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;IZI)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "doBuildAdBody"

    invoke-virtual {v5, p3, v1}, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq(Ljava/lang/String;Z)V

    const/4 p3, 0x0

    const/16 p4, -0x9

    if-nez p1, :cond_1

    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p6, p4, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-object p3

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    if-ne v8, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/iw;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ji/d;

    move-result-object p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-string v0, "encrypt"

    invoke-virtual {v5, v0, v6, v7, v1}, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq(Ljava/lang/String;JZ)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/iw;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ji/d;

    move-result-object p5

    :goto_1
    if-nez p5, :cond_3

    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p6, p4, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-object p3

    :cond_3
    invoke-virtual {p5, p1}, Lcom/bytedance/sdk/openadsdk/core/ji/d;->dq(Lorg/json/JSONObject;)V

    return-object p5
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/ox;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->uo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gm()Lcom/bytedance/sdk/openadsdk/core/r/p;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hy()Lcom/bytedance/sdk/openadsdk/core/r/s;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/s;->ig()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/p;->p()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ps()Ljava/util/Map;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    const-string v4, "ad_package_name"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/core/r/j;->d:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v1, v0

    move-object v3, v1

    :cond_4
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/kk/dq;->ox()Lcom/bytedance/sdk/component/kk/d/ox;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->wi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/customer/api/app/pkg_info/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    const-string v4, "convert_id"

    invoke-virtual {v2, v4, v1}, Lcom/bytedance/sdk/component/kk/d/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "package_name"

    invoke-virtual {v2, v4, v3}, Lcom/bytedance/sdk/component/kk/d/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "download_url"

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/h/ia;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/component/kk/d/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-static {v4, v1, v5, v3, v5}, Lg/awf;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/o/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/ox;

    move-result-object v1

    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    const/4 v1, 0x1

    new-array v3, v1, [Lcom/bytedance/sdk/component/kk/d;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ji$7;

    invoke-direct {v1, p0, v3, v5, p1}, Lcom/bytedance/sdk/openadsdk/core/ji$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;[Lcom/bytedance/sdk/component/kk/d;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/kk/d/ox;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v5, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_1
    aget-object p1, v3, v4

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->ia()Z

    move-result p1

    if-eqz p1, :cond_6

    aget-object p1, v3, v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Lorg/json/JSONObject;

    aget-object v1, v3, v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/r/ox;

    new-instance v1, Lorg/json/JSONObject;

    aget-object v2, v3, v4

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/kk/d;->p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/r/ox;-><init>(Lorg/json/JSONObject;)V

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/o/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/ox;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    :cond_6
    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ZI)Ljava/lang/String;
    .locals 11

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/r/nh;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/r/nh;-><init>()V

    iget-object v8, v4, Lcom/bytedance/sdk/openadsdk/core/r/nh;->jy:Lcom/bytedance/sdk/openadsdk/core/kx;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v0

    const/4 v9, 0x3

    if-ne v9, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ia:J

    :cond_0
    const/4 v0, 0x2

    if-eqz p2, :cond_1

    iput v0, v4, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mn:I

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->gh()I

    move-result p2

    const/4 v10, 0x1

    if-eq v10, p2, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->gh()I

    move-result p2

    if-ne v0, p2, :cond_3

    :cond_2
    iput v0, v4, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mn:I

    :cond_3
    iget p2, v4, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mn:I

    if-eq p2, v0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->no(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput v0, v4, Lcom/bytedance/sdk/openadsdk/core/r/nh;->mn:I

    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result p2

    move v5, p2

    goto :goto_0

    :cond_5
    if-lez p3, :cond_6

    move v5, p3

    goto :goto_0

    :cond_6
    const/4 p2, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x4

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;IZI)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "adbody_time"

    invoke-virtual {v8, p2}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    invoke-direct {p0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;I)Z

    const-string p2, "prefetch_time"

    invoke-virtual {v8, p2}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "User-Agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "request_headers_time"

    invoke-virtual {v8, v0}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    const-string v0, "header"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "bid_request"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/iw;

    move-result-object p2

    invoke-virtual {p2, p1, v10}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq(Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object p1

    const-string p2, "encry_time"

    invoke-virtual {v8, p2}, Lcom/bytedance/sdk/openadsdk/core/kx;->d(Ljava/lang/String;)J

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p2

    invoke-virtual {p2, p3, v8}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(ILcom/bytedance/sdk/openadsdk/core/kx;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    :goto_2
    const-string p2, ""

    if-eqz p1, :cond_8

    iget-object p3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p3, :cond_7

    check-cast p3, Lorg/json/JSONObject;

    const-string p2, "message"

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_7
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p1, :cond_8

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_8
    const/4 p1, 0x3

    :goto_3
    if-eq p1, v9, :cond_9

    const-string p1, "0000000004"

    invoke-static {p1, p2}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const-string p1, "0000000003"

    invoke-static {p1, p2}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;IZI)Lorg/json/JSONObject;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    const-string v5, "unknown"

    const-string v6, "app"

    const-string v7, "ad_sdk_version"

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v9, v2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    iget-object v9, v2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    const/4 v10, 0x3

    const/4 v11, 0x2

    const-string v12, "req_type"

    const/4 v13, 0x1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kx()Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    move-result-object v14

    if-eqz v14, :cond_4

    sget-object v14, Lcom/bytedance/sdk/openadsdk/core/ji$18;->dq:[I

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->kx()Lcom/bytedance/sdk/openadsdk/TTAdLoadType;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v14, v14, v15

    if-eq v14, v13, :cond_3

    if-eq v14, v11, :cond_2

    const/4 v14, -0x1

    invoke-virtual {v8, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    :goto_2
    const/4 v14, 0x7

    if-ne v3, v14, :cond_9

    if-eqz v2, :cond_5

    iget v15, v2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->d:I

    if-lez v15, :cond_5

    invoke-virtual {v8, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    if-eqz v2, :cond_6

    iget-object v12, v2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ox:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "pre_sessions"

    iget-object v15, v2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->ox:Ljava/lang/String;

    invoke-virtual {v8, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "play_again_count"

    iget v15, v2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->p:I

    invoke-virtual {v8, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->dq()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "insert_ad_control"

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v12, "insert_ad_req_num"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->p()I

    move-result v15

    invoke-virtual {v8, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->d()Z

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v15, "refresh_ad_req_num"

    if-eqz v12, :cond_8

    :try_start_2
    const-string v12, "refresh_ad_control"

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->s()I

    move-result v12

    invoke-virtual {v8, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->ox()Z

    move-result v12

    if-eqz v12, :cond_a

    const-string v12, "force_refresh_ad_control"

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/bl;->s()I

    move-result v12

    invoke-virtual {v8, v15, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    :cond_9
    const/16 v15, 0x8

    if-ne v3, v15, :cond_a

    if-eqz v2, :cond_a

    iget v15, v2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->d:I

    if-lez v15, :cond_a

    invoke-virtual {v8, v12, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_a
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v15

    invoke-virtual {v15}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->s()Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->iw()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v17, :cond_b

    const/16 v17, 0x1

    :try_start_4
    const-string v13, "version"

    invoke-virtual {v12, v13, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_b
    const/16 v17, 0x1

    :goto_4
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->r()[I

    move-result-object v13

    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq([I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_d

    const-string v14, "external_ab_vid"

    invoke-virtual {v12, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_c
    const/4 v13, 0x0

    :cond_d
    :goto_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_e

    const-string v14, "param"

    invoke-virtual {v12, v14, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    :cond_f
    const-string v10, "abtest"

    invoke-virtual {v8, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_0
    const/16 v17, 0x1

    :catchall_1
    :cond_10
    :goto_6
    :try_start_5
    const-string v10, "request_id"

    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v10, Lcom/bytedance/sdk/openadsdk/core/op;->ox:Ljava/lang/String;

    invoke-virtual {v8, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "plugin_version"

    const-string v12, "6.6.0.7"

    invoke-virtual {v8, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "is_plugin"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->dq()Z

    move-result v12

    invoke-virtual {v8, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v10, "sdk_boost_type"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/s;->ox()I

    move-result v12

    invoke-virtual {v8, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "is_use_tt_video"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->p()Z

    move-result v12

    if-eqz v12, :cond_11

    const/4 v12, 0x1

    goto :goto_7

    :cond_11
    const/4 v12, 0x2

    :goto_7
    invoke-virtual {v8, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v10

    const-string v14, "live_sdk_status"

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/live/d;->ox()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "live_auth_status"

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/live/d;->s()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "live_sdk_config"

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/live/d;->ia()Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "live_ad_click_count"

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/live/d;->iw()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "csj_type"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v15

    invoke-virtual {v15}, Lcom/bytedance/sdk/openadsdk/core/no;->n()Z

    move-result v15

    invoke-virtual {v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/live/d;->mn()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_12

    const-string v14, "live_plugin_version"

    invoke-virtual {v8, v14, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    const-string v10, "liveInfo"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v12

    const/4 v12, 0x5

    const/4 v13, 0x0

    if-ne v4, v12, :cond_13

    const/4 v12, 0x1

    goto :goto_8

    :cond_13
    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v2, v10, v14, v15, v12}, Lcom/bytedance/sdk/openadsdk/core/r/nh;->dq(Ljava/lang/String;JZ)V

    const-string v10, "source_type"

    invoke-virtual {v8, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "logsdk_version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->iw(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/o;->d(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v8, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/ji;->dq:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/ox/dq;->dq(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v10, 0x4

    if-eqz v6, :cond_19

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->dc()Z

    move-result v12

    if-nez v12, :cond_14

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o/o;->ox()Z

    move-result v12

    if-nez v12, :cond_14

    const-string v12, "free_space"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_14
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->cd()I

    move-result v12

    if-lez v12, :cond_15

    const-string v12, "orientation"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->cd()I

    move-result v14

    invoke-virtual {v6, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->ox()J

    move-result-wide v14

    const-wide/16 v19, 0x0

    cmp-long v12, v14, v19

    if-lez v12, :cond_16

    const-string v12, "screenshot_time"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->ox()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->o(I)Z

    move-result v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-string v14, "cellular_signal"

    const-string v15, "wifi_signal"

    if-eqz v12, :cond_17

    :try_start_6
    invoke-virtual {v6, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_9

    :cond_17
    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/core/ir/o;->dq(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {v17 .. v17}, Lcom/bytedance/sdk/openadsdk/core/ir/o;->dq(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_9
    if-eq v4, v10, :cond_18

    const-string v5, "sof_chara"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/k;->p()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_18
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/ir/mp;->dq(Lorg/json/JSONObject;)V

    const-string v5, "cpu_arch"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/k;->no()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "direction"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/kx/dq;

    move-result-object v12

    invoke-virtual {v12}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->iw()I

    move-result v12

    invoke-virtual {v6, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_19
    const-string v5, "device"

    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "pan_code_serial"

    const-string v6, "1000"

    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "user"

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ua"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "channel"

    sget-object v6, Lcom/bytedance/sdk/openadsdk/core/op;->iw:Ljava/lang/String;

    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ox/dq;->dq(I)[Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-string v6, ""

    if-eqz v5, :cond_1a

    :try_start_7
    array-length v12, v5

    if-lt v12, v11, :cond_1a

    aget-object v11, v5, v13

    aget-object v5, v5, v17

    goto :goto_a

    :cond_1a
    move-object v5, v6

    move-object v11, v5

    :goto_a
    const-string v12, "ip"

    invoke-virtual {v8, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "client_ipv6"

    invoke-virtual {v8, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "client_ipv4"

    invoke-static {v11, v3}, Lcom/bytedance/sdk/openadsdk/core/ox/dq;->dq(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;ILcom/bytedance/sdk/openadsdk/core/r/nh;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v11, "adslots"

    invoke-virtual {v8, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v5, v2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->q:I

    if-lez v5, :cond_1b

    const-string v11, "load_ad_api"

    invoke-virtual {v8, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1b
    invoke-static {v8, v3}, Lcom/bytedance/sdk/openadsdk/core/ox/dq;->dq(Lorg/json/JSONObject;I)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "start2req_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sget-wide v14, Lcom/bytedance/sdk/openadsdk/core/le;->s:J

    sub-long/2addr v11, v14

    invoke-virtual {v3, v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "start_type"

    sget-object v11, Lcom/bytedance/sdk/openadsdk/core/le;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    invoke-virtual {v3, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "show_count"

    sget v11, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq:I

    invoke-virtual {v3, v5, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "ads_parameter"

    invoke-virtual {v8, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {v0, v8, v2}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/r/nh;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v14, 0x3e8

    div-long/2addr v11, v14

    const-string v3, "ts"

    invoke-virtual {v8, v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    if-eqz v9, :cond_1c

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_1c
    move-object v3, v6

    :goto_b
    const-string v5, "req_sign"

    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-ne v4, v10, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->dq(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "has_pre_fetch"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v8, v5, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v3

    const/4 v5, 0x7

    if-ne v5, v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_c

    :cond_1d
    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v8, v5}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(ZLorg/json/JSONObject;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_d

    :cond_1e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v14, 0x1

    invoke-virtual {v3, v5, v9, v9, v14}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_d
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/r/nh;->jy:Lcom/bytedance/sdk/openadsdk/core/kx;

    if-eqz v2, :cond_20

    const-string v3, "precache_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v11

    invoke-virtual {v2, v3, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/kx;->dq(Ljava/lang/String;J)V

    goto :goto_e

    :cond_1f
    const/4 v9, 0x0

    :cond_20
    :goto_e
    if-eqz p4, :cond_21

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/op;->ox:Ljava/lang/String;

    invoke-virtual {v8, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_12

    :cond_21
    const/4 v2, 0x3

    if-ne v4, v2, :cond_27

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cypher"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_23

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_22
    move-object v12, v1

    goto :goto_f

    :cond_23
    if-ne v1, v10, :cond_24

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/kk;->dq()Lcom/bytedance/sdk/component/panglearmor/kk;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/panglearmor/kk;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    move-object v12, v6

    goto :goto_f

    :cond_24
    move-object v12, v9

    :goto_f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "creatives"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_26

    :goto_10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v13, v3, :cond_26

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "material_key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v13, :cond_25

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_11
    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_26
    const-string v1, "material_keys"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    :cond_27
    :goto_12
    return-object v8
.end method

.method public dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/dq;->d()Lcom/bytedance/sdk/component/kk/d/s;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/no;->xz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ad_union_qa/sdk/query_config_list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    const-string v1, "x-pglcypher"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-ad-sdk-version"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/op;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-plugin-version"

    const-string v2, "6.6.0.7"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/no;->mp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "os"

    const-string v4, "android"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ad_sdk_version"

    sget-object v4, Lcom/bytedance/sdk/openadsdk/core/op;->ox:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "plugin_version"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ig;->dq([B)[B

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/kk;->dq()Lcom/bytedance/sdk/component/panglearmor/kk;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/panglearmor/kk;->dq([B)[B

    move-result-object v1

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Ljava/lang/String;[B)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ji$14;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ji$14;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/iw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/iw;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/ir/wn;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/dq;->iw()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/wn;-><init>(Lcom/bytedance/sdk/component/d/dq/ig;)V

    const-string v0, "/api/ad/union/dislike_event/"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    const-string v0, "dislike"

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/wn;->ox(Lorg/json/JSONObject;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ji$25;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ji$25;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;)V

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$ox;IJ)V
    .locals 12

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ji$9;

    const-string v4, "get_wlink"

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/openadsdk/core/ji$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$ox;IJ)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void

    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Lcom/bytedance/sdk/openadsdk/core/r/io;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$ox;IJ)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "app_custom_info"

    const-string v1, "app_base_info"

    const-string v2, "device_id"

    const-string v3, ""

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "user_id"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->ox()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "device_id_inner"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn;->dq()Lcom/bytedance/sdk/openadsdk/core/mn;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/mn;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "phone_number"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ux()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_0
    move-object v8, v3

    :goto_0
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "third_idfa"

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/ir/le;->dq(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "device_model"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->le()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "device_username"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "user_agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "validate_info"

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "app_info"

    invoke-virtual {v4, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_2
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "ad_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fa()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p2, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_4
    const-string p1, "ad_info"

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/dq;->d()Lcom/bytedance/sdk/component/kk/d/s;

    move-result-object p1

    const-string p2, "https://playable.oceanengine.com/web-api/v1/coldstart"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lorg/json/JSONObject;)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/ji$8;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/ji$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V
    .locals 7

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/dq/dq;

    invoke-direct {v6, p4}, Lcom/bytedance/sdk/openadsdk/core/dq/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/h$d;)V

    invoke-virtual {v6, p3}, Lcom/bytedance/sdk/openadsdk/core/dq/dq;->dq(I)V

    const/4 p4, 0x3

    if-ne p3, p4, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p4, v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ji$1;

    const-string v2, "get_ad"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ji$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/dq/dq;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->s(Lcom/bytedance/sdk/component/o/kk;)V

    return-void

    :goto_1
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/ji;->p(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ji;->p(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/h$dq;)V
    .locals 7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/iw;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_3

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p3

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/h$dq;->dq(ZJJ)V

    return-void

    :cond_0
    move-object v1, p3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/ir/wn;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/kk/dq;->iw()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/wn;-><init>(Lcom/bytedance/sdk/component/d/dq/ig;)V

    const-string p3, "/api/ad/union/sdk/material/check/"

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?abort_aes=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&abort_aes=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    const-string p3, "check_ad"

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ir/wn;->ox(Lorg/json/JSONObject;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ji$6;

    invoke-direct {p1, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ji$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/h$dq;)V

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/dq;->d()Lcom/bytedance/sdk/component/kk/d/s;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/no;->xz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ad_union_qa/sdk/get_ad_config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    const-string v1, "x-pglcypher"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-ad-sdk-version"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/op;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-plugin-version"

    const-string v2, "6.6.0.7"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/no;->mp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "adtype"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "rit"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "image_mode"

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "preview_extra"

    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "os"

    const-string p2, "android"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ad_sdk_version"

    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/op;->ox:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "plugin_version"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/ig;->dq([B)[B

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/component/panglearmor/kk;->dq()Lcom/bytedance/sdk/component/panglearmor/kk;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/panglearmor/kk;->dq([B)[B

    move-result-object p1

    const-string p2, "application/octet-stream"

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Ljava/lang/String;[B)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ji$15;

    invoke-direct {p1, p0, p5}, Lcom/bytedance/sdk/openadsdk/core/ji$15;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/bytedance/sdk/openadsdk/core/h$ox<",
            "Lcom/bytedance/sdk/component/kk/d;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->dq()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ji$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ji$13;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$ox;)V

    return-void
.end method

.method public dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$p;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/iw;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    const/16 p1, 0x3e8

    const-string v0, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h$p;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/dq;->dq(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/dq;->d()Lcom/bytedance/sdk/component/kk/d/s;

    move-result-object v0

    const-string v1, "/api/ad/union/sdk/reward_video/live_room/reward"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/kk/d/s;->ox(Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ji$4;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ji$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/h$p;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/h$s;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/bl/iw;->dq()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    const/16 p1, 0x3e8

    const-string v0, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h$s;->dq(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ir/wn;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/kk/dq;->iw()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/wn;-><init>(Lcom/bytedance/sdk/component/d/dq/ig;)V

    const-string v1, "/api/ad/union/sdk/reward_video/reward/"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->mn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    const-string v1, "verify"

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ir/wn;->ox(Lorg/json/JSONObject;Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ji$3;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ji$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Lcom/bytedance/sdk/openadsdk/core/h$s;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public ox(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V
    .locals 7

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/dq/dq;

    invoke-direct {v4, p4}, Lcom/bytedance/sdk/openadsdk/core/dq/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/h$d;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p4, v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ji$23;

    const-string v2, "bid_g_m"

    move-object v1, p0

    move-object v3, p1

    move v5, p3

    move-object v6, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ji$23;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    const-string v5, "/api/ad/union/server_bidding/get_materials/"

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ji;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;Ljava/lang/String;I)V

    return-void
.end method

.method public p(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V
    .locals 7

    const-string v5, "/api/ad/union/sdk/get_ads/"

    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ji;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;Ljava/lang/String;I)V

    return-void
.end method

.method public s(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V
    .locals 7

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/dq/dq;

    invoke-direct {v6, p4}, Lcom/bytedance/sdk/openadsdk/core/dq/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/h$d;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ji$22;

    const-string v2, "bid_p_f"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ji$22;-><init>(Lcom/bytedance/sdk/openadsdk/core/ji;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;ILcom/bytedance/sdk/openadsdk/core/h$d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

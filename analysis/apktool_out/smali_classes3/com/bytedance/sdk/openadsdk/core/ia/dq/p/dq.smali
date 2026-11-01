.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;
.super Ljava/lang/Object;


# static fields
.field private static d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static dq:Landroid/content/SharedPreferences;

.field private static ia:Ljava/lang/String;

.field private static iw:J

.field private static kk:Z

.field private static mn:Ljava/lang/String;

.field private static ox:I

.field private static p:I

.field private static s:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uchain_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    sput v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ox:I

    sput v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->p:I

    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->kk:Z

    return-void
.end method

.method public static synthetic d(J)J
    .locals 0

    sput-wide p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->iw:J

    return-wide p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ia:Ljava/lang/String;

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    sput v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->p:I

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->mn:Ljava/lang/String;

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ia:Ljava/lang/String;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private static d(IIJ)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/d;->ox()Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$3;-><init>(IIJ)V

    const-string p0, "uchain_stats_tracker"

    const/4 p1, 0x0

    invoke-interface {v0, v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/no/dq/dq;Ljava/lang/String;Z)V

    return-void
.end method

.method private static d(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "event_template"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/component/no/ox/d;->dq:Lcom/bytedance/sdk/component/no/ox/d;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/no/ox/d;->dq(Lorg/json/JSONObject;)V

    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_2
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_3
    :goto_1
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static d()Z
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->xn()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->iw:J

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->q()V

    return v2
.end method

.method public static synthetic dq(I)I
    .locals 0

    sput p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->p:I

    return p0
.end method

.method public static synthetic dq(J)J
    .locals 0

    sput-wide p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->s:J

    return-wide p0
.end method

.method public static synthetic dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->mn:Ljava/lang/String;

    return-object p0
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0x400

    :try_start_2
    new-array v2, v1, [B

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "uchain_dsl"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ox/iw;->dq([BLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    const v1, 0x186a7

    sput v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ox:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_2

    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_4

    :catch_1
    move-object p1, v0

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object p1, v0

    move-object v0, p0

    move-object p0, p1

    goto :goto_4

    :catch_2
    const p0, 0x186a5

    :try_start_4
    sput p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ox:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v0

    :catch_3
    move-object p0, v0

    move-object p1, p0

    :goto_2
    const v1, 0x186a6

    :try_start_5
    sput v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ox:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_3
    move-object v0, p1

    :catch_5
    :goto_3
    return-object v0

    :goto_4
    if-eqz p1, :cond_4

    :try_start_7
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_5
    throw v0
.end method

.method public static synthetic dq(IIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d(IIJ)V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ve()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    invoke-virtual {p5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p5

    invoke-virtual {p5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-instance p5, Lorg/json/JSONArray;

    invoke-direct {p5}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->kk:Z

    new-instance v1, Lcom/bytedance/sdk/component/no/dq/d$dq;

    invoke-direct {v1, p2}, Lcom/bytedance/sdk/component/no/dq/d$dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/no/dq/d$dq;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq(Ljava/util/Map;)Lcom/bytedance/sdk/component/no/dq/d$dq;

    move-result-object p3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$4;

    invoke-direct {v0, p5}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$4;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq(Lcom/bytedance/sdk/component/no/p/ox;)Lcom/bytedance/sdk/component/no/dq/d$dq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq()Lcom/bytedance/sdk/component/no/dq/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/no/dq/d;->dq()V

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "uchain_event_id"

    if-eqz p1, :cond_2

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :try_start_1
    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "slot_type"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "valid_uchain"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ru()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->kk:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ju()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "material"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ve()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string p1, "uchain_event_tracker"

    invoke-static {p0, p4, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_1
    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->mn:Ljava/lang/String;

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ia:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->iw:J

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x2

    sput v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->p:I

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->mn:Ljava/lang/String;

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ia:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->iw:J

    sub-long/2addr p0, v0

    sput-wide p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->s:J

    sget v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ox:I

    sget v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->p:I

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d(IIJ)V

    return-void

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/dq;->s()Lcom/bytedance/sdk/component/kk/d/dq;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/kk/d/dq;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    return-void
.end method

.method public static synthetic dq(Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static dq()Z
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ir()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ox()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d()Z

    move-result v0

    return v0
.end method

.method public static dq(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "is_feed_register_direct_download"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic dq(Z)Z
    .locals 0

    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->kk:Z

    return p0
.end method

.method public static synthetic ia()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->mp()V

    return-void
.end method

.method public static synthetic ig()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->mn:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic iw()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->p:I

    return v0
.end method

.method public static synthetic kk()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static synthetic mn()J
    .locals 2

    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->s:J

    return-wide v0
.end method

.method private static mp()V
    .locals 4

    const v0, 0x186a8

    sput v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ox:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->iw:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->s:J

    sget v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ox:I

    sget v3, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->p:I

    invoke-static {v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d(IIJ)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->q()V

    return-void
.end method

.method public static synthetic no()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ia:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic o()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->q()V

    return-void
.end method

.method public static ox()Z
    .locals 4

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->xn()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$2;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    :cond_4
    :goto_0
    return v3
.end method

.method public static synthetic p()J
    .locals 2

    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->iw:J

    return-wide v0
.end method

.method private static q()V
    .locals 5

    const/4 v0, -0x1

    sput v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ox:I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->sp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->xq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x2

    sput v3, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->p:I

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->mn:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ia:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v3, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->iw:J

    sub-long/2addr v0, v3

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->s:J

    sget v3, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ox:I

    sget v4, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->p:I

    invoke-static {v3, v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d(IIJ)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uc_dsl/uc_dsl.bin"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    sput v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->p:I

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ia:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->iw:J

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->s:J

    sget v3, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ox:I

    sget v4, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->p:I

    invoke-static {v3, v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d(IIJ)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d(Lorg/json/JSONObject;)V

    return-void

    :cond_2
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ox:I

    sget v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->p:I

    sget-wide v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->s:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->d(IIJ)V

    return-void
.end method

.method public static synthetic s()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->ox:I

    return v0
.end method

.class public Lcom/bytedance/msdk/s/ox;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile dq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bytedance/msdk/s/ox;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/s/d;->dq()Lcom/bytedance/msdk/s/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/s/d;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/s/d$dq;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/s/d$dq;->dq()Lcom/bytedance/msdk/s/p;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/msdk/s/d$dq;->d()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/s/d;->dq()Lcom/bytedance/msdk/s/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/msdk/s/d;->ox()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/msdk/s/ox;->dq:Z

    return v0
.end method

.method public static dq()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/msdk/s/ox;->dq:Z

    return-void
.end method

.method public static dq(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->kx()I

    move-result v0

    new-instance v1, Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;-><init>()V

    new-instance v2, Lcom/bytedance/msdk/s/kk;

    invoke-direct {v2}, Lcom/bytedance/msdk/s/kk;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq(Lcom/bytedance/sdk/component/ia/dq/no;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object v1

    const-wide/32 v2, 0xa4cb800

    invoke-static {v0, v0, v2, v3}, Lcom/bytedance/sdk/component/ia/d/p/d/dq;->dq(IIJ)Lcom/bytedance/sdk/component/ia/d/p/d/dq;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->d(Lcom/bytedance/sdk/component/ia/d/p/d/dq;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/d;->mp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->d(Z)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/s/o;

    invoke-direct {v1}, Lcom/bytedance/msdk/s/o;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq(Lcom/bytedance/sdk/component/ia/dq/p;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object v0

    sget-object v1, Lcom/bytedance/msdk/s/no;->dq:Lcom/bytedance/msdk/s/no;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq(Lcom/bytedance/sdk/component/ia/dq/iw;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object v0

    const-string v1, "csj_mediation"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/component/ia/dq/dq$dq;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ia/dq/dq$dq;->dq()Lcom/bytedance/sdk/component/ia/dq/dq;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/dq;)Lcom/bytedance/sdk/component/ia/dq/mn;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ia/d/dq;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/s/p;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :cond_2
    const-string p2, "eventIndex"

    sget-object v2, Lcom/bytedance/msdk/s/ox;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "is_main_process"

    invoke-static {p0}, Lcom/bytedance/msdk/ia/h;->dq(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "is_cypher_v4"

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->dq()Lcom/bytedance/msdk/s/d/dq;

    move-result-object p2

    invoke-interface {p2}, Lcom/bytedance/msdk/s/d/dq;->dq()Z

    move-result p2

    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/d;->kk()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "e2e_test_flag"

    const-string p2, "1"

    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "event_id"

    invoke-virtual {p1, p2, p0}, Lcom/bytedance/msdk/s/p;->dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/msdk/s/p;

    :cond_4
    invoke-static {p1, v1}, Lcom/bytedance/msdk/s/dq;->dq(Lcom/bytedance/msdk/s/p;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    sget-boolean p2, Lcom/bytedance/msdk/s/ox;->dq:Z

    if-nez p2, :cond_5

    invoke-static {}, Lcom/bytedance/msdk/s/d;->dq()Lcom/bytedance/msdk/s/d;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/bytedance/msdk/s/d;->dq(Lcom/bytedance/msdk/s/p;Lorg/json/JSONObject;)V

    return-void

    :cond_5
    invoke-static {v0, p1, p0}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "csj_mediation"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/bytedance/msdk/s/ox;->dq(Landroid/content/Context;)V

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/bytedance/msdk/s/mn;->dq(Landroid/content/Context;Lcom/bytedance/msdk/s/p;Lorg/json/JSONObject;)Lcom/bytedance/msdk/s/mn;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/bytedance/msdk/ia/p/d;->dq(Lcom/bytedance/msdk/s/dq;Z)V

    new-instance p1, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;

    iget-object p2, p0, Lcom/bytedance/msdk/s/dq;->dq:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lcom/bytedance/sdk/component/ia/d/p/dq/dq;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/d/p/dq/d;)V

    const/4 p0, 0x3

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/ia/dq/d;->dq(B)V

    const/4 p0, 0x2

    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/ia/dq/d;->d(B)V

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ia/d/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/d;Ljava/lang/String;)V

    return-void
.end method

.method public static ox()V
    .locals 1

    const-string v0, "csj_mediation"

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/dq;->iw(Ljava/lang/String;)V

    return-void
.end method

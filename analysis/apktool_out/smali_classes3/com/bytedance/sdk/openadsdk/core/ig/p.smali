.class public Lcom/bytedance/sdk/openadsdk/core/ig/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ig/p$dq;,
        Lcom/bytedance/sdk/openadsdk/core/ig/p$d;
    }
.end annotation


# instance fields
.field private bl:Ljava/lang/Runnable;

.field private cd:Z

.field private volatile d:Z

.field private dq:I

.field private e:Z

.field private f:J

.field private fw:J

.field private gh:Ljava/util/concurrent/atomic/AtomicInteger;

.field private h:J

.field private i:Z

.field private ia:J

.field private ig:J

.field private final iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private ji:Lcom/bytedance/sdk/openadsdk/core/q/s;

.field private jy:J

.field private k:Lcom/bytedance/sdk/openadsdk/iw/dq;

.field private kk:J

.field private kx:Z

.field private le:Lorg/json/JSONObject;

.field private mn:Ljava/lang/String;

.field private mp:Z

.field private n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/ig/p$d;",
            ">;"
        }
    .end annotation
.end field

.field private no:J

.field private o:J

.field private ox:I

.field private p:Ljava/lang/String;

.field private q:J

.field private r:Lcom/bytedance/sdk/component/mp/dq;

.field private s:Ljava/lang/String;

.field private wp:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/component/mp/dq;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->d:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ox:I

    const-string v1, "landingpage"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->mn:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ia:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->kk:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->o:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->no:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ig:J

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->mp:Z

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->q:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->jy:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->f:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->fw:J

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->cd:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->gh:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->i:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->wp:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->kx:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->r:Lcom/bytedance/sdk/component/mp/dq;

    if-eqz p2, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ig/p$dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->gh:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->n:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/p$dq;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/ref/WeakReference;)V

    const-string v0, "JS_LANDING_PAGE_LOG_OBJ"

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/component/mp/dq;->dq(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->h:J

    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->sd()Lcom/bytedance/sdk/openadsdk/core/r/u;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "preload_type"

    if-eqz v0, :cond_2

    :try_start_1
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/u;->d:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "preload_behavior"

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/r/u;->ox:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ji:Lcom/bytedance/sdk/openadsdk/core/q/s;

    if-eqz v1, :cond_1

    const-string v2, "cache_hit_rate"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/q/s;->p()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "cache_rate"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ji:Lcom/bytedance/sdk/openadsdk/core/q/s;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/q/s;->s()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "channel_name"

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/r/u;->dq:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ig/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->mn()V

    return-void
.end method

.method private dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private dq(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    const-string v1, "is_playable"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "usecache"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/playable/dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/playable/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v0, "ad_extra_data"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v2, 0x0

    cmp-long p2, p3, v2

    if-lez p2, :cond_2

    const-string p2, "duration"

    invoke-virtual {v1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_2
    move-object v0, v1

    :catch_2
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->mn:Ljava/lang/String;

    invoke-static {p2, p3, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private mn()V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q/ox;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/q/ox;->dq:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "cid"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ad_id"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "log_extra"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "web_init_time"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->f:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "click_time"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->jy:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "web_url"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->d(Lorg/json/JSONObject;)V

    const-string v3, "client_info"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "\"/** adInfo **/\""

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/q/ox;->dq(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "javascript:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->r:Lcom/bytedance/sdk/component/mp/dq;

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/no;->dq(Lcom/bytedance/sdk/component/mp/dq;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(J)Lcom/bytedance/sdk/openadsdk/core/ig/p;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->jy:J

    return-object p0
.end method

.method public d(Z)Lcom/bytedance/sdk/openadsdk/core/ig/p;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->i:Z

    return-object p0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/iw/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->k:Lcom/bytedance/sdk/openadsdk/iw/dq;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 10

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "load_finish"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "landingpage"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->mn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ig/p$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ig/p$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ig/p;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->bl:Ljava/lang/Runnable;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/q/ox$dq;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/q/ox$dq;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/q/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/q/ox$dq;)V

    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ig:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->no:J

    sub-long/2addr v0, v2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "error_code"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ox:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "error_msg"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->p:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "error_url"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->s:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "render_type"

    const-string v4, "h5"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "render_type_2"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->jy:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    const-string v7, "exp_duration"

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ig:J

    sub-long/2addr v8, v3

    invoke-virtual {v2, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->f:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    const-string v7, "web_duration"

    iget-wide v8, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ig:J

    sub-long/2addr v8, v3

    invoke-virtual {v2, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_3
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->fw:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_4

    const-string v5, "webview_duration"

    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_4
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->d(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/32 v3, 0x927c0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method public dq(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->k:Lcom/bytedance/sdk/openadsdk/iw/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/iw/p/p;->ia()V

    :cond_0
    if-eqz p4, :cond_1

    const-string v0, "image"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    iget p4, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq:I

    const/4 v0, 0x2

    if-eq p4, v0, :cond_2

    const/4 p4, 0x3

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq:I

    :cond_2
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ox:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->s:Ljava/lang/String;

    return-void
.end method

.method public dq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->o:J

    return-void
.end method

.method public dq(Landroid/webkit/WebView;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->k:Lcom/bytedance/sdk/openadsdk/iw/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/iw/p/p;->mn()V

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ig:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ig:J

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->cd:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->i:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->cd:Z

    const-string v1, "javascript:\n    function sendScroll() {\n        try {\n            var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n            var clientH = window.innerHeight || document.documentElement.clientHeight;\n            var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n            var validH = scrollH + clientH;\n            var result = (validH / totalH * 100).toFixed(2);\n            console.log(\'LandingPageLogscroll status: (\' + scrollH + \'+\' + clientH + \')/\' + totalH + \'=\' + result);\n            window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n        } catch (e) {\n            console.log(\'sendScroll error\' + e)\n        }\n    }\nsendScroll();\nwindow.addEventListener(\'scroll\', function (e) {\n    sendScroll();\n});"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/utils/no;->dq(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->wp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v1, :cond_4

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq:I

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->wp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ia:J

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq:I

    if-ne p1, v2, :cond_5

    const-string p1, "load_finish"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->d(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "error_code"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ox:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "error_msg"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "error_url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "render_type"

    const-string v1, "h5"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "render_type_2"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "preload_type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->sd()Lcom/bytedance/sdk/openadsdk/core/r/u;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->sd()Lcom/bytedance/sdk/openadsdk/core/r/u;

    move-result-object v1

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/r/u;->d:I

    :cond_7
    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "load_fail"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public dq(Landroid/webkit/WebView;I)V
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->no:J

    const-wide/16 v2, 0x0

    const/4 p1, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->no:J

    return-void

    :cond_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->mp:Z

    if-nez p2, :cond_1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->mp:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ig:J

    const-string p1, "landingpage"

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->mn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const-string p1, "landingpage_load_hundred"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public dq(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->k:Lcom/bytedance/sdk/openadsdk/iw/dq;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/iw/p/p;->iw()V

    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->d:Z

    if-nez p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->q:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->d:Z

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "render_type"

    const-string p3, "h5"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "render_type_2"

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "preload_type"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->sd()Lcom/bytedance/sdk/openadsdk/core/r/u;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->sd()Lcom/bytedance/sdk/openadsdk/core/r/u;

    move-result-object p3

    iget p3, p3, Lcom/bytedance/sdk/openadsdk/core/r/u;->d:I

    :cond_2
    :goto_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p2, "load_start"

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ig/p$d;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->n:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/q/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ji:Lcom/bytedance/sdk/openadsdk/core/q/s;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/iw/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->k:Lcom/bytedance/sdk/openadsdk/iw/dq;

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->mn:Ljava/lang/String;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->le:Lorg/json/JSONObject;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->e:Z

    return-void
.end method

.method public dq()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->e:Z

    return v0
.end method

.method public iw()V
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->mp:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->uh()Lcom/bytedance/sdk/openadsdk/core/q/p/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->r:Lcom/bytedance/sdk/component/mp/dq;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/bytedance/sdk/component/mp/dq;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/q/p/dq;->dq(Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_0
    return-void
.end method

.method public ox(J)Lcom/bytedance/sdk/openadsdk/core/ig/p;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->f:J

    return-object p0
.end method

.method public ox()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ia:J

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->q:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->q:J

    :cond_0
    return-void
.end method

.method public p(J)Lcom/bytedance/sdk/openadsdk/core/ig/p;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->fw:J

    return-object p0
.end method

.method public p()V
    .locals 8

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->kx:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->kx:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "start"

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->h:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "end"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/s/dq;->dq(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ig/p$1;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ig/p;Lorg/json/JSONObject;)V

    const-string v0, "landingpage"

    const-string v4, "agg_stay_page"

    invoke-static {v2, v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->o:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->kk:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->ia:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->o:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v4, "load_status"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "max_scroll_percent"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->gh:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "render_type"

    const-string v5, "h5"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "render_type_2"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-wide/32 v4, 0x927c0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-string v3, "stay_page"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/p;->dq(Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public s()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->r:Lcom/bytedance/sdk/component/mp/dq;

    if-eqz v0, :cond_0

    const-string v1, "JS_LANDING_PAGE_LOG_OBJ"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/mp/dq;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->r:Lcom/bytedance/sdk/component/mp/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->wp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->iw:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->mn:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->q:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    :cond_1
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/p;->bl:Ljava/lang/Runnable;

    return-void
.end method

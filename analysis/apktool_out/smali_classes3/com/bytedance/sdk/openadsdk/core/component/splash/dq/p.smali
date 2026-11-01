.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;
.super Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;,
        Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;
    }
.end annotation


# instance fields
.field private ia:Lcom/bytedance/sdk/component/mn/dq;

.field private iw:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;

.field private volatile mn:Lcom/bytedance/sdk/component/mn/dq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->mn:Lcom/bytedance/sdk/component/mn/dq;

    const-string v0, "tt_materialMeta"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->ia:Lcom/bytedance/sdk/component/mn/dq;

    return-void
.end method

.method private d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;
    .locals 9

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->iw()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v1

    const-string v2, "expiration"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "update"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v3, v4}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    cmp-long p1, v3, v1

    if-ltz p1, :cond_2

    cmp-long p1, v3, v5

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;->dq:Z

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;->d:J

    iput-wide v5, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;->ox:J

    iput-wide v3, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;->p:J

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;)Lcom/bytedance/sdk/component/mn/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->ia:Lcom/bytedance/sdk/component/mn/dq;

    return-object p0
.end method

.method private dq(IJ)V
    .locals 5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->iw()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    const-string v1, "expiration"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;J)V

    const-string p2, "update"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-interface {v0, p2, v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;J)V

    const-string p2, "has_ad_cache"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Z)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/ds;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->iw:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;Lcom/bytedance/sdk/openadsdk/core/r/ds;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->iw:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ds;)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->iw:Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$d;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/o/mn;->dq(Lcom/bytedance/sdk/component/o/kk;I)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->dq(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->p(I)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    const-string v0, "no cache"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    :cond_0
    return p2

    :cond_1
    return v0
.end method

.method private iw()Lcom/bytedance/sdk/component/mn/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->mn:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    const-string v0, "tt_splash"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->mn:Lcom/bytedance/sdk/component/mn/dq;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->mn:Lcom/bytedance/sdk/component/mn/dq;

    return-object v0
.end method

.method private ox(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;

    move-result-object v0

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;->dq:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->mn(Lcom/bytedance/sdk/openadsdk/no/dq/dq;)V

    :cond_0
    iget-boolean p1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p$dq;->dq:Z

    return p1
.end method

.method private p(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u6e05\u9664\u7f13\u5b58\uff1a rit: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lqmt"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->iw()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->ia:Lcom/bytedance/sdk/component/mn/dq;

    const-string v2, "materialMeta"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "has_ad_cache"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;)V

    const-string v1, "expiration"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/dq;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->ia:Lcom/bytedance/sdk/component/mn/dq;

    const-string v2, "materialMeta"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ji$dq;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ji$dq;->ia:Lcom/bytedance/sdk/openadsdk/core/r/dq;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return-object p1

    :catch_0
    :cond_1
    return-object v1
.end method

.method public static s()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->bn()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$dq;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$dq;->dq()V

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->s(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/dq;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/r/j;

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/live/d;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    :catchall_0
    move-object p1, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_1
    :goto_1
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->bl()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->p(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p<",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;",
            "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Lcom/bytedance/sdk/openadsdk/f/d/ox/d;",
            "Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->ia:Lcom/bytedance/sdk/component/mn/dq;

    const-string v0, "net_ad_already_shown"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->ia:Lcom/bytedance/sdk/component/mn/dq;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "net_ad_save_success"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p4, v0, v1}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p2, "\u7f13\u5b58reqId:  "

    invoke-virtual {p2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "lqmt"

    invoke-static {p4, p2}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->p(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;->dq()V

    :cond_4
    :goto_1
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/ds;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ds;)I

    move-result p2

    if-gtz p2, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/ds;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ix()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->dq(IJ)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ds;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->iw()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    const-string v2, "has_ad_cache"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/p;->ox(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public ox()V
    .locals 1

    :try_start_0
    const-string v0, "tt_materialMeta"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/mn/dq;->d()V

    const-string v0, "tt_splash"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/mn/dq;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

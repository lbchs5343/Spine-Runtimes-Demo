.class Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p/p/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Landroid/os/Bundle;)Lcom/bytedance/sdk/openadsdk/core/p/p/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic dq:Z

.field final synthetic ia:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

.field final synthetic iw:Z

.field private final kk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic mn:J

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/p/p/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;ZLcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;Lcom/bytedance/sdk/openadsdk/core/p/p/s;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->ia:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->dq:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->s:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->iw:Z

    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->mn:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 5

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->mn:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->mn:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->p(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->s:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/s;->d(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public dq()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->ia:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq()Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->dq:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/p/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->s:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/s;->dq(Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "is_play_again"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->iw:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "is_from_cache"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->dq:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "is_adm"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "cache_strategy"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->ia:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq()Z

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->dq(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "src_req_id"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_map"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ml()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "load_duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->mn:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v3, "stats_reward_full_ad_loaded"

    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->ia:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method public ox()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->dq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->ia:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq()Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p/d/dq;->ox(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->ia:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq()Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p/d/dq;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_1
    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p/p/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;Landroid/os/Bundle;)Lcom/bytedance/sdk/openadsdk/core/p/p/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic dq:Z

.field final synthetic iw:J

.field final synthetic mn:Lcom/bytedance/sdk/openadsdk/core/p/dq/dq;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/core/component/reward/d;

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/p/p/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/dq/dq;ZLcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/component/reward/d;Lcom/bytedance/sdk/openadsdk/core/p/p/s;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->mn:Lcom/bytedance/sdk/openadsdk/core/p/dq/dq;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->dq:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/d;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->s:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->iw:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->k()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->iw:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d;->d(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->s:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/d;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/s;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->mn:Lcom/bytedance/sdk/openadsdk/core/p/dq/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq()Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/d;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->dq:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/p/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->s:Lcom/bytedance/sdk/openadsdk/core/p/p/s;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->p:Lcom/bytedance/sdk/openadsdk/core/component/reward/d;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/p/p/s;->dq(Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "is_from_cache"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->dq:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "is_adm"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->wp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "cache_strategy"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->mn:Lcom/bytedance/sdk/openadsdk/core/p/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq;->dq()Z

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->dq(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "src_req_id"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_map"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ml()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "load_duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->iw:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v3, "stats_reward_full_ad_loaded"

    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->mn:Lcom/bytedance/sdk/openadsdk/core/p/dq/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/p/p/ox;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V

    return-void
.end method

.method public ox()V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->dq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->mn:Lcom/bytedance/sdk/openadsdk/core/p/dq/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq()Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p/d/dq;->ox(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->mn:Lcom/bytedance/sdk/openadsdk/core/p/dq/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq()Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p/d/dq;->d(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_1
    return-void
.end method

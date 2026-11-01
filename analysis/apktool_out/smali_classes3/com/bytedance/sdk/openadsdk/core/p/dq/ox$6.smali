.class Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->d:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 0

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(I)V

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/core/r/d;->d(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/r/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->d:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->xo()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->d:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/f/d/ox/d;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->d:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Lcom/bytedance/sdk/openadsdk/core/r/dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->d:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/p/p/d;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/p/p/d;->dq()Lcom/bytedance/sdk/openadsdk/core/p/d/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/p/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "cache_strategy"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->d:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq()Z

    move-result v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/dq/p;->dq(Z)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "src_req_id"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->hz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "is_map"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ml()Z

    move-result v1

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object p2

    const-string v1, "stats_reward_full_preload"

    invoke-virtual {p2, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->d:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x4

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Ljava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->d:Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox$6;->dq:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->mn()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x3

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/o;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2, p2}, Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/p/dq/ox;Ljava/lang/String;ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void
.end method

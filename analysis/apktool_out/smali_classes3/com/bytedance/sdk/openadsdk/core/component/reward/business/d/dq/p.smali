.class public Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;


# instance fields
.field d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ob;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    invoke-direct {p1, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;-><init>(ZILjava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/r/xi;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/xi;->ox()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/ox;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v4, v5, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/ox;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/xi;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ig:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ox(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->no:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->p(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;->dq:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;->dq(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->kk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->f:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->dq(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;->ox()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_3
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    invoke-direct {p1, v2, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;-><init>(ZILjava/lang/String;)V

    return-object p1
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

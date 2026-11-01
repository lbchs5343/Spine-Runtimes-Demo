.class public abstract Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;


# instance fields
.field protected d:I

.field protected dq:I

.field protected iw:Z

.field protected ox:Z

.field protected p:Z

.field protected s:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/xi;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/xi;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->p:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->d(Z)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->ox:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->dq(Z)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->dq:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->dq(I)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->d:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->d(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ox(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->dq(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->jy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->d(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->iw:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->ox(Z)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->s:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->p(Z)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/mp;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    move-result-object p1

    return-object p1
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->d:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->p:Z

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->dq:I

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->ox:Z

    return-void
.end method

.method public ox(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->iw:Z

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/dq;->s:Z

    return-void
.end method

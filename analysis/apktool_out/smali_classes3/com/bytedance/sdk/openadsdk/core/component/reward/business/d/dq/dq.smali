.class public abstract Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;


# instance fields
.field protected dq:Ljava/lang/String;


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
.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ia:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->mn:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->no:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->p(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->ox(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->jy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;->dq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;->dq(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;->dq:Ljava/lang/String;

    return-void
.end method

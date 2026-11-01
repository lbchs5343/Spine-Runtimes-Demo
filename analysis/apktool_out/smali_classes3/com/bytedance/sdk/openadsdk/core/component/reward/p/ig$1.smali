.class Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig$1;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;->d()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ig;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->vf()V

    return-void
.end method

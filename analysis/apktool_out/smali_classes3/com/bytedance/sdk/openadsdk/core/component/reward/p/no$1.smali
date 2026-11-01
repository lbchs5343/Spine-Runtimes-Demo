.class Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no$1;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;->d()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;->dq()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->vf()V

    return-void
.end method

.method public ox()V
    .locals 4

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;->ox()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;->ox()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->vf()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/no;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->xz()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "reward_retain_dialog_next"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/ox;->dq(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

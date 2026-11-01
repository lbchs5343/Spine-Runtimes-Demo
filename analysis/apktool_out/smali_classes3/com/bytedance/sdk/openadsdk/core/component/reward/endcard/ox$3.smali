.class Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/fw/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ji:Lcom/bytedance/sdk/component/utils/e;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ji:Lcom/bytedance/sdk/component/utils/e;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->ji:Lcom/bytedance/sdk/component/utils/e;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/l;->mn(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->mp(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/playable/ox;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/playable/ox;->dq(I)V

    :cond_0
    return-void
.end method

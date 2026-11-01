.class Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/ia/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Lcom/bytedance/msdk/core/admanager/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->dq:Lcom/bytedance/msdk/core/admanager/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Z)Z

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->dq:Lcom/bytedance/msdk/core/admanager/o;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ox(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->p(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->s(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/msdk/core/admanager/o;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Z)Z

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->dq:Lcom/bytedance/msdk/core/admanager/o;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->ox(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->p(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->s(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/msdk/core/admanager/o;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Z)Z

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$5;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {p1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->t_()V

    :cond_0
    return-void
.end method

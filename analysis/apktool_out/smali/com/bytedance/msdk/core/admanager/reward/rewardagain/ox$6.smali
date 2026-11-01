.class Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$6;->dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$6;->dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$6;->dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Z)Z

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$6;->dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$6;->dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    invoke-static {v0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;)Lcom/bytedance/msdk/api/p/dq/ia/dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ia/dq;->t_()V

    :cond_0
    return-void
.end method

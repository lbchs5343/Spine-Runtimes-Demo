.class Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->d(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$4;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$4;->dq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$4;->d:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$4;->dq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->p()V

    return-void
.end method

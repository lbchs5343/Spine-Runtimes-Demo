.class Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$3;
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
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;

.field final synthetic ox:Lcom/bytedance/msdk/d/s;

.field final synthetic p:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$3;->p:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;

    iput-object p3, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$3;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$3;->ox:Lcom/bytedance/msdk/d/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$3;->p:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$3;->dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$3;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$3;->ox:Lcom/bytedance/msdk/d/s;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V

    invoke-static {}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->p()V

    return-void
.end method

.class Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;

.field final synthetic ox:Lcom/bytedance/msdk/d/s;

.field final synthetic p:Landroid/app/Dialog;

.field final synthetic s:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$1;->s:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;

    iput-object p3, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$1;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$1;->ox:Lcom/bytedance/msdk/d/s;

    iput-object p5, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$1;->p:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$1;->s:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$1;->dq:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$1;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$1;->ox:Lcom/bytedance/msdk/d/s;

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Lcom/bytedance/msdk/core/admanager/reward/rewardagain/dq;Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$1;->p:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.class Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$2;
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
.field final synthetic d:Landroid/app/Dialog;

.field final synthetic dq:Ljava/lang/String;

.field final synthetic ox:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$2;->ox:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    iput-object p2, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$2;->dq:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$2;->d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$2;->ox:Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;

    iget-object v0, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$2;->dq:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;->dq(Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/admanager/reward/rewardagain/ox$2;->d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

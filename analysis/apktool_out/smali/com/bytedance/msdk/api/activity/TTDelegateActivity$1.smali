.class Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;
.super Lcom/bytedance/msdk/core/q/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/activity/TTDelegateActivity;->dq(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

.field final synthetic dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/activity/TTDelegateActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;->d:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    iput-object p2, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;->dq:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/q/iw;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;->dq:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/msdk/core/q/dq;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;->d:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;->dq:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/bytedance/msdk/core/q/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;->d:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

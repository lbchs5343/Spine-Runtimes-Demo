.class Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;
.super Lcom/bytedance/msdk/core/q/iw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/activity/TTDelegateActivity;->dq(I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/activity/TTDelegateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;->dq:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/q/iw;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    const-string v0, "TMe"

    const-string v1, "-------=----- onGranted"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$dq;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$dq;-><init>()V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;->dq:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    const-string v0, "-------=----- onDenied: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    new-instance p1, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$dq;

    invoke-direct {p1}, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$dq;-><init>()V

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;->dq:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

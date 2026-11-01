.class Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/model/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->d(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

.field final synthetic dq:Lcom/ss/android/downloadad/api/dq/d;


# direct methods
.method public constructor <init>(Lcom/ss/android/downloadlib/activity/TTDelegateActivity;Lcom/ss/android/downloadad/api/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->d:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    iput-object p2, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-static {}, Lcom/ss/android/downloadlib/p/dq;->dq()Lcom/ss/android/downloadlib/p/dq;

    move-result-object v0

    const-string v1, "market_openapp_cancel"

    iget-object v2, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/p/dq;->d(Ljava/lang/String;Lcom/ss/android/downloadad/api/dq/dq;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->d:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->d:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Landroid/app/Activity;)V

    return-void
.end method

.method public dq(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->dq:Lcom/ss/android/downloadad/api/dq/d;

    invoke-static {v0}, Lcom/ss/android/downloadlib/d/dq;->d(Lcom/ss/android/downloadad/api/dq/d;)V

    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->d:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->d:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Landroid/app/Activity;)V

    return-void
.end method

.method public ox(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->d:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/ox;->dq(Landroid/app/Activity;)V

    return-void
.end method

.class Lcom/bytedance/msdk/ia/no$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/ia/no;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private d:I

.field final synthetic dq:Lcom/bytedance/msdk/ia/no;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ia/no;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ia/no$1;->dq:Lcom/bytedance/msdk/ia/no;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/msdk/ia/no$1;->d:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget p1, p0, Lcom/bytedance/msdk/ia/no$1;->d:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/msdk/ia/no$1;->d:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/ia/no$1;->dq:Lcom/bytedance/msdk/ia/no;

    invoke-static {p1}, Lcom/bytedance/msdk/ia/no;->dq(Lcom/bytedance/msdk/ia/no;)Lcom/bytedance/msdk/ia/no$dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/ia/no$1;->dq:Lcom/bytedance/msdk/ia/no;

    invoke-static {p1}, Lcom/bytedance/msdk/ia/no;->dq(Lcom/bytedance/msdk/ia/no;)Lcom/bytedance/msdk/ia/no$dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/ia/no$dq;->dq()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    iget p1, p0, Lcom/bytedance/msdk/ia/no$1;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/bytedance/msdk/ia/no$1;->d:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/ia/no$1;->dq:Lcom/bytedance/msdk/ia/no;

    invoke-static {p1}, Lcom/bytedance/msdk/ia/no;->dq(Lcom/bytedance/msdk/ia/no;)Lcom/bytedance/msdk/ia/no$dq;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/ia/no$1;->dq:Lcom/bytedance/msdk/ia/no;

    invoke-static {p1}, Lcom/bytedance/msdk/ia/no;->dq(Lcom/bytedance/msdk/ia/no;)Lcom/bytedance/msdk/ia/no$dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/msdk/ia/no$dq;->d()V

    :cond_0
    return-void
.end method

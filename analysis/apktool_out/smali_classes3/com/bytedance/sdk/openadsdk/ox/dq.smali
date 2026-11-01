.class Lcom/bytedance/sdk/openadsdk/ox/dq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/ox/dq$dq;
    }
.end annotation


# static fields
.field private static volatile dq:Z


# instance fields
.field private d:I

.field private ox:Lcom/bytedance/sdk/openadsdk/ox/dq$dq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ox/dq;->d:I

    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/Boolean;
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/ox/dq;->dq:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/ox/dq$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ox/dq;->ox:Lcom/bytedance/sdk/openadsdk/ox/dq$dq;

    return-void
.end method

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
    .locals 0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/ox/dq;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ox/dq;->d:I

    const/4 p1, 0x0

    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/ox/dq;->dq:Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ox/dq;->ox:Lcom/bytedance/sdk/openadsdk/ox/dq$dq;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ox/dq$dq;->d()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/ox/dq;->d:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ox/dq;->d:I

    if-nez p1, :cond_0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/ox/dq;->dq:Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ox/dq;->ox:Lcom/bytedance/sdk/openadsdk/ox/dq$dq;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/ox/dq$dq;->dq()V

    :cond_0
    return-void
.end method

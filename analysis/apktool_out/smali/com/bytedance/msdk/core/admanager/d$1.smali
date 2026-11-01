.class Lcom/bytedance/msdk/core/admanager/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/core/admanager/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/core/admanager/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/core/admanager/d$1;->dq:Lcom/bytedance/msdk/core/admanager/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    const-string p2, "--==--- onActivityCreated: activity: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/bytedance/pangle/wrapper/PluginActivityWrapper;

    if-ne v1, v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/bytedance/pangle/wrapper/PluginActivityWrapper;

    iget-object v1, v1, Lcom/bytedance/pangle/wrapper/GenerateActivityWrapper;->mOriginActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    const-string p2, "--==--- onActivityCreated: originActivity: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/core/admanager/d$1;->dq:Lcom/bytedance/msdk/core/admanager/d;

    invoke-static {v1}, Lcom/bytedance/msdk/core/admanager/d;->dq(Lcom/bytedance/msdk/core/admanager/d;)Ljava/lang/ref/SoftReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_2

    const-string p2, "--==--- onActivityCreated: start transparent activity"

    invoke-static {v0, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p2, p1, Lcom/bytedance/msdk/api/activity/TTTransparentActivity;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/msdk/core/admanager/d$1;->dq:Lcom/bytedance/msdk/core/admanager/d;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p2, v1}, Lcom/bytedance/msdk/core/admanager/d;->dq(Lcom/bytedance/msdk/core/admanager/d;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    const-string p2, "--==--- onActivityCreated: start transparent activity, callSuperShowAd"

    invoke-static {v0, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/msdk/core/admanager/d$1;->dq:Lcom/bytedance/msdk/core/admanager/d;

    invoke-static {p2}, Lcom/bytedance/msdk/core/admanager/d;->d(Lcom/bytedance/msdk/core/admanager/d;)Lcom/bytedance/msdk/d/s;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/core/admanager/d$1;->dq:Lcom/bytedance/msdk/core/admanager/d;

    invoke-static {v2}, Lcom/bytedance/msdk/core/admanager/d;->ox(Lcom/bytedance/msdk/core/admanager/d;)Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/core/admanager/d$1;->dq:Lcom/bytedance/msdk/core/admanager/d;

    invoke-static {v3}, Lcom/bytedance/msdk/core/admanager/d;->p(Lcom/bytedance/msdk/core/admanager/d;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v1, p1, v2, v3}, Lcom/bytedance/msdk/core/admanager/d;->dq(Lcom/bytedance/msdk/core/admanager/d;Lcom/bytedance/msdk/d/s;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V

    const-string p1, "--==--- onActivityCreated: end"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v2, "--==--- onActivityCreated again, showingActivity: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v2, v1, Lcom/bytedance/msdk/api/activity/TTTransparentActivity;

    if-eqz v2, :cond_3

    invoke-static {p2}, Lcom/bytedance/msdk/core/admanager/iw;->d(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "--==--- onActivityCreated again, is adn ad activity: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object p2, p0, Lcom/bytedance/msdk/core/admanager/d$1;->dq:Lcom/bytedance/msdk/core/admanager/d;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p2, v1}, Lcom/bytedance/msdk/core/admanager/d;->dq(Lcom/bytedance/msdk/core/admanager/d;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    goto :goto_0

    :cond_3
    const-string p1, "--==--- onActivityCreated again, is not adn ad activity"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, "--==--- onActivityCreated: end 2"

    invoke-static {v0, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

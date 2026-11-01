.class public abstract Lg/cms;
.super Lg/dms;
.source "SourceFile"


# instance fields
.field private ad:Lg/eo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/bfb;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lg/bfb;-><init>(I)V

    sput-object v0, Lg/fyt;->b:Lg/bfb;

    return-void
.end method


# virtual methods
.method public bannerAdHide()Z
    .locals 3

    iget-object v0, p0, Lg/cms;->ad:Lg/eo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Lg/eku;

    iget-object v0, v0, Lg/eku;->i:Lg/dms;

    const v2, 0x7f090063

    invoke-virtual {v0, v2}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public bannerAdInit(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lg/cms;->ad:Lg/eo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Lg/eku;

    iget-object v2, v0, Lg/eku;->i:Lg/dms;

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, p1, p2, v1}, Lg/eku;->q(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public bannerAdShow()Z
    .locals 4

    iget-object v0, p0, Lg/cms;->ad:Lg/eo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Lg/eku;

    iget-object v2, v0, Lg/eku;->i:Lg/dms;

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lg/eku;->l:Landroid/content/Context;

    invoke-static {v0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public fullScreenAdInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/cms;->ad:Lg/eo;

    if-eqz v0, :cond_0

    check-cast v0, Lg/eku;

    invoke-virtual {v0, p1, p2}, Lg/eku;->r(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public fullScreenAdShow()V
    .locals 6

    iget-object v0, p0, Lg/cms;->ad:Lg/eo;

    if-eqz v0, :cond_4

    check-cast v0, Lg/eku;

    iget-object v1, v0, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    if-nez v1, :cond_2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->getMediationManager()Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/mediation/manager/MediationFullScreenManager;->destroy()V

    :cond_0
    iput-object v2, v0, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    :cond_1
    iget-object v1, v0, Lg/eku;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lg/eku;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lg/eku;->r(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_2
    sget-object v1, Lg/dlb;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lg/eku;->d:J

    sub-long/2addr v1, v3

    sget-wide v3, Lg/eku;->b:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lg/eku;->j:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;

    iget-object v0, v0, Lg/eku;->i:Lg/dms;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;->showFullScreenVideoAd(Landroid/app/Activity;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lg/dms;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    :try_start_0
    const-class v0, Lg/eku;

    sget-boolean v1, Lg/eku;->e:Z

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lg/dms;

    aput-object v3, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/eo;

    iput-object v0, p0, Lg/cms;->ad:Lg/eo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lg/byh;->bc()Z

    move-result v1

    const-string v2, "ads is null"

    if-eqz v1, :cond_0

    invoke-static {p0, v2, p1}, Lg/gm;->d(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_0
    invoke-static {v2, v0}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lg/cms;->ad:Lg/eo;

    if-eqz v0, :cond_0

    check-cast v0, Lg/eku;

    invoke-virtual {v0}, Lg/eku;->p()V

    :cond_0
    invoke-super {p0}, Lg/dms;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lg/cms;->ad:Lg/eo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/u;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lg/dms;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lg/erl;->ac(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lg/cms;->ad:Lg/eo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

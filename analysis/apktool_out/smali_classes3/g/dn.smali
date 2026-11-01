.class public abstract Lg/dn;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getSDKVersionInfo()Lg/axk;
.end method

.method public abstract getVersionInfo()Lg/axk;
.end method

.method public abstract initialize(Landroid/content/Context;Lg/nc;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lg/nc;",
            "Ljava/util/List<",
            "Lg/bli;",
            ">;)V"
        }
    .end annotation
.end method

.method public loadAppOpenAd(Lg/gtn;Lg/gon;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/gtn;",
            "Lg/gon;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Lg/ezz;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, " does not support app open ads."

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.ads"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v3, p1, v1, v2}, Lg/ezz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;)V

    invoke-interface {p2, v0}, Lg/gon;->ac(Lg/ezz;)V

    return-void
.end method

.method public loadBannerAd(Lg/cdw;Lg/gon;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/cdw;",
            "Lg/gon;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Lg/ezz;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, " does not support banner ads."

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.ads"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v3, p1, v1, v2}, Lg/ezz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;)V

    invoke-interface {p2, v0}, Lg/gon;->ac(Lg/ezz;)V

    return-void
.end method

.method public loadInterscrollerAd(Lg/cdw;Lg/gon;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/cdw;",
            "Lg/gon;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Lg/ezz;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, " does not support interscroller ads."

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.ads"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v3, p1, v1, v2}, Lg/ezz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;)V

    invoke-interface {p2, v0}, Lg/gon;->ac(Lg/ezz;)V

    return-void
.end method

.method public loadInterstitialAd(Lg/jy;Lg/gon;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/jy;",
            "Lg/gon;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Lg/ezz;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, " does not support interstitial ads."

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.ads"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v3, p1, v1, v2}, Lg/ezz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;)V

    invoke-interface {p2, v0}, Lg/gon;->ac(Lg/ezz;)V

    return-void
.end method

.method public loadNativeAd(Lg/giv;Lg/gon;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/giv;",
            "Lg/gon;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Lg/ezz;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, " does not support native ads."

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.ads"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v3, p1, v1, v2}, Lg/ezz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;)V

    invoke-interface {p2, v0}, Lg/gon;->ac(Lg/ezz;)V

    return-void
.end method

.method public loadNativeAdMapper(Lg/giv;Lg/gon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/giv;",
            "Lg/gon;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method is not found"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadRewardedAd(Lg/dpg;Lg/gon;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/dpg;",
            "Lg/gon;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Lg/ezz;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, " does not support rewarded ads."

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.ads"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v3, p1, v1, v2}, Lg/ezz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;)V

    invoke-interface {p2, v0}, Lg/gon;->ac(Lg/ezz;)V

    return-void
.end method

.method public loadRewardedInterstitialAd(Lg/dpg;Lg/gon;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/dpg;",
            "Lg/gon;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Lg/ezz;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, " does not support rewarded interstitial ads."

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.google.android.gms.ads"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v3, p1, v1, v2}, Lg/ezz;-><init>(ILjava/lang/String;Ljava/lang/String;Lg/ezz;)V

    invoke-interface {p2, v0}, Lg/gon;->ac(Lg/ezz;)V

    return-void
.end method

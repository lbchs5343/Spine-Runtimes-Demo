.class public abstract Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;
.super Lg/dn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract collectSignals(Lg/alk;Lg/bic;)V
.end method

.method public loadRtbAppOpenAd(Lg/gtn;Lg/gon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/gtn;",
            "Lg/gon;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lg/dn;->loadAppOpenAd(Lg/gtn;Lg/gon;)V

    return-void
.end method

.method public loadRtbBannerAd(Lg/cdw;Lg/gon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/cdw;",
            "Lg/gon;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lg/dn;->loadBannerAd(Lg/cdw;Lg/gon;)V

    return-void
.end method

.method public loadRtbInterscrollerAd(Lg/cdw;Lg/gon;)V
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

.method public loadRtbInterstitialAd(Lg/jy;Lg/gon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/jy;",
            "Lg/gon;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lg/dn;->loadInterstitialAd(Lg/jy;Lg/gon;)V

    return-void
.end method

.method public loadRtbNativeAd(Lg/giv;Lg/gon;)V
    .locals 0
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

    invoke-virtual {p0, p1, p2}, Lg/dn;->loadNativeAd(Lg/giv;Lg/gon;)V

    return-void
.end method

.method public loadRtbNativeAdMapper(Lg/giv;Lg/gon;)V
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

    invoke-virtual {p0, p1, p2}, Lg/dn;->loadNativeAdMapper(Lg/giv;Lg/gon;)V

    return-void
.end method

.method public loadRtbRewardedAd(Lg/dpg;Lg/gon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/dpg;",
            "Lg/gon;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lg/dn;->loadRewardedAd(Lg/dpg;Lg/gon;)V

    return-void
.end method

.method public loadRtbRewardedInterstitialAd(Lg/dpg;Lg/gon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/dpg;",
            "Lg/gon;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lg/dn;->loadRewardedInterstitialAd(Lg/dpg;Lg/gon;)V

    return-void
.end method

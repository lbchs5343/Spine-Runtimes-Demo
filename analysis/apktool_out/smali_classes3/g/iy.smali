.class public final Lg/iy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fim;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzbry;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/iy;->a:Lcom/google/android/gms/internal/ads/zzbry;

    return-void
.end method


# virtual methods
.method public final zzdH()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is resumed."

    invoke-static {v0}, Lg/agd;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdk()V
    .locals 1

    const-string v0, "AdMobCustomTabsAdapter overlay is paused."

    invoke-static {v0}, Lg/agd;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdq()V
    .locals 1

    const-string v0, "Delay close AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lg/agd;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final zzdr()V
    .locals 2

    const-string v0, "Opening AdMobCustomTabsAdapter overlay."

    invoke-static {v0}, Lg/agd;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lg/iy;->a:Lcom/google/android/gms/internal/ads/zzbry;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbry;->b:Lg/eey;

    invoke-interface {v1, v0}, Lg/eey;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final zzdt()V
    .locals 0

    return-void
.end method

.method public final zzdu(I)V
    .locals 1

    const-string p1, "AdMobCustomTabsAdapter overlay is closed."

    invoke-static {p1}, Lg/agd;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lg/iy;->a:Lcom/google/android/gms/internal/ads/zzbry;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbry;->b:Lg/eey;

    invoke-interface {v0, p1}, Lg/eey;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

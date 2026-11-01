.class public final Lcom/google/android/gms/internal/ads/zzbac;
.super Lcom/google/android/gms/internal/ads/zzbal;
.source "SourceFile"


# instance fields
.field public a:Lg/fas;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbal;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->a:Lg/fas;

    if-eqz v0, :cond_0

    check-cast v0, Lg/frt;

    iget-object v1, v0, Lg/frt;->b:Lg/eey;

    iget-object v0, v0, Lg/frt;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v1, v0}, Lg/eey;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_0
    return-void
.end method

.method public final zzd(Lg/abz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->a:Lg/fas;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/abz;->zza()Lg/ezz;

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->a:Lg/fas;

    if-eqz v0, :cond_0

    check-cast v0, Lg/frt;

    iget-object v1, v0, Lg/frt;->b:Lg/eey;

    iget-object v0, v0, Lg/frt;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v1, v0}, Lg/eey;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_0
    return-void
.end method

.method public final zzg(Lg/fas;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbac;->a:Lg/fas;

    return-void
.end method

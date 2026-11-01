.class public final Lcom/google/android/gms/internal/ads/zzbxu;
.super Lcom/google/android/gms/internal/ads/zzbxe;
.source "SourceFile"


# instance fields
.field public a:Lg/fas;

.field public b:Lg/fqz;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbxe;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lg/fas;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxu;->a:Lg/fas;

    return-void
.end method

.method public final zzc(Lg/fqz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxu;->b:Lg/fqz;

    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final zzg()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxu;->a:Lg/fas;

    if-eqz v0, :cond_0

    check-cast v0, Lg/frt;

    iget-object v1, v0, Lg/frt;->b:Lg/eey;

    iget-object v0, v0, Lg/frt;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v1, v0}, Lg/eey;->onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_0
    return-void
.end method

.method public final zzh(I)V
    .locals 0

    return-void
.end method

.method public final zzi(Lg/abz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxu;->a:Lg/fas;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lg/abz;->zza()Lg/ezz;

    :cond_0
    return-void
.end method

.method public final zzj()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxu;->a:Lg/fas;

    if-eqz v0, :cond_0

    check-cast v0, Lg/frt;

    iget-object v1, v0, Lg/frt;->b:Lg/eey;

    iget-object v0, v0, Lg/frt;->a:Lcom/google/ads/mediation/AbstractAdViewAdapter;

    invoke-interface {v1, v0}, Lg/eey;->onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    :cond_0
    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzbwz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxu;->b:Lg/fqz;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbxm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbxm;-><init>(Lcom/google/android/gms/internal/ads/zzbwz;)V

    invoke-interface {v0, v1}, Lg/fqz;->onUserEarnedReward(Lg/coc;)V

    :cond_0
    return-void
.end method

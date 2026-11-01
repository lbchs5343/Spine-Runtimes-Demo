.class public final Lcom/google/android/gms/internal/ads/zzdtr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbkq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbkq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtr;->a:Lcom/google/android/gms/internal/ads/zzbkq;

    return-void
.end method


# virtual methods
.method public final b(Lg/daw;)V
    .locals 1

    invoke-static {p1}, Lg/daw;->i(Lg/daw;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dispatching AFMA event on publisher webview: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtr;->a:Lcom/google/android/gms/internal/ads/zzbkq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbkq;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public final zza()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "initialize"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzb(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "interstitial"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onAdClicked"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-static {v0}, Lg/daw;->i(Lg/daw;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtr;->a:Lcom/google/android/gms/internal/ads/zzbkq;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbkq;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "interstitial"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onAdClosed"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzd(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "interstitial"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onAdFailedToLoad"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zze(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "interstitial"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onAdLoaded"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzf(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "interstitial"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onNativeAdObjectNotAvailable"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzg(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "interstitial"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onAdOpened"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzh(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "creation"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "nativeObjectCreated"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzi(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "creation"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "nativeObjectNotCreated"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzj(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "rewarded"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onAdClicked"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzk(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "rewarded"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onRewardedAdClosed"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzl(JLcom/google/android/gms/internal/ads/zzbwz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "rewarded"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onUserEarnedReward"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbwz;->zzf()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->d:Ljava/lang/Object;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbwz;->zze()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzm(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "rewarded"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onRewardedAdFailedToLoad"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzn(JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "rewarded"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onRewardedAdFailedToShow"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzo(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "rewarded"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onAdImpression"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzp(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "rewarded"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onRewardedAdLoaded"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzq(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "rewarded"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onNativeAdObjectNotAvailable"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

.method public final zzr(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lg/daw;

    const-string v1, "rewarded"

    invoke-direct {v0, v1}, Lg/daw;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lg/daw;->e:Ljava/lang/Object;

    const-string p1, "onRewardedAdOpened"

    iput-object p1, v0, Lg/daw;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdtr;->b(Lg/daw;)V

    return-void
.end method

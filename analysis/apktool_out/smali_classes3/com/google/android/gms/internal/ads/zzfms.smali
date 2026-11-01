.class public final Lcom/google/android/gms/internal/ads/zzfms;
.super Lcom/google/android/gms/internal/ads/zzfmo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpg;Lg/ghd;Lg/aik;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzflx;Lg/cvb;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/internal/ads/zzfmo;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzbpg;Lg/ghd;Lg/aik;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzflx;Lg/cvb;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzgfa;
    .locals 7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfa;->zze()Lcom/google/android/gms/internal/ads/zzgfa;

    move-result-object v0

    new-instance v1, Lg/bpp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfmo;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfmo;->f:Lg/ghd;

    iget-object v3, v2, Lg/ghd;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfmo;->d:Lcom/google/android/gms/internal/ads/zzbpg;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzfmo;->m:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfmo;->g:Lcom/google/android/gms/ads/internal/ClientApi;

    invoke-virtual {v6, v1, v3, v4, v5}, Lcom/google/android/gms/ads/internal/ClientApi;->e(Lg/bjq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lcom/google/android/gms/internal/ads/zzbxc;

    move-result-object v1

    new-instance v3, Lg/cub;

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfek;

    invoke-direct {v3, p0, v0, v4}, Lg/cub;-><init>(Lcom/google/android/gms/internal/ads/zzfms;Lcom/google/android/gms/internal/ads/zzgfa;Lcom/google/android/gms/internal/ads/zzfek;)V

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, v2, Lg/ghd;->zzc:Lg/aeh;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbxc;->zzf(Lg/aeh;Lcom/google/android/gms/internal/ads/zzbxj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v1, "Failed to load rewarded ad."

    invoke-static {v1}, Lg/agd;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzflt;

    const-string v2, "remote exception"

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzflt;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfa;->zzd(Ljava/lang/Throwable;)Z

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzflt;

    const-string v2, "Failed to create a rewarded ad."

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzflt;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfa;->zzd(Ljava/lang/Throwable;)Z

    return-object v0
.end method

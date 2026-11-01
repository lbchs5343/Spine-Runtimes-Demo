.class public final Lcom/google/android/gms/internal/ads/zzflw;
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
    .locals 8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfa;->zze()Lcom/google/android/gms/internal/ads/zzgfa;

    move-result-object v0

    new-instance v2, Lg/bpp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmo;->k:Landroid/content/Context;

    invoke-direct {v2, v1}, Lg/bpp;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lg/eno;->zzb()Lg/eno;

    move-result-object v3

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfmo;->f:Lg/ghd;

    iget-object v4, v7, Lg/ghd;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfmo;->d:Lcom/google/android/gms/internal/ads/zzbpg;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzfmo;->m:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmo;->g:Lcom/google/android/gms/ads/internal/ClientApi;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/ClientApi;->m(Lg/bjq;Lg/eno;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpg;I)Lg/deq;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v3, Lg/czs;

    invoke-direct {v3, p0, v0, v7}, Lg/czs;-><init>(Lcom/google/android/gms/internal/ads/zzflw;Lcom/google/android/gms/internal/ads/zzgfa;Lg/ghd;)V

    invoke-interface {v1, v3}, Lg/deq;->zzH(Lcom/google/android/gms/internal/ads/zzbai;)V

    iget-object v3, v7, Lg/ghd;->zzc:Lg/aeh;

    invoke-interface {v1, v3}, Lg/deq;->zzab(Lg/aeh;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v1, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzflt;

    const-string v3, "remote exception"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzflt;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfa;->zzd(Ljava/lang/Throwable;)Z

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzflt;

    const-string v3, "Failed to create an app open ad manager."

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzflt;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgfa;->zzd(Ljava/lang/Throwable;)Z

    return-object v0
.end method

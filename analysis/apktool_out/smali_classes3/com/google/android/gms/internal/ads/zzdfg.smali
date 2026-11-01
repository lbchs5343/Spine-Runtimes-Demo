.class public final Lcom/google/android/gms/internal/ads/zzdfg;
.super Lcom/google/android/gms/internal/ads/zzdcc;
.source "SourceFile"


# instance fields
.field public a:Z


# virtual methods
.method public final zza()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdfd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdcc;->m(Lcom/google/android/gms/internal/ads/zzdcb;)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdfc;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdcc;->m(Lcom/google/android/gms/internal/ads/zzdcb;)V

    return-void
.end method

.method public final declared-synchronized zzc()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdfg;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdfe;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdcc;->m(Lcom/google/android/gms/internal/ads/zzdcb;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdfg;->a:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdff;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdff;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdcc;->m(Lcom/google/android/gms/internal/ads/zzdcb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzd()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdfe;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdcc;->m(Lcom/google/android/gms/internal/ads/zzdcb;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdfg;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

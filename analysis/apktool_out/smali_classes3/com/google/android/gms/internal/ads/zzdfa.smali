.class public final Lcom/google/android/gms/internal/ads/zzdfa;
.super Lcom/google/android/gms/internal/ads/zzdcc;
.source "SourceFile"


# virtual methods
.method public final declared-synchronized zza(Lg/ggs;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdey;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdey;-><init>(Lg/ggs;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdcc;->m(Lcom/google/android/gms/internal/ads/zzdcb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdez;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdez;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdcc;->m(Lcom/google/android/gms/internal/ads/zzdcb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

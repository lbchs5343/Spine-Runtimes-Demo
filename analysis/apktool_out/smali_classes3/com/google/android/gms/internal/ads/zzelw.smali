.class public final Lcom/google/android/gms/internal/ads/zzelw;
.super Lg/cpj;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchk;Lcom/google/android/gms/internal/ads/zzffm;Lcom/google/android/gms/internal/ads/zzdjj;Lg/ejp;)V
    .locals 2

    invoke-direct {p0}, Lg/cpj;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzenf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzchk;->zzj()Lcom/google/android/gms/internal/ads/zzdsm;

    move-result-object v1

    invoke-direct {v0, p4, v1}, Lcom/google/android/gms/internal/ads/zzenf;-><init>(Lcom/google/android/gms/internal/ads/zzdjj;Lcom/google/android/gms/internal/ads/zzdsm;)V

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/zzenf;->zze(Lg/ejp;)V

    new-instance p4, Lcom/google/android/gms/internal/ads/zzenp;

    invoke-direct {p4, p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzenp;-><init>(Lcom/google/android/gms/internal/ads/zzchk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzenf;Lcom/google/android/gms/internal/ads/zzffm;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzend;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzffm;->zzL()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzend;-><init>(Lcom/google/android/gms/internal/ads/zzeni;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelw;->a:Lcom/google/android/gms/internal/ads/zzend;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zze()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelw;->a:Lcom/google/android/gms/internal/ads/zzend;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzend;->zza()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzf()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelw;->a:Lcom/google/android/gms/internal/ads/zzend;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzend;->zzb()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzg(Lg/aeh;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelw;->a:Lcom/google/android/gms/internal/ads/zzend;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzend;->zzd(Lg/aeh;I)V

    return-void
.end method

.method public final declared-synchronized zzh(Lg/aeh;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelw;->a:Lcom/google/android/gms/internal/ads/zzend;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzend;->zzd(Lg/aeh;I)V
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

.method public final declared-synchronized zzi()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelw;->a:Lcom/google/android/gms/internal/ads/zzend;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzend;->zze()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.class public final Lcom/google/android/gms/internal/ads/zzbbp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public final synthetic c:Lcom/google/android/gms/internal/ads/zzbbr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbbr;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbp;->c:Lcom/google/android/gms/internal/ads/zzbbr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbp;->a:[B

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbbp;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbp;->c:Lcom/google/android/gms/internal/ads/zzbbr;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbbr;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbr;->a:Lcom/google/android/gms/internal/ads/zzayh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbp;->a:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzayh;->zzj([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbp;->c:Lcom/google/android/gms/internal/ads/zzbbr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbr;->a:Lcom/google/android/gms/internal/ads/zzayh;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzayh;->zzi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbp;->c:Lcom/google/android/gms/internal/ads/zzbbr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbr;->a:Lcom/google/android/gms/internal/ads/zzayh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbbp;->b:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzayh;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbp;->c:Lcom/google/android/gms/internal/ads/zzbbr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbr;->a:Lcom/google/android/gms/internal/ads/zzayh;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzayh;->zzh([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbp;->c:Lcom/google/android/gms/internal/ads/zzbbr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbr;->a:Lcom/google/android/gms/internal/ads/zzayh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzayh;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    :try_start_1
    sget-object v0, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzbbp;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbp;->b:I

    return-object p0
.end method

.method public final declared-synchronized zzc()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbp;->c:Lcom/google/android/gms/internal/ads/zzbbr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbr;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbbo;-><init>(Lcom/google/android/gms/internal/ads/zzbbp;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
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

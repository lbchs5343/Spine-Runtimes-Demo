.class public final Lcom/google/android/gms/internal/ads/zzfrp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzfrr;

.field public final b:[B

.field public c:I

.field public d:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfrr;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfrp;->a:Lcom/google/android/gms/internal/ads/zzfrr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfrp;->b:[B

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzfrp;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfrp;->d:I

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzfrp;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfrp;->c:I

    return-object p0
.end method

.method public final declared-synchronized zzc()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrp;->a:Lcom/google/android/gms/internal/ads/zzfrr;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfrr;->b:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfrr;->a:Lcom/google/android/gms/internal/ads/zzfru;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfrp;->b:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfru;->zzj([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrp;->a:Lcom/google/android/gms/internal/ads/zzfrr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfrr;->a:Lcom/google/android/gms/internal/ads/zzfru;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfrp;->c:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfru;->zzi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrp;->a:Lcom/google/android/gms/internal/ads/zzfrr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfrr;->a:Lcom/google/android/gms/internal/ads/zzfru;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfrp;->d:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfru;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrp;->a:Lcom/google/android/gms/internal/ads/zzfrr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfrr;->a:Lcom/google/android/gms/internal/ads/zzfru;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfru;->zzh([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfrp;->a:Lcom/google/android/gms/internal/ads/zzfrr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfrr;->a:Lcom/google/android/gms/internal/ads/zzfru;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfru;->zzf()V
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

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    monitor-exit p0

    return-void
.end method

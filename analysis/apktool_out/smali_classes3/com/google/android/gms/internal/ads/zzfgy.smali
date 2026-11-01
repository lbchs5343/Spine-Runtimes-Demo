.class public final Lcom/google/android/gms/internal/ads/zzfgy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzfht;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgy;->a:Lcom/google/android/gms/internal/ads/zzfht;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgy;->a:Lcom/google/android/gms/internal/ads/zzfht;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfht;->zza:Lcom/google/android/gms/internal/ads/zzfhy;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfhy;->b:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhy;->f()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfht;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgy;->a:Lcom/google/android/gms/internal/ads/zzfht;

    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/zzbbi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbax;)Ljava/util/concurrent/Future;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbh;-><init>(Landroid/content/Context;)V

    new-instance v1, Lg/cok;

    invoke-direct {v1, v0}, Lg/cok;-><init>(Lcom/google/android/gms/internal/ads/zzbbh;)V

    new-instance v2, Lg/aal;

    invoke-direct {v2, v0, p1, v1}, Lg/aal;-><init>(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbax;Lg/cok;)V

    new-instance p1, Lg/clx;

    const/16 v3, 0xe

    invoke-direct {p1, v0, v3, v1}, Lg/clx;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbbh;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbaw;

    sget-object v5, Lg/ti;->a:Lg/ti;

    iget-object v5, v5, Lg/ti;->q:Lg/fkn;

    invoke-virtual {v5}, Lg/fkn;->f()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5, v2, p1}, Lcom/google/android/gms/internal/ads/zzbaw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lg/bjb;Lg/lb;)V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbbh;->a:Lcom/google/android/gms/internal/ads/zzbaw;

    invoke-virtual {v4}, Lg/adw;->checkAvailabilityAndConnect()V

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.class public final Lg/cbu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgee;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdup;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cbu;->a:Lcom/google/android/gms/internal/ads/zzdup;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lg/cbu;->a:Lcom/google/android/gms/internal/ads/zzdup;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzdup;->p:Z

    const-string v0, "com.google.android.gms.ads.MobileAds"

    const-string v1, "Internal Error."

    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->v:Lg/czz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lg/cbu;->a:Lcom/google/android/gms/internal/ads/zzdup;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzdup;->e:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdup;->s(Ljava/lang/String;ILjava/lang/String;Z)V

    iget-object p1, p0, Lg/cbu;->a:Lcom/google/android/gms/internal/ads/zzdup;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdup;->g:Lcom/google/android/gms/internal/ads/zzcao;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcao;->zzd(Ljava/lang/Throwable;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg/cbu;->a:Lcom/google/android/gms/internal/ads/zzdup;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdup;->p:Z

    const-string v2, "com.google.android.gms.ads.MobileAds"

    const-string v3, ""

    sget-object v4, Lg/ti;->a:Lg/ti;

    iget-object v4, v4, Lg/ti;->v:Lg/czz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lg/cbu;->a:Lcom/google/android/gms/internal/ads/zzdup;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzdup;->e:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    invoke-virtual {v0, v2, v5, v3, v1}, Lcom/google/android/gms/internal/ads/zzdup;->s(Ljava/lang/String;ILjava/lang/String;Z)V

    iget-object v0, p0, Lg/cbu;->a:Lcom/google/android/gms/internal/ads/zzdup;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdup;->l:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdum;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdum;-><init>(Lg/cbu;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

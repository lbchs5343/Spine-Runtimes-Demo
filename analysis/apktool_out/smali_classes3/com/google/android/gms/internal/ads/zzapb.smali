.class public final Lcom/google/android/gms/internal/ads/zzapb;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final a:Z


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/zzaoz;

.field public volatile c:Z

.field public final d:Lg/gkr;

.field public final e:Ljava/util/concurrent/BlockingQueue;

.field public final f:Ljava/util/concurrent/BlockingQueue;

.field public final g:Lcom/google/android/gms/internal/ads/zzapg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaqb;->zzb:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzapb;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzaoz;Lcom/google/android/gms/internal/ads/zzapg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapb;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapb;->e:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapb;->f:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzapb;->b:Lcom/google/android/gms/internal/ads/zzaoz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzapb;->g:Lcom/google/android/gms/internal/ads/zzapg;

    new-instance p1, Lg/gkr;

    invoke-direct {p1, p0, p2, p4}, Lg/gkr;-><init>(Lcom/google/android/gms/internal/ads/zzapb;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzapg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapb;->d:Lg/gkr;

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapb;->b:Lcom/google/android/gms/internal/ads/zzaoz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapb;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzapp;

    const-string v2, "cache-queue-take"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzapp;->zzm(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapp;->p()V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapp;->zzw()Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapp;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzaoz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaoy;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapb;->f:Ljava/util/concurrent/BlockingQueue;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzapb;->d:Lg/gkr;

    if-nez v2, :cond_0

    :try_start_1
    const-string v0, "cache-miss"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzapp;->zzm(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lg/gkr;->t(Lcom/google/android/gms/internal/ads/zzapp;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v3, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzaoy;->zze:J

    const/4 v9, 0x1

    cmp-long v10, v7, v5

    if-gez v10, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_2

    const-string v0, "cache-hit-expired"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzapp;->zzm(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzapp;->zze(Lcom/google/android/gms/internal/ads/zzaoy;)Lcom/google/android/gms/internal/ads/zzapp;

    invoke-virtual {v4, v1}, Lg/gkr;->t(Lcom/google/android/gms/internal/ads/zzapp;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v3, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v7, "cache-hit"

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzapp;->zzm(Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzapl;

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzaoy;->zza:[B

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzaoy;->zzg:Ljava/util/Map;

    invoke-direct {v7, v8, v10}, Lcom/google/android/gms/internal/ads/zzapl;-><init>([BLjava/util/Map;)V

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzapp;->o(Lcom/google/android/gms/internal/ads/zzapl;)Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object v7

    const-string v8, "cache-hit-parsed"

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzapp;->zzm(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzapv;->zzc()Z

    move-result v8

    const/4 v10, 0x0

    if-nez v8, :cond_3

    const-string v2, "cache-parsing-failed"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzapp;->zzm(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapp;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Lcom/google/android/gms/internal/ads/zzaoz;->zzc(Ljava/lang/String;Z)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzapp;->zze(Lcom/google/android/gms/internal/ads/zzaoy;)Lcom/google/android/gms/internal/ads/zzapp;

    invoke-virtual {v4, v1}, Lg/gkr;->t(Lcom/google/android/gms/internal/ads/zzapp;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v3, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-wide v11, v2, Lcom/google/android/gms/internal/ads/zzaoy;->zzf:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapb;->g:Lcom/google/android/gms/internal/ads/zzapg;

    cmp-long v3, v11, v5

    if-gez v3, :cond_5

    :try_start_2
    const-string v3, "cache-hit-refresh-needed"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzapp;->zzm(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzapp;->zze(Lcom/google/android/gms/internal/ads/zzaoy;)Lcom/google/android/gms/internal/ads/zzapp;

    iput-boolean v9, v7, Lcom/google/android/gms/internal/ads/zzapv;->zzd:Z

    invoke-virtual {v4, v1}, Lg/gkr;->t(Lcom/google/android/gms/internal/ads/zzapp;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lg/efr;

    const/16 v3, 0x12

    invoke-direct {v2, p0, v3, v1}, Lg/efr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzapg;->zzb(Lcom/google/android/gms/internal/ads/zzapp;Lcom/google/android/gms/internal/ads/zzapv;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1, v7, v10}, Lcom/google/android/gms/internal/ads/zzapg;->zzb(Lcom/google/android/gms/internal/ads/zzapp;Lcom/google/android/gms/internal/ads/zzapv;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v1, v7, v10}, Lcom/google/android/gms/internal/ads/zzapg;->zzb(Lcom/google/android/gms/internal/ads/zzapp;Lcom/google/android/gms/internal/ads/zzapv;Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapp;->p()V

    return-void

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzapp;->p()V

    throw v0
.end method

.method public final run()V
    .locals 3

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzapb;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapb;->b:Lcom/google/android/gms/internal/ads/zzaoz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaoz;->zzb()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzapb;->h()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapb;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapb;->c:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

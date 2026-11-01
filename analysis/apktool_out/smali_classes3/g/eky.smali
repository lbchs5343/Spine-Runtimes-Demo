.class public final Lg/eky;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public volatile a:Z

.field public b:Z

.field public c:Lcom/google/android/gms/internal/ads/zzyy;

.field public d:Ljava/io/IOException;

.field public e:I

.field public final f:Lcom/google/android/gms/internal/ads/zzzb;

.field public final synthetic g:Lcom/google/android/gms/internal/ads/zzzg;

.field public final h:J

.field public i:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzzg;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzzb;Lcom/google/android/gms/internal/ads/zzyy;J)V
    .locals 0

    iput-object p1, p0, Lg/eky;->g:Lcom/google/android/gms/internal/ads/zzzg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lg/eky;->f:Lcom/google/android/gms/internal/ads/zzzb;

    iput-object p4, p0, Lg/eky;->c:Lcom/google/android/gms/internal/ads/zzyy;

    iput-wide p5, p0, Lg/eky;->h:J

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    iget-boolean v0, p0, Lg/eky;->a:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p1, p0, Lg/eky;->c:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lg/eky;->d:Ljava/io/IOException;

    iget-object p1, p0, Lg/eky;->g:Lcom/google/android/gms/internal/ads/zzzg;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzzg;->b:Ljava/util/concurrent/ExecutorService;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzzg;->d:Lg/eky;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v3, 0x4

    if-eq v0, v3, :cond_b

    iget-object v0, p0, Lg/eky;->g:Lcom/google/android/gms/internal/ads/zzzg;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzzg;->d:Lg/eky;

    iget-wide v3, p0, Lg/eky;->h:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v3

    iget-object v5, p0, Lg/eky;->c:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lg/eky;->b:Z

    if-eqz v0, :cond_2

    iget-object v6, p0, Lg/eky;->f:Lcom/google/android/gms/internal/ads/zzzb;

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzyy;->zzJ(Lcom/google/android/gms/internal/ads/zzzb;JJZ)V

    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, p1

    check-cast v11, Ljava/io/IOException;

    iput-object v11, p0, Lg/eky;->d:Ljava/io/IOException;

    iget p1, p0, Lg/eky;->e:I

    add-int/lit8 v12, p1, 0x1

    iput v12, p0, Lg/eky;->e:I

    iget-object v6, p0, Lg/eky;->f:Lcom/google/android/gms/internal/ads/zzzb;

    invoke-interface/range {v5 .. v12}, Lcom/google/android/gms/internal/ads/zzyy;->zzu(Lcom/google/android/gms/internal/ads/zzzb;JJLjava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object p1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzyz;->a:I

    if-ne v0, v4, :cond_4

    iget-object p1, p0, Lg/eky;->g:Lcom/google/android/gms/internal/ads/zzzg;

    iget-object v0, p0, Lg/eky;->d:Ljava/io/IOException;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzzg;->a:Ljava/io/IOException;

    return-void

    :cond_4
    if-eq v0, v3, :cond_9

    if-ne v0, v2, :cond_5

    iput v2, p0, Lg/eky;->e:I

    :cond_5
    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzyz;->b:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    iget p1, p0, Lg/eky;->e:I

    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v3, p1

    :goto_0
    iget-object p1, p0, Lg/eky;->g:Lcom/google/android/gms/internal/ads/zzzg;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzzg;->d:Lg/eky;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iput-object p0, p1, Lcom/google/android/gms/internal/ads/zzzg;->d:Lg/eky;

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_8

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v0, p0, Lg/eky;->c:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p0, Lg/eky;->d:Ljava/io/IOException;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzzg;->b:Ljava/util/concurrent/ExecutorService;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzzg;->d:Lg/eky;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    :try_start_0
    iget-object v6, p0, Lg/eky;->f:Lcom/google/android/gms/internal/ads/zzzb;

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzyy;->zzK(Lcom/google/android/gms/internal/ads/zzzb;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdt;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lg/eky;->g:Lcom/google/android/gms/internal/ads/zzzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzze;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzze;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzzg;->a:Ljava/io/IOException;

    return-void

    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public final j(Z)V
    .locals 8

    iput-boolean p1, p0, Lg/eky;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lg/eky;->d:Ljava/io/IOException;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lg/eky;->b:Z

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    iput-boolean v1, p0, Lg/eky;->b:Z

    iget-object v1, p0, Lg/eky;->f:Lcom/google/android/gms/internal/ads/zzzb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzzb;->zzg()V

    iget-object v1, p0, Lg/eky;->i:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lg/eky;->g:Lcom/google/android/gms/internal/ads/zzzg;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzzg;->d:Lg/eky;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lg/eky;->c:Lcom/google/android/gms/internal/ads/zzyy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lg/eky;->f:Lcom/google/android/gms/internal/ads/zzzb;

    iget-wide v5, p0, Lg/eky;->h:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzyy;->zzJ(Lcom/google/android/gms/internal/ads/zzzb;JJZ)V

    iput-object v0, p0, Lg/eky;->c:Lcom/google/android/gms/internal/ads/zzyy;

    :cond_3
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final run()V
    .locals 4

    const-string v0, "load:"

    const/4 v1, 0x3

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v2, p0, Lg/eky;->b:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lg/eky;->i:Ljava/lang/Thread;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_0

    :try_start_2
    iget-object v2, p0, Lg/eky;->f:Lcom/google/android/gms/internal/ads/zzzb;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lg/eky;->f:Lcom/google/android/gms/internal/ads/zzzb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzzb;->zzh()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_0
    :goto_0
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lg/eky;->i:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-boolean v0, p0, Lg/eky;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_0

    :goto_1
    iget-boolean v1, p0, Lg/eky;->a:Z

    if-nez v1, :cond_1

    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    throw v0

    :goto_2
    iget-boolean v2, p0, Lg/eky;->a:Z

    if-nez v2, :cond_2

    const-string v2, "LoadTask"

    const-string v3, "OutOfMemory error loading stream"

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzze;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzze;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :goto_3
    iget-boolean v2, p0, Lg/eky;->a:Z

    if-nez v2, :cond_2

    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzze;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzze;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :goto_4
    iget-boolean v2, p0, Lg/eky;->a:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

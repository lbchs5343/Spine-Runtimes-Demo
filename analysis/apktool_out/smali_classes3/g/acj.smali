.class public final Lg/acj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bjb;
.implements Lg/lb;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/concurrent/LinkedBlockingQueue;

.field public final e:Landroid/os/HandlerThread;

.field public final f:Lcom/google/android/gms/internal/ads/zzfqw;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/google/android/gms/internal/ads/zzfpp;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfpp;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lg/acj;->g:Ljava/lang/String;

    iput p2, p0, Lg/acj;->a:I

    iput-object p4, p0, Lg/acj;->c:Ljava/lang/String;

    iput-object p5, p0, Lg/acj;->h:Lcom/google/android/gms/internal/ads/zzfpp;

    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "GassDGClient"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lg/acj;->e:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lg/acj;->b:J

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfqw;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const v5, 0x12b6488

    move-object v4, p0

    move-object v3, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfqw;-><init>(Landroid/content/Context;Landroid/os/Looper;Lg/bjb;Lg/lb;I)V

    iput-object v0, v3, Lg/acj;->f:Lcom/google/android/gms/internal/ads/zzfqw;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, v3, Lg/acj;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Lg/adw;->checkAvailabilityAndConnect()V

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 2

    iget-object v0, p0, Lg/acj;->f:Lcom/google/android/gms/internal/ads/zzfqw;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/adw;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lg/adw;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lg/adw;->disconnect()V

    :cond_1
    return-void
.end method

.method public final j(IJLjava/lang/Exception;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    iget-object p2, p0, Lg/acj;->h:Lcom/google/android/gms/internal/ads/zzfpp;

    invoke-virtual {p2, p1, v0, v1, p4}, Lcom/google/android/gms/internal/ads/zzfpp;->zzc(IJLjava/lang/Exception;)Lg/ci;

    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 9

    iget-wide v0, p0, Lg/acj;->b:J

    iget-object p1, p0, Lg/acj;->e:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lg/acj;->f:Lcom/google/android/gms/internal/ads/zzfqw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfqw;->zzp()Lcom/google/android/gms/internal/ads/zzfrb;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_0

    :try_start_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfrg;

    iget v5, p0, Lg/acj;->a:I

    iget-object v6, p0, Lg/acj;->g:Ljava/lang/String;

    iget-object v7, p0, Lg/acj;->c:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-direct {v4, v8, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzfrg;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfrb;->zzf(Lcom/google/android/gms/internal/ads/zzfrg;)Lcom/google/android/gms/internal/ads/zzfri;

    move-result-object v3

    const/16 v4, 0x1393

    invoke-virtual {p0, v4, v0, v1, v2}, Lg/acj;->j(IJLjava/lang/Exception;)V

    iget-object v2, p0, Lg/acj;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lg/acj;->i()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 v2, 0x7da

    invoke-virtual {p0, v2, v0, v1, v3}, Lg/acj;->j(IJLjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lg/acj;->i()V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    throw v0

    :cond_0
    return-void
.end method

.method public final onConnectionFailed(Lg/nk;)V
    .locals 3

    :try_start_0
    iget-wide v0, p0, Lg/acj;->b:J

    const/16 p1, 0xfac

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lg/acj;->j(IJLjava/lang/Exception;)V

    iget-object p1, p0, Lg/acj;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfri;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfri;-><init>([BI)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    :try_start_0
    iget-wide v0, p0, Lg/acj;->b:J

    const/16 p1, 0xfab

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lg/acj;->j(IJLjava/lang/Exception;)V

    iget-object p1, p0, Lg/acj;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfri;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfri;-><init>([BI)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

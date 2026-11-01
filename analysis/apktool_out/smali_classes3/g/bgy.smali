.class public final Lg/bgy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/csw;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/util/ArrayDeque;


# instance fields
.field public c:Lg/eqi;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final h:Lcom/google/android/gms/internal/ads/zzdf;

.field public final i:Landroid/media/MediaCodec;

.field public final j:Landroid/os/HandlerThread;

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lg/bgy;->b:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/bgy;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdc;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdf;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bgy;->i:Landroid/media/MediaCodec;

    iput-object p2, p0, Lg/bgy;->j:Landroid/os/HandlerThread;

    iput-object v0, p0, Lg/bgy;->h:Lcom/google/android/gms/internal/ads/zzdf;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lg/bgy;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static l()Lg/cte;
    .locals 2

    sget-object v0, Lg/bgy;->b:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lg/cte;

    invoke-direct {v1}, Lg/cte;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cte;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final d(ILcom/google/android/gms/internal/ads/zzhj;J)V
    .locals 4

    invoke-virtual {p0}, Lg/bgy;->zzc()V

    invoke-static {}, Lg/bgy;->l()Lg/cte;

    move-result-object v0

    iput p1, v0, Lg/cte;->c:I

    const/4 p1, 0x0

    iput p1, v0, Lg/cte;->d:I

    iput-wide p3, v0, Lg/cte;->a:J

    iput p1, v0, Lg/cte;->b:I

    iget-object p3, v0, Lg/cte;->e:Landroid/media/MediaCodec$CryptoInfo;

    iget p4, p2, Lcom/google/android/gms/internal/ads/zzhj;->zzf:I

    iput p4, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzhj;->zzd:[I

    iget-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_2

    array-length v2, p4

    array-length v3, v1

    if-ge v3, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p4, p1, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    :goto_0
    array-length v1, p4

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :goto_1
    iput-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzhj;->zze:[I

    iget-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    if-nez p4, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_5

    array-length v2, p4

    array-length v3, v1

    if-ge v3, v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p4, p1, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_5
    :goto_2
    array-length v1, p4

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :goto_3
    iput-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzhj;->zzb:[B

    iget-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    if-nez p4, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_8

    array-length v2, p4

    array-length v3, v1

    if-ge v3, v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {p4, p1, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_8
    :goto_4
    array-length v1, p4

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget-object p4, p2, Lcom/google/android/gms/internal/ads/zzhj;->zza:[B

    iget-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    if-nez p4, :cond_9

    goto :goto_7

    :cond_9
    if-eqz v1, :cond_b

    array-length v2, p4

    array-length v3, v1

    if-ge v3, v2, :cond_a

    goto :goto_6

    :cond_a
    invoke-static {p4, p1, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_b
    :goto_6
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :goto_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzhj;->zzc:I

    iput p1, p3, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    sget p1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 p4, 0x18

    if-lt p1, p4, :cond_c

    invoke-static {}, Lg/fid;->g()V

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzhj;->zzg:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzhj;->zzh:I

    invoke-static {p1, p2}, Lg/fid;->o(II)Landroid/media/MediaCodec$CryptoInfo$Pattern;

    move-result-object p1

    invoke-static {p3, p1}, Lg/fid;->l(Landroid/media/MediaCodec$CryptoInfo;Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    :cond_c
    iget-object p1, p0, Lg/bgy;->c:Lg/eqi;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final f(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lg/bgy;->zzc()V

    iget-object v0, p0, Lg/bgy;->c:Lg/eqi;

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final g(IIIJ)V
    .locals 1

    invoke-virtual {p0}, Lg/bgy;->zzc()V

    invoke-static {}, Lg/bgy;->l()Lg/cte;

    move-result-object v0

    iput p1, v0, Lg/cte;->c:I

    iput p2, v0, Lg/cte;->d:I

    iput-wide p4, v0, Lg/cte;->a:J

    iput p3, v0, Lg/cte;->b:I

    iget-object p1, p0, Lg/bgy;->c:Lg/eqi;

    sget p2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final zzb()V
    .locals 3

    iget-object v0, p0, Lg/bgy;->h:Lcom/google/android/gms/internal/ads/zzdf;

    iget-boolean v1, p0, Lg/bgy;->k:Z

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lg/bgy;->c:Lg/eqi;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdf;->zzc()Z

    iget-object v1, p0, Lg/bgy;->c:Lg/eqi;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdf;->zza()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    throw v2

    :cond_1
    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-void
.end method

.method public final zzc()V
    .locals 2

    iget-object v0, p0, Lg/bgy;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method

.method public final zzg()V
    .locals 1

    iget-boolean v0, p0, Lg/bgy;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/bgy;->zzb()V

    iget-object v0, p0, Lg/bgy;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/bgy;->k:Z

    return-void
.end method

.method public final zzh()V
    .locals 3

    iget-boolean v0, p0, Lg/bgy;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/bgy;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lg/eqi;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/16 v2, 0xa

    invoke-direct {v1, p0, v0, v2}, Lg/eqi;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object v1, p0, Lg/bgy;->c:Lg/eqi;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/bgy;->k:Z

    :cond_0
    return-void
.end method

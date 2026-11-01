.class public final Lg/gop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsn;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzsj;

.field public b:Z

.field public final c:Landroid/media/MediaCodec;

.field public d:I

.field public final e:Lg/cfp;

.field public final f:Lg/csw;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lg/csw;Lcom/google/android/gms/internal/ads/zzsj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    new-instance p1, Lg/cfp;

    invoke-direct {p1, p2}, Lg/cfp;-><init>(Landroid/os/HandlerThread;)V

    iput-object p1, p0, Lg/gop;->e:Lg/cfp;

    iput-object p3, p0, Lg/gop;->f:Lg/csw;

    iput-object p4, p0, Lg/gop;->a:Lcom/google/android/gms/internal/ads/zzsj;

    const/4 p1, 0x0

    iput p1, p0, Lg/gop;->d:I

    return-void
.end method

.method public static g(Lg/gop;Landroid/media/MediaFormat;Landroid/view/Surface;I)V
    .locals 5

    iget-object v0, p0, Lg/gop;->e:Lg/cfp;

    iget-object v1, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    iget-object v2, v0, Lg/cfp;->l:Landroid/os/HandlerThread;

    iget-object v3, v0, Lg/cfp;->n:Landroid/os/Handler;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, v0, v3}, Lg/dll;->f(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iput-object v3, v0, Lg/cfp;->n:Landroid/os/Handler;

    const-string v0, "configureCodec"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, p2, v0, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lg/gop;->f:Lg/csw;

    invoke-interface {p1}, Lg/csw;->zzh()V

    const-string p1, "startCodec"

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget p1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 p2, 0x23

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lg/gop;->a:Lcom/google/android/gms/internal/ads/zzsj;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzsj;->zza(Landroid/media/MediaCodec;)V

    :cond_1
    iput v4, p0, Lg/gop;->d:I

    return-void
.end method

.method public static h(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "Audio"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const-string p0, "Video"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 9

    iget-object v0, p0, Lg/gop;->f:Lg/csw;

    invoke-interface {v0}, Lg/csw;->zzc()V

    iget-object v0, p0, Lg/gop;->e:Lg/cfp;

    iget-object v1, v0, Lg/cfp;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lg/cfp;->d:Ljava/lang/IllegalStateException;

    const/4 v3, 0x0

    if-nez v2, :cond_8

    iget-object v2, v0, Lg/cfp;->m:Landroid/media/MediaCodec$CodecException;

    if-nez v2, :cond_7

    iget-object v2, v0, Lg/cfp;->b:Landroid/media/MediaCodec$CryptoException;

    if-nez v2, :cond_6

    iget-wide v2, v0, Lg/cfp;->f:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-gtz v8, :cond_1

    iget-boolean v2, v0, Lg/cfp;->j:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, -0x1

    if-eqz v2, :cond_2

    monitor-exit v1

    return v3

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    iget-object v0, v0, Lg/cfp;->e:Lg/adr;

    iget v2, v0, Lg/adr;->c:I

    iget v4, v0, Lg/adr;->d:I

    if-ne v2, v4, :cond_3

    const/4 v6, 0x1

    :cond_3
    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    if-eq v2, v4, :cond_5

    iget-object v3, v0, Lg/adr;->b:[I

    aget v3, v3, v2

    add-int/2addr v2, v7

    iget v4, v0, Lg/adr;->a:I

    and-int/2addr v2, v4

    iput v2, v0, Lg/adr;->c:I

    :goto_2
    monitor-exit v1

    return v3

    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_6
    iput-object v3, v0, Lg/cfp;->b:Landroid/media/MediaCodec$CryptoException;

    throw v2

    :cond_7
    iput-object v3, v0, Lg/cfp;->m:Landroid/media/MediaCodec$CodecException;

    throw v2

    :cond_8
    iput-object v3, v0, Lg/cfp;->d:Ljava/lang/IllegalStateException;

    throw v2

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 10

    iget-object v0, p0, Lg/gop;->f:Lg/csw;

    invoke-interface {v0}, Lg/csw;->zzc()V

    iget-object v0, p0, Lg/gop;->e:Lg/cfp;

    iget-object v1, v0, Lg/cfp;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lg/cfp;->d:Ljava/lang/IllegalStateException;

    const/4 v3, 0x0

    if-nez v2, :cond_a

    iget-object v2, v0, Lg/cfp;->m:Landroid/media/MediaCodec$CodecException;

    if-nez v2, :cond_9

    iget-object v2, v0, Lg/cfp;->b:Landroid/media/MediaCodec$CryptoException;

    if-nez v2, :cond_8

    iget-wide v2, v0, Lg/cfp;->f:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-gtz v8, :cond_1

    iget-boolean v2, v0, Lg/cfp;->j:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, -0x1

    if-eqz v2, :cond_2

    monitor-exit v1

    return v3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_2
    iget-object v2, v0, Lg/cfp;->g:Lg/adr;

    iget v4, v2, Lg/adr;->c:I

    iget v5, v2, Lg/adr;->d:I

    if-ne v4, v5, :cond_3

    const/4 v6, 0x1

    :cond_3
    if-eqz v6, :cond_4

    monitor-exit v1

    return v3

    :cond_4
    if-eq v4, v5, :cond_7

    iget-object v3, v2, Lg/adr;->b:[I

    aget v3, v3, v4

    add-int/2addr v4, v7

    iget v5, v2, Lg/adr;->a:I

    and-int/2addr v4, v5

    iput v4, v2, Lg/adr;->c:I

    if-ltz v3, :cond_5

    iget-object v2, v0, Lg/cfp;->a:Landroid/media/MediaFormat;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lg/cfp;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferInfo;

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_2

    :cond_5
    const/4 p1, -0x2

    if-ne v3, p1, :cond_6

    iget-object v2, v0, Lg/cfp;->o:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaFormat;

    iput-object v2, v0, Lg/cfp;->a:Landroid/media/MediaFormat;

    const/4 v3, -0x2

    :cond_6
    :goto_2
    monitor-exit v1

    return v3

    :cond_7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_8
    iput-object v3, v0, Lg/cfp;->b:Landroid/media/MediaCodec$CryptoException;

    throw v2

    :cond_9
    iput-object v3, v0, Lg/cfp;->m:Landroid/media/MediaCodec$CodecException;

    throw v2

    :cond_a
    iput-object v3, v0, Lg/cfp;->d:Ljava/lang/IllegalStateException;

    throw v2

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc()Landroid/media/MediaFormat;
    .locals 2

    iget-object v0, p0, Lg/gop;->e:Lg/cfp;

    iget-object v1, v0, Lg/cfp;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lg/cfp;->a:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzf(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final zzi()V
    .locals 1

    iget-object v0, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-static {v0}, Lg/gfl;->b(Landroid/media/MediaCodec;)V

    return-void
.end method

.method public final zzj()V
    .locals 6

    iget-object v0, p0, Lg/gop;->f:Lg/csw;

    invoke-interface {v0}, Lg/csw;->zzb()V

    iget-object v0, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    iget-object v0, p0, Lg/gop;->e:Lg/cfp;

    iget-object v1, v0, Lg/cfp;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v0, Lg/cfp;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lg/cfp;->f:J

    iget-object v2, v0, Lg/cfp;->n:Landroid/os/Handler;

    sget v3, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    new-instance v3, Lcom/google/android/gms/internal/ads/zzsc;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzsc;-><init>(Lg/cfp;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzk(IIIJI)V
    .locals 2

    move p2, p1

    iget-object p1, p0, Lg/gop;->f:Lg/csw;

    move-wide v0, p4

    move p4, p6

    move-wide p5, v0

    invoke-interface/range {p1 .. p6}, Lg/csw;->g(IIIJ)V

    return-void
.end method

.method public final zzl(IILcom/google/android/gms/internal/ads/zzhj;JI)V
    .locals 0

    iget-object p2, p0, Lg/gop;->f:Lg/csw;

    invoke-interface {p2, p1, p3, p4, p5}, Lg/csw;->d(ILcom/google/android/gms/internal/ads/zzhj;J)V

    return-void
.end method

.method public final zzm()V
    .locals 7

    const/16 v0, 0x21

    const/16 v1, 0x1e

    const/16 v2, 0x23

    const/4 v3, 0x1

    :try_start_0
    iget v4, p0, Lg/gop;->d:I

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lg/gop;->f:Lg/csw;

    invoke-interface {v4}, Lg/csw;->zzg()V

    iget-object v4, p0, Lg/gop;->e:Lg/cfp;

    iget-object v5, v4, Lg/cfp;->h:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean v3, v4, Lg/cfp;->j:Z

    iget-object v6, v4, Lg/cfp;->l:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->quit()Z

    invoke-virtual {v4}, Lg/cfp;->p()V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    :catchall_1
    move-exception v4

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Lg/gop;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-boolean v4, p0, Lg/gop;->b:Z

    if-nez v4, :cond_3

    :try_start_3
    sget v4, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt v4, v1, :cond_1

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    if-lt v4, v2, :cond_2

    iget-object v0, p0, Lg/gop;->a:Lcom/google/android/gms/internal/ads/zzsj;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsj;->zzc(Landroid/media/MediaCodec;)V

    :cond_2
    iget-object v0, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Lg/gop;->b:Z

    :cond_3
    return-void

    :goto_2
    iget-boolean v5, p0, Lg/gop;->b:Z

    if-nez v5, :cond_7

    :try_start_4
    sget v5, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt v5, v1, :cond_4

    if-ge v5, v0, :cond_4

    iget-object v0, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    if-lt v5, v2, :cond_5

    iget-object v0, p0, Lg/gop;->a:Lcom/google/android/gms/internal/ads/zzsj;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsj;->zzc(Landroid/media/MediaCodec;)V

    :cond_5
    iget-object v0, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Lg/gop;->b:Z

    goto :goto_4

    :goto_3
    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lg/gop;->a:Lcom/google/android/gms/internal/ads/zzsj;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzsj;->zzc(Landroid/media/MediaCodec;)V

    :cond_6
    iget-object v1, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    iput-boolean v3, p0, Lg/gop;->b:Z

    throw v0

    :cond_7
    :goto_4
    throw v4
.end method

.method public final zzn(IJ)V
    .locals 1

    iget-object v0, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public final zzo(IZ)V
    .locals 1

    iget-object p2, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public final zzp(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-static {v0, p1}, Lg/gnm;->d(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    return-void
.end method

.method public final zzq(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lg/gop;->f:Lg/csw;

    invoke-interface {v0, p1}, Lg/csw;->f(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzr(I)V
    .locals 1

    iget-object v0, p0, Lg/gop;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzsm;)Z
    .locals 2

    iget-object v0, p0, Lg/gop;->e:Lg/cfp;

    iget-object v1, v0, Lg/cfp;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, v0, Lg/cfp;->c:Lcom/google/android/gms/internal/ads/zzsm;

    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

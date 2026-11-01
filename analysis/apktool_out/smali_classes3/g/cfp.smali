.class public final Lg/cfp;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# instance fields
.field public a:Landroid/media/MediaFormat;

.field public b:Landroid/media/MediaCodec$CryptoException;

.field public c:Lcom/google/android/gms/internal/ads/zzsm;

.field public d:Ljava/lang/IllegalStateException;

.field public final e:Lg/adr;

.field public f:J

.field public final g:Lg/adr;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/util/ArrayDeque;

.field public j:Z

.field public k:Landroid/media/MediaFormat;

.field public final l:Landroid/os/HandlerThread;

.field public m:Landroid/media/MediaCodec$CodecException;

.field public n:Landroid/os/Handler;

.field public final o:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/cfp;->h:Ljava/lang/Object;

    iput-object p1, p0, Lg/cfp;->l:Landroid/os/HandlerThread;

    new-instance p1, Lg/adr;

    invoke-direct {p1}, Lg/adr;-><init>()V

    iput-object p1, p0, Lg/cfp;->e:Lg/adr;

    new-instance p1, Lg/adr;

    invoke-direct {p1}, Lg/adr;-><init>()V

    iput-object p1, p0, Lg/cfp;->g:Lg/adr;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lg/cfp;->i:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lg/cfp;->o:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final onCryptoError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CryptoException;)V
    .locals 0

    iget-object p1, p0, Lg/cfp;->h:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object p2, p0, Lg/cfp;->b:Landroid/media/MediaCodec$CryptoException;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    iget-object p1, p0, Lg/cfp;->h:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-object p2, p0, Lg/cfp;->m:Landroid/media/MediaCodec$CodecException;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    iget-object p1, p0, Lg/cfp;->h:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/cfp;->e:Lg/adr;

    invoke-virtual {v0, p2}, Lg/adr;->e(I)V

    iget-object p2, p0, Lg/cfp;->c:Lcom/google/android/gms/internal/ads/zzsm;

    if-eqz p2, :cond_0

    check-cast p2, Lg/cdg;

    iget-object p2, p2, Lg/cdg;->a:Lcom/google/android/gms/internal/ads/zzsy;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzsy;->de:Lcom/google/android/gms/internal/ads/zzlm;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzlm;->zza()V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    iget-object p1, p0, Lg/cfp;->h:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/cfp;->k:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/cfp;->g:Lg/adr;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lg/adr;->e(I)V

    iget-object v1, p0, Lg/cfp;->o:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lg/cfp;->k:Landroid/media/MediaFormat;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lg/cfp;->g:Lg/adr;

    invoke-virtual {v0, p2}, Lg/adr;->e(I)V

    iget-object p2, p0, Lg/cfp;->i:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lg/cfp;->c:Lcom/google/android/gms/internal/ads/zzsm;

    if-eqz p2, :cond_1

    check-cast p2, Lg/cdg;

    iget-object p2, p2, Lg/cdg;->a:Lcom/google/android/gms/internal/ads/zzsy;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzsy;->de:Lcom/google/android/gms/internal/ads/zzlm;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzlm;->zza()V

    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    iget-object p1, p0, Lg/cfp;->h:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/cfp;->g:Lg/adr;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lg/adr;->e(I)V

    iget-object v0, p0, Lg/cfp;->o:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    iput-object p2, p0, Lg/cfp;->k:Landroid/media/MediaFormat;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lg/cfp;->o:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFormat;

    iput-object v1, p0, Lg/cfp;->k:Landroid/media/MediaFormat;

    :cond_0
    iget-object v1, p0, Lg/cfp;->e:Lg/adr;

    iget v2, v1, Lg/adr;->c:I

    iput v2, v1, Lg/adr;->d:I

    iget-object v1, p0, Lg/cfp;->g:Lg/adr;

    iget v2, v1, Lg/adr;->c:I

    iput v2, v1, Lg/adr;->d:I

    iget-object v1, p0, Lg/cfp;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

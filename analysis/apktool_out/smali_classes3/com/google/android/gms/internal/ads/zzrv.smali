.class public final Lcom/google/android/gms/internal/ads/zzrv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsl;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzrt;

.field public final b:Lcom/google/android/gms/internal/ads/zzru;

.field public c:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzrt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzrt;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzru;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzru;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrv;->a:Lcom/google/android/gms/internal/ads/zzrt;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzru;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrv;->c:Z

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzsk;)Lg/gop;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "createCodec:"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzsk;->zza:Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzsq;->zza:Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrv;->c:Z

    const/16 v3, 0x23

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzsk;->zzc:Lcom/google/android/gms/internal/ads/zzad;

    sget v4, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v5, 0x22

    if-ge v4, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ge v4, v3, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbg;->zzi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lg/bgb;

    const/4 v4, 0x6

    invoke-direct {v1, v4, v0}, Lg/bgb;-><init>(ILjava/lang/Object;)V

    const/4 v4, 0x4

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v1, Lg/bgy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrv;->b:Lcom/google/android/gms/internal/ads/zzru;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzru;->zza:I

    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "ExoPlayer:MediaCodecQueueingThread:"

    invoke-static {v4, v6}, Lg/gop;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v5}, Lg/bgy;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    const/4 v4, 0x0

    :goto_1
    new-instance v5, Lg/gop;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzrv;->a:Lcom/google/android/gms/internal/ads/zzrt;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzrt;->zza:I

    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "ExoPlayer:MediaCodecAsyncAdapter:"

    invoke-static {v6, v8}, Lg/gop;->h(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzsk;->zzf:Lcom/google/android/gms/internal/ads/zzsj;

    invoke-direct {v5, v0, v7, v1, v6}, Lg/gop;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lg/csw;Lcom/google/android/gms/internal/ads/zzsj;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzsk;->zzd:Landroid/view/Surface;

    if-nez v1, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzsk;->zza:Lcom/google/android/gms/internal/ads/zzsq;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzsq;->zzh:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt v2, v3, :cond_3

    or-int/lit8 v4, v4, 0x8

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsk;->zzb:Landroid/media/MediaFormat;

    invoke-static {v5, p1, v1, v4}, Lg/gop;->g(Lg/gop;Landroid/media/MediaFormat;Landroid/view/Surface;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v5

    :goto_3
    move-object v2, v5

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v0, v2

    :goto_4
    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_5

    :cond_4
    invoke-virtual {v2}, Lg/gop;->zzm()V

    :cond_5
    :goto_5
    throw p1
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzsk;)Lcom/google/android/gms/internal/ads/zzsn;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final zze(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrv;->c:Z

    return-void
.end method

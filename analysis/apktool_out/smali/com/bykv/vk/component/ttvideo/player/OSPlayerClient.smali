.class public Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;
.super Lcom/bykv/vk/component/ttvideo/player/MediaPlayerClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnVideoSizeChangedListener;,
        Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnSeekCompleteListener;,
        Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnPreparedListener;,
        Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnInfoListener;,
        Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnErrorListener;,
        Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnCompletionListener;,
        Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnBufferingUpdateListener;
    }
.end annotation


# instance fields
.field protected mOnBufferingUpdateListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnBufferingUpdateListener;

.field protected mOnCompletionListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnCompletionListener;

.field protected mOnErrorListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnErrorListener;

.field protected mOnInfoListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnInfoListener;

.field protected mOnPreparedListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnPreparedListener;

.field protected mOnSeekCompleteListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnSeekCompleteListener;

.field protected mOnVideoSizeChangedListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnVideoSizeChangedListener;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayerClient;-><init>()V

    return-void
.end method

.method public static final declared-synchronized create(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;Landroid/content/Context;)Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;
    .locals 2

    const-class p1, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;

    monitor-enter p1

    :try_start_0
    new-instance v0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;

    invoke-direct {v0}, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;-><init>()V

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    iput-object p0, v0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public deselectTrack(I)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->deselectTrack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catch_0
    :catchall_0
    :cond_0
    return v1
.end method

.method public getDuration()I
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catch_0
    :catchall_0
    :cond_0
    return v1
.end method

.method public getSelectedTrack(I)I
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catch_0
    :catchall_0
    return v1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getTrackInfo()[Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;
    .locals 9

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    new-array v2, v2, [Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v6, v0, v4

    add-int/lit8 v7, v5, 0x1

    new-instance v8, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;

    invoke-direct {v8, v6}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;-><init>(Landroid/media/MediaPlayer$TrackInfo;)V

    aput-object v8, v2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_1

    :cond_0
    return-object v1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoHeight()I
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catch_0
    :catchall_0
    :cond_0
    return v1
.end method

.method public getVideoWidth()I
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catch_0
    :catchall_0
    :cond_0
    return v1
.end method

.method public isLooping()Z
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catch_0
    :catchall_0
    :cond_0
    return v1
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catch_0
    :catchall_0
    :cond_0
    return v1
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public prepareAsync()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public prevClose()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    throw v0

    :catch_0
    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public releaseAsync()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/component/o/p/ox;

    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$1;

    invoke-direct {v1, p0}, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$1;-><init>(Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;)V

    const-string v2, "SPlayerClient"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/o/p/ox;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/p/ox;->start()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public selectTrack(I)V
    .locals 0

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Lcom/bykv/vk/component/ttvideo/player/IMediaDataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public setFrameMetadataListener(Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;)V
    .locals 0

    return-void
.end method

.method public setLoadControl(Lcom/bykv/vk/component/ttvideo/player/LoadControl;)V
    .locals 0

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setMaskInfo(Lcom/bykv/vk/component/ttvideo/player/MaskInfo;)V
    .locals 0

    return-void
.end method

.method public setMediaTransport(Lcom/bykv/vk/component/ttvideo/player/MediaTransport;)V
    .locals 0

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 3

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mOnBufferingUpdateListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnBufferingUpdateListener;

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnBufferingUpdateListener;

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-direct {v1, p1, v2}, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnBufferingUpdateListener;-><init>(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnBufferingUpdateListener;Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnCompletionListener;)V
    .locals 3

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mOnCompletionListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnCompletionListener;

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnCompletionListener;

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-direct {v1, p1, v2}, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnCompletionListener;-><init>(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnCompletionListener;Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnErrorListener;)V
    .locals 3

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mOnErrorListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnErrorListener;

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnErrorListener;

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-direct {v1, p1, v2}, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnErrorListener;-><init>(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnErrorListener;Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnExternInfoListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnExternInfoListener;)V
    .locals 0

    return-void
.end method

.method public setOnInfoListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnInfoListener;)V
    .locals 3

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mOnInfoListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnInfoListener;

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnInfoListener;

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-direct {v1, p1, v2}, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnInfoListener;-><init>(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnInfoListener;Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setOnPreparedListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnPreparedListener;)V
    .locals 3

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mOnPreparedListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnPreparedListener;

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnPreparedListener;

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-direct {v1, p1, v2}, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnPreparedListener;-><init>(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnPreparedListener;Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setOnSARChangedListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$onSARChangedListener;)V
    .locals 0

    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnSeekCompleteListener;)V
    .locals 3

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mOnSeekCompleteListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnSeekCompleteListener;

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnSeekCompleteListener;

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-direct {v1, p1, v2}, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnSeekCompleteListener;-><init>(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnSeekCompleteListener;Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnVideoSizeChangedListener;

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-direct {v1, p1, v2}, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient$WrapOnVideoSizeChangedListener;-><init>(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnVideoSizeChangedListener;Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method

.method public setPlaybackParams(Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    invoke-static {}, Lg/fdj;->aa()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->getSpeed()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    invoke-static {v0, v1}, Lg/fdj;->c(Landroid/media/PlaybackParams;F)V

    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->getAudioFallbackMode()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-static {v0, v1}, Lg/fdj;->i(Landroid/media/PlaybackParams;I)V

    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->getPitch()F

    move-result p1

    cmpl-float v1, p1, v2

    if-lez v1, :cond_2

    invoke-static {v0, p1}, Lg/fdj;->n(Landroid/media/PlaybackParams;F)V

    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_3

    :try_start_0
    invoke-static {p1, v0}, Lg/fdj;->w(Landroid/media/MediaPlayer;Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setSubInfo(Lcom/bykv/vk/component/ttvideo/player/SubInfo;)V
    .locals 0

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/OSPlayerClient;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public switchStream(II)V
    .locals 0

    return-void
.end method

.method public takeScreenshot(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnScreenshotListener;)V
    .locals 0

    return-void
.end method

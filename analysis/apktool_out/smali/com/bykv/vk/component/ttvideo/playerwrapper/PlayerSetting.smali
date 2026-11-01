.class public final Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentPlayerVolume:F

.field private mLastVolume:F

.field private mPlayer:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mCurrentPlayerVolume:F

    iput-object p2, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getMaxVolume()F
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    int-to-float v0, v1

    return v0
.end method

.method public getPlayerVolume()F
    .locals 1

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mCurrentPlayerVolume:F

    return v0
.end method

.method public getVolume()F
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    int-to-float v0, v1

    return v0
.end method

.method public isMute()Z
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;->isOSPlayer()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->getVolume()F

    move-result v0

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-interface {v0}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;->isMute()Z

    move-result v0

    return v0
.end method

.method public setMute(Z)V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;->isOSPlayer()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->getMaxVolume()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->getVolume()F

    move-result v2

    div-float/2addr v2, v0

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mLastVolume:F

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-interface {p1, v1, v1}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;->setVolume(FF)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mLastVolume:F

    invoke-interface {p1, v0, v0}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;->setVolume(FF)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;->setIsMute(Z)V

    return-void
.end method

.method public setPlayer(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    return-void
.end method

.method public setPlayerVolume(F)V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_2
    :goto_0
    iput p1, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mCurrentPlayerVolume:F

    invoke-interface {v0, p1, p1}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public setVolume(F)V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/playerwrapper/PlayerSetting;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    float-to-int p1, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    :goto_0
    return-void
.end method

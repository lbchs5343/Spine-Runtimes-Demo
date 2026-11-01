.class public Lcom/bykv/vk/component/ttvideo/player/TTPlayer;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/bykv/vk/component/ttvideo/player/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/component/ttvideo/player/TTPlayer$DefaultLibraryLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TTPlayer"

.field private static mAppPath:Ljava/lang/String;

.field private static mCachePath:Ljava/lang/String;

.field private static mCrashPath:Ljava/lang/String;

.field private static mDebugLibLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

.field private static mIsIPCPlayer:Z

.field private static mSetLibraryLoader:Z

.field private static mSupportSampleRateNB:I

.field private static mSupportSampleRates:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrameMetadataListener:Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;

.field private mHandle:J

.field private mId:J

.field private mMediaDataSource:J
    .annotation build Lcom/bykv/vk/component/ttvideo/player/Keep;
    .end annotation
.end field

.field private mNotifyer:Lcom/bykv/vk/component/ttvideo/player/IPlayerNotifyer;

.field private mNotifyerState:J

.field private mScreenshotListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnScreenshotListener;

.field private mTracker:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer$DefaultLibraryLoader;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer$DefaultLibraryLoader;-><init>(Z)V

    sput-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mDebugLibLoader:Lcom/bykv/vk/component/ttvideo/player/ILibraryLoader;

    const-class v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibLoader;->loadLibrary()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->detectAudioFormat()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerLibLoader;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    throw v1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mNotifyerState:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mTracker:I

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->create(J)V

    return-void
.end method

.method private static final native _close(J)V
.end method

.method private final native _create(Landroid/content/Context;ILjava/lang/String;)J
.end method

.method private static final native _getAppPath()Ljava/lang/String;
.end method

.method private static final native _getCurrentPosition(J)I
.end method

.method private static final native _getDoubleValue(JID)D
.end method

.method private static final native _getDuration(J)I
.end method

.method private static final native _getFloatValue(JIF)F
.end method

.method private static final native _getIntValue(JII)I
.end method

.method private static final native _getJObjectValue(JI)Ljava/lang/Object;
.end method

.method private static final native _getLongValue(JIJ)J
.end method

.method private static final native _getStringValue(JI)Ljava/lang/String;
.end method

.method private static final native _getVideoHeight(J)I
.end method

.method private static final native _getVideoWidth(J)I
.end method

.method private static final native _isLooping(J)I
.end method

.method private static final native _isPlaying(J)I
.end method

.method private static final native _mouseEvent(JIII)V
.end method

.method private static final native _pause(J)I
.end method

.method private static final native _prepare(J)I
.end method

.method private static final native _prevClose(J)V
.end method

.method private static final native _registerPlayerInfo()V
.end method

.method private static final native _release(J)V
.end method

.method private static final native _reset(J)I
.end method

.method private static final native _rotateCamera(JFF)V
.end method

.method private static final native _seek(JI)I
.end method

.method private static final native _setAudioProcessor(JLcom/bykv/vk/component/ttvideo/player/AudioProcessor;)V
.end method

.method private static final native _setCacheFile(JLjava/lang/String;I)V
.end method

.method private static final native _setDataSource(JLcom/bykv/vk/component/ttvideo/player/IMediaDataSource;)V
.end method

.method private static final native _setDataSource(JLjava/lang/String;)V
.end method

.method private static final native _setDataSourceFd(JI)V
.end method

.method private static final native _setDoubleValue(JID)I
.end method

.method private static final native _setFloatValue(JIF)I
.end method

.method private static final native _setIntValue(JII)I
.end method

.method private static final native _setLoadControl(JLcom/bykv/vk/component/ttvideo/player/LoadControl;)V
.end method

.method private static final native _setLongValue(JIJ)I
.end method

.method private static final native _setLooping(JI)V
.end method

.method private static final native _setMaskInfo(JLcom/bykv/vk/component/ttvideo/player/MaskInfo;)V
.end method

.method private static final native _setMediaTransport(JLcom/bykv/vk/component/ttvideo/player/MediaTransport;)V
.end method

.method private static final native _setStringValue(JILjava/lang/String;)I
.end method

.method private static final native _setSubInfo(JLcom/bykv/vk/component/ttvideo/player/SubInfo;)V
.end method

.method private static final native _setSupportFormatNB(I)V
.end method

.method private static final native _setSupprotSampleRates([II)V
.end method

.method private static final native _setSurfaceValue(JJ)I
.end method

.method private static final native _setVideoSurface(JLandroid/view/Surface;)I
.end method

.method private static final native _setVolume(JFF)V
.end method

.method private static final native _start(J)I
.end method

.method private static final native _stop(J)V
.end method

.method private static final native _switchStream(JII)V
.end method

.method private static final native _takeScreenshot(J)V
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static final checkPlayerModel()V
    .locals 0

    return-void
.end method

.method private create(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mNotifyer:Lcom/bykv/vk/component/ttvideo/player/IPlayerNotifyer;

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mContext:Landroid/content/Context;

    sget-boolean v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mIsIPCPlayer:Z

    sget-object v2, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mAppPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_create(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mId:J

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "create native player is fail."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static detectAudioFormat()V
    .locals 2

    sget v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mSupportSampleRateNB:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/AudioFormats;->getDefaultSampleRatesNB()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mSupportSampleRates:[I

    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioFormats;->getMaxSupportedSampleRates([I)I

    move-result v0

    sput v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mSupportSampleRateNB:I

    sget-object v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mSupportSampleRates:[I

    invoke-static {v1, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setSupprotSampleRates([II)V

    :cond_0
    return-void
.end method

.method public static final getAppPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mAppPath:Ljava/lang/String;

    return-object v0
.end method

.method public static final getCachePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public static final getCrashPath()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mCrashPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getThreadPoolStackSize()I
    .locals 2
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    const/16 v0, 0x19

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(II)I

    move-result v0

    return v0
.end method

.method public static isIPPlayer()Z
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    sget-boolean v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mIsIPCPlayer:Z

    return v0
.end method

.method public static isUsedThreadPool()I
    .locals 2
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static registerPlayerInfo()V
    .locals 0

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_registerPlayerInfo()V

    return-void
.end method

.method public static final setCachePath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mCachePath:Ljava/lang/String;

    return-void
.end method

.method public static final setCrashPath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mCrashPath:Ljava/lang/String;

    return-void
.end method

.method public static setIsIPPlayer(Z)V
    .locals 0

    sput-boolean p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mIsIPCPlayer:Z

    return-void
.end method

.method public static final setTempFileDir(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mAppPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()I
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_close(J)V

    const/4 v0, 0x0

    return v0
.end method

.method public frameDTSNotify(IJJ)V
    .locals 6
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mFrameMetadataListener:Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v4, p2

    move-wide v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;->frameDTSNotify(IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDoubleOption(ID)D
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_getDoubleValue(JID)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloatOption(IF)F
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_getFloatValue(JIF)F

    move-result p1

    return p1
.end method

.method public final getHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    return-wide v0
.end method

.method public getIntOption(II)I
    .locals 2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x33

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_getIntValue(JII)I

    move-result p1

    return p1

    :pswitch_0
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_isPlaying(J)I

    move-result p1

    return p1

    :pswitch_1
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_isLooping(J)I

    move-result p1

    return p1

    :pswitch_2
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_getVideoHeight(J)I

    move-result p1

    return p1

    :pswitch_3
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_getVideoWidth(J)I

    move-result p1

    return p1

    :pswitch_4
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_getCurrentPosition(J)I

    move-result p1

    return p1

    :pswitch_5
    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_getDuration(J)I

    move-result p1

    return p1

    :cond_0
    iget p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mTracker:I

    return p1

    :cond_1
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_getIntValue(JII)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLongOption(IJ)J
    .locals 2

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    iget-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    return-wide p1

    :cond_0
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_getLongValue(JIJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getNativePlayer()J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    return-wide v0
.end method

.method public getObjectValue(I)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_getJObjectValue(JI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_getStringValue(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mouseEvent(III)V
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_mouseEvent(JIII)V

    return-void
.end method

.method public onFrameAboutToBeRendered(IJJLjava/util/Map;)V
    .locals 7
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mFrameMetadataListener:Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;->onFrameAboutToBeRendered(IJJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onLogInfo(IILjava/lang/String;)V
    .locals 6
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mNotifyer:Lcom/bykv/vk/component/ttvideo/player/IPlayerNotifyer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mId:J

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/bykv/vk/component/ttvideo/player/IPlayerNotifyer;->handleErrorNotify(JIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public onNotify(IIILjava/lang/String;)V
    .locals 8
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mNotifyerState:J

    shr-long/2addr v1, p2

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mNotifyer:Lcom/bykv/vk/component/ttvideo/player/IPlayerNotifyer;

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mId:J

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/bykv/vk/component/ttvideo/player/IPlayerNotifyer;->handlePlayerNotify(JIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public pause()I
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_pause(J)I

    move-result v0

    return v0
.end method

.method public prepare()I
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_prepare(J)I

    move-result v0

    return v0
.end method

.method public prevClose()I
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setVideoSurface(JLandroid/view/Surface;)I

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mNotifyerState:J

    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_release(J)V

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mNotifyer:Lcom/bykv/vk/component/ttvideo/player/IPlayerNotifyer;

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mScreenshotListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnScreenshotListener;

    return-void
.end method

.method public reset()I
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_reset(J)I

    move-result v0

    return v0
.end method

.method public rotateCamera(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_rotateCamera(JFF)V

    return-void
.end method

.method public seekTo(I)V
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_seek(JI)I

    return-void
.end method

.method public setAudioProcessor(Lcom/bykv/vk/component/ttvideo/player/AudioProcessor;)V
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setAudioProcessor(JLcom/bykv/vk/component/ttvideo/player/AudioProcessor;)V

    :cond_0
    return-void
.end method

.method public setCacheFile(Ljava/lang/String;I)V
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setCacheFile(JLjava/lang/String;I)V

    return-void
.end method

.method public setDataSource(Lcom/bykv/vk/component/ttvideo/player/IMediaDataSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setDataSource(JLcom/bykv/vk/component/ttvideo/player/IMediaDataSource;)V

    :cond_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setDataSource(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDataSourceFd(I)V
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setDataSourceFd(JI)V

    :cond_0
    return-void
.end method

.method public setDoubleOption(ID)I
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setDoubleValue(JID)I

    move-result p1

    return p1
.end method

.method public setFloatOption(IF)I
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setFloatValue(JIF)I

    move-result p1

    return p1
.end method

.method public setFrameMetadataListener(Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mFrameMetadataListener:Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;

    return-void
.end method

.method public setIntOption(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x16

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    if-eq p2, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_0
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerKeys;->SupportSampleRates:[I

    array-length v0, p1

    array-length p1, p1

    new-array p1, p1, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    shl-int v5, v2, v3

    and-int/2addr v5, p2

    if-nez v5, :cond_4

    sget-object v5, Lcom/bykv/vk/component/ttvideo/player/TTPlayerKeys;->SupportSampleRates:[I

    aget v5, v5, v3

    aput v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p1, v4}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setSupprotSampleRates([II)V

    return v1

    :cond_6
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setIntValue(JII)I

    move-result p1

    return p1
.end method

.method public setLoadControl(Lcom/bykv/vk/component/ttvideo/player/LoadControl;)V
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setLoadControl(JLcom/bykv/vk/component/ttvideo/player/LoadControl;)V

    :cond_0
    return-void
.end method

.method public setLongOption(IJ)I
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setLongValue(JIJ)I

    move-result p1

    return p1
.end method

.method public setLooping(I)V
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setLooping(JI)V

    return-void
.end method

.method public setMaskInfo(Lcom/bykv/vk/component/ttvideo/player/MaskInfo;)V
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setMaskInfo(JLcom/bykv/vk/component/ttvideo/player/MaskInfo;)V

    :cond_0
    return-void
.end method

.method public setMediaTransport(Lcom/bykv/vk/component/ttvideo/player/MediaTransport;)V
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setMediaTransport(JLcom/bykv/vk/component/ttvideo/player/MediaTransport;)V

    :cond_0
    return-void
.end method

.method public setNotifyer(Lcom/bykv/vk/component/ttvideo/player/IPlayerNotifyer;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mNotifyer:Lcom/bykv/vk/component/ttvideo/player/IPlayerNotifyer;

    return-void
.end method

.method public setNotifyerState(J)V
    .locals 4

    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mNotifyerState:J

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    long-to-int v2, p1

    const/16 v3, 0x10

    invoke-static {v0, v1, v3, v2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setIntValue(JII)I

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, v3, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setLongValue(JIJ)I

    return-void
.end method

.method public setOnScreenshotListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnScreenshotListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mScreenshotListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnScreenshotListener;

    return-void
.end method

.method public setStringOption(ILjava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setStringValue(JILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setSubInfo(Lcom/bykv/vk/component/ttvideo/player/SubInfo;)V
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setSubInfo(JLcom/bykv/vk/component/ttvideo/player/SubInfo;)V

    :cond_0
    return-void
.end method

.method public setSurfaceValue(J)I
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setSurfaceValue(JJ)I

    move-result p1

    return p1
.end method

.method public setVideoSurface(Landroid/view/Surface;)I
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setVideoSurface(JLandroid/view/Surface;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setVolume(FF)V
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_setVolume(JFF)V

    return-void
.end method

.method public start()I
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_start(J)I

    move-result v0

    return v0
.end method

.method public stop()I
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_stop(J)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public switchStream(II)V
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_switchStream(JII)V

    return-void
.end method

.method public takeScreenshot()V
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mHandle:J

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->_takeScreenshot(J)V

    return-void
.end method

.method public final takeScreenshotComplete(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mScreenshotListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnScreenshotListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnScreenshotListener;->onTakeScreenShotCompletion(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public updateFrameTerminatedDTS(IJJ)V
    .locals 6
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->mFrameMetadataListener:Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;

    if-eqz v0, :cond_0

    move v1, p1

    move-wide v4, p2

    move-wide v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;->updateFrameTerminatedDTS(IJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

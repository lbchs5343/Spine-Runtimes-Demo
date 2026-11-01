.class public Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;
.super Lcom/bykv/vk/component/ttvideo/player/MediaPlayerClient;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/bykv/vk/component/ttvideo/player/ISurfaceListener;


# annotations
.annotation build Lcom/bykv/vk/component/ttvideo/player/Keep;
.end annotation


# static fields
.field public static final KEY_IS_CONFIG_PARAMS_OPTION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TTPlayerClient"


# instance fields
.field private mBufferingInfo:Ljava/lang/String;

.field private mCallback:Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;

.field private mConfigParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCrashType:I

.field private mCrashedInfo:Ljava/lang/StringBuilder;

.field private mDisablePlayerStayAwake:I

.field private mErrorCode:I

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerLocker:Ljava/lang/Object;

.field private mListenerState:J

.field private mLogInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnLogListener;

.field private mMediaCodecStopTimeOutMs:I

.field private mOnBufferingUpdateListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnErrorListener;

.field private mOnExternInfoListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnExternInfoListener;

.field private mOnInfoListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnPreparedListener;

.field private mOnSARChangedListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$onSARChangedListener;

.field private mOnSeekCompleteListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnVideoSizeChangedListener;

.field private mPlayLifeId:I

.field private mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

.field private final mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final mReadWritedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private volatile mRealsedSurface:Z

.field private final mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mReentrantLockInRtc:Ljava/util/concurrent/locks/ReentrantLock;

.field private mRtcPlay:I

.field private mScreenOnWhilePlaying:Z

.field private mSeekComplete:Z

.field private mStayAwake:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUri:Ljava/lang/String;

.field private mVoiceInfo:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

.field private final mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTVersion;->saveVersionInfo()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayerClient;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSeekComplete:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mRealsedSurface:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayLifeId:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mHandlerLocker:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLockInRtc:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadWritedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    iput-object v3, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    iput-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mErrorCode:I

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mRtcPlay:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCrashedInfo:Ljava/lang/StringBuilder;

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCrashType:I

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mDisablePlayerStayAwake:I

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mMediaCodecStopTimeOutMs:I

    iput-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mConfigParams:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mRealsedSurface:Z

    new-instance p2, Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;

    invoke-direct {p2, p0}, Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;-><init>(Lcom/bykv/vk/component/ttvideo/player/ISurfaceListener;)V

    iput-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCallback:Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;)Z
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;)Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized create(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;Landroid/content/Context;)Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;
    .locals 2
    .annotation build Lcom/bykv/vk/component/ttvideo/player/Keep;
    .end annotation

    const-class v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->create(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;Landroid/content/Context;Ljava/util/HashMap;)Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized create(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;Landroid/content/Context;Ljava/util/HashMap;)Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;
    .locals 2
    .annotation build Lcom/bykv/vk/component/ttvideo/player/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;"
        }
    .end annotation

    const-class v0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/TTVersion;->saveVersionInfo()V

    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;

    invoke-direct {v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-static {p1, v1, p2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->create(Landroid/content/Context;Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;Ljava/util/HashMap;)Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    iput-object p1, v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    iput-object p0, v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getPlayerCrashedInfo()Ljava/lang/String;
    .locals 8

    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(II)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getContext()Landroid/content/Context;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_1

    const-string v0, "context is null"

    return-object v0

    :cond_1
    const/4 v4, 0x5

    const/4 v5, 0x0

    if-le v0, v1, :cond_3

    invoke-static {v3}, Lcom/bykv/vk/component/ttvideo/player/TTCrashUtil;->existsCrashFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v3, v6, v2}, Lcom/bykv/vk/component/ttvideo/player/TTCrashUtil;->getCrashFileContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/bykv/vk/component/ttvideo/player/TTCrashUtil;->deleteCrashFile(Landroid/content/Context;Ljava/lang/String;)V

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCrashType:I

    invoke-static {v4, v5}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(IZ)Z

    return-object v7

    :cond_2
    invoke-static {v3, v2}, Lcom/bykv/vk/component/ttvideo/utils/AVErrorInfo;->setupPhoneInfo(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    :cond_3
    const/16 v3, 0x13

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v2}, Lcom/bykv/vk/component/ttvideo/player/TTCrashUtil;->getCrashFileContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/bykv/vk/component/ttvideo/player/TTCrashUtil;->deleteCrashFile(Landroid/content/Context;Ljava/lang/String;)V

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCrashType:I

    invoke-static {v4, v5}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(IZ)Z

    return-object v6

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\ncreate time:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bykv/vk/component/ttvideo/utils/AVTime;->getFormatNow()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nport version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nstart service info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    const-string v6, "not find service start info"

    invoke-static {v3, v6}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nstop service info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc

    const-string v6, "not find service stop info"

    invoke-static {v3, v6}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\ncrash:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-static {v3, v5}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(IZ)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\nsdk info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xf

    const-string v6, "not find sdk info"

    invoke-static {v3, v6}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\ntimeout count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    const/4 v6, -0x1

    invoke-static {v3, v6}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nforeground:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x15

    invoke-static {v3, v6}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\non screen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x16

    invoke-static {v3, v6}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n battery info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    const-string v6, "not find"

    invoke-static {v3, v6}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nurl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\ncrash:\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCrashedInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iput v5, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCrashType:I

    if-le v0, v1, :cond_5

    invoke-static {v4, v5}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->getValue(IZ)Z

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/player/TTCrashUtil;->getBase64SampleCrash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPlayerErrorInfo()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mBufferingInfo:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mVoiceInfo:Ljava/lang/String;

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mContext:Landroid/content/Context;

    const-string v3, "error"

    const-string v4, "play error"

    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mUri:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4, v5}, Lcom/bykv/vk/component/ttvideo/utils/AVErrorInfo;->setupErrorInfo(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "\n"

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mBufferingInfo:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mBufferingInfo:Ljava/lang/String;

    :cond_3
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mVoiceInfo:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mVoiceInfo:Ljava/lang/String;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method private isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyInfo(II)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnInfoListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnInfoListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_3

    const/16 v1, 0x29

    if-eq p1, v1, :cond_2

    const/16 v1, 0x2a

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const/4 p1, -0x1

    goto/16 :goto_0

    :pswitch_0
    const p1, -0xfffffcc

    goto/16 :goto_0

    :pswitch_1
    const p1, -0xfffffcd

    goto/16 :goto_0

    :pswitch_2
    const p1, -0xfffffce

    goto/16 :goto_0

    :pswitch_3
    const p1, -0xfffffcf

    goto/16 :goto_0

    :pswitch_4
    const p1, -0xfffffbf

    goto/16 :goto_0

    :pswitch_5
    const p1, -0xfffffc0

    goto/16 :goto_0

    :pswitch_6
    const p1, -0xfffffed

    goto/16 :goto_0

    :pswitch_7
    const p1, -0xfffffee

    goto/16 :goto_0

    :pswitch_8
    const p1, -0xfffffef

    goto/16 :goto_0

    :pswitch_9
    const p1, -0xffffff0

    goto/16 :goto_0

    :pswitch_a
    const p1, -0xffffff1

    goto :goto_0

    :pswitch_b
    const p1, -0xffffff2

    goto :goto_0

    :pswitch_c
    const p1, -0xfffffbe

    goto :goto_0

    :pswitch_d
    const p1, 0xf00000c

    goto :goto_0

    :pswitch_e
    const p1, 0xf00000b

    goto :goto_0

    :pswitch_f
    const p1, 0xf00000a

    goto :goto_0

    :pswitch_10
    const p1, 0xf000009

    goto :goto_0

    :pswitch_11
    const p1, 0xf000008

    goto :goto_0

    :pswitch_12
    const p1, 0xf000007

    goto :goto_0

    :pswitch_13
    const p1, 0xf000006

    goto :goto_0

    :pswitch_14
    const p1, 0xf000005

    goto :goto_0

    :pswitch_15
    const p1, 0xf000004

    goto :goto_0

    :pswitch_16
    const p1, 0xf000003

    goto :goto_0

    :pswitch_17
    const/16 p1, 0x385

    goto :goto_0

    :pswitch_18
    const/16 p1, 0x322

    goto :goto_0

    :pswitch_19
    const/16 p1, 0x321

    goto :goto_0

    :pswitch_1a
    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const p1, -0xfffffdf

    goto :goto_0

    :cond_2
    const p1, -0xfffffe0

    goto :goto_0

    :cond_3
    const p1, -0xfffffd0

    goto :goto_0

    :cond_4
    const p1, 0xf00000d

    goto :goto_0

    :cond_5
    const/16 p1, 0x2be

    goto :goto_0

    :cond_6
    const/16 p1, 0x2bd

    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-interface {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnInfoListener;->onInfo(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;II)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onExternInfo(ILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mRtcPlay:I

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLockInRtc:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnExternInfoListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnExternInfoListener;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-interface {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnExternInfoListener;->onExternInfo(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLockInRtc:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLockInRtc:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnExternInfoListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnExternInfoListener;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-interface {v0, v1, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnExternInfoListener;->onExternInfo(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private sendCompletioned(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnCompletionListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayLifeId:I

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnCompletionListener;->onCompletion(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    throw p1
.end method

.method private sendErrorInfo(II)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnErrorListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayLifeId:I

    if-lt p2, v1, :cond_2

    iget p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mErrorCode:I

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, -0xfffff

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, p2, p1, v1}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnErrorListener;->onError(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    return-void

    :goto_2
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_4
    throw p1
.end method

.method private sendSeekCompleted(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSeekComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnSeekCompleteListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSeekComplete:Z

    iget v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayLifeId:I

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-interface {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method private stayAwake(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mStayAwake:Z

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->updateSurfaceScreenOn()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mRealsedSurface:Z

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public deselectTrack(I)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 p1, 0x105

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setIntOption(II)I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    shl-int/lit8 p1, p1, 0x8

    const/16 v1, 0x41

    invoke-virtual {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setIntOption(II)I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method public getCurrentPosition()I
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getIntOption(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getDataSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getIntOption(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getFloatOption(IF)F
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getFloatOption(IF)F

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p2

    :goto_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public getIntOption(II)I
    .locals 1

    const/16 v0, 0x1388

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mErrorCode:I

    return p1

    :cond_0
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCrashType:I

    return p1

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getIntOption(II)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p2

    :goto_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public getLongOption(IJ)J
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getLongOption(IJ)J

    move-result-wide p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-wide p2

    :goto_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public getObjectOption(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getObjectOption(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public getSelectedTrack(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1389

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->getPlayerCrashedInfo()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x138a

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->getPlayerErrorInfo()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getStringOption(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :goto_2
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public getTrackInfo()[Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;
    .locals 7

    new-instance v0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;

    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/MediaFormat;

    invoke-direct {v1}, Lcom/bykv/vk/component/ttvideo/player/MediaFormat;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;-><init>(ILcom/bykv/vk/component/ttvideo/player/MediaFormat;)V

    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;

    new-instance v3, Lcom/bykv/vk/component/ttvideo/player/MediaFormat;

    invoke-direct {v3}, Lcom/bykv/vk/component/ttvideo/player/MediaFormat;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v1, v4, v3}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;-><init>(ILcom/bykv/vk/component/ttvideo/player/MediaFormat;)V

    new-instance v3, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;

    new-instance v5, Lcom/bykv/vk/component/ttvideo/player/MediaFormat;

    invoke-direct {v5}, Lcom/bykv/vk/component/ttvideo/player/MediaFormat;-><init>()V

    const/4 v6, 0x2

    invoke-direct {v3, v6, v5}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;-><init>(ILcom/bykv/vk/component/ttvideo/player/MediaFormat;)V

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    return-object v5
.end method

.method public getType()I
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getVideoHeight()I
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getIntOption(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getVideoType()I
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getIntOption(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getVideoWidth()I
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getIntOption(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->handleNotify(IIILjava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public handleNotify(IIILjava/lang/String;)V
    .locals 5

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p2, :cond_8

    const/16 v4, 0x2f

    if-eq p2, v4, :cond_7

    const/16 v4, 0x31

    if-eq p2, v4, :cond_7

    const/16 v4, 0x4e20

    if-eq p2, v4, :cond_2

    const/16 v4, 0xc

    if-eq p2, v4, :cond_1

    const/16 v4, 0xd

    if-eq p2, v4, :cond_0

    const v4, 0xffff

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnSARChangedListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$onSARChangedListener;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    and-int p4, p3, v4

    shr-int/lit8 p3, p3, 0x10

    invoke-interface {p1, p2, p4, p3}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$onSARChangedListener;->onSARChanged(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;II)V

    return-void

    :pswitch_1
    invoke-direct {p0, p2, p4}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->onExternInfo(ILjava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnVideoSizeChangedListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnVideoSizeChangedListener;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    and-int p4, p3, v4

    shr-int/lit8 p3, p3, 0x10

    invoke-interface {p1, p2, p4, p3}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;II)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnBufferingUpdateListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnBufferingUpdateListener;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-interface {p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;I)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnPreparedListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnPreparedListener;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-interface {p1, p2}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnPreparedListener;->onPrepared(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;)V

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->stayAwake(Z)V

    invoke-direct {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->sendSeekCompleted(I)V

    invoke-direct {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->sendCompletioned(I)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->sendSeekCompleted(I)V

    return-void

    :cond_2
    iget p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mErrorCode:I

    const p4, -0x7f7f7f7f

    if-ne p2, p4, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    iput p4, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mErrorCode:I

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    if-eqz p2, :cond_6

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {p2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->invalid()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mConfigParams:Ljava/util/HashMap;

    const/4 p4, 0x7

    if-eqz p2, :cond_5

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_5

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mConfigParams:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {p4, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(IZ)V

    :goto_1
    invoke-direct {p0, v3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->stayAwake(Z)V

    invoke-direct {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->sendSeekCompleted(I)V

    invoke-direct {p0, p3, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->sendErrorInfo(II)V

    invoke-direct {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->sendCompletioned(I)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :goto_2
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1

    :cond_7
    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->notifyInfo(II)V

    return-void

    :cond_8
    :pswitch_6
    invoke-direct {p0, v3}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->stayAwake(Z)V

    const p2, -0x7a115

    if-ne p3, p2, :cond_a

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mConfigParams:Ljava/util/HashMap;

    const/16 p4, 0x8

    if-eqz p2, :cond_9

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_9

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mConfigParams:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    invoke-static {p4, v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;->setValue(IZ)V

    :cond_a
    :goto_3
    invoke-direct {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->sendSeekCompleted(I)V

    invoke-direct {p0, p3, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->sendErrorInfo(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x33
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public isLooping()Z
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getIntOption(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isMute()Z
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getIntOption(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isPlaying()Z
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getIntOption(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public mouseEvent(III)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {p1, v0, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->mouseEvent(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_2
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public onCrashedInfo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCrashedInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCrashedInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public onPlayLogInfo(IILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iput-object p3, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mVoiceInfo:Ljava/lang/String;

    return-void

    :cond_0
    if-nez p2, :cond_4

    iput-object p3, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mBufferingInfo:Ljava/lang/String;

    return-void

    :cond_1
    if-nez p1, :cond_2

    iput p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mErrorCode:I

    :cond_2
    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 p2, 0x28

    if-le p1, p2, :cond_3

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&&time:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public onPlayerNotify(IIILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mHandlerLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/16 v2, 0x28

    if-ne p2, v2, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->handleNotify(IIILjava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iput-object p4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;)V
    .locals 1

    sget-object p1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->TAG:Ljava/lang/String;

    const-string v0, "surface is change"

    invoke-static {p1, v0}, Lcom/bykv/vk/component/ttvideo/utils/AVLogger;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mRealsedSurface:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eq p1, v0, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCallback:Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCallback:Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mRealsedSurface:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mMediaCodecStopTimeOutMs:I

    if-lez p1, :cond_1

    new-instance p1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient$2;

    invoke-direct {p1, p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient$2;-><init>(Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;)V

    invoke-static {p1}, Lcom/bykv/vk/component/ttvideo/player/AVThreadPool;->addTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mMediaCodecStopTimeOutMs:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-object p1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->TAG:Ljava/lang/String;

    const-string v0, "set surface time out"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_1
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setSurface(Landroid/view/Surface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->stayAwake(Z)V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public prepare()V
    .locals 0

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->prepareAsync()V

    return-void
.end method

.method public prepareAsync()V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mErrorCode:I

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iget-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mRealsedSurface:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setSurface(Landroid/view/Surface;)V

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mRealsedSurface:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->prepare()V

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->updateLifeId()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public prevClose()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mRealsedSurface:Z

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCallback:Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->prevClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurface:Landroid/view/Surface;

    return-void

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->stayAwake(Z)V

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->updateSurfaceScreenOn()V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/4 v2, -0x1

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayLifeId:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCallback:Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mRealsedSurface:Z

    :cond_1
    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mHandlerLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mLogListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnLogListener;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->getPlayerErrorInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mLogListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnLogListener;

    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWrapper:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;

    invoke-interface {v2, v3, v0}, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnLogListener;->onLogInfo(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;Ljava/lang/String;)V

    :cond_3
    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mContext:Landroid/content/Context;

    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :goto_3
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public releaseAsync()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mRealsedSurface:Z

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCallback:Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->prevClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurface:Landroid/view/Surface;

    new-instance v0, Lcom/bytedance/sdk/component/o/p/ox;

    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient$1;

    invoke-direct {v1, p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient$1;-><init>(Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;)V

    const-string v2, "TPlayerClient"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/o/p/ox;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/p/ox;->start()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->reset()V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mErrorCode:I

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mLogInfo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->updateLifeId()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public rotateCamera(FF)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->rotateCamera(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSeekComplete:Z

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public selectTrack(I)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 p1, 0x105

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setIntOption(II)I

    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method public setAudioProcessor(Lcom/bykv/vk/component/ttvideo/player/AudioProcessor;)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setAudioProcessor(Lcom/bykv/vk/component/ttvideo/player/AudioProcessor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setCacheFile(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setCacheFile(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "settings"

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result p2

    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "Failed to resolve default ringtone"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "r"

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    :catch_1
    nop

    goto :goto_5

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_5
    throw p1

    :goto_3
    if-eqz v0, :cond_6

    :goto_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_6

    :goto_5
    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    :goto_6
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->setDataSource(Ljava/lang/String;)V

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

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\r\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x14

    invoke-virtual {p2, p3, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setStringOption(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_2
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1

    :cond_4
    :goto_3
    return-void
.end method

.method public setDataSource(Lcom/bykv/vk/component/ttvideo/player/IMediaDataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setDataSource(Lcom/bykv/vk/component/ttvideo/player/IMediaDataSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null mediadatasource pointer."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setDataSourceFd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_0
    throw v0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/16 v0, 0x87

    invoke-virtual {p1, v0, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setLongOption(IJ)I

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/16 p2, 0x88

    invoke-virtual {p1, p2, p4, p5}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setLongOption(IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "file://"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mUri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mUri:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_2
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCallback:Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mCallback:Lcom/bykv/vk/component/ttvideo/player/TTSurfaceCallback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->updateSurfaceScreenOn()V

    return-void

    :goto_2
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setFloatOption(IF)I
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setFloatOption(IF)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :goto_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setFrameMetadataListener(Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setFrameMetadataListener(Lcom/bykv/vk/component/ttvideo/player/FrameMetadataListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setIntOption(II)I
    .locals 2

    const/16 v0, 0x29

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    sput p2, Lcom/bykv/vk/component/ttvideo/net/AVResolver;->HOST_MAX_CACHE_TIME:I

    return v1

    :cond_0
    const/16 v0, 0x138b

    if-ne p1, v0, :cond_1

    iput p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mDisablePlayerStayAwake:I

    return v1

    :cond_1
    const/16 v0, 0x3b8

    if-ne p1, v0, :cond_2

    iput p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mMediaCodecStopTimeOutMs:I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setIntOption(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    :goto_0
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :goto_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setIsMute(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setIntOption(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setLoadControl(Lcom/bykv/vk/component/ttvideo/player/LoadControl;)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setLoadControl(Lcom/bykv/vk/component/ttvideo/player/LoadControl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setLongOption(IJ)I
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setLongOption(IJ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :goto_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setLooping(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setMaskInfo(Lcom/bykv/vk/component/ttvideo/player/MaskInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setMaskInfo(Lcom/bykv/vk/component/ttvideo/player/MaskInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setMediaTransport(Lcom/bykv/vk/component/ttvideo/player/MediaTransport;)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setMediaTransport(Lcom/bykv/vk/component/ttvideo/player/MediaTransport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setOnBufferingUpdateListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 4

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnBufferingUpdateListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnBufferingUpdateListener;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setOnCompletionListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnCompletionListener;)V
    .locals 4

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnCompletionListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnCompletionListener;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setOnErrorListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnErrorListener;)V
    .locals 4

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnErrorListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnErrorListener;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    const-wide v2, 0x200000000001L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setOnExternInfoListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnExternInfoListener;)V
    .locals 4

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnExternInfoListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnExternInfoListener;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    const-wide v2, 0x190200080000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setOnInfoListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnInfoListener;)V
    .locals 4

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnInfoListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnInfoListener;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    const-wide v2, 0x7e86fd7f7007b2L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setOnLogListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnLogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mLogListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnLogListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnPreparedListener;)V
    .locals 4

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnPreparedListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnPreparedListener;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setOnSARChangedListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$onSARChangedListener;)V
    .locals 4

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnSARChangedListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$onSARChangedListener;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    const-wide/32 v2, 0x800000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setOnSeekCompleteListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnSeekCompleteListener;)V
    .locals 4

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnSeekCompleteListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnSeekCompleteListener;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setOnVideoSizeChangedListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 4

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mOnVideoSizeChangedListener:Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnVideoSizeChangedListener;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setNotifyState(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setPanoVideoControlModel(I)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setIntOption(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setPlaybackParams(Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->getSpeed()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->getSpeed()F

    move-result p1

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setFloatOption(IF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mScreenOnWhilePlaying:Z

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->updateSurfaceScreenOn()V

    :cond_0
    return-void
.end method

.method public setStringOption(ILjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setStringOption(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :goto_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setSubInfo(Lcom/bykv/vk/component/ttvideo/player/SubInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setSubInfo(Lcom/bykv/vk/component/ttvideo/player/SubInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/high16 v2, 0x20000000

    or-int/2addr p2, v2

    const-class v2, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->start()V

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->updateLifeId()V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    const/16 v1, 0x320

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getIntOption(II)I

    move-result v0

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mRtcPlay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->stayAwake(Z)V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->stayAwake(Z)V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public switchStream(II)V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->switchStream(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1

    :cond_1
    return-void
.end method

.method public takeScreenshot(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnScreenshotListener;)V
    .locals 4

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mListenerState:J

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setNotifyState(J)V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->setOnScreenshotListener(Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$OnScreenshotListener;)V

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {p1}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->takeScreenshot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1

    :cond_1
    return-void
.end method

.method public updateLifeId()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/ITTPlayerRef;->getLifeId()I

    move-result v0

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mPlayLifeId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw v0
.end method

.method public updateSurfaceScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mDisablePlayerStayAwake:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerClient;->mStayAwake:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method

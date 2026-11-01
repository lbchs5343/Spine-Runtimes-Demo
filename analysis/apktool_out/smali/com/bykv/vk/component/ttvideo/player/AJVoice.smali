.class public Lcom/bykv/vk/component/ttvideo/player/AJVoice;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation build Lcom/bykv/vk/component/ttvideo/player/Keep;
.end annotation


# static fields
.field private static final DISCONTINGUNITY_MS:I = 0xc8

.field private static final ERROR_FORMAT_ILLEGAL:I = -0xc

.field private static final ERROR_NULL_BUFFER:I = -0xa

.field private static final ERROR_SIZE_ILLEGAL:I = -0xb

.field private static final FORCE_RESET_WORKAROUND_TIMEOUT_MS:J = 0xc8L

.field private static final MAX_LATENCY_MS:I = 0x1388

.field private static final MIN_LATENCY_CHECK_MS:I = 0x1f4

.field private static final MS_UNIT:I = 0x3e8

.field private static final RELEASE_WORKAROUND_TIME_MS:J = 0x50L

.field private static final SDK_INT:I

.field private static final START_NO_SET:I = -0x1

.field private static final S_FAIL:I = -0x1

.field private static final S_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AJVoice"

.field private static final TIME_UNSET:J = -0x7fffffffffffffffL

.field private static final kNoSettingVolume:I = -0x1

.field private static mDeviceName:Ljava/lang/String;

.field private static mNeedReleaseWorkAround:Z


# instance fields
.field private audioTrackPositionTracker:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;

.field private forceResetWorkaroundTimeMs:J

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private lastRawPlaybackHeadPosition:J

.field private mAudioFormat:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBlockSize:I

.field private mBufferSizeMs:I

.field private mChannels:I

.field private mChannelsLayout:I

.field private mEnableAudioTrackSmoothClock:I

.field private mFrameSamples:I

.field private mLastGetLatencyMs:J

.field private mLatencyMs:I

.field private mLeftVolume:F

.field private mMaxVolume:I

.field private mMinBytes:[B

.field private mNativeObject:J
    .annotation build Lcom/bykv/vk/component/ttvideo/player/Keep;
    .end annotation
.end field

.field private mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

.field private mReleasingConditionVariable:Landroid/os/ConditionVariable;

.field private mSampleBytes:I

.field private mSampleFormat:I

.field private mSampleRate:I

.field private mSerial:I

.field private mStartMediaTimeMs:I

.field private mStartTime:J

.field private volatile mStoped:Z

.field private mStreamType:I

.field private mTrackBufferSize:I

.field private mWrittenPcmBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->SDK_INT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 8
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    const/16 v1, 0x800

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mBlockSize:I

    const v1, 0xac44

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSampleRate:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mChannels:I

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSampleBytes:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSampleFormat:I

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mFrameSamples:I

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioManager:Landroid/media/AudioManager;

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mChannelsLayout:I

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioFormat:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLeftVolume:F

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mMaxVolume:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStoped:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSerial:I

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getLatencyMethod:Ljava/lang/reflect/Method;

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mTrackBufferSize:I

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLatencyMs:I

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mBufferSizeMs:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLastGetLatencyMs:J

    iput-wide v4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J

    iput-wide v4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->lastRawPlaybackHeadPosition:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->forceResetWorkaroundTimeMs:J

    iput-wide v4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStartTime:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStreamType:I

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mEnableAudioTrackSmoothClock:I

    iput-wide v4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mNativeObject:J

    iput v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStartMediaTimeMs:I

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mDeviceName:Ljava/lang/String;

    const-string v2, "OnePlus6T"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mNeedReleaseWorkAround:Z

    :cond_0
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/bykv/vk/component/ttvideo/player/AJVoice;)Landroid/os/ConditionVariable;
    .locals 0

    iget-object p0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mReleasingConditionVariable:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method public static getAudioTrackChannelConfig(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x18fc

    return p0

    :pswitch_1
    const/16 p0, 0x4fc

    return p0

    :pswitch_2
    const/16 p0, 0xfc

    return p0

    :pswitch_3
    const/16 p0, 0xdc

    return p0

    :pswitch_4
    const/16 p0, 0xcc

    return p0

    :pswitch_5
    const/16 p0, 0x1c

    return p0

    :pswitch_6
    const/16 p0, 0xc

    return p0

    :pswitch_7
    const/4 p0, 0x4

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPcmFrameSize(II)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    return p1
.end method

.method private getPlaybackBytes()J
    .locals 4

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getPlaybackHeadPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioFormat:I

    iget v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mChannels:I

    invoke-static {v2, v3}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getPcmFrameSize(II)I

    move-result v2

    int-to-long v2, v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private getPlaybackHeadPosition()J
    .locals 10

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    iget-wide v8, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->lastRawPlaybackHeadPosition:J

    cmp-long v1, v8, v2

    if-lez v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->forceResetWorkaroundTimeMs:J

    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->forceResetWorkaroundTimeMs:J

    :cond_1
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->lastRawPlaybackHeadPosition:J

    return-wide v0

    :cond_2
    iput-wide v6, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->forceResetWorkaroundTimeMs:J

    iput-wide v4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->lastRawPlaybackHeadPosition:J

    return-wide v4
.end method

.method private getPlaybackPositionMs()J
    .locals 4

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getWrittenDurationMs()J
    .locals 4

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J

    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioFormat:I

    iget v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mChannels:I

    invoke-static {v2, v3}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getPcmFrameSize(II)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private needsReset()Z
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->forceResetWorkaroundTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->forceResetWorkaroundTimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private reconfigure()I
    .locals 13

    const-string v0, "create audiotrack but failed to initialize"

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    invoke-virtual {v1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mMaxVolume:I

    :cond_0
    iget v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mChannels:I

    invoke-static {v1}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getAudioTrackChannelConfig(I)I

    move-result v1

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mChannelsLayout:I

    const/4 v2, -0x1

    if-nez v1, :cond_1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mChannels:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "not supoort channel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/utils/AVLogger;->k(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSampleBytes:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x3

    iput v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioFormat:I

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    iput v5, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioFormat:I

    :goto_0
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSampleRate:I

    iget v5, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioFormat:I

    invoke-static {v3, v1, v5}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v11

    if-gtz v11, :cond_3

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMinBufferSize failed, trace: sampleRate = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mChannelsLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mChannelsLayout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAudioFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_3
    iput v11, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mTrackBufferSize:I

    :try_start_0
    new-array v1, v11, [B

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mMinBytes:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    iget v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioFormat:I

    iget v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mChannels:I

    invoke-static {v1, v3}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getPcmFrameSize(II)I

    move-result v1

    div-int v1, v11, v1

    mul-int/lit16 v1, v1, 0x3e8

    iget v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSampleRate:I

    div-int/2addr v1, v3

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mBufferSizeMs:I

    :try_start_1
    new-instance v6, Landroid/media/AudioTrack;

    iget v7, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStreamType:I

    iget v8, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSampleRate:I

    iget v9, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mChannelsLayout:I

    iget v10, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioFormat:I

    const/4 v12, 0x1

    invoke-direct/range {v6 .. v12}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v6, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-eq v1, v4, :cond_4

    const/4 v1, -0x3

    const/4 v2, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :catchall_0
    iput-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    sget-object v2, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    const-string v3, "create audio track failed ,detail = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_1
    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    const-string v1, "out of memory error when new audio buffer for audiotrack"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0xa

    return v0

    :cond_5
    const/16 v0, -0xc

    return v0
.end method

.method private reset()I
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLatencyMs:I

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->forceResetWorkaroundTimeMs:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLastGetLatencyMs:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->lastRawPlaybackHeadPosition:J

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLeftVolume:F

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->reconfigure()I

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->reconfigure()I

    throw v0

    :catch_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->reconfigure()I

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    :try_start_0
    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/AJVoice$1;

    invoke-direct {v1, p0, v0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice$1;-><init>(Lcom/bykv/vk/component/ttvideo/player/AJVoice;Landroid/media/AudioTrack;)V

    invoke-static {v1}, Lcom/bykv/vk/component/ttvideo/player/AVThreadPool;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    const-string v2, "create close thread fail = "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->releaseTrack(Landroid/media/AudioTrack;)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 5
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->audioTrackPositionTracker:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStartMediaTimeMs:I

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public getCurrentPositionMs()I
    .locals 5
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->audioTrackPositionTracker:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStartMediaTimeMs:I

    invoke-virtual {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    long-to-int v1, v0

    add-int/2addr v2, v1

    return v2

    :cond_0
    return v1
.end method

.method public getEOSDelayMs()I
    .locals 6
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getWrittenDurationMs()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getPlaybackPositionMs()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getLatency()I

    move-result v4

    if-lez v4, :cond_0

    iget v4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLatencyMs:I

    iget v5, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mBufferSizeMs:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    long-to-int v1, v0

    return v1
.end method

.method public getLatency()I
    .locals 7
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getPlaybackHeadPosition()J

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLastGetLatencyMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getLatencyMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLatencyMs:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLatencyMs:I

    const/16 v5, 0x1388

    if-le v3, v5, :cond_0

    iput v4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLatencyMs:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getLatencyMethod:Ljava/lang/reflect/Method;

    :cond_0
    :goto_0
    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLastGetLatencyMs:J

    :cond_1
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLatencyMs:I

    return v0
.end method

.method public getMaxVolume()I
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mMaxVolume:I

    return v0
.end method

.method public getTrackBufferSize()I
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mTrackBufferSize:I

    return v0
.end method

.method public getVolume()F
    .locals 4
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLeftVolume:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStreamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    nop

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ltz v1, :cond_1

    int-to-float v0, v1

    return v0

    :cond_1
    if-lez v0, :cond_2

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    return v0

    :cond_2
    const/high16 v0, 0x41200000    # 10.0f

    return v0
.end method

.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 0

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 0

    return-void
.end method

.method public open(JLcom/bykv/vk/component/ttvideo/player/TTPlayer;)I
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iput-object p3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->reconfigure()I

    move-result p1

    if-nez p1, :cond_1

    iget p2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLeftVolume:F

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p2}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->setVolume(FF)V

    :cond_0
    :try_start_0
    const-class p2, Landroid/media/AudioTrack;

    const-string p3, "getLatency"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return p1
.end method

.method public pause()V
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->audioTrackPositionTracker:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->pause()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public releaseTrack(Landroid/media/AudioTrack;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mNeedReleaseWorkAround:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x50

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception p1

    const-string v0, "release in invalid state = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public resume()V
    .locals 5
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->audioTrackPositionTracker:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioFormat:I

    iget v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mChannels:I

    invoke-static {v2, v3}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getPcmFrameSize(II)I

    move-result v3

    iget v4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mTrackBufferSize:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->setAudioTrack(Landroid/media/AudioTrack;III)V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->audioTrackPositionTracker:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public setAudioTrackSmoothClock(I)V
    .locals 2
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    sget v0, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mEnableAudioTrackSmoothClock:I

    if-lez p1, :cond_0

    new-instance p1, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;-><init>(Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$Listener;)V

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->audioTrackPositionTracker:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;

    new-instance p1, Landroid/os/ConditionVariable;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mReleasingConditionVariable:Landroid/os/ConditionVariable;

    :cond_0
    return-void
.end method

.method public setSampleInfo(IIIIII)V
    .locals 0
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iput p2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSampleRate:I

    iput p3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mChannels:I

    iput p4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mBlockSize:I

    iput p6, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSampleBytes:I

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSampleFormat:I

    iput p5, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mFrameSamples:I

    return-void
.end method

.method public setStreamType(I)V
    .locals 0
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStreamType:I

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mPlayer:Lcom/bykv/vk/component/ttvideo/player/TTPlayer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->reset()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->start()I

    :cond_1
    :goto_0
    return-void
.end method

.method public setTrackVolume(FF)V
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 3
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    :try_start_0
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mMaxVolume:I

    int-to-float v1, v0

    cmpg-float v1, v1, p1

    if-gez v1, :cond_0

    int-to-float p1, v0

    :cond_0
    const v0, -0x36800010    # -1048575.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStreamType:I

    float-to-int v1, p1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_2
    :goto_0
    iput p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mLeftVolume:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public start()I
    .locals 6
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    const-string v1, "audiotrack start before created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStoped:Z

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->audioTrackPositionTracker:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    iget v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioFormat:I

    iget v4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mChannels:I

    invoke-static {v3, v4}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getPcmFrameSize(II)I

    move-result v4

    iget v5, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mTrackBufferSize:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->setAudioTrack(Landroid/media/AudioTrack;III)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSerial:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v1, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mNeedReleaseWorkAround:Z

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStartTime:J

    :cond_2
    return v0

    :goto_1
    sget-object v1, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    const-string v2, "audioTrack start failed = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    return v0
.end method

.method public stop()V
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStoped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStoped:Z

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->audioTrackPositionTracker:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->pause()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;I)I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 p2, -0x1

    if-nez p1, :cond_0

    sget-object p1, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    const-string v0, "buffer is nullpoint"

    invoke-static {p1, v0}, Lcom/bykv/vk/component/ttvideo/utils/AVLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_1

    return p2

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return v2
.end method

.method public write([BIII)I
    .locals 6
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStoped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSerial:I

    if-eq v0, p4, :cond_2

    iput p4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSerial:I

    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J

    const-wide/16 v4, 0x0

    cmp-long p4, v2, v4

    if-lez p4, :cond_2

    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p4}, Landroid/media/AudioTrack;->flush()V

    :cond_2
    :try_start_0
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p4, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_3

    sget-object p2, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "write failed : ret: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", size = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_3
    iget-wide p2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J

    int-to-long v2, p1

    add-long/2addr p2, v2

    iput-wide p2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->needsReset()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->reset()I

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->start()I

    move-result v1

    :cond_4
    if-nez v1, :cond_5

    return p1

    :cond_5
    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1

    :cond_6
    :goto_0
    sget-object p1, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    const-string p2, "buffer is nullpoint"

    invoke-static {p1, p2}, Lcom/bykv/vk/component/ttvideo/utils/AVLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0xa

    return p1
.end method

.method public write([BIIIJ)I
    .locals 9
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    if-eqz p1, :cond_a

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStoped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSerial:I

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    if-eq v0, p4, :cond_4

    iput p4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSerial:I

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->audioTrackPositionTracker:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mReleasingConditionVariable:Landroid/os/ConditionVariable;

    if-eqz v5, :cond_3

    iget-wide v5, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_4

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->audioTrackPositionTracker:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->reset()V

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStartMediaTimeMs:I

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mReleasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    iput-wide v3, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    new-instance v5, Lcom/bykv/vk/component/ttvideo/player/AJVoice$2;

    invoke-direct {v5, p0, v0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice$2;-><init>(Lcom/bykv/vk/component/ttvideo/player/AJVoice;Landroid/media/AudioTrack;)V

    invoke-static {v5}, Lcom/bykv/vk/component/ttvideo/player/AVThreadPool;->addTask(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mReleasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->reconfigure()I

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->start()I

    iput p4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSerial:I

    goto :goto_0

    :cond_3
    iget-wide v5, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J

    cmp-long v0, v5, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    :cond_4
    :goto_0
    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStartMediaTimeMs:I

    if-ne v0, v2, :cond_5

    invoke-static {v3, v4, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p5

    long-to-int p6, p5

    iput p6, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStartMediaTimeMs:I

    goto :goto_1

    :cond_5
    int-to-long v3, v0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->getWrittenDurationMs()J

    move-result-wide v5

    add-long/2addr v3, v5

    sub-long v5, v3, p5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0xc8

    cmp-long v0, v5, v7

    if-lez v0, :cond_6

    sget-object v0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    const-string v5, "Discontinuity detected [expected "

    const-string v6, ", got "

    invoke-static {v3, v4, v5, v6}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sub-long/2addr p5, v3

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStartMediaTimeMs:I

    int-to-long v3, v0

    add-long/2addr v3, p5

    long-to-int p5, v3

    iput p5, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mStartMediaTimeMs:I

    :cond_6
    :goto_1
    :try_start_0
    iget-object p5, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p5, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_7

    sget-object p2, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "write failed : ret: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", size = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_7
    iget-wide p2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J

    int-to-long p5, p1

    add-long/2addr p2, p5

    iput-wide p2, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mWrittenPcmBytes:J

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->needsReset()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->reset()I

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->start()I

    move-result v1

    iput p4, p0, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->mSerial:I

    :cond_8
    if-nez v1, :cond_9

    return p1

    :cond_9
    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v2

    :cond_a
    :goto_2
    sget-object p1, Lcom/bykv/vk/component/ttvideo/player/AJVoice;->TAG:Ljava/lang/String;

    const-string p2, "buffer is nullpoint"

    invoke-static {p1, p2}, Lcom/bykv/vk/component/ttvideo/utils/AVLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0xa

    return p1
.end method

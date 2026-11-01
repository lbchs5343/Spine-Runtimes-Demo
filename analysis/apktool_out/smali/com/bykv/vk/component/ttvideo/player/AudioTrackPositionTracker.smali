.class final Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$PlayState;,
        Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$Listener;
    }
.end annotation


# static fields
.field private static final FORCE_RESET_WORKAROUND_TIMEOUT_MS:J = 0xc8L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_LATENCY_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1


# instance fields
.field private audioTimestampPoller:Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;

.field private audioTrack:Landroid/media/AudioTrack;

.field private bufferSize:I

.field private bufferSizeUs:J

.field private endPlaybackHeadPosition:J

.field private forceResetWorkaroundTimeMs:J

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private hasData:Z

.field private isOutputPcm:Z

.field private lastLatencySampleTimeUs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastRawPlaybackHeadPosition:J

.field private latencyUs:J

.field private final listener:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$Listener;

.field private needsPassthroughWorkarounds:Z

.field private nextPlayheadOffsetIndex:I

.field private outputPcmFrameSize:I

.field private outputSampleRate:I

.field private passthroughWorkaroundPauseOffset:J

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private rawPlaybackHeadWrapCount:J

.field private smoothedPlayheadOffsetUs:J

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method public constructor <init>(Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$Listener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->listener:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$Listener;

    sget p1, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_0

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->playheadOffsets:[J

    return-void
.end method

.method private forceHasPendingData()Z
    .locals 5

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private framesToDurationUs(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->outputSampleRate:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private getPlaybackHeadPosition()J
    .locals 11

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->stopTimestampUs:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->outputSampleRate:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_1

    return-wide v5

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v7, v0

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    iget-wide v9, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    iput-wide v9, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    :cond_2
    iget-wide v9, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v7, v9

    :cond_3
    sget v0, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_6

    cmp-long v0, v7, v5

    if-nez v0, :cond_5

    iget-wide v9, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_5

    const/4 v0, 0x3

    if-ne v1, v0, :cond_5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    :cond_4
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    return-wide v0

    :cond_5
    iput-wide v3, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    :cond_6
    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    cmp-long v2, v0, v7

    if-lez v2, :cond_7

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    :cond_7
    iput-wide v7, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v7, v0

    return-wide v7
.end method

.method private getPlaybackHeadPositionUs()J
    .locals 2

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isEncodingLinearPcm(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private maybePollAndCheckTimestamp(JJ)V
    .locals 11

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;->maybePollTimestamp(J)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v3

    sub-long v1, v5, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0x4c4b40

    cmp-long v9, v1, v7

    if-lez v9, :cond_1

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->listener:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$Listener;

    move-wide v7, p1

    move-wide v9, p3

    invoke-interface/range {v2 .. v10}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$Listener;->onSystemTimeUsMismatch(JJJJ)V

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;->rejectTimestamp()V

    return-void

    :cond_1
    move-wide v9, v7

    move-wide v7, p1

    move-wide p1, v9

    move-wide v9, p3

    invoke-direct {p0, v3, v4}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide p3

    sub-long/2addr p3, v9

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    cmp-long v1, p3, p1

    if-lez v1, :cond_2

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->listener:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$Listener;

    invoke-interface/range {v2 .. v10}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$Listener;->onPositionFramesMismatch(JJJJ)V

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;->rejectTimestamp()V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;->acceptTimestamp()V

    return-void
.end method

.method private maybeSampleSyncParams()V
    .locals 13

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-wide v6, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7530

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    iget-object v6, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->playheadOffsets:[J

    iget v7, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    sub-long v8, v0, v4

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0xa

    rem-int/2addr v7, v6

    iput v7, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    iget v7, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v7, v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->playheadOffsetCount:I

    :cond_1
    iput-wide v4, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v2, v3, :cond_2

    iget-wide v6, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    iget-object v8, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->playheadOffsets:[J

    aget-wide v9, v8, v2

    int-to-long v11, v3

    div-long/2addr v9, v11

    add-long/2addr v9, v6

    iput-wide v9, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v2, :cond_3

    :goto_1
    return-void

    :cond_3
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->maybePollAndCheckTimestamp(JJ)V

    invoke-direct {p0, v4, v5}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->maybeUpdateLatency(J)V

    return-void
.end method

.method private maybeUpdateLatency(J)V
    .locals 8

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->isOutputPcm:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    iget-wide v4, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->bufferSizeUs:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->latencyUs:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->latencyUs:J

    const-wide/32 v6, 0x4c4b40

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->listener:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$Listener;

    invoke-interface {v0, v2, v3}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$Listener;->onInvalidLatency(J)V

    iput-wide v4, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    :cond_1
    return-void
.end method

.method private static needsPassthroughWorkarounds(I)Z
    .locals 2

    sget v0, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private resetSyncParams()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->playheadOffsetCount:I

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    return-void
.end method


# virtual methods
.method public getAvailableBufferSize(J)I
    .locals 4

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->outputPcmFrameSize:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iget p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->bufferSize:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public getCurrentPositionUs(Z)J
    .locals 7

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->maybeSampleSyncParams()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;

    invoke-virtual {v2}, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;->hasTimestamp()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;->isTimestampAdvancing()Z

    move-result p1

    if-nez p1, :cond_1

    return-wide v3

    :cond_1
    invoke-virtual {v2}, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v5

    sub-long/2addr v0, v5

    add-long/2addr v0, v3

    return-wide v0

    :cond_2
    iget v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-long/2addr v0, v2

    :goto_0
    if-nez p1, :cond_4

    iget-wide v2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->latencyUs:J

    sub-long/2addr v0, v2

    :cond_4
    return-wide v0
.end method

.method public handleEndOfStream(J)V
    .locals 4

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->stopTimestampUs:J

    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    return-void
.end method

.method public hasPendingData(J)Z
    .locals 3

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->forceHasPendingData()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStalled(J)Z
    .locals 5

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public mayHandleBuffer(J)Z
    .locals 8

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    iget-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->hasData:Z

    return v3

    :cond_0
    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    return v3

    :cond_1
    iget-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->hasData:Z

    invoke-virtual {p0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->hasData:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    if-eq v0, v2, :cond_2

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->listener:Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$Listener;

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->bufferSize:I

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->bufferSizeUs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-interface {p1, p2, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker$Listener;->onUnderrun(IJ)V

    :cond_2
    return v2
.end method

.method public pause()Z
    .locals 5

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->resetSyncParams()V

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;->reset()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->resetSyncParams()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;

    return-void
.end method

.method public setAudioTrack(Landroid/media/AudioTrack;III)V
    .locals 2

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    iput p3, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->outputPcmFrameSize:I

    iput p4, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->bufferSize:I

    new-instance v0, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;

    invoke-direct {v0, p1}, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {p2}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->needsPassthroughWorkarounds(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    invoke-static {p2}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->isEncodingLinearPcm(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->isOutputPcm:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_0

    div-int/2addr p4, p3

    int-to-long p1, p4

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->framesToDurationUs(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->bufferSizeUs:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->lastRawPlaybackHeadPosition:J

    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->hasData:Z

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->stopTimestampUs:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    iput-wide p1, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->latencyUs:J

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AudioTrackPositionTracker;->audioTimestampPoller:Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;

    invoke-virtual {v0}, Lcom/bykv/vk/component/ttvideo/player/AudioTimestampPoller;->reset()V

    return-void
.end method

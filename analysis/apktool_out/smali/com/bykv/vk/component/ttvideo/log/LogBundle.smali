.class public Lcom/bykv/vk/component/ttvideo/log/LogBundle;
.super Ljava/lang/Object;


# instance fields
.field public SDKDNSTimeStamp:J

.field public audioBufferTime:J

.field public audioBufferTimeOnFirstFrame:J

.field public audioBufferTimeOnStallEnd:J

.field public audioBufferTimeOnStallStart:J

.field public audioDNSTimestamp:J

.field public audioDecodeTimestamp:J

.field public audioDeviceOpenTime:J

.field public audioDeviceOpenedTime:J

.field public audioFirstPacketPos:J

.field public audioFirstPacketPts:J

.field public audioHttpReqFinishTimestamp:J

.field public audioHttpResFinishTimestamp:J

.field public audioPacketTimestamp:J

.field public audioRenderTimestamp:J

.field public audioTcpConnectTimestamp:J

.field public audioTcpFirstPacketTimestamp:J

.field public avphStreamInfo:Lorg/json/JSONArray;

.field public callPrepareTime:J

.field public channelId:Ljava/lang/String;

.field public cmafAudioFirstSegConntectTimestamp:J

.field public cmafMdpHttpReqFinishTimestamp:J

.field public cmafMdpHttpResFinishTimestamp:J

.field public cmafMdpTcpFirstPacketTimestamp:J

.field public cmafMpdConntectTimestamp:J

.field public cmafMpdDNSTimestamp:J

.field public cmafMpdTcpConntectTimestamp:J

.field public cmafVideoFirstSegConntectTimestamp:J

.field public currentPosition:J

.field public delay:J

.field public dnsIP:Ljava/lang/String;

.field public downloadSize:J

.field public downloadSpeed:J

.field public downloadSpeedOnFirstFrame:J

.field public dropAudioCostTime:J

.field public dropAudioPts:J

.field public firstVideoFrameSendOutletTime:J

.field public fps:F

.field public headerVia:Ljava/lang/String;

.field public headerXServerIP:Ljava/lang/String;

.field public httpReqFinishTimestamp:J

.field public httpResFinishTimestamp:J

.field public isTooLargeAVDiff:I

.field public mABRStreamInfo:Lorg/json/JSONArray;

.field public mStreamType:I

.field public playTime:J

.field public playedSize:J

.field public playerDNSTimestamp:J

.field public prepareEndTimestamp:J

.field public quicCHLOCount:I

.field public quicConfigCached:I

.field public quicFirstFrameCHLOCount:I

.field public quicOpenResult:I

.field public renderType:I

.field public resolution:Ljava/lang/String;

.field public rtcAnswerRecvTime:J

.field public rtcInitedTime:J

.field public rtcOfferSendTime:J

.field public rtcStartTime:J

.field public rtcStatInfo:Ljava/lang/String;

.field public seiBitrate:I

.field public seiFps:I

.field public seiSource:Ljava/lang/String;

.field public startPlayTime:J

.field public streamInfoFindTime:J

.field public streamInfoFoundTime:J

.field public tcpConnectTimestamp:J

.field public tcpFirstPacketTimestamp:J

.field public tfoFallBackTime:J

.field public tfoSuccess:I

.field public videoBufferTime:J

.field public videoBufferTimeOnFirstFrame:J

.field public videoBufferTimeOnStallEnd:J

.field public videoBufferTimeOnStallStart:J

.field public videoDNSTimestamp:J

.field public videoDecodeTimestamp:J

.field public videoDeviceOpenTime:J

.field public videoDeviceOpenedTime:J

.field public videoDeviceWaitEndTime:J

.field public videoDeviceWaitStartTime:J

.field public videoFirstPacketPos:J

.field public videoFirstPacketPts:J

.field public videoHttpReqFinishTimestamp:J

.field public videoHttpResFinishTimestamp:J

.field public videoPacketTimestamp:J

.field public videoParamSendOutletTime:J

.field public videoRenderTimeForPlayerCore:J

.field public videoRenderTimestamp:J

.field public videoTcpConnectTimestamp:J

.field public videoTcpFirstPacketTimestamp:J

.field public waitingTimeAfterFirstFrame:J


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMpdDNSTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMpdTcpConntectTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMdpHttpReqFinishTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMdpTcpFirstPacketTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMdpHttpResFinishTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMpdConntectTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafAudioFirstSegConntectTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafVideoFirstSegConntectTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoTcpConnectTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioTcpConnectTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDNSTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDNSTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoTcpFirstPacketTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioTcpFirstPacketTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoHttpReqFinishTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioHttpReqFinishTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoHttpResFinishTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioHttpResFinishTimestamp:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoFirstPacketPos:J

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoFirstPacketPts:J

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioFirstPacketPos:J

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioFirstPacketPts:J

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dropAudioPts:J

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dropAudioCostTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->httpReqFinishTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->httpResFinishTimestamp:J

    const/4 v4, 0x0

    iput v4, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->fps:F

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSpeed:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSpeedOnFirstFrame:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTimeOnFirstFrame:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTimeOnFirstFrame:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->waitingTimeAfterFirstFrame:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->delay:J

    const-string v4, "none"

    iput-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiSource:Ljava/lang/String;

    iput-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->channelId:Ljava/lang/String;

    const/4 v5, -0x1

    iput v5, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiBitrate:I

    iput v5, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiFps:I

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoParamSendOutletTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->firstVideoFrameSendOutletTime:J

    iput v5, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->renderType:I

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->streamInfoFindTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->streamInfoFoundTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceWaitStartTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceWaitEndTime:J

    iput-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dnsIP:Ljava/lang/String;

    iput-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->resolution:Ljava/lang/String;

    iput-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->headerXServerIP:Ljava/lang/String;

    iput-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->headerVia:Ljava/lang/String;

    iput v5, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->quicConfigCached:I

    iput v5, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->quicCHLOCount:I

    iput v5, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->quicOpenResult:I

    iput v5, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->quicFirstFrameCHLOCount:I

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTimeOnStallStart:J

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTimeOnStallStart:J

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTimeOnStallEnd:J

    iput-wide v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTimeOnStallEnd:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcInitedTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcOfferSendTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcAnswerRecvTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcStartTime:J

    iput-object v4, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->rtcStatInfo:Ljava/lang/String;

    iput v5, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->mStreamType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->mABRStreamInfo:Lorg/json/JSONArray;

    iput v5, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tfoSuccess:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->isTooLargeAVDiff:I

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->avphStreamInfo:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->resetFirstFrameInfo()V

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->resetPlayingInfo()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playTime:J

    const-string v2, "none"

    iput-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dnsIP:Ljava/lang/String;

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->delay:J

    iput-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiSource:Ljava/lang/String;

    iput-object v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->channelId:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->mStreamType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->mABRStreamInfo:Lorg/json/JSONArray;

    const/4 v1, 0x0

    iput v1, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->isTooLargeAVDiff:I

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->avphStreamInfo:Lorg/json/JSONArray;

    return-void
.end method

.method public resetFirstFrameInfo()V
    .locals 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->startPlayTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->SDKDNSTimeStamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->callPrepareTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playerDNSTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tcpConnectTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tcpFirstPacketTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoPacketTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioPacketTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDecodeTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDecodeTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoRenderTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioRenderTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoRenderTimeForPlayerCore:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->prepareEndTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceOpenTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoDeviceOpenedTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDeviceOpenTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioDeviceOpenedTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSpeedOnFirstFrame:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTimeOnFirstFrame:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTimeOnFirstFrame:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->waitingTimeAfterFirstFrame:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tfoFallBackTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMpdConntectTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafAudioFirstSegConntectTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafVideoFirstSegConntectTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoTcpConnectTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioTcpConnectTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoTcpFirstPacketTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioTcpFirstPacketTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMdpHttpReqFinishTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->cmafMdpHttpResFinishTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoHttpReqFinishTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioHttpReqFinishTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoHttpResFinishTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioHttpResFinishTimestamp:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->quicConfigCached:I

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->quicCHLOCount:I

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->quicFirstFrameCHLOCount:I

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoFirstPacketPos:J

    iput-wide v3, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoFirstPacketPts:J

    iput-wide v3, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioFirstPacketPos:J

    iput-wide v3, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioFirstPacketPts:J

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->quicOpenResult:I

    iput-wide v3, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dropAudioPts:J

    iput-wide v3, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->dropAudioCostTime:J

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->tfoSuccess:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->isTooLargeAVDiff:I

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->httpReqFinishTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->httpResFinishTimestamp:J

    return-void
.end method

.method public resetPlayingInfo()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->downloadSize:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->playedSize:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->fps:F

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoBufferTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioBufferTime:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->videoRenderTimestamp:J

    iput-wide v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->audioRenderTimestamp:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiBitrate:I

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->seiFps:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/log/LogBundle;->isTooLargeAVDiff:I

    return-void
.end method

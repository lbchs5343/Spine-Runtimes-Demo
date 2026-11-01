.class Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Lcom/bykv/vk/component/ttvideo/player/Keep;
.end annotation


# static fields
.field private static final AV_TRC_ARIB_STD_B67:I = 0x12

.field private static final AV_TRC_SMPTE2084:I = 0x10

.field private static final CODEC_ERROR:I = -0x2710

.field private static final CODEC_EXCEPTION_ERROR:I = -0x2711

.field private static final CODEC_ILLEGAL_ARGUMENT:I = -0x2713

.field private static final CODEC_ILLEGAL_STATE:I = -0x2712

.field private static final FIX_VERSION:D = 0.18041

.field private static final INPUT_TIMEOUT_US:J = 0x7530L

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final NO_VALUE:I = -0x1

.field private static final PIXEL_FORMAT_NV12:I = 0x3

.field private static final PIXEL_FORMAT_YUV420P:I = 0x0

.field private static final TAG:Ljava/lang/String; = "aj_media_codec"

.field private static final VENDOR_OPPO_PROPERTY:Ljava/lang/String; = "persist.sys.aweme.hdsupport"

.field private static final VERSION_PROPERTY:Ljava/lang/String; = "ro.config.hw_codec_support"

.field private static mCodecListLock:Ljava/lang/Object;

.field private static mDeviceNeedsSetOutputSurfaceWorkaround:Z

.field private static mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

.field private static mIsByteVC1Blocklist:Z

.field private static mIsInitDetected:Z

.field private static mNeedByteVC1WorkAround:Z

.field private static mVideoHWDecoderCodecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mDummySurface:Landroid/view/Surface;

.field private mExceptionInfo:Ljava/lang/String;

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mInputBuffersValid:Z

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mOutputMediaFormat:Landroid/media/MediaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mVideoHWDecoderCodecs:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mCodecListLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    sput-boolean v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    sput-boolean v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mIsInitDetected:Z

    sput-boolean v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mIsByteVC1Blocklist:Z

    sput-boolean v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mNeedByteVC1WorkAround:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffersValid:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    sget-boolean v1, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mIsInitDetected:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    sget-object v1, Lcom/bykv/vk/component/ttvideo/utils/Util;->HARDWARE:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mNeedByteVC1WorkAround:Z

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->isHisiByteVC1BlockList()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->isMtkByteVC1BlockList()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sput-boolean v2, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mIsByteVC1Blocklist:Z

    :cond_2
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->codecNeedsSetOutputSurfaceWorkaround()Z

    sput-boolean v2, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mIsInitDetected:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;Landroid/media/MediaCodec;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->releaseCodec(Landroid/media/MediaCodec;)V

    return-void
.end method

.method public static ceilDivide(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, p1

    return p0
.end method

.method private static codecNeedsFlushWorkaround(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    if-ne v0, v1, :cond_0

    const-string v1, "OMX.SEC.avc.dec"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/bykv/vk/component/ttvideo/utils/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-G800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static codecNeedsSetOutputSurfaceWorkaround()Z
    .locals 8

    const-class v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v1, :cond_b

    sget v1, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v2, 0x1b

    const/4 v3, 0x1

    if-gt v1, v2, :cond_0

    const-string v4, "dangal"

    sget-object v5, Lcom/bykv/vk/component/ttvideo/utils/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :cond_0
    :goto_0
    if-ge v1, v2, :cond_a

    sget-object v1, Lcom/bykv/vk/component/ttvideo/utils/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x18401

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eq v2, v4, :cond_3

    const v4, 0x332327

    if-eq v2, v4, :cond_2

    const v4, 0x6f373556

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "santoni"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_2

    :cond_2
    const-string v2, "mido"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const-string v2, "deb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_5

    if-eq v1, v6, :cond_5

    goto :goto_3

    :cond_5
    sput-boolean v3, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    :goto_3
    sget-object v1, Lcom/bykv/vk/component/ttvideo/utils/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x1e9d52

    if-eq v2, v4, :cond_7

    const v4, 0x1e9d5f

    if-eq v2, v4, :cond_6

    goto :goto_4

    :cond_6
    const-string v2, "AFTN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const-string v2, "AFTA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v5, -0x1

    :goto_5
    if-eqz v5, :cond_9

    if-eq v5, v3, :cond_9

    goto :goto_6

    :cond_9
    sput-boolean v3, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    :cond_a
    :goto_6
    sput-boolean v3, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mEvaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    :cond_b
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    return v0

    :goto_7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private createDummySurface()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bykv/vk/component/ttvideo/player/DummySurface;->newInstanceV17(Z)Lcom/bykv/vk/component/ttvideo/player/DummySurface;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDummySurface:Landroid/view/Surface;

    return-void
.end method

.method private static getMaxInputSize(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    if-ne p2, v0, :cond_0

    goto :goto_4

    :cond_0
    const-string v1, "video/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_4

    const-string v1, "video/mp4v-es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "BRAVIA 4K 2015"

    sget-object v1, Lcom/bykv/vk/component/ttvideo/utils/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/16 p0, 0x10

    invoke-static {p1, p0}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->ceilDivide(II)I

    move-result p1

    invoke-static {p2, p0}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->ceilDivide(II)I

    move-result p0

    mul-int p1, p1, p0

    mul-int/lit16 p1, p1, 0x100

    :goto_0
    const/4 p0, 0x2

    goto :goto_3

    :cond_3
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_1
    mul-int p1, p1, p2

    goto :goto_0

    :cond_5
    const-string v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    return v0

    :cond_7
    :goto_2
    mul-int p1, p1, p2

    const/4 p0, 0x4

    :goto_3
    mul-int/lit8 p1, p1, 0x3

    mul-int/lit8 p0, p0, 0x2

    div-int/2addr p1, p0

    return p1

    :cond_8
    :goto_4
    return v0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-class v0, Landroid/os/SystemProperties;

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object p1
.end method

.method private isHisiByteVC1BlockList()Z
    .locals 5

    const-string v0, "ro.board.platform"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "kirin960"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hi3660"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ro.config.hw_codec_support"

    const-string v1, "0.0"

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide v2, 0x3fc717acc4ef88b9L    # 0.18041

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isMtkByteVC1BlockList()Z
    .locals 2

    sget-object v0, Lcom/bykv/vk/component/ttvideo/utils/Util;->HARDWARE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt6763"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mt6757"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mt6739"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mt6750"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static maybeSetCsdBuffers(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "csd-"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private releaseCodec(Landroid/media/MediaCodec;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDummySurface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDummySurface:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDummySurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDummySurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDummySurface:Landroid/view/Surface;

    :cond_2
    throw p1

    :catch_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDummySurface:Landroid/view/Surface;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDummySurface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDummySurface:Landroid/view/Surface;

    :cond_3
    return-void
.end method

.method private renderOutputBufferV21(IJ)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    const/16 p1, -0x2710

    return p1
.end method

.method private setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)I
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    :try_start_0
    invoke-static {p1, p2}, Lg/gnm;->d(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    const-string p2, "setoutputsurface failed = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, -0x1

    return p1
.end method

.method private supportSetSurface()Z
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    sget-boolean v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public MTKByteVC1NeedWorkAround()Z
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mNeedByteVC1WorkAround:Z

    return v0
.end method

.method public close()V
    .locals 2
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->stop()I

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    :try_start_0
    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec$1;

    invoke-direct {v1, p0, v0}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec$1;-><init>(Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;Landroid/media/MediaCodec;)V

    invoke-static {v1}, Lcom/bykv/vk/component/ttvideo/player/AVThreadPool;->addTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-direct {p0, v0}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->releaseCodec(Landroid/media/MediaCodec;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public configure(IIIIILjava/lang/String;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/view/Surface;ZZIIZIZZII)I
    .locals 5
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    move/from16 v0, p13

    move/from16 v1, p14

    invoke-static {p10}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    const-string v3, "mime"

    invoke-virtual {v2, v3, p6}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "width"

    invoke-static {v2, v3, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v3, "height"

    invoke-static {v2, v3, p2}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-eq v1, v3, :cond_2

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    const-string v4, "max-width"

    invoke-static {v2, v4, v0}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    if-le v1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    const-string v0, "max-height"

    invoke-static {v2, v0, v1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_2
    const-string v0, "sample-rate"

    invoke-static {v2, v0, p4}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string p4, "channel-count"

    invoke-static {v2, p4, p5}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string p4, "format  = "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p6, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->getMaxInputSize(Ljava/lang/String;II)I

    move-result p1

    const-string p2, "max input = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "max-input-size"

    invoke-static {v2, p2, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-static {v2, p7, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetCsdBuffers(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;I)V

    const/4 p2, 0x1

    invoke-static {v2, p8, p2}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetCsdBuffers(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;I)V

    const/4 p2, 0x2

    invoke-static {v2, p9, p2}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetCsdBuffers(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;I)V

    const/16 p2, -0x2713

    const/16 p4, 0x17

    if-eqz p11, :cond_6

    sget p5, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 p6, 0x15

    if-lt p5, p6, :cond_3

    const-string p6, "rotation-degrees"

    invoke-static {v2, p6, p3}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_3
    if-eqz p10, :cond_4

    invoke-virtual {p10}, Landroid/view/Surface;->isValid()Z

    move-result p3

    if-nez p3, :cond_5

    :cond_4
    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDummySurface:Landroid/view/Surface;

    if-nez p3, :cond_5

    if-lt p5, p4, :cond_5

    sget-boolean p3, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez p3, :cond_5

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->createDummySurface()V

    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDummySurface:Landroid/view/Surface;

    goto :goto_2

    :cond_5
    move-object p3, p10

    :goto_2
    if-nez p3, :cond_7

    const-string p1, "Error: configure with null surface"

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mExceptionInfo:Ljava/lang/String;

    return p2

    :cond_6
    move-object p3, p10

    :cond_7
    sget p5, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    if-lt p5, p4, :cond_8

    if-eqz p12, :cond_8

    const-string p4, "priority"

    invoke-virtual {v2, p4, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_8
    if-eqz p15, :cond_9

    move/from16 p4, p16

    invoke-static {v2, p4}, Lcom/bykv/vk/component/ttvideo/player/VendorQTI;->setupVpp(Landroid/media/MediaFormat;I)V

    :cond_9
    if-eqz p17, :cond_a

    invoke-static {v2}, Lcom/bykv/vk/component/ttvideo/player/VendorQTI;->debugEffect(Landroid/media/MediaFormat;)V

    :cond_a
    if-eqz p18, :cond_b

    invoke-static {v2}, Lcom/bykv/vk/component/ttvideo/player/VendorQTI;->enableLowLatency(Landroid/media/MediaFormat;)V

    :cond_b
    if-lez p20, :cond_c

    if-ltz p19, :cond_c

    invoke-static/range {p19 .. p20}, Lcom/bykv/vk/component/ttvideo/player/MediaCodecUtil;->getDolbyCodecs(II)Ljava/lang/String;

    move-result-object p4

    const-string p5, "\\."

    invoke-virtual {p4, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/bykv/vk/component/ttvideo/player/MediaCodecUtil;->getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p4

    if-eqz p4, :cond_c

    iget-object p4, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const-string p5, "profile"

    invoke-static {v2, p5, p4}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_c
    :try_start_0
    iget-object p4, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 p5, 0x0

    invoke-virtual {p4, v2, p3, p5, p1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    instance-of p1, p1, Ljava/lang/IllegalArgumentException;

    if-eqz p1, :cond_d

    return p2

    :cond_d
    return v3
.end method

.method public createByCodecName(Ljava/lang/String;)I
    .locals 2
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    const-string v0, "createByCodecName = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    const/4 p1, -0x1

    return p1
.end method

.method public decodeFRC(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffersValid:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "frc level = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "vivo.video-dec.dynamic-frc"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setParameters failed ret = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public dequeueInputBuffer(J)I
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    move-result p1

    return p1
.end method

.method public flush()V
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getBestCodecName(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    move-object/from16 v0, p1

    sget v1, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    :goto_0
    const/16 v16, 0x0

    goto/16 :goto_b

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mIsByteVC1Blocklist:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "detect hardware codec by codecType = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mCodecListLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v4, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mVideoHWDecoderCodecs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    :try_start_1
    sget-object v5, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mVideoHWDecoderCodecs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    const/16 v16, 0x0

    goto/16 :goto_a

    :cond_3
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_4

    if-nez v4, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_5
    :goto_3
    if-nez v4, :cond_6

    sget-object v8, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mVideoHWDecoderCodecs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaCodecInfo;

    goto :goto_4

    :cond_6
    invoke-static {v7}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v8

    :goto_4
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "OMX.google"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "c2.android"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    array-length v11, v10

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v11, :cond_e

    aget-object v13, v10, v12

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    if-eqz v4, :cond_7

    const-string v14, "video/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    sget-object v14, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mVideoHWDecoderCodecs:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "OMX."

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "c2."

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_6

    :cond_8
    const/16 v16, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const-string v13, "OMX.pv"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "OMX.ittiam"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "ffmpeg"

    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "avcodec"

    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "secure"

    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, "OMX.MTK."

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    sget v13, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v14, 0x12

    if-lt v13, v14, :cond_8

    :cond_a
    invoke-static {v9}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->codecNeedsFlushWorkaround(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-static {v8, v0}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecRank;->setupRank(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecRank;

    move-result-object v13

    if-eqz v13, :cond_8

    iget-object v14, v13, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecRank;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v14}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    iget v14, v13, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecRank;->mRank:I

    const/16 v15, 0x28

    if-ne v14, v15, :cond_b

    sget v15, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v16, 0x0

    const/16 v3, 0x15

    if-ge v15, v3, :cond_c

    goto :goto_7

    :cond_b
    const/16 v16, 0x0

    :cond_c
    const/16 v3, 0x14

    if-ne v14, v3, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    :cond_e
    const/16 v16, 0x0

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    monitor-exit v2

    return-object v16

    :cond_f
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecRank;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecRank;

    iget v4, v3, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecRank;->mRank:I

    iget v5, v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecRank;->mRank:I

    if-le v4, v5, :cond_10

    move-object v0, v3

    goto :goto_9

    :cond_11
    iget-object v0, v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecRank;->mMediaCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :goto_a
    monitor-exit v2

    :goto_b
    return-object v16

    :goto_c
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getChannelCount()I
    .locals 3
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "channel-count"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    return v1
.end method

.method public getColorFormat()I
    .locals 3
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v2, "color-format"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x15

    if-eq v0, v2, :cond_0

    const v2, 0x7f000100

    if-eq v0, v2, :cond_0

    const v2, 0x7fa30c00

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    return v0

    :catch_0
    :cond_1
    return v1
.end method

.method public getColorTransfer()I
    .locals 3
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    const-string v2, "color-transfer"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x12

    return v0

    :cond_1
    const/16 v0, 0x10

    return v0

    :catch_0
    :cond_2
    return v1
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mExceptionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatHeight()I
    .locals 5
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    const-string v0, "crop-top"

    const-string v1, "crop-bottom"

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    const-string v4, "crop-right"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v4, "crop-left"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_1
    return v3
.end method

.method public getFormatWidth()I
    .locals 5
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    const-string v0, "crop-left"

    const-string v1, "crop-right"

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v4, "crop-bottom"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v4, "crop-top"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_1
    return v3
.end method

.method public getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffersValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOSVerion()I
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    sget v0, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    return v0
.end method

.method public getSampleRate()I
    .locals 3
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "sample-rate"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    return v1
.end method

.method public getSliceHeight()I
    .locals 3
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "slice-height"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    return v1
.end method

.method public getStride()I
    .locals 3
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "stride"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    return v1
.end method

.method public handleCodecException(Ljava/lang/Exception;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mExceptionInfo:Ljava/lang/String;

    sget v0, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->handleCodecExceptionV21(Ljava/lang/Exception;)I

    move-result p1

    return p1

    :cond_0
    instance-of p1, p1, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_1

    const/16 p1, -0x2712

    return p1

    :cond_1
    const/16 p1, -0x2710

    return p1
.end method

.method public handleCodecExceptionV21(Ljava/lang/Exception;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    instance-of v0, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/media/MediaCodec$CodecException;

    sget v1, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    invoke-static {v0}, Lg/gnm;->f(Landroid/media/MediaCodec$CodecException;)V

    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lg/gnm;->k(Landroid/media/MediaCodec$CodecException;)I

    move-result v1

    const/16 v2, 0x44c

    if-eq v1, v2, :cond_1

    invoke-static {v0}, Lg/gnm;->k(Landroid/media/MediaCodec$CodecException;)I

    move-result v0

    const/16 v1, 0x44d

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/16 p1, -0x2711

    return p1

    :cond_1
    instance-of p1, p1, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_2

    const/16 p1, -0x2712

    return p1

    :cond_2
    const/16 p1, -0x2710

    return p1
.end method

.method public open(IIILjava/lang/String;Ljava/lang/String;Ljava/nio/ByteBuffer;Landroid/view/Surface;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p4}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p4

    iput-object p4, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p4, Landroid/media/MediaFormat;

    invoke-direct {p4}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    invoke-virtual {p4, v1, p5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "width"

    invoke-static {p4, p5, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string p1, "height"

    invoke-static {p4, p1, p2}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    if-eqz p6, :cond_0

    const-string p1, "csd-0"

    invoke-virtual {p4, p1, p6}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_0
    if-eqz p7, :cond_1

    sget p1, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_1

    const-string p1, "rotation-degrees"

    invoke-static {p4, p1, p3}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p4, p7, p2, p3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffersValid:Z

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    return p3

    :catch_0
    return v0
.end method

.method public queueInputBuffer(IIIJI)I
    .locals 7
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    move-result p1

    return p1
.end method

.method public read(Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecFrame;J)I
    .locals 3
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-ltz v0, :cond_0

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p2, p2, v0

    iput-object p2, p1, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecFrame;->data:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, p1, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecFrame;->pts:J

    iput v0, p1, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecFrame;->index:I

    iget p3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput p3, p1, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecFrame;->size:I

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput p2, p1, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecFrame;->flags:I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, -0x3

    const-string v2, "getOutputBuffers e = "

    if-ne v0, v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x2

    if-ne v0, p1, :cond_3

    :try_start_2
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputMediaFormat:Landroid/media/MediaFormat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    if-nez p1, :cond_2

    :try_start_3
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return v0

    :catch_1
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    move-result p1

    return p1

    :cond_2
    return v0

    :catch_2
    move-exception p1

    const-string p2, "getOutputFormat e ="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, -0x1

    if-eq v0, p1, :cond_4

    const-string p2, "error, idx = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "aj_media_codec"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p1

    :catch_3
    move-exception p1

    const-string p2, "dequeueOutputBuffer e :"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    move-result p1

    return p1
.end method

.method public releaseBuffer(IZJ)I
    .locals 2
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    sget v0, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p3, p4}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->renderOutputBufferV21(IJ)I

    move-result p1

    return p1

    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p3, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    move-result p1

    return p1
.end method

.method public setOutputSurface(Landroid/view/Surface;)I
    .locals 1
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    sget-boolean v0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffersValid:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDummySurface:Landroid/view/Surface;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->createDummySurface()V

    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mDummySurface:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-direct {p0, v0, p1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public speedEnhance(F)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffersValid:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x41f00000    # 30.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const-string v0, "rate "

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operating-rate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "setParameters failed ret = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public start()I
    .locals 2
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    sget v0, Lcom/bykv/vk/component/ttvideo/utils/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffersValid:Z

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->handleCodecException(Ljava/lang/Exception;)I

    const/4 v0, -0x1

    return v0
.end method

.method public stop()I
    .locals 2
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffersValid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iput-boolean v1, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffersValid:Z

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    return v0

    :cond_0
    :goto_0
    return v1
.end method

.method public vendorOppoHWEnable()I
    .locals 3
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    sget-object v0, Lcom/bykv/vk/component/ttvideo/utils/Util;->BARND:Ljava/lang/String;

    const-string v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.aweme.hdsupport"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo property = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public write(Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecFrame;)I
    .locals 11
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    const/4 v1, -0x1

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecFrame;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v5

    iget-object v2, p1, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodec;->mMediaCodec:Landroid/media/MediaCodec;

    iget v7, p1, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecFrame;->size:I

    iget-wide v8, p1, Lcom/bykv/vk/component/ttvideo/player/AJMediaCodecFrame;->pts:J

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_1
    if-ne v5, v1, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    return v1

    :goto_0
    const-string v0, "write meet exception ="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "aj_media_codec"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v1
.end method

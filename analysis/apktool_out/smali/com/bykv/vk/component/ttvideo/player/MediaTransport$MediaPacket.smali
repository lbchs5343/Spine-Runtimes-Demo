.class public Lcom/bykv/vk/component/ttvideo/player/MediaTransport$MediaPacket;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/bykv/vk/component/ttvideo/player/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/component/ttvideo/player/MediaTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaPacket"
.end annotation


# static fields
.field public static final CODEC_ID_AAC:I = 0x2

.field public static final CODEC_ID_BYTE_VC1:I = 0x1

.field public static final CODEC_ID_H264:I = 0x0

.field public static final FLAG_CONFIG_FRAME:I = 0x1

.field public static final FLAG_IS_DECODED_ONLY:I = 0x3

.field public static final FLAG_KEY_FRAME:I = 0x2


# instance fields
.field public mBuffer:Ljava/nio/ByteBuffer;

.field public mCodecId:I

.field public mFlags:I

.field public mIsAccessUnit:Z

.field public mIsVideo:Z

.field public mOffset:I

.field public mPresentationTimeMs:J

.field public mSize:I


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
        value = "MediaPacket"
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/nio/ByteBuffer;ZZIIJII)V
    .locals 0
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
        value = "MediaPacket"
    .end annotation

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/MediaTransport$MediaPacket;->mBuffer:Ljava/nio/ByteBuffer;

    iput p4, p0, Lcom/bykv/vk/component/ttvideo/player/MediaTransport$MediaPacket;->mOffset:I

    iput p5, p0, Lcom/bykv/vk/component/ttvideo/player/MediaTransport$MediaPacket;->mSize:I

    iput-wide p6, p0, Lcom/bykv/vk/component/ttvideo/player/MediaTransport$MediaPacket;->mPresentationTimeMs:J

    iput p8, p0, Lcom/bykv/vk/component/ttvideo/player/MediaTransport$MediaPacket;->mFlags:I

    iput-boolean p2, p0, Lcom/bykv/vk/component/ttvideo/player/MediaTransport$MediaPacket;->mIsVideo:Z

    iput p9, p0, Lcom/bykv/vk/component/ttvideo/player/MediaTransport$MediaPacket;->mCodecId:I

    iput-boolean p3, p0, Lcom/bykv/vk/component/ttvideo/player/MediaTransport$MediaPacket;->mIsAccessUnit:Z

    return-void
.end method

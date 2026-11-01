.class public Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/component/ttvideo/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackInfo"
.end annotation


# static fields
.field public static final MEDIA_TRACK_TYPE_AUDIO:I = 0x2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final MEDIA_TRACK_TYPE_METADATA:I = 0x5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final MEDIA_TRACK_TYPE_SUBTITLE:I = 0x4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final MEDIA_TRACK_TYPE_TIMEDTEXT:I = 0x3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final MEDIA_TRACK_TYPE_UNKNOWN:I = 0x0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final MEDIA_TRACK_TYPE_VIDEO:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field


# instance fields
.field private mFormat:Lcom/bykv/vk/component/ttvideo/player/MediaFormat;

.field private mLanguage:Ljava/lang/String;

.field private mStreamType:I


# direct methods
.method public constructor <init>(ILcom/bykv/vk/component/ttvideo/player/MediaFormat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mFormat:Lcom/bykv/vk/component/ttvideo/player/MediaFormat;

    const/4 p2, 0x0

    iput p2, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mStreamType:I

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p2, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mStreamType:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mStreamType:I

    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    const/4 p1, 0x4

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mStreamType:I

    :cond_2
    :goto_0
    const-string p1, "zh-cn"

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer$TrackInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v0

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mStreamType:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/component/ttvideo/player/MediaFormat;->createAudioFormat(Landroid/media/MediaFormat;)Lcom/bykv/vk/component/ttvideo/player/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mFormat:Lcom/bykv/vk/component/ttvideo/player/MediaFormat;

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/component/ttvideo/player/MediaFormat;->createVideoFormat(Landroid/media/MediaFormat;)Lcom/bykv/vk/component/ttvideo/player/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mFormat:Lcom/bykv/vk/component/ttvideo/player/MediaFormat;

    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/component/ttvideo/player/MediaFormat;->createSubtitleFormat(Landroid/media/MediaFormat;)Lcom/bykv/vk/component/ttvideo/player/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mFormat:Lcom/bykv/vk/component/ttvideo/player/MediaFormat;

    :cond_2
    return-void
.end method


# virtual methods
.method public getFormat()Lcom/bykv/vk/component/ttvideo/player/MediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mFormat:Lcom/bykv/vk/component/ttvideo/player/MediaFormat;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/MediaPlayer$TrackInfo;->mStreamType:I

    return v0
.end method

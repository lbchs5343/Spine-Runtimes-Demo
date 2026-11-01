.class public final Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;
.super Ljava/lang/Object;


# static fields
.field protected static final DEFAULT_VALUE:I = -0x1


# instance fields
.field private mAudioFallbackMode:I

.field private mDescribeContents:I

.field private mPitch:F

.field private mSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->mDescribeContents:I

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->mAudioFallbackMode:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->mPitch:F

    iput v0, p0, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->mSpeed:F

    return-void
.end method


# virtual methods
.method public allowDefaults()Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;
    .locals 0

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->mDescribeContents:I

    return v0
.end method

.method public getAudioFallbackMode()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->mAudioFallbackMode:I

    return v0
.end method

.method public getPitch()F
    .locals 1

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->mPitch:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->mSpeed:F

    return v0
.end method

.method public setAudioFallbackMode(I)Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;
    .locals 0

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->mAudioFallbackMode:I

    return-object p0
.end method

.method public setPitch(F)Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;
    .locals 0

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->mPitch:F

    return-object p0
.end method

.method public setSpeed(F)Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;
    .locals 0

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/player/PlaybackParams;->mSpeed:F

    return-object p0
.end method

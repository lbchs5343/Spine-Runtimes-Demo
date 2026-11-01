.class public Lcom/bykv/vk/component/ttvideo/player/SidxListObject;
.super Lcom/bykv/vk/component/ttvideo/player/NativeObject;


# annotations
.annotation build Lcom/bykv/vk/component/ttvideo/player/JNINamespace;
    value = "PLAYER"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;
    }
.end annotation


# instance fields
.field private mBitrate:J

.field private mEndIndex:I

.field private mFileId:Ljava/lang/String;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaType:I

.field private mStartIndex:I

.field private mTotalNum:I


# direct methods
.method public constructor <init>(IIIIJLjava/lang/String;)V
    .locals 0
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/player/NativeObject;-><init>()V

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mMediaType:I

    iput p2, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mTotalNum:I

    iput p3, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mStartIndex:I

    iput p4, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mEndIndex:I

    iput-wide p5, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mBitrate:J

    iput-object p7, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mFileId:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addItem(IJJJJ)V
    .locals 11
    .annotation build Lcom/bykv/vk/component/ttvideo/player/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mItems:Ljava/util/List;

    new-instance v1, Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;-><init>(IJJJJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBitrate()J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mBitrate:J

    return-wide v0
.end method

.method public getEndIndex()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mEndIndex:I

    return v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getItem(I)Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMediaType()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mMediaType:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mStartIndex:I

    return v0
.end method

.method public getTotalNum()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject;->mTotalNum:I

    return v0
.end method

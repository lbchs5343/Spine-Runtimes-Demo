.class public Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/component/ttvideo/player/SidxListObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SidxItem"
.end annotation


# instance fields
.field private mDuration:J

.field private mIndex:I

.field private mOffset:J

.field private mSize:J

.field private mTimestamp:J


# direct methods
.method public constructor <init>(IJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;->mIndex:I

    iput-wide p2, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;->mOffset:J

    iput-wide p4, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;->mTimestamp:J

    iput-wide p6, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;->mDuration:J

    iput-wide p8, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;->mSize:J

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;->mDuration:J

    return-wide v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;->mIndex:I

    return v0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;->mOffset:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;->mSize:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/bykv/vk/component/ttvideo/player/SidxListObject$SidxItem;->mTimestamp:J

    return-wide v0
.end method

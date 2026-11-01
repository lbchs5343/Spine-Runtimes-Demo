.class final Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;
.super Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$Value;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntValue"
.end annotation


# instance fields
.field private mValue:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$Value;-><init>(I)V

    iput p2, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;->mValue:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;->mValue:I

    return v0
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/bykv/vk/component/ttvideo/player/TTPlayerConfiger$IntValue;->mValue:I

    return-void
.end method

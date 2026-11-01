.class public Lcom/bykv/vk/component/ttvideo/utils/AVUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getScaleInfoFromSize(FFFF)Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;
    .locals 3

    new-instance v0, Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;

    invoke-direct {v0}, Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;-><init>()V

    div-float/2addr p0, p1

    float-to-int p1, p2

    iput p1, v0, Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;->w:I

    div-float p1, p2, p0

    float-to-int p1, p1

    iput p1, v0, Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;->h:I

    int-to-float p1, p1

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    float-to-int p1, p3

    iput p1, v0, Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;->h:I

    mul-float p0, p0, p3

    float-to-int p0, p0

    iput p0, v0, Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;->w:I

    :cond_0
    iget p0, v0, Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;->h:I

    int-to-float p1, p0

    sub-float/2addr p1, p3

    float-to-int p1, p1

    shr-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;->y:I

    iget v1, v0, Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;->w:I

    int-to-float v2, v1

    sub-float/2addr v2, p2

    float-to-int v2, v2

    shr-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;->x:I

    int-to-float p0, p0

    cmpl-float p0, p0, p3

    if-lez p0, :cond_1

    rsub-int/lit8 p0, p1, 0x0

    iput p0, v0, Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;->y:I

    :cond_1
    int-to-float p0, v1

    cmpl-float p0, p0, p2

    if-lez p0, :cond_2

    rsub-int/lit8 p0, v2, 0x0

    iput p0, v0, Lcom/bykv/vk/component/ttvideo/utils/AVUtils$ScaleInfo;->x:I

    :cond_2
    return-object v0
.end method

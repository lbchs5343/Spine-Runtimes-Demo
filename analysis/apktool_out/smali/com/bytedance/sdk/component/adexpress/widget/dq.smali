.class public Lcom/bytedance/sdk/component/adexpress/widget/dq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field protected d:Landroid/graphics/PointF;

.field protected dq:Landroid/graphics/PointF;

.field protected ox:Landroid/graphics/PointF;

.field protected p:Landroid/graphics/PointF;

.field protected s:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/adexpress/widget/dq;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->ox:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->p:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->s:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->dq:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->d:Landroid/graphics/PointF;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endX value must be in the range [0, 1]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startX value must be in the range [0, 1]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ox(F)F
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->s:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->p:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->ox:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v2, v2, v3

    mul-float v2, v2, p1

    add-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v2, v0

    return v2
.end method

.method private p(F)F
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->s:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->dq:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v2, v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->p:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->d:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v1

    mul-float v5, v5, v3

    sub-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->ox:Landroid/graphics/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v5

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, v4, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, p1

    add-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v2, v0

    mul-float v2, v2, p1

    return v2
.end method


# virtual methods
.method public d(F)F
    .locals 8

    const/4 v0, 0x1

    move v1, p1

    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/adexpress/widget/dq;->p(F)F

    move-result v2

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v7, v3, v5

    if-ltz v7, :cond_0

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/adexpress/widget/dq;->ox(F)F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public dq(F)F
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->s:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->dq:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v2, v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->p:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->d:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v1

    mul-float v5, v5, v3

    sub-float/2addr v5, v2

    iput v5, v4, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/dq;->ox:Landroid/graphics/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v5

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v4, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p1

    add-float/2addr v2, v1

    mul-float v2, v2, p1

    add-float/2addr v2, v0

    mul-float v2, v2, p1

    return v2
.end method

.method public getInterpolation(F)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/widget/dq;->d(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/widget/dq;->dq(F)F

    move-result p1

    return p1
.end method

.class public Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;
.super Landroid/view/View;


# instance fields
.field private d:I

.field private dq:I

.field private ia:I

.field private iw:I

.field private mn:Landroid/graphics/Paint;

.field private final ox:Landroid/graphics/RectF;

.field private p:Landroid/graphics/Paint;

.field private s:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->ox:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->dq()V

    return-void
.end method

.method private dq()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->p:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->mn:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->ox:Landroid/graphics/RectF;

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->iw:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->ox:Landroid/graphics/RectF;

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->iw:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->dq:I

    int-to-float v2, v1

    const v6, 0x3e99999a    # 0.3f

    mul-float v2, v2, v6

    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->d:I

    int-to-float v4, v3

    mul-float v4, v4, v6

    int-to-float v1, v1

    const v7, 0x3f333333    # 0.7f

    mul-float v1, v1, v7

    int-to-float v3, v3

    mul-float v3, v3, v7

    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->mn:Landroid/graphics/Paint;

    move v0, v3

    move v3, v1

    move v1, v2

    move v2, v4

    move v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->dq:I

    int-to-float v1, v0

    mul-float v1, v1, v7

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->d:I

    int-to-float v3, v2

    mul-float v3, v3, v6

    int-to-float v0, v0

    mul-float v0, v0, v6

    int-to-float v2, v2

    mul-float v4, v2, v7

    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->mn:Landroid/graphics/Paint;

    move v2, v3

    move v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->dq:I

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->d:I

    iget-object p3, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->ox:Landroid/graphics/RectF;

    iget p4, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->ia:I

    int-to-float v0, p4

    int-to-float v1, p4

    sub-int/2addr p1, p4

    int-to-float p1, p1

    sub-int/2addr p2, p4

    int-to-float p2, p2

    invoke-virtual {p3, v0, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setBgColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->s:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDislikeColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->mn:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setDislikeWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->mn:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->iw:I

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->p:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/widget/DislikeView;->ia:I

    return-void
.end method

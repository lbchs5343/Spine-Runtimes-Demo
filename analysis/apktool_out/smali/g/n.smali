.class public abstract Lg/n;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Bitmap;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/graphics/Rect;

.field public j:Landroid/graphics/Rect;

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/graphics/Path;

.field public m:Landroid/graphics/RectF;

.field public n:Landroid/graphics/drawable/Drawable;

.field public o:Landroid/view/View;

.field public p:I

.field public q:Landroid/widget/ImageView;

.field public r:Landroid/graphics/Paint;


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lg/n;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lg/n;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lg/n;->l:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lg/n;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lg/n;->i:Landroid/graphics/Rect;

    iget-object v2, p0, Lg/n;->j:Landroid/graphics/Rect;

    iget-object v3, p0, Lg/n;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lg/n;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lg/n;->i:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lg/n;->j:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    move v3, v1

    :goto_0
    iget-object v1, p0, Lg/n;->j:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    iget-object v7, p0, Lg/n;->k:Landroid/graphics/Paint;

    move v5, v3

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v3, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    iget p1, v1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    move v10, p1

    :goto_1
    iget-object p1, p0, Lg/n;->j:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, v10, v1

    if-gtz v1, :cond_1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v11, p1

    iget-object v13, p0, Lg/n;->k:Landroid/graphics/Paint;

    move v12, v10

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v10, v0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lg/n;->m:Landroid/graphics/RectF;

    iget-object v0, p0, Lg/n;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_2
    move-object v2, p1

    :goto_2
    invoke-super {p0, v2}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09039b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lg/n;->h:Landroid/widget/TextView;

    new-instance v1, Lg/fzh;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/fzh;-><init>(Lg/n;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090298

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lg/n;->g:Landroid/widget/TextView;

    new-instance v1, Lg/fzh;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lg/fzh;-><init>(Lg/n;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901a3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lg/n;->o:Landroid/view/View;

    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lg/n;->q:Landroid/widget/ImageView;

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    iget-object p3, p0, Lg/n;->n:Landroid/graphics/drawable/Drawable;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public final s(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)Lg/gek;
    .locals 10

    iput-object p1, p0, Lg/n;->f:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lg/n;->i:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    iput v0, p0, Lg/n;->c:I

    iget-object v0, p0, Lg/n;->m:Landroid/graphics/RectF;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/n;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    mul-float v4, v4, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sub-int/2addr p1, v2

    int-to-float p1, p1

    div-float/2addr p1, v5

    mul-float p1, p1, v0

    new-instance v5, Landroid/graphics/RectF;

    iget-object v6, p0, Lg/n;->j:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    iget v4, v6, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    add-float p1, v7, v0

    add-float/2addr v0, v4

    invoke-direct {v5, v7, v4, p1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lg/n;->m:Landroid/graphics/RectF;

    :cond_0
    iget-object p1, p0, Lg/n;->h:Landroid/widget/TextView;

    const-string v0, "#%X"

    if-eqz p1, :cond_1

    iget v4, p0, Lg/n;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p0, Lg/n;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p2, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lg/n;->g:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "x: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p2, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", y: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    new-instance p1, Lg/gek;

    iget v4, p0, Lg/n;->c:I

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p1, Lg/gek;->h:F

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p1, Lg/gek;->j:F

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p1, Lg/gek;->c:F

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p1, Lg/gek;->d:F

    iget v8, p2, Landroid/graphics/PointF;->x:F

    float-to-int v8, v8

    int-to-float v8, v8

    iput v8, p1, Lg/gek;->i:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p1, Lg/gek;->b:F

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr v5, p2

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v5, v8, v5

    div-float/2addr v6, p2

    sub-float v6, v8, v6

    div-float/2addr v7, p2

    sub-float p2, v8, v7

    invoke-static {v6, p2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    cmpl-float v9, v7, v8

    if-eqz v9, :cond_3

    sub-float/2addr v5, v7

    sub-float/2addr v8, v7

    div-float/2addr v5, v8

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    sub-float/2addr p2, v7

    div-float v8, p2, v8

    move p2, v8

    move v8, v5

    goto :goto_0

    :cond_3
    const/high16 p2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_0
    const/4 v5, 0x4

    new-array v5, v5, [F

    aput v8, v5, v3

    aput v6, v5, v2

    aput p2, v5, v1

    const/4 p2, 0x3

    aput v7, v5, p2

    aget v6, v5, v3

    iput v6, p1, Lg/gek;->f:F

    aget v6, v5, v2

    iput v6, p1, Lg/gek;->k:F

    aget v1, v5, v1

    iput v1, p1, Lg/gek;->a:F

    aget p2, v5, p2

    iput p2, p1, Lg/gek;->g:F

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lg/gek;->e:Ljava/lang/String;

    return-object p1
.end method

.method public setCloseOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/n;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setInfoOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/n;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

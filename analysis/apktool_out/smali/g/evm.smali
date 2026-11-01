.class public final Lg/evm;
.super Lg/grq;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:[F

.field public final f:Lg/gee;

.field public final g:Lg/cbc;

.field public final h:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lg/fts;Lg/cbc;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lg/grq;-><init>(Lg/fts;Lg/cbc;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lg/evm;->h:Landroid/graphics/RectF;

    new-instance p1, Lg/gee;

    invoke-direct {p1}, Lg/gee;-><init>()V

    iput-object p1, p0, Lg/evm;->f:Lg/gee;

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lg/evm;->b:[F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/evm;->a:Landroid/graphics/Path;

    iput-object p2, p0, Lg/evm;->g:Lg/cbc;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/gee;->setAlpha(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget p2, p2, Lg/cbc;->f:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 11

    invoke-virtual {p0, p3}, Lg/grq;->bj(I)V

    iget-object v0, p0, Lg/evm;->g:Lg/cbc;

    iget v1, v0, Lg/cbc;->f:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lg/grq;->ar:Lg/amp;

    iget-object v2, v2, Lg/amp;->l:Lg/dph;

    if-nez v2, :cond_1

    const/16 v2, 0x64

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    int-to-float p3, p3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr p3, v3

    int-to-float v1, v1

    div-float/2addr v1, v3

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float v1, v1, p3

    mul-float v1, v1, v3

    float-to-int p3, v1

    iget-object v1, p0, Lg/evm;->f:Lg/gee;

    invoke-virtual {v1, p3}, Lg/gee;->setAlpha(I)V

    if-lez p3, :cond_2

    iget-object p3, p0, Lg/evm;->b:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, p3, v2

    const/4 v4, 0x1

    aput v3, p3, v4

    iget v5, v0, Lg/cbc;->r:I

    int-to-float v5, v5

    const/4 v6, 0x2

    aput v5, p3, v6

    const/4 v7, 0x3

    aput v3, p3, v7

    const/4 v8, 0x4

    aput v5, p3, v8

    iget v0, v0, Lg/cbc;->b:I

    int-to-float v0, v0

    const/4 v5, 0x5

    aput v0, p3, v5

    const/4 v9, 0x6

    aput v3, p3, v9

    const/4 v3, 0x7

    aput v0, p3, v3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p2, p0, Lg/evm;->a:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    aget v0, p3, v2

    aget v10, p3, v4

    invoke-virtual {p2, v0, v10}, Landroid/graphics/Path;->moveTo(FF)V

    aget v0, p3, v6

    aget v6, p3, v7

    invoke-virtual {p2, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    aget v0, p3, v8

    aget v5, p3, v5

    invoke-virtual {p2, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    aget v0, p3, v9

    aget v3, p3, v3

    invoke-virtual {p2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    aget v0, p3, v2

    aget p3, p3, v4

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lg/grq;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lg/evm;->g:Lg/cbc;

    iget p3, p2, Lg/cbc;->r:I

    int-to-float p3, p3

    iget p2, p2, Lg/cbc;->b:I

    int-to-float p2, p2

    iget-object v0, p0, Lg/evm;->h:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lg/grq;->ah:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

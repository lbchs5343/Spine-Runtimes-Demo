.class public final Lg/dpx;
.super Lg/elw;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:Landroid/util/Pair;

.field public d:F

.field public e:I

.field public f:F

.field public g:Z

.field public h:F

.field public i:F

.field public j:F


# virtual methods
.method public final k(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
    .locals 11

    invoke-static/range {p5 .. p6}, Lg/eyt;->bt(II)I

    move-result v5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/dpx;->g:Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move/from16 v7, p7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v10}, Lg/dpx;->o(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    return-void
.end method

.method public final l()I
    .locals 2

    iget-object v0, p0, Lg/elw;->v:Lg/dzw;

    move-object v1, v0

    check-cast v1, Lg/cvs;

    iget v1, v1, Lg/dzw;->s:I

    check-cast v0, Lg/cvs;

    iget v0, v0, Lg/dzw;->q:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public final m(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
    .locals 8

    iget v0, p0, Lg/dpx;->f:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lg/dpx;->f:F

    invoke-virtual {p0}, Lg/dpx;->s()V

    :cond_0
    invoke-virtual {p0}, Lg/dpx;->l()I

    move-result v0

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v4, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, v0

    div-float/2addr p2, v3

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-float/2addr p2, v4

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lg/elw;->v:Lg/dzw;

    check-cast p2, Lg/cvs;

    iget-boolean v2, p2, Lg/cvs;->g:Z

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_1
    iget v2, p0, Lg/dpx;->f:F

    div-float/2addr v2, v3

    div-float/2addr v0, v3

    neg-float v6, v2

    neg-float v7, v0

    invoke-virtual {p1, v6, v7, v2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget v0, p2, Lg/dzw;->s:I

    int-to-float v2, v0

    mul-float v2, v2, p3

    iput v2, p0, Lg/dpx;->j:F

    const/4 v2, 0x2

    div-int/2addr v0, v2

    invoke-virtual {p2}, Lg/dzw;->aa()I

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p3

    iput v0, p0, Lg/dpx;->a:F

    iget v0, p2, Lg/dzw;->q:I

    int-to-float v0, v0

    mul-float v0, v0, p3

    iput v0, p0, Lg/dpx;->i:F

    iget v0, p2, Lg/dzw;->s:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p2}, Lg/cvs;->k()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float v0, v0, p3

    iput v0, p0, Lg/dpx;->h:F

    const/4 v0, 0x3

    if-nez p4, :cond_2

    if-eqz p5, :cond_7

    :cond_2
    if-eqz p4, :cond_3

    iget v6, p2, Lg/dzw;->z:I

    if-eq v6, v2, :cond_4

    :cond_3
    if-eqz p5, :cond_5

    iget v2, p2, Lg/dzw;->m:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_5

    :cond_4
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_5
    if-nez p4, :cond_6

    if-eqz p5, :cond_7

    iget p4, p2, Lg/dzw;->m:I

    if-eq p4, v0, :cond_7

    :cond_6
    iget p4, p2, Lg/dzw;->s:I

    int-to-float p4, p4

    sub-float v2, v5, p3

    mul-float v2, v2, p4

    div-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_7
    if-eqz p5, :cond_8

    iget p1, p2, Lg/dzw;->m:I

    if-ne p1, v0, :cond_8

    iput p3, p0, Lg/dpx;->d:F

    return-void

    :cond_8
    iput v5, p0, Lg/dpx;->d:F

    return-void
.end method

.method public final n()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final o(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    iget-object v12, v0, Lg/dpx;->c:Landroid/util/Pair;

    const/4 v13, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    move/from16 v3, p3

    invoke-static {v3, v13, v1}, Lg/dzm;->ac(FFF)F

    move-result v3

    move/from16 v4, p4

    invoke-static {v4, v13, v1}, Lg/dzm;->ac(FFF)F

    move-result v4

    iget v5, v0, Lg/dpx;->d:F

    sub-float v5, v1, v5

    invoke-static {v5, v1, v3}, Lg/aky;->v(FFF)F

    move-result v3

    iget v5, v0, Lg/dpx;->d:F

    sub-float v5, v1, v5

    invoke-static {v5, v1, v4}, Lg/aky;->v(FFF)F

    move-result v4

    move/from16 v5, p6

    int-to-float v5, v5

    const v6, 0x3c23d70a    # 0.01f

    invoke-static {v3, v13, v6}, Lg/dzm;->ac(FFF)F

    move-result v7

    mul-float v7, v7, v5

    div-float/2addr v7, v6

    float-to-int v5, v7

    move/from16 v7, p7

    int-to-float v7, v7

    const v8, 0x3f7d70a4    # 0.99f

    invoke-static {v4, v8, v1}, Lg/dzm;->ac(FFF)F

    move-result v8

    sub-float v8, v1, v8

    mul-float v8, v8, v7

    div-float/2addr v8, v6

    float-to-int v6, v8

    iget v7, v0, Lg/dpx;->f:F

    mul-float v3, v3, v7

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    mul-float v4, v4, v7

    int-to-float v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Lg/dpx;->a:F

    iget v6, v0, Lg/dpx;->h:F

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v6, v0, Lg/dpx;->f:F

    div-float/2addr v5, v6

    iget v7, v0, Lg/dpx;->a:F

    iget v8, v0, Lg/dpx;->h:F

    int-to-float v9, v3

    div-float/2addr v9, v6

    invoke-static {v9, v13, v5}, Lg/dzm;->ac(FFF)F

    move-result v6

    div-float/2addr v6, v5

    invoke-static {v7, v8, v6}, Lg/aky;->v(FFF)F

    move-result v6

    iget v7, v0, Lg/dpx;->a:F

    iget v8, v0, Lg/dpx;->h:F

    iget v9, v0, Lg/dpx;->f:F

    int-to-float v10, v4

    sub-float v10, v9, v10

    div-float/2addr v10, v9

    invoke-static {v10, v13, v5}, Lg/dzm;->ac(FFF)F

    move-result v9

    div-float/2addr v9, v5

    invoke-static {v7, v8, v9}, Lg/aky;->v(FFF)F

    move-result v5

    move v10, v5

    goto :goto_0

    :cond_0
    move v6, v5

    move v10, v6

    :goto_0
    iget v5, v0, Lg/dpx;->f:F

    neg-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    iget-object v8, v0, Lg/elw;->v:Lg/dzw;

    check-cast v8, Lg/cvs;

    iget-boolean v9, v0, Lg/dpx;->g:Z

    invoke-virtual {v8, v9}, Lg/dzw;->ab(Z)Z

    move-result v9

    const/4 v14, 0x1

    if-eqz v9, :cond_1

    if-eqz p10, :cond_1

    cmpl-float v9, p8, v13

    if-lez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-gt v3, v4, :cond_b

    int-to-float v15, v3

    add-float/2addr v15, v6

    int-to-float v4, v4

    sub-float v16, v4, v10

    mul-float v4, v6, v7

    move-object/from16 p10, v8

    mul-float v8, v10, v7

    move/from16 v7, p5

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v7, v0, Lg/dpx;->j:F

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v7, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lg/axy;

    invoke-virtual {v7}, Lg/axy;->g()V

    iget-object v7, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lg/axy;

    invoke-virtual {v7}, Lg/axy;->g()V

    iget-object v7, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lg/axy;

    const/16 p4, 0x0

    add-float v11, v15, v5

    invoke-virtual {v7, v11}, Lg/axy;->e(F)V

    iget-object v7, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lg/axy;

    add-float v5, v16, v5

    invoke-virtual {v7, v5}, Lg/axy;->e(F)V

    if-nez v3, :cond_2

    add-float v3, v16, v10

    add-float v5, v15, v6

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lg/axy;

    iget v5, v0, Lg/dpx;->j:F

    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lg/axy;

    const/4 v11, 0x1

    move v9, v5

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v11}, Lg/dpx;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/axy;FFFLg/axy;FFFZ)V

    return-void

    :cond_2
    sub-float v2, v15, v6

    sub-float v3, v16, v10

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lg/axy;

    iget v5, v0, Lg/dpx;->j:F

    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lg/axy;

    const/4 v11, 0x0

    move v9, v5

    move v1, v8

    move v8, v4

    move v4, v1

    move v1, v10

    move v10, v6

    move v6, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v11}, Lg/dpx;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/axy;FFFLg/axy;FFFZ)V

    return-void

    :cond_3
    move-object/from16 v2, p2

    move/from16 v18, v8

    move/from16 v17, v10

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p10 .. p10}, Lg/cvs;->l()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_2

    :cond_4
    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    if-nez v9, :cond_5

    iget-object v1, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lg/axy;

    iget-object v1, v1, Lg/axy;->a:[F

    aget v3, v1, p4

    aget v1, v1, v14

    iget-object v5, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lg/axy;

    iget-object v5, v5, Lg/axy;->a:[F

    aget v7, v5, p4

    aget v5, v5, v14

    move-object/from16 p3, p1

    move/from16 p5, v1

    move-object/from16 p8, v2

    move/from16 p4, v3

    move/from16 p7, v5

    move/from16 p6, v7

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v1, p1

    move-object/from16 v8, p10

    goto/16 :goto_5

    :cond_5
    iget v3, v0, Lg/dpx;->f:F

    div-float v5, v15, v3

    div-float v3, v16, v3

    iget-boolean v7, v0, Lg/dpx;->g:Z

    move-object/from16 v8, p10

    if-eqz v7, :cond_6

    iget v7, v8, Lg/dzw;->x:I

    goto :goto_3

    :cond_6
    iget v7, v8, Lg/dzw;->n:I

    :goto_3
    iget v9, v0, Lg/dpx;->e:I

    if-eq v7, v9, :cond_7

    iput v7, v0, Lg/dpx;->e:I

    invoke-virtual {v0}, Lg/dpx;->s()V

    :cond_7
    iget-object v7, v0, Lg/elw;->x:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    iget v9, v0, Lg/dpx;->f:F

    neg-float v9, v9

    div-float v9, v9, p3

    iget-boolean v10, v0, Lg/dpx;->g:Z

    invoke-virtual {v8, v10}, Lg/dzw;->ab(Z)Z

    move-result v10

    if-eqz v10, :cond_8

    iget v11, v0, Lg/dpx;->f:F

    const/high16 v19, 0x3f800000    # 1.0f

    iget v1, v0, Lg/dpx;->b:F

    div-float/2addr v11, v1

    div-float v20, p9, v11

    add-float v21, v11, v19

    div-float v11, v11, v21

    add-float v5, v5, v20

    mul-float v5, v5, v11

    add-float v3, v3, v20

    mul-float v3, v3, v11

    mul-float v1, v1, p9

    sub-float/2addr v9, v1

    goto :goto_4

    :cond_8
    const/high16 v19, 0x3f800000    # 1.0f

    :goto_4
    iget-object v1, v0, Lg/elw;->t:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v11

    mul-float v11, v11, v5

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    mul-float v5, v5, v3

    invoke-virtual {v1, v11, v5, v7, v14}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v3, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lg/axy;

    invoke-virtual {v3}, Lg/axy;->g()V

    iget-object v14, v3, Lg/axy;->a:[F

    iget-object v13, v3, Lg/axy;->b:[F

    invoke-virtual {v1, v11, v14, v13}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v11, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lg/axy;

    invoke-virtual {v11}, Lg/axy;->g()V

    iget-object v13, v11, Lg/axy;->a:[F

    iget-object v14, v11, Lg/axy;->b:[F

    invoke-virtual {v1, v5, v13, v14}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v1, v0, Lg/elw;->u:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    const/4 v5, 0x0

    invoke-virtual {v1, v9, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v3, v9}, Lg/axy;->e(F)V

    invoke-virtual {v11, v9}, Lg/axy;->e(F)V

    if-eqz v10, :cond_9

    iget v5, v0, Lg/dpx;->i:F

    mul-float v5, v5, p8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v3, v5}, Lg/axy;->d(F)V

    invoke-virtual {v11, v5}, Lg/axy;->d(F)V

    :cond_9
    invoke-virtual {v7, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_5
    invoke-virtual {v8}, Lg/cvs;->l()Z

    move-result v3

    if-nez v3, :cond_b

    const/16 v20, 0x0

    cmpl-float v3, v15, v20

    if-lez v3, :cond_a

    cmpl-float v3, v6, v20

    if-lez v3, :cond_a

    iget-object v3, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lg/axy;

    iget v5, v0, Lg/dpx;->j:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v11}, Lg/dpx;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/axy;FFFLg/axy;FFFZ)V

    :cond_a
    iget v1, v0, Lg/dpx;->f:F

    cmpg-float v1, v16, v1

    if-gez v1, :cond_b

    const/16 v20, 0x0

    cmpl-float v1, v17, v20

    if-lez v1, :cond_b

    iget-object v1, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lg/axy;

    iget v5, v0, Lg/dpx;->j:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v6, v17

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v11}, Lg/dpx;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/axy;FFFLg/axy;FFFZ)V

    :cond_b
    return-void
.end method

.method public final p(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 12

    invoke-static/range {p3 .. p4}, Lg/eyt;->bt(II)I

    move-result v1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lg/dpx;->g:Z

    iget-object v4, p0, Lg/elw;->v:Lg/dzw;

    check-cast v4, Lg/cvs;

    iget v5, v4, Lg/cvs;->i:I

    if-lez v5, :cond_1

    if-eqz v1, :cond_1

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v4, Lg/cvs;->e:Ljava/lang/Integer;

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->floatValue()F

    move-result v1

    iget v6, v4, Lg/cvs;->i:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v6, v1

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    iget v1, p0, Lg/dpx;->j:F

    div-float v6, v1, v5

    goto :goto_0

    :goto_1
    new-instance v3, Lg/axy;

    iget v7, p0, Lg/dpx;->f:F

    div-float/2addr v7, v5

    sub-float/2addr v7, v6

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput v7, v6, v1

    const/4 v1, 0x1

    const/4 v7, 0x0

    aput v7, v6, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    invoke-direct {v3, v6, v1}, Lg/axy;-><init>([F[F)V

    iget v1, v4, Lg/cvs;->i:I

    int-to-float v4, v1

    int-to-float v5, v1

    iget v6, p0, Lg/dpx;->a:F

    int-to-float v1, v1

    mul-float v6, v6, v1

    iget v1, p0, Lg/dpx;->j:F

    div-float/2addr v6, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v11}, Lg/dpx;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/axy;FFFLg/axy;FFFZ)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/axy;FFFLg/axy;FFFZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    iget v7, v0, Lg/dpx;->j:F

    move/from16 v8, p5

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    new-instance v8, Landroid/graphics/RectF;

    neg-float v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    neg-float v11, v7

    div-float/2addr v11, v10

    div-float/2addr v4, v10

    div-float/2addr v7, v10

    invoke-direct {v8, v9, v11, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    if-eqz v6, :cond_3

    iget-object v14, v6, Lg/axy;->b:[F

    iget-object v15, v6, Lg/axy;->a:[F

    const/high16 p5, 0x40000000    # 2.0f

    iget v10, v0, Lg/dpx;->j:F

    move/from16 v12, p9

    const/16 p4, 0x1

    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    div-float v12, p8, p5

    mul-float v16, p10, v10

    const/16 v17, 0x0

    iget v13, v0, Lg/dpx;->j:F

    div-float v13, v16, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    if-eqz p11, :cond_1

    aget v9, v15, v17

    sub-float/2addr v9, v12

    const/16 p9, 0x0

    iget-object v0, v3, Lg/axy;->a:[F

    aget v0, v0, v17

    sub-float/2addr v0, v5

    sub-float/2addr v9, v0

    cmpl-float v0, v9, p9

    if-lez v0, :cond_0

    neg-float v0, v9

    div-float v0, v0, p5

    invoke-virtual {v6, v0}, Lg/axy;->e(F)V

    add-float v0, p8, v9

    :goto_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    move/from16 v0, p8

    goto :goto_0

    :goto_1
    invoke-virtual {v13, v6, v11, v4, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    aget v4, v15, v17

    add-float/2addr v4, v12

    const/16 p9, 0x0

    iget-object v0, v3, Lg/axy;->a:[F

    aget v0, v0, v17

    add-float/2addr v0, v5

    sub-float/2addr v4, v0

    cmpg-float v0, v4, p9

    if-gez v0, :cond_2

    neg-float v0, v4

    div-float v0, v0, p5

    invoke-virtual {v6, v0}, Lg/axy;->e(F)V

    sub-float v0, p8, v4

    :goto_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    move/from16 v0, p8

    goto :goto_2

    :goto_3
    invoke-virtual {v13, v9, v11, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_4
    new-instance v4, Landroid/graphics/RectF;

    neg-float v6, v0

    div-float v6, v6, p5

    neg-float v7, v10

    div-float v7, v7, p5

    div-float v0, v0, p5

    div-float v10, v10, p5

    invoke-direct {v4, v6, v7, v0, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    aget v0, v15, v17

    aget v6, v15, p4

    invoke-virtual {v1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v14}, Lg/elw;->y([F)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v12, v12, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-static {v14}, Lg/elw;->y([F)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    aget v0, v15, v17

    neg-float v0, v0

    aget v4, v15, p4

    neg-float v4, v4

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v3, Lg/axy;->a:[F

    aget v4, v0, v17

    aget v0, v0, p4

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v3, Lg/axy;->b:[F

    invoke-static {v0}, Lg/elw;->y([F)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {v1, v13, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {v1, v8, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_3
    const/16 p4, 0x1

    const/16 v17, 0x0

    iget-object v0, v3, Lg/axy;->a:[F

    aget v4, v0, v17

    aget v0, v0, p4

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v3, Lg/axy;->b:[F

    invoke-static {v0}, Lg/elw;->y([F)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {v1, v8, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_5
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final r(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/agm;I)V
    .locals 13

    move-object/from16 v0, p3

    iget v1, v0, Lg/agm;->g:I

    move/from16 v2, p4

    invoke-static {v1, v2}, Lg/eyt;->bt(II)I

    move-result v7

    iget-boolean v1, v0, Lg/agm;->a:Z

    iput-boolean v1, p0, Lg/dpx;->g:Z

    iget v5, v0, Lg/agm;->d:F

    iget v6, v0, Lg/agm;->f:F

    iget v8, v0, Lg/agm;->b:I

    iget v10, v0, Lg/agm;->c:F

    iget v11, v0, Lg/agm;->e:F

    const/4 v12, 0x1

    move v9, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v12}, Lg/dpx;->o(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    return-void
.end method

.method public final s()V
    .locals 13

    iget-object v0, p0, Lg/elw;->w:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lg/elw;->v:Lg/dzw;

    check-cast v1, Lg/cvs;

    iget-boolean v2, p0, Lg/dpx;->g:Z

    invoke-virtual {v1, v2}, Lg/dzw;->ab(Z)Z

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lg/dpx;->g:Z

    if-eqz v2, :cond_0

    iget v1, v1, Lg/dzw;->x:I

    goto :goto_0

    :cond_0
    iget v1, v1, Lg/dzw;->n:I

    :goto_0
    iget v2, p0, Lg/dpx;->f:F

    int-to-float v1, v1

    div-float v1, v2, v1

    float-to-int v9, v1

    int-to-float v1, v9

    div-float/2addr v2, v1

    iput v2, p0, Lg/dpx;->b:F

    const/4 v10, 0x0

    :goto_1
    if-gt v10, v9, :cond_1

    mul-int/lit8 v11, v10, 0x2

    int-to-float v1, v11

    const v12, 0x3ef5c28f    # 0.48f

    add-float/2addr v1, v12

    add-int/lit8 v2, v11, 0x1

    int-to-float v5, v2

    sub-float v3, v5, v12

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-float v1, v5, v12

    add-int/lit8 v11, v11, 0x2

    int-to-float v5, v11

    sub-float v3, v5, v12

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lg/elw;->u:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget v2, p0, Lg/dpx;->b:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_2

    :cond_2
    iget v1, p0, Lg/dpx;->f:F

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    iget-object v1, p0, Lg/elw;->t:Landroid/graphics/PathMeasure;

    invoke-virtual {v1, v0, v8}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    return-void
.end method

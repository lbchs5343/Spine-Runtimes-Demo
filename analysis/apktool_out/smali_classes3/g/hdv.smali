.class public final Lg/hdv;
.super Lg/elw;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:Z

.field public e:I

.field public f:F

.field public final g:Landroid/graphics/RectF;

.field public h:F

.field public i:F

.field public j:F

.field public final o:Landroid/util/Pair;

.field public q:F


# direct methods
.method public constructor <init>(Lg/alp;)V
    .locals 2

    invoke-direct {p0, p1}, Lg/elw;-><init>(Lg/dzw;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lg/hdv;->g:Landroid/graphics/RectF;

    new-instance p1, Landroid/util/Pair;

    new-instance v0, Lg/axy;

    invoke-direct {v0}, Lg/axy;-><init>()V

    new-instance v1, Lg/axy;

    invoke-direct {v1}, Lg/axy;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lg/hdv;->o:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final aa(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V
    .locals 17

    move-object/from16 v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p4, p3

    if-ltz v2, :cond_0

    sub-float v2, p4, p3

    goto :goto_0

    :cond_0
    add-float v2, p4, v1

    sub-float v2, v2, p3

    :goto_0
    rem-float v3, p3, v1

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    add-float/2addr v3, v1

    :cond_1
    iget v5, v0, Lg/hdv;->c:F

    cmpg-float v5, v5, v1

    if-gez v5, :cond_2

    add-float v11, v3, v2

    cmpl-float v5, v11, v1

    if-lez v5, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lg/hdv;->aa(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v7, p7

    move v4, v11

    invoke-virtual/range {v0 .. v10}, Lg/hdv;->aa(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    return-void

    :cond_2
    move-object/from16 v5, p2

    iget v6, v0, Lg/hdv;->q:F

    iget v7, v0, Lg/hdv;->i:F

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3f7d70a4    # 0.99f

    sub-float v7, v2, v7

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v9, v7, v4

    if-ltz v9, :cond_3

    mul-float v7, v7, v6

    const/high16 v9, 0x43340000    # 180.0f

    div-float/2addr v7, v9

    const v9, 0x3c23d70a    # 0.01f

    div-float/2addr v7, v9

    add-float/2addr v2, v7

    if-nez p10, :cond_3

    div-float/2addr v7, v8

    sub-float/2addr v3, v7

    :cond_3
    iget v7, v0, Lg/hdv;->c:F

    sub-float v7, v1, v7

    invoke-static {v7, v1, v3}, Lg/aky;->v(FFF)F

    move-result v3

    iget v7, v0, Lg/hdv;->c:F

    invoke-static {v4, v7, v2}, Lg/aky;->v(FFF)F

    move-result v2

    move/from16 v7, p6

    int-to-float v7, v7

    iget v9, v0, Lg/hdv;->i:F

    div-float/2addr v7, v9

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v7, v9

    move/from16 v9, p7

    int-to-float v9, v9

    iget v10, v0, Lg/hdv;->i:F

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v9, v9

    const/high16 v10, 0x43b40000    # 360.0f

    mul-float v2, v2, v10

    sub-float/2addr v2, v7

    sub-float/2addr v2, v9

    mul-float v3, v3, v10

    add-float/2addr v3, v7

    cmpg-float v7, v2, v4

    if-gtz v7, :cond_4

    goto/16 :goto_7

    :cond_4
    iget-object v7, v0, Lg/elw;->v:Lg/dzw;

    check-cast v7, Lg/alp;

    iget-boolean v9, v0, Lg/hdv;->d:Z

    invoke-virtual {v7, v9}, Lg/dzw;->ab(Z)Z

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_5

    if-eqz p10, :cond_5

    cmpl-float v9, p8, v4

    if-lez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v12, p5

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget v12, v0, Lg/hdv;->f:F

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v12, v0, Lg/hdv;->q:F

    mul-float v12, v12, v8

    mul-float v13, v6, v8

    iget-object v14, v0, Lg/elw;->t:Landroid/graphics/PathMeasure;

    const/high16 v15, 0x42b40000    # 90.0f

    cmpg-float v16, v2, v13

    if-gez v16, :cond_9

    div-float/2addr v2, v13

    mul-float v6, v6, v2

    add-float/2addr v6, v3

    new-instance v1, Lg/axy;

    invoke-direct {v1}, Lg/axy;-><init>()V

    if-nez v9, :cond_6

    add-float/2addr v6, v15

    invoke-virtual {v1, v6}, Lg/axy;->h(F)V

    iget v3, v0, Lg/hdv;->i:F

    neg-float v3, v3

    invoke-virtual {v1, v3}, Lg/axy;->f(F)V

    goto :goto_2

    :cond_6
    div-float/2addr v6, v10

    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    mul-float v3, v3, v6

    div-float/2addr v3, v8

    iget v4, v0, Lg/hdv;->a:F

    mul-float v4, v4, p8

    iget v6, v0, Lg/hdv;->i:F

    iget v7, v0, Lg/hdv;->h:F

    cmpl-float v7, v6, v7

    if-nez v7, :cond_7

    iget v7, v0, Lg/hdv;->b:F

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_8

    :cond_7
    iput v4, v0, Lg/hdv;->b:F

    iput v6, v0, Lg/hdv;->h:F

    invoke-virtual {v0}, Lg/hdv;->s()V

    :cond_8
    iget-object v4, v1, Lg/axy;->a:[F

    iget-object v6, v1, Lg/axy;->b:[F

    invoke-virtual {v14, v3, v4, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    :goto_2
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v3, v0, Lg/hdv;->f:F

    move-object/from16 p4, p1

    move-object/from16 p3, v0

    move-object/from16 p6, v1

    move/from16 p9, v2

    move/from16 p8, v3

    move-object/from16 p5, v5

    move/from16 p7, v12

    invoke-virtual/range {p3 .. p9}, Lg/hdv;->ab(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/axy;FFF)V

    return-void

    :cond_9
    const/high16 p3, 0x40000000    # 2.0f

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v7}, Lg/dzw;->l()Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_3

    :cond_a
    sget-object v8, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_3
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    add-float/2addr v3, v6

    sub-float/2addr v2, v13

    iget-object v6, v0, Lg/hdv;->o:Landroid/util/Pair;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lg/axy;

    invoke-virtual {v8}, Lg/axy;->g()V

    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lg/axy;

    invoke-virtual {v8}, Lg/axy;->g()V

    if-nez v9, :cond_b

    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lg/axy;

    add-float v8, v3, v15

    invoke-virtual {v1, v8}, Lg/axy;->h(F)V

    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lg/axy;

    iget v8, v0, Lg/hdv;->i:F

    neg-float v8, v8

    invoke-virtual {v1, v8}, Lg/axy;->f(F)V

    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lg/axy;

    add-float v8, v3, v2

    add-float/2addr v8, v15

    invoke-virtual {v1, v8}, Lg/axy;->h(F)V

    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lg/axy;

    iget v8, v0, Lg/hdv;->i:F

    neg-float v8, v8

    invoke-virtual {v1, v8}, Lg/axy;->f(F)V

    iget v1, v0, Lg/hdv;->i:F

    neg-float v8, v1

    iget-object v9, v0, Lg/hdv;->g:Landroid/graphics/RectF;

    invoke-virtual {v9, v8, v8, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v1, 0x0

    move-object/from16 p3, p1

    move/from16 p6, v2

    move/from16 p5, v3

    move-object/from16 p8, v5

    move-object/from16 p4, v9

    const/16 p7, 0x0

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_b
    div-float/2addr v3, v10

    div-float/2addr v2, v10

    iget v8, v0, Lg/hdv;->a:F

    mul-float v8, v8, p8

    iget-boolean v9, v0, Lg/hdv;->d:Z

    if-eqz v9, :cond_c

    iget v9, v7, Lg/dzw;->x:I

    goto :goto_4

    :cond_c
    iget v9, v7, Lg/dzw;->n:I

    :goto_4
    iget v13, v0, Lg/hdv;->i:F

    iget v15, v0, Lg/hdv;->h:F

    cmpl-float v15, v13, v15

    if-nez v15, :cond_d

    iget v15, v0, Lg/hdv;->b:F

    cmpl-float v15, v8, v15

    if-nez v15, :cond_d

    iget v15, v0, Lg/hdv;->e:I

    if-eq v9, v15, :cond_e

    :cond_d
    iput v8, v0, Lg/hdv;->b:F

    iput v9, v0, Lg/hdv;->e:I

    iput v13, v0, Lg/hdv;->h:F

    invoke-virtual {v0}, Lg/hdv;->s()V

    :cond_e
    iget-object v8, v0, Lg/elw;->x:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    invoke-static {v2, v4, v1}, Lg/dzm;->ac(FFF)F

    move-result v2

    iget-boolean v9, v0, Lg/hdv;->d:Z

    invoke-virtual {v7, v9}, Lg/dzw;->ab(Z)Z

    move-result v9

    if-eqz v9, :cond_f

    iget v9, v0, Lg/hdv;->i:F

    move/from16 p4, v2

    const/high16 v13, 0x3f800000    # 1.0f

    float-to-double v1, v9

    const-wide v15, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v1, v1, v15

    iget v9, v0, Lg/hdv;->j:F

    const/4 v15, 0x0

    float-to-double v4, v9

    div-double/2addr v1, v4

    double-to-float v1, v1

    div-float v1, p9, v1

    add-float/2addr v3, v1

    mul-float v1, v1, v10

    sub-float v4, v15, v1

    goto :goto_5

    :cond_f
    move/from16 p4, v2

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/4 v4, 0x0

    :goto_5
    rem-float/2addr v3, v13

    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    mul-float v1, v1, v3

    div-float v1, v1, p3

    add-float v3, v3, p4

    invoke-virtual {v14}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    mul-float v2, v2, v3

    div-float v2, v2, p3

    invoke-virtual {v14, v1, v2, v8, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v3, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lg/axy;

    invoke-virtual {v3}, Lg/axy;->g()V

    iget-object v5, v3, Lg/axy;->a:[F

    iget-object v9, v3, Lg/axy;->b:[F

    invoke-virtual {v14, v1, v5, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lg/axy;

    invoke-virtual {v1}, Lg/axy;->g()V

    iget-object v5, v1, Lg/axy;->a:[F

    iget-object v9, v1, Lg/axy;->b:[F

    invoke-virtual {v14, v2, v5, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v2, v0, Lg/elw;->u:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v3, v4}, Lg/axy;->h(F)V

    invoke-virtual {v1, v4}, Lg/axy;->h(F)V

    invoke-virtual {v8, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    invoke-virtual {v1, v8, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_6
    invoke-virtual {v7}, Lg/dzw;->l()Z

    move-result v2

    if-nez v2, :cond_10

    iget v2, v0, Lg/hdv;->q:F

    cmpl-float v2, v2, v15

    if-lez v2, :cond_10

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lg/axy;

    iget v3, v0, Lg/hdv;->f:F

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    move-object/from16 p6, v2

    move/from16 p8, v3

    move-object/from16 p5, v5

    move/from16 p7, v12

    const/high16 p9, 0x3f800000    # 1.0f

    invoke-virtual/range {p3 .. p9}, Lg/hdv;->ab(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/axy;FFF)V

    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lg/axy;

    iget v2, v0, Lg/hdv;->f:F

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 p4, p1

    move-object/from16 p5, p2

    move-object/from16 p6, v1

    move/from16 p8, v2

    const/high16 p9, 0x3f800000    # 1.0f

    invoke-virtual/range {p3 .. p9}, Lg/hdv;->ab(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/axy;FFF)V

    :cond_10
    :goto_7
    return-void
.end method

.method public final ab(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/axy;FFF)V
    .locals 5

    iget v0, p0, Lg/hdv;->f:F

    invoke-static {p5, v0}, Ljava/lang/Math;->min(FF)F

    move-result p5

    iget v0, p0, Lg/hdv;->q:F

    mul-float v0, v0, p5

    iget v1, p0, Lg/hdv;->f:F

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p4, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v3, Landroid/graphics/RectF;

    neg-float p4, p4

    div-float/2addr p4, v1

    neg-float v4, p5

    div-float/2addr v4, v1

    div-float/2addr p5, v1

    invoke-direct {v3, p4, v4, v2, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p4, p3, Lg/axy;->a:[F

    const/4 p5, 0x0

    aget p5, p4, p5

    const/4 v1, 0x1

    aget p4, p4, v1

    invoke-virtual {p1, p5, p4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p3, p3, Lg/axy;->b:[F

    invoke-static {p3}, Lg/elw;->y([F)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p1, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p1, v3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final k(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
    .locals 11

    invoke-static/range {p5 .. p6}, Lg/eyt;->bt(II)I

    move-result v5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/hdv;->d:Z

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

    invoke-virtual/range {v0 .. v10}, Lg/hdv;->aa(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    return-void
.end method

.method public final l()I
    .locals 1

    invoke-virtual {p0}, Lg/hdv;->z()I

    move-result v0

    return v0
.end method

.method public final m(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
    .locals 8

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lg/hdv;->z()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lg/hdv;->z()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lg/elw;->v:Lg/dzw;

    check-cast v2, Lg/alp;

    iget v3, v2, Lg/alp;->c:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, v2, Lg/alp;->d:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    mul-float v5, v3, v0

    mul-float v6, v3, v1

    iget v7, p2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr v6, p2

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 p2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget p2, v2, Lg/alp;->e:I

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne p2, v1, :cond_0

    const p2, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_0
    neg-float p2, v3

    invoke-virtual {p1, p2, p2, v3, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget p1, v2, Lg/dzw;->s:I

    int-to-float p2, p1

    mul-float p2, p2, p3

    iput p2, p0, Lg/hdv;->f:F

    const/4 p2, 0x2

    div-int/2addr p1, p2

    invoke-virtual {v2}, Lg/dzw;->aa()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p3

    iput p1, p0, Lg/hdv;->q:F

    iget p1, v2, Lg/dzw;->q:I

    int-to-float p1, p1

    mul-float p1, p1, p3

    iput p1, p0, Lg/hdv;->a:F

    iget p1, v2, Lg/alp;->c:I

    iget v1, v2, Lg/dzw;->s:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p1, v4

    iput p1, p0, Lg/hdv;->i:F

    if-nez p4, :cond_1

    if-eqz p5, :cond_7

    :cond_1
    sub-float v3, v0, p3

    int-to-float v1, v1

    mul-float v3, v3, v1

    div-float/2addr v3, v4

    if-eqz p4, :cond_2

    iget v1, v2, Lg/dzw;->z:I

    if-eq v1, p2, :cond_3

    :cond_2
    const/4 v1, 0x1

    if-eqz p5, :cond_4

    iget v4, v2, Lg/dzw;->m:I

    if-ne v4, v1, :cond_4

    :cond_3
    add-float/2addr p1, v3

    iput p1, p0, Lg/hdv;->i:F

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    iget p4, v2, Lg/dzw;->z:I

    if-eq p4, v1, :cond_6

    :cond_5
    if-eqz p5, :cond_7

    iget p4, v2, Lg/dzw;->m:I

    if-ne p4, p2, :cond_7

    :cond_6
    sub-float/2addr p1, v3

    iput p1, p0, Lg/hdv;->i:F

    :cond_7
    :goto_0
    if-eqz p5, :cond_8

    iget p1, v2, Lg/dzw;->m:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_8

    iput p3, p0, Lg/hdv;->c:F

    return-void

    :cond_8
    iput v0, p0, Lg/hdv;->c:F

    return-void
.end method

.method public final n()I
    .locals 1

    invoke-virtual {p0}, Lg/hdv;->z()I

    move-result v0

    return v0
.end method

.method public final p(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 0

    return-void
.end method

.method public final r(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lg/agm;I)V
    .locals 13

    move-object/from16 v0, p3

    iget v1, v0, Lg/agm;->g:I

    move/from16 v2, p4

    invoke-static {v1, v2}, Lg/eyt;->bt(II)I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Lg/agm;->h:F

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v1, v0, Lg/agm;->a:Z

    iput-boolean v1, p0, Lg/hdv;->d:Z

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

    invoke-virtual/range {v2 .. v12}, Lg/hdv;->aa(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final s()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lg/elw;->w:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x2

    if-ge v9, v10, :cond_0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f0d6289

    const v4, 0x3f0d6289

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    const v2, -0x40f29d77

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const v5, 0x3f0d6289

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const v3, -0x40f29d77

    const v4, -0x40f29d77

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const v2, 0x3f0d6289

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, -0x40f29d77

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lg/elw;->u:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget v3, v0, Lg/hdv;->i:F

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lg/elw;->v:Lg/dzw;

    check-cast v2, Lg/alp;

    iget-boolean v3, v0, Lg/hdv;->d:Z

    invoke-virtual {v2, v3}, Lg/dzw;->ab(Z)Z

    move-result v3

    iget-object v9, v0, Lg/elw;->t:Landroid/graphics/PathMeasure;

    if-eqz v3, :cond_3

    invoke-virtual {v9, v1, v8}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget v3, v0, Lg/hdv;->b:F

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    iget-boolean v5, v0, Lg/hdv;->d:Z

    if-eqz v5, :cond_1

    iget v2, v2, Lg/dzw;->x:I

    goto :goto_1

    :cond_1
    iget v2, v2, Lg/dzw;->n:I

    :goto_1
    int-to-float v2, v2

    div-float v2, v4, v2

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v2, v11

    float-to-int v2, v2

    const/4 v5, 0x3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, v0, Lg/hdv;->j:F

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_2

    new-instance v5, Lg/axy;

    invoke-direct {v5}, Lg/axy;-><init>()V

    iget v6, v0, Lg/hdv;->j:F

    int-to-float v7, v4

    mul-float v6, v6, v7

    iget-object v13, v5, Lg/axy;->a:[F

    iget-object v14, v5, Lg/axy;->b:[F

    invoke-virtual {v9, v6, v13, v14}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    new-instance v6, Lg/axy;

    invoke-direct {v6}, Lg/axy;-><init>()V

    iget v13, v0, Lg/hdv;->j:F

    mul-float v7, v7, v13

    div-float/2addr v13, v11

    add-float/2addr v13, v7

    iget-object v7, v6, Lg/axy;->a:[F

    iget-object v14, v6, Lg/axy;->b:[F

    invoke-virtual {v9, v13, v7, v14}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-float v5, v3, v11

    invoke-virtual {v6, v5}, Lg/axy;->f(F)V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/axy;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/axy;

    iget-object v3, v2, Lg/axy;->a:[F

    aget v4, v3, v8

    const/4 v13, 0x1

    aget v3, v3, v13

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v14, 0x1

    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_3

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lg/axy;

    iget v3, v0, Lg/hdv;->j:F

    div-float/2addr v3, v11

    const v4, 0x3ef5c28f    # 0.48f

    mul-float v3, v3, v4

    iget-object v4, v2, Lg/axy;->a:[F

    iget-object v2, v2, Lg/axy;->b:[F

    new-array v5, v10, [F

    new-array v6, v10, [F

    invoke-static {v4, v8, v5, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v8, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, v15, Lg/axy;->a:[F

    iget-object v4, v15, Lg/axy;->b:[F

    new-array v7, v10, [F

    new-array v11, v10, [F

    invoke-static {v2, v8, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v8, v11, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    aget v2, v6, v13

    move-object v4, v11

    float-to-double v10, v2

    aget v2, v6, v8

    move/from16 v17, v14

    const/16 v16, 0x1

    float-to-double v13, v2

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    double-to-float v2, v10

    aget v6, v5, v8

    float-to-double v10, v6

    float-to-double v13, v3

    move-object/from16 v19, v9

    const/16 v18, 0x0

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v13

    add-double v10, v20, v10

    double-to-float v2, v10

    aput v2, v5, v18

    aget v2, v5, v16

    float-to-double v10, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v13

    add-double/2addr v8, v10

    double-to-float v2, v8

    aput v2, v5, v16

    neg-float v2, v3

    aget v3, v4, v16

    float-to-double v8, v3

    aget v3, v4, v18

    float-to-double v3, v3

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    aget v4, v7, v18

    float-to-double v8, v4

    float-to-double v10, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v13, v13, v10

    add-double/2addr v13, v8

    double-to-float v4, v13

    aput v4, v7, v18

    aget v4, v7, v16

    float-to-double v8, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v10

    add-double/2addr v2, v8

    double-to-float v2, v2

    aput v2, v7, v16

    move-object v3, v5

    move v5, v2

    aget v2, v3, v18

    aget v3, v3, v16

    aget v4, v7, v18

    iget-object v6, v15, Lg/axy;->a:[F

    move-object v7, v6

    aget v6, v7, v18

    aget v7, v7, v16

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v14, v17, 0x1

    move-object v2, v15

    move-object/from16 v9, v19

    const/4 v8, 0x0

    const/4 v10, 0x2

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_3
    move-object v2, v9

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    return-void
.end method

.method public final z()I
    .locals 2

    iget-object v0, p0, Lg/elw;->v:Lg/dzw;

    move-object v1, v0

    check-cast v1, Lg/alp;

    iget v1, v1, Lg/alp;->c:I

    check-cast v0, Lg/alp;

    iget v0, v0, Lg/alp;->d:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method

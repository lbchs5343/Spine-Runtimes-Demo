.class public final Lg/bdb;
.super Lg/ajj;
.source "SourceFile"


# instance fields
.field public final d:Lg/wx;


# direct methods
.method public constructor <init>(Lg/wx;)V
    .locals 0

    invoke-direct {p0}, Lg/ajj;-><init>()V

    iput-object p1, p0, Lg/bdb;->d:Lg/wx;

    return-void
.end method


# virtual methods
.method public final c(Landroid/graphics/Matrix;Lg/ech;ILandroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    iget-object v4, v2, Lg/bdb;->d:Lg/wx;

    iget v5, v4, Lg/wx;->f:F

    iget v6, v4, Lg/wx;->i:F

    new-instance v7, Landroid/graphics/RectF;

    iget v8, v4, Lg/wx;->g:F

    iget v9, v4, Lg/wx;->h:F

    iget v10, v4, Lg/wx;->d:F

    iget v4, v4, Lg/wx;->e:F

    invoke-direct {v7, v8, v9, v10, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v8, v0, Lg/ech;->j:Landroid/graphics/Paint;

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    cmpg-float v11, v6, v10

    if-gez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    iget-object v12, v0, Lg/ech;->l:Landroid/graphics/Path;

    const/4 v13, 0x3

    const/4 v14, 0x2

    sget-object v19, Lg/ech;->a:[I

    if-eqz v11, :cond_1

    aput v9, v19, v9

    iget v9, v0, Lg/ech;->i:I

    aput v9, v19, v4

    iget v9, v0, Lg/ech;->g:I

    aput v9, v19, v14

    iget v9, v0, Lg/ech;->f:I

    aput v9, v19, v13

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v12}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    const/16 v16, 0x1

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v12, v15, v4}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v12, v7, v5, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    neg-int v4, v1

    int-to-float v4, v4

    invoke-virtual {v7, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    aput v9, v19, v9

    iget v4, v0, Lg/ech;->f:I

    aput v4, v19, v16

    iget v4, v0, Lg/ech;->g:I

    aput v4, v19, v14

    iget v4, v0, Lg/ech;->i:I

    aput v4, v19, v13

    :goto_1
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v18, v4, v9

    cmpg-float v4, v18, v10

    if-gtz v4, :cond_2

    return-void

    :cond_2
    int-to-float v1, v1

    div-float v1, v1, v18

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    sub-float v10, v4, v1

    div-float/2addr v10, v9

    add-float/2addr v10, v1

    sget-object v20, Lg/ech;->b:[F

    aput v1, v20, v16

    aput v10, v20, v14

    new-instance v15, Landroid/graphics/RadialGradient;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v16

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v17

    sget-object v21, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v15 .. v21}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v1, p1

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v1, v9

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Canvas;->scale(FF)V

    if-nez v11, :cond_3

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v12, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget-object v0, v0, Lg/ech;->e:Landroid/graphics/Paint;

    invoke-virtual {v3, v12, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    move-object v4, v7

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

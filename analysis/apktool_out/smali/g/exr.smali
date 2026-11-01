.class public final Lg/exr;
.super Lg/awo;


# instance fields
.field public final aa:Lg/exi;

.field public final ab:Landroid/util/LongSparseArray;

.field public final t:Lg/exi;

.field public final u:Lg/gqk;

.field public final v:I

.field public final w:Lg/exi;

.field public final x:Landroid/util/LongSparseArray;

.field public final y:Z

.field public final z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lg/fts;Lg/grq;Lg/gqw;)V
    .locals 10

    iget-object v0, p3, Lg/gqw;->m:Lg/ctn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/avw;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :goto_1
    iget-object v0, p3, Lg/gqw;->a:Lg/fvo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lg/avw;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_2

    :cond_4
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_2

    :goto_3
    iget v5, p3, Lg/gqw;->i:F

    iget-object v6, p3, Lg/gqw;->l:Lg/dlz;

    iget-object v7, p3, Lg/gqw;->h:Lg/cnc;

    iget-object v8, p3, Lg/gqw;->k:Ljava/util/ArrayList;

    iget-object v9, p3, Lg/gqw;->b:Lg/cnc;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lg/awo;-><init>(Lg/fts;Lg/grq;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLg/dlz;Lg/cnc;Ljava/util/ArrayList;Lg/cnc;)V

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lg/exr;->ab:Landroid/util/LongSparseArray;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lg/exr;->x:Landroid/util/LongSparseArray;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lg/exr;->z:Landroid/graphics/RectF;

    iget-object v1, p3, Lg/gqw;->g:Lg/gqk;

    iput-object v1, p0, Lg/exr;->u:Lg/gqk;

    iget-boolean v1, p3, Lg/gqw;->d:Z

    iput-boolean v1, p0, Lg/exr;->y:Z

    iget-object v1, p1, Lg/fts;->x:Lg/cgf;

    invoke-virtual {v1}, Lg/cgf;->v()F

    move-result v1

    const/high16 v3, 0x42000000    # 32.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lg/exr;->v:I

    iget-object v1, p3, Lg/gqw;->j:Lg/dlz;

    invoke-virtual {v1}, Lg/dlz;->dq()Lg/cej;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lg/exi;

    iput-object v3, p0, Lg/exr;->w:Lg/exi;

    invoke-virtual {v1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p2, v1}, Lg/grq;->bg(Lg/cej;)V

    iget-object v1, p3, Lg/gqw;->c:Lg/dlz;

    invoke-virtual {v1}, Lg/dlz;->dq()Lg/cej;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lg/exi;

    iput-object v3, p0, Lg/exr;->aa:Lg/exi;

    invoke-virtual {v1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p2, v1}, Lg/grq;->bg(Lg/cej;)V

    iget-object v1, p3, Lg/gqw;->f:Lg/dlz;

    invoke-virtual {v1}, Lg/dlz;->dq()Lg/cej;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lg/exi;

    iput-object v3, p0, Lg/exr;->t:Lg/exi;

    invoke-virtual {v1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p2, v1}, Lg/grq;->bg(Lg/cej;)V

    return-void
.end method


# virtual methods
.method public final ac()I
    .locals 4

    iget-object v0, p0, Lg/exr;->aa:Lg/exi;

    iget v0, v0, Lg/cej;->d:F

    iget v1, p0, Lg/exr;->v:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lg/exr;->t:Lg/exi;

    iget v2, v2, Lg/cej;->d:F

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lg/exr;->w:Lg/exi;

    iget v3, v3, Lg/cej;->d:F

    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-eqz v0, :cond_0

    mul-int/lit16 v0, v0, 0x20f

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    if-eqz v2, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    mul-int v0, v0, v2

    :cond_1
    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    mul-int v0, v0, v1

    :cond_2
    return v0
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lg/exr;->y:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lg/exr;->z:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lg/awo;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v2, v0, Lg/exr;->u:Lg/gqk;

    sget-object v3, Lg/gqk;->dq:Lg/gqk;

    iget-object v4, v0, Lg/exr;->w:Lg/exi;

    iget-object v5, v0, Lg/exr;->t:Lg/exi;

    iget-object v6, v0, Lg/exr;->aa:Lg/exi;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lg/exr;->ac()I

    move-result v2

    int-to-long v2, v2

    iget-object v7, v0, Lg/exr;->ab:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/LinearGradient;

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    invoke-virtual {v5}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v4}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fns;

    iget-object v13, v4, Lg/fns;->b:[I

    iget-object v14, v4, Lg/fns;->a:[F

    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v10, v6, Landroid/graphics/PointF;->y:F

    iget v11, v5, Landroid/graphics/PointF;->x:F

    iget v12, v5, Landroid/graphics/PointF;->y:F

    new-instance v8, Landroid/graphics/LinearGradient;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v2, v3, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lg/exr;->ac()I

    move-result v2

    int-to-long v2, v2

    iget-object v7, v0, Lg/exr;->x:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RadialGradient;

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    invoke-virtual {v5}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    invoke-virtual {v4}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/fns;

    iget-object v12, v4, Lg/fns;->b:[I

    iget-object v13, v4, Lg/fns;->a:[F

    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v10, v6, Landroid/graphics/PointF;->y:F

    iget v4, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v9

    float-to-double v14, v4

    sub-float/2addr v5, v10

    float-to-double v4, v5

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v11, v4

    new-instance v8, Landroid/graphics/RadialGradient;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v2, v3, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {v8, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v0, Lg/awo;->o:Lg/gee;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super/range {p0 .. p3}, Lg/awo;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

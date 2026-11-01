.class public final Lg/com;
.super Ljava/lang/Object;

# interfaces
.implements Lg/fyj;
.implements Lg/dvz;
.implements Lg/glt;


# instance fields
.field public final a:Lg/gqk;

.field public final b:Lg/exi;

.field public final c:Lg/bsb;

.field public final d:I

.field public final e:Landroid/graphics/Path;

.field public final f:Lg/exi;

.field public final g:Lg/gee;

.field public final h:Z

.field public final i:Landroid/graphics/RectF;

.field public j:F

.field public final k:Lg/fts;

.field public final o:Lg/exi;

.field public final p:Landroid/util/LongSparseArray;

.field public final q:Lg/dph;

.field public final r:Lg/gfy;

.field public final s:Landroid/util/LongSparseArray;

.field public final t:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/fts;Lg/cgf;Lg/grq;Lg/flm;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lg/com;->p:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lg/com;->s:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/com;->e:Landroid/graphics/Path;

    new-instance v1, Lg/gee;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lg/gee;-><init>(II)V

    iput-object v1, p0, Lg/com;->g:Lg/gee;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lg/com;->i:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lg/com;->t:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lg/com;->j:F

    iget-boolean v1, p4, Lg/flm;->h:Z

    iput-boolean v1, p0, Lg/com;->h:Z

    iput-object p1, p0, Lg/com;->k:Lg/fts;

    iget-object p1, p4, Lg/flm;->c:Lg/gqk;

    iput-object p1, p0, Lg/com;->a:Lg/gqk;

    iget-object p1, p4, Lg/flm;->f:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    invoke-virtual {p2}, Lg/cgf;->v()F

    move-result p1

    const/high16 p2, 0x42000000    # 32.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lg/com;->d:I

    iget-object p1, p4, Lg/flm;->g:Lg/dlz;

    invoke-virtual {p1}, Lg/dlz;->dq()Lg/cej;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lg/exi;

    iput-object p2, p0, Lg/com;->o:Lg/exi;

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p3, p1}, Lg/grq;->bg(Lg/cej;)V

    iget-object p1, p4, Lg/flm;->a:Lg/dlz;

    invoke-virtual {p1}, Lg/dlz;->dq()Lg/cej;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lg/dph;

    iput-object p2, p0, Lg/com;->q:Lg/dph;

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p3, p1}, Lg/grq;->bg(Lg/cej;)V

    iget-object p1, p4, Lg/flm;->b:Lg/dlz;

    invoke-virtual {p1}, Lg/dlz;->dq()Lg/cej;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lg/exi;

    iput-object p2, p0, Lg/com;->b:Lg/exi;

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p3, p1}, Lg/grq;->bg(Lg/cej;)V

    iget-object p1, p4, Lg/flm;->d:Lg/dlz;

    invoke-virtual {p1}, Lg/dlz;->dq()Lg/cej;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lg/exi;

    iput-object p2, p0, Lg/com;->f:Lg/exi;

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p3, p1}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {p3}, Lg/grq;->e()Lg/aoy;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lg/grq;->e()Lg/aoy;

    move-result-object p1

    iget-object p1, p1, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p1, Lg/cnc;

    invoke-virtual {p1}, Lg/cnc;->dq()Lg/cej;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lg/bsb;

    iput-object p2, p0, Lg/com;->c:Lg/bsb;

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p3, p1}, Lg/grq;->bg(Lg/cej;)V

    :cond_0
    invoke-virtual {p3}, Lg/grq;->c()Lg/fzn;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Lg/gfy;

    invoke-virtual {p3}, Lg/grq;->c()Lg/fzn;

    move-result-object p2

    invoke-direct {p1, p0, p3, p2}, Lg/gfy;-><init>(Lg/fyj;Lg/grq;Lg/fzn;)V

    iput-object p1, p0, Lg/com;->r:Lg/gfy;

    :cond_1
    return-void
.end method


# virtual methods
.method public final dq()V
    .locals 1

    iget-object v0, p0, Lg/com;->k:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->invalidateSelf()V

    return-void
.end method

.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lg/com;->h:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lg/com;->e:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lg/com;->t:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/gjf;

    invoke-interface {v5}, Lg/gjf;->p()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lg/com;->i:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v4, v0, Lg/com;->a:Lg/gqk;

    sget-object v5, Lg/gqk;->dq:Lg/gqk;

    iget-object v7, v0, Lg/com;->o:Lg/exi;

    iget-object v8, v0, Lg/com;->f:Lg/exi;

    iget-object v9, v0, Lg/com;->b:Lg/exi;

    if-ne v4, v5, :cond_3

    invoke-virtual {v0}, Lg/com;->u()I

    move-result v4

    int-to-long v4, v4

    iget-object v10, v0, Lg/com;->p:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/LinearGradient;

    if-eqz v11, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    invoke-virtual {v8}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    invoke-virtual {v7}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fns;

    iget-object v11, v7, Lg/fns;->b:[I

    iget-object v7, v7, Lg/fns;->a:[F

    move-object/from16 v16, v11

    new-instance v11, Landroid/graphics/LinearGradient;

    iget v12, v9, Landroid/graphics/PointF;->x:F

    iget v13, v9, Landroid/graphics/PointF;->y:F

    iget v14, v8, Landroid/graphics/PointF;->x:F

    iget v15, v8, Landroid/graphics/PointF;->y:F

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v17, v7

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v4, v5, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_1
    const/16 v18, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lg/com;->u()I

    move-result v4

    int-to-long v4, v4

    iget-object v10, v0, Lg/com;->s:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RadialGradient;

    if-eqz v11, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    invoke-virtual {v8}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    invoke-virtual {v7}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/fns;

    iget-object v15, v7, Lg/fns;->b:[I

    iget-object v7, v7, Lg/fns;->a:[F

    iget v12, v9, Landroid/graphics/PointF;->x:F

    iget v13, v9, Landroid/graphics/PointF;->y:F

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v12

    move-object/from16 v16, v7

    const/16 v18, 0x0

    float-to-double v6, v9

    sub-float/2addr v8, v13

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    cmpg-float v7, v6, v18

    if-gtz v7, :cond_5

    const v6, 0x3a83126f    # 0.001f

    const v14, 0x3a83126f    # 0.001f

    goto :goto_2

    :cond_5
    move v14, v6

    :goto_2
    new-instance v11, Landroid/graphics/RadialGradient;

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v4, v5, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_3
    invoke-virtual {v11, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lg/com;->g:Lg/gee;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v4, v0, Lg/com;->c:Lg/bsb;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v5, v4, v18

    if-nez v5, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_4

    :cond_6
    iget v5, v0, Lg/com;->j:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_7

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v4, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_7
    :goto_4
    iput v4, v0, Lg/com;->j:F

    :cond_8
    iget-object v4, v0, Lg/com;->r:Lg/gfy;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v1}, Lg/gfy;->h(Lg/gee;)V

    :cond_9
    move/from16 v4, p3

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    iget-object v6, v0, Lg/com;->q:Lg/dph;

    invoke-virtual {v6}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float v4, v4, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v4, v6

    mul-float v4, v4, v5

    float-to-int v4, v4

    sget-object v5, Lg/din;->a:Landroid/graphics/PointF;

    const/16 v5, 0xff

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lg/gee;->setAlpha(I)V

    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lg/buj;->bd()V

    return-void
.end method

.method public final m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    iget-object p3, p0, Lg/com;->e:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg/com;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gjf;

    invoke-interface {v2}, Lg/gjf;->p()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final n(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dvz;

    instance-of v1, v0, Lg/gjf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/com;->t:Ljava/util/ArrayList;

    check-cast v0, Lg/gjf;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final u()I
    .locals 4

    iget-object v0, p0, Lg/com;->b:Lg/exi;

    iget v0, v0, Lg/cej;->d:F

    iget v1, p0, Lg/com;->d:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lg/com;->f:Lg/exi;

    iget v2, v2, Lg/cej;->d:F

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lg/com;->o:Lg/exi;

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

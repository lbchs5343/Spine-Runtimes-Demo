.class public abstract Lg/awo;
.super Ljava/lang/Object;

# interfaces
.implements Lg/fyj;
.implements Lg/dvz;
.implements Lg/glt;


# instance fields
.field public final a:[F

.field public final b:Lg/dph;

.field public c:F

.field public final d:Lg/bsb;

.field public final e:Landroid/graphics/RectF;

.field public final f:Ljava/util/ArrayList;

.field public final g:Lg/fts;

.field public final h:Landroid/graphics/PathMeasure;

.field public final i:Lg/grq;

.field public final j:Lg/gfy;

.field public final k:Lg/bsb;

.field public final o:Lg/gee;

.field public final p:Landroid/graphics/Path;

.field public final q:Lg/bsb;

.field public final r:Landroid/graphics/Path;

.field public final s:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lg/fts;Lg/grq;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLg/dlz;Lg/cnc;Ljava/util/ArrayList;Lg/cnc;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lg/awo;->h:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/awo;->p:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lg/awo;->r:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/awo;->e:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/awo;->s:Ljava/util/ArrayList;

    new-instance v0, Lg/gee;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/gee;-><init>(II)V

    iput-object v0, p0, Lg/awo;->o:Lg/gee;

    const/4 v1, 0x0

    iput v1, p0, Lg/awo;->c:F

    iput-object p1, p0, Lg/awo;->g:Lg/fts;

    iput-object p2, p0, Lg/awo;->i:Lg/grq;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p6}, Lg/dlz;->dq()Lg/cej;

    move-result-object p1

    check-cast p1, Lg/dph;

    iput-object p1, p0, Lg/awo;->b:Lg/dph;

    invoke-virtual {p7}, Lg/cnc;->dq()Lg/cej;

    move-result-object p1

    check-cast p1, Lg/bsb;

    iput-object p1, p0, Lg/awo;->q:Lg/bsb;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lg/awo;->k:Lg/bsb;

    goto :goto_0

    :cond_0
    invoke-virtual {p9}, Lg/cnc;->dq()Lg/cej;

    move-result-object p1

    check-cast p1, Lg/bsb;

    iput-object p1, p0, Lg/awo;->k:Lg/bsb;

    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lg/awo;->f:Ljava/util/ArrayList;

    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lg/awo;->a:[F

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    iget-object p4, p0, Lg/awo;->f:Ljava/util/ArrayList;

    invoke-virtual {p8, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lg/cnc;

    invoke-virtual {p5}, Lg/cnc;->dq()Lg/cej;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lg/awo;->b:Lg/dph;

    invoke-virtual {p2, p3}, Lg/grq;->bg(Lg/cej;)V

    iget-object p3, p0, Lg/awo;->q:Lg/bsb;

    invoke-virtual {p2, p3}, Lg/grq;->bg(Lg/cej;)V

    const/4 p3, 0x0

    :goto_2
    iget-object p4, p0, Lg/awo;->f:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    iget-object p4, p0, Lg/awo;->f:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lg/cej;

    invoke-virtual {p2, p4}, Lg/grq;->bg(Lg/cej;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lg/awo;->k:Lg/bsb;

    if-eqz p3, :cond_3

    invoke-virtual {p2, p3}, Lg/grq;->bg(Lg/cej;)V

    :cond_3
    iget-object p3, p0, Lg/awo;->b:Lg/dph;

    invoke-virtual {p3, p0}, Lg/cej;->l(Lg/fyj;)V

    iget-object p3, p0, Lg/awo;->q:Lg/bsb;

    invoke-virtual {p3, p0}, Lg/cej;->l(Lg/fyj;)V

    :goto_3
    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    iget-object p3, p0, Lg/awo;->f:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/cej;

    invoke-virtual {p3, p0}, Lg/cej;->l(Lg/fyj;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lg/awo;->k:Lg/bsb;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    :cond_5
    invoke-virtual {p2}, Lg/grq;->e()Lg/aoy;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lg/grq;->e()Lg/aoy;

    move-result-object p1

    iget-object p1, p1, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p1, Lg/cnc;

    invoke-virtual {p1}, Lg/cnc;->dq()Lg/cej;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lg/bsb;

    iput-object p3, p0, Lg/awo;->d:Lg/bsb;

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p2, p1}, Lg/grq;->bg(Lg/cej;)V

    :cond_6
    invoke-virtual {p2}, Lg/grq;->c()Lg/fzn;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p1, Lg/gfy;

    invoke-virtual {p2}, Lg/grq;->c()Lg/fzn;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lg/gfy;-><init>(Lg/fyj;Lg/grq;Lg/fzn;)V

    iput-object p1, p0, Lg/awo;->j:Lg/gfy;

    :cond_7
    return-void
.end method


# virtual methods
.method public final dq()V
    .locals 1

    iget-object v0, p0, Lg/awo;->g:Lg/fts;

    invoke-virtual {v0}, Lg/fts;->invalidateSelf()V

    return-void
.end method

.method public l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lg/ebx;->a:Lg/cqw;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v6, 0x1

    aput v5, v3, v6

    const v7, 0x471212bb

    const/4 v8, 0x2

    aput v7, v3, v8

    const v7, 0x471a973c

    const/4 v9, 0x3

    aput v7, v3, v9

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v7, v3, v4

    aget v8, v3, v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_19

    aget v7, v3, v6

    aget v3, v3, v9

    cmpl-float v3, v7, v3

    if-nez v3, :cond_0

    goto/16 :goto_11

    :cond_0
    move/from16 v3, p3

    int-to-float v3, v3

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v3, v7

    iget-object v8, v0, Lg/awo;->b:Lg/dph;

    invoke-virtual {v8}, Lg/cej;->n()Lg/flj;

    move-result-object v9

    invoke-virtual {v8}, Lg/cej;->k()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lg/dph;->c(Lg/flj;F)I

    move-result v8

    int-to-float v8, v8

    mul-float v3, v3, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v3, v8

    mul-float v3, v3, v7

    float-to-int v3, v3

    sget-object v7, Lg/din;->a:Landroid/graphics/PointF;

    const/16 v7, 0xff

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v7, v0, Lg/awo;->o:Lg/gee;

    invoke-virtual {v7, v3}, Lg/gee;->setAlpha(I)V

    iget-object v3, v0, Lg/awo;->q:Lg/bsb;

    invoke-virtual {v3}, Lg/bsb;->c()F

    move-result v3

    invoke-static {v2}, Lg/ebx;->i(Landroid/graphics/Matrix;)F

    move-result v9

    mul-float v9, v9, v3

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    invoke-static {}, Lg/buj;->bd()V

    return-void

    :cond_1
    iget-object v3, v0, Lg/awo;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v9, :cond_2

    invoke-static {}, Lg/buj;->bd()V

    goto :goto_3

    :cond_2
    invoke-static {v2}, Lg/ebx;->i(Landroid/graphics/Matrix;)F

    move-result v9

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget-object v13, v0, Lg/awo;->a:[F

    if-ge v11, v12, :cond_5

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/cej;

    invoke-virtual {v12}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v13, v11

    rem-int/lit8 v14, v11, 0x2

    if-nez v14, :cond_3

    cmpg-float v12, v12, v10

    if-gez v12, :cond_4

    aput v10, v13, v11

    goto :goto_1

    :cond_3
    const v14, 0x3dcccccd    # 0.1f

    cmpg-float v12, v12, v14

    if-gez v12, :cond_4

    aput v14, v13, v11

    :cond_4
    :goto_1
    aget v12, v13, v11

    mul-float v12, v12, v9

    aput v12, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lg/awo;->k:Lg/bsb;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v3, v3, v9

    :goto_2
    new-instance v9, Landroid/graphics/DashPathEffect;

    invoke-direct {v9, v13, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-static {}, Lg/buj;->bd()V

    :goto_3
    iget-object v3, v0, Lg/awo;->d:Lg/bsb;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v9, v3, v5

    if-nez v9, :cond_7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_5

    :cond_7
    iget v9, v0, Lg/awo;->c:F

    cmpl-float v9, v3, v9

    if-eqz v9, :cond_9

    iget-object v9, v0, Lg/awo;->i:Lg/grq;

    iget v11, v9, Lg/grq;->ba:F

    cmpl-float v11, v11, v3

    if-nez v11, :cond_8

    iget-object v9, v9, Lg/grq;->aj:Landroid/graphics/BlurMaskFilter;

    goto :goto_4

    :cond_8
    new-instance v11, Landroid/graphics/BlurMaskFilter;

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v3, v12

    sget-object v13, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v11, v12, v13}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v11, v9, Lg/grq;->aj:Landroid/graphics/BlurMaskFilter;

    iput v3, v9, Lg/grq;->ba:F

    move-object v9, v11

    :goto_4
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_9
    :goto_5
    iput v3, v0, Lg/awo;->c:F

    :cond_a
    iget-object v3, v0, Lg/awo;->j:Lg/gfy;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v7}, Lg/gfy;->h(Lg/gee;)V

    :cond_b
    const/4 v3, 0x0

    :goto_6
    iget-object v9, v0, Lg/awo;->s:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_18

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/ln;

    iget-object v11, v9, Lg/ln;->b:Lg/ejw;

    iget-object v9, v9, Lg/ln;->a:Ljava/util/ArrayList;

    iget-object v12, v0, Lg/awo;->p:Landroid/graphics/Path;

    if-eqz v11, :cond_16

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v6

    :goto_7
    if-ltz v13, :cond_c

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/gjf;

    invoke-interface {v14}, Lg/gjf;->p()Landroid/graphics/Path;

    move-result-object v14

    invoke-virtual {v12, v14, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    :cond_c
    iget-object v13, v11, Lg/ejw;->a:Lg/bsb;

    invoke-virtual {v13}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    div-float/2addr v13, v8

    iget-object v14, v11, Lg/ejw;->b:Lg/bsb;

    invoke-virtual {v14}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    div-float/2addr v14, v8

    iget-object v11, v11, Lg/ejw;->d:Lg/bsb;

    invoke-virtual {v11}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const/high16 v15, 0x43b40000    # 360.0f

    div-float/2addr v11, v15

    const v15, 0x3c23d70a    # 0.01f

    cmpg-float v15, v13, v15

    if-gez v15, :cond_d

    const v15, 0x3f7d70a4    # 0.99f

    cmpl-float v15, v14, v15

    if-lez v15, :cond_d

    invoke-virtual {v1, v12, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lg/buj;->bd()V

    const/16 v18, 0x1

    goto/16 :goto_10

    :cond_d
    iget-object v15, v0, Lg/awo;->h:Landroid/graphics/PathMeasure;

    invoke-virtual {v15, v12, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v15}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v12

    :goto_8
    invoke-virtual {v15}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-virtual {v15}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v16

    add-float v12, v16, v12

    goto :goto_8

    :cond_e
    mul-float v11, v11, v12

    mul-float v13, v13, v12

    add-float/2addr v13, v11

    mul-float v14, v14, v12

    add-float/2addr v14, v11

    add-float v11, v13, v12

    sub-float/2addr v11, v10

    invoke-static {v14, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v6

    const/16 v16, 0x0

    :goto_9
    if-ltz v14, :cond_15

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lg/gjf;

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v17}, Lg/gjf;->p()Landroid/graphics/Path;

    move-result-object v6

    iget-object v8, v0, Lg/awo;->r:Landroid/graphics/Path;

    invoke-virtual {v8, v6}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    invoke-virtual {v8, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v15, v8, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v15}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    cmpl-float v17, v11, v12

    if-lez v17, :cond_10

    sub-float v17, v11, v12

    add-float v19, v16, v6

    cmpg-float v19, v17, v19

    if-gez v19, :cond_10

    cmpg-float v19, v16, v17

    if-gez v19, :cond_10

    cmpl-float v19, v13, v12

    if-lez v19, :cond_f

    sub-float v19, v13, v12

    div-float v19, v19, v6

    goto :goto_a

    :cond_f
    const/16 v19, 0x0

    :goto_a
    div-float v4, v17, v6

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :goto_b
    move/from16 v10, v19

    goto :goto_d

    :cond_10
    add-float v4, v16, v6

    cmpg-float v17, v4, v13

    if-ltz v17, :cond_14

    cmpl-float v17, v16, v11

    if-gtz v17, :cond_14

    cmpg-float v17, v4, v11

    if-gtz v17, :cond_11

    cmpg-float v17, v13, v16

    if-gez v17, :cond_11

    invoke-virtual {v1, v8, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_e

    :cond_11
    cmpg-float v17, v13, v16

    if-gez v17, :cond_12

    const/16 v19, 0x0

    goto :goto_c

    :cond_12
    sub-float v17, v13, v16

    div-float v17, v17, v6

    move/from16 v19, v17

    :goto_c
    cmpl-float v4, v11, v4

    if-lez v4, :cond_13

    move/from16 v10, v19

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_13
    sub-float v4, v11, v16

    div-float/2addr v4, v6

    goto :goto_b

    :goto_d
    invoke-static {v8, v10, v4, v5}, Lg/ebx;->g(Landroid/graphics/Path;FFF)V

    invoke-virtual {v1, v8, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_14
    :goto_e
    add-float v16, v16, v6

    add-int/lit8 v14, v14, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_9

    :cond_15
    const/16 v18, 0x1

    invoke-static {}, Lg/buj;->bd()V

    goto :goto_10

    :cond_16
    const/16 v18, 0x1

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_f
    if-ltz v4, :cond_17

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/gjf;

    invoke-interface {v6}, Lg/gjf;->p()Landroid/graphics/Path;

    move-result-object v6

    invoke-virtual {v12, v6, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    :cond_17
    invoke-static {}, Lg/buj;->bd()V

    invoke-virtual {v1, v12, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lg/buj;->bd()V

    :goto_10
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_6

    :cond_18
    invoke-static {}, Lg/buj;->bd()V

    return-void

    :cond_19
    :goto_11
    invoke-static {}, Lg/buj;->bd()V

    return-void
.end method

.method public final m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5

    iget-object p3, p0, Lg/awo;->p:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg/awo;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/ln;

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v2, Lg/ln;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, v2, Lg/ln;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/gjf;

    invoke-interface {v4}, Lg/gjf;->p()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {p3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lg/awo;->e:Landroid/graphics/RectF;

    invoke-virtual {p3, p2, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object p3, p0, Lg/awo;->q:Lg/bsb;

    invoke-virtual {p3}, Lg/bsb;->c()F

    move-result p3

    iget v0, p2, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    sub-float/2addr v0, p3

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p3

    iget v2, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p3

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

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

    invoke-static {}, Lg/buj;->bd()V

    return-void
.end method

.method public final n(Ljava/util/List;Ljava/util/List;)V
    .locals 7

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/dvz;

    instance-of v4, v3, Lg/ejw;

    if-eqz v4, :cond_0

    check-cast v3, Lg/ejw;

    invoke-virtual {v3}, Lg/ejw;->getType()Lg/eyu;

    move-result-object v4

    sget-object v5, Lg/eyu;->d:Lg/eyu;

    if-ne v4, v5, :cond_0

    move-object v2, v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Lg/ejw;->g(Lg/fyj;)V

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    iget-object v0, p0, Lg/awo;->s:Ljava/util/ArrayList;

    if-ltz p1, :cond_7

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/dvz;

    instance-of v4, v3, Lg/ejw;

    if-eqz v4, :cond_4

    move-object v4, v3

    check-cast v4, Lg/ejw;

    invoke-virtual {v4}, Lg/ejw;->getType()Lg/eyu;

    move-result-object v5

    sget-object v6, Lg/eyu;->d:Lg/eyu;

    if-ne v5, v6, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lg/ln;

    invoke-direct {v0, v4}, Lg/ln;-><init>(Lg/ejw;)V

    invoke-virtual {v4, p0}, Lg/ejw;->g(Lg/fyj;)V

    move-object v1, v0

    goto :goto_2

    :cond_4
    instance-of v0, v3, Lg/gjf;

    if-eqz v0, :cond_6

    if-nez v1, :cond_5

    new-instance v1, Lg/ln;

    invoke-direct {v1, v2}, Lg/ln;-><init>(Lg/ejw;)V

    :cond_5
    iget-object v0, v1, Lg/ln;->a:Ljava/util/ArrayList;

    check-cast v3, Lg/gjf;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.class public final Lg/ll;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/PointF;

.field public final d:Z

.field public final e:Landroid/graphics/Path;

.field public final f:[Lg/cif;

.field public final g:Landroid/graphics/Path;

.field public final h:[F

.field public final i:[Landroid/graphics/Matrix;

.field public final j:Landroid/graphics/Path;

.field public final k:[Landroid/graphics/Matrix;

.field public final l:Lg/cif;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lg/cif;

    iput-object v1, p0, Lg/ll;->f:[Lg/cif;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lg/ll;->i:[Landroid/graphics/Matrix;

    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lg/ll;->k:[Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lg/ll;->c:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lg/ll;->e:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lg/ll;->g:Landroid/graphics/Path;

    new-instance v1, Lg/cif;

    invoke-direct {v1}, Lg/cif;-><init>()V

    iput-object v1, p0, Lg/ll;->l:Lg/cif;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lg/ll;->a:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lg/ll;->h:[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lg/ll;->j:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lg/ll;->b:Landroid/graphics/Path;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/ll;->d:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lg/ll;->f:[Lg/cif;

    new-instance v3, Lg/cif;

    invoke-direct {v3}, Lg/cif;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lg/ll;->i:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lg/ll;->k:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final m(Lg/cjg;[FFLandroid/graphics/RectF;Lg/eie;Landroid/graphics/Path;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    iget-object v5, v0, Lg/ll;->e:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    iget-object v6, v0, Lg/ll;->g:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v2, v7}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lg/ll;->k:[Landroid/graphics/Matrix;

    const/4 v10, 0x2

    const/4 v11, 0x3

    iget-object v12, v0, Lg/ll;->a:[F

    const/4 v13, 0x4

    iget-object v14, v0, Lg/ll;->f:[Lg/cif;

    iget-object v15, v0, Lg/ll;->i:[Landroid/graphics/Matrix;

    const/16 v16, 0x0

    const/4 v7, 0x1

    if-ge v8, v13, :cond_a

    if-nez p2, :cond_3

    if-eq v8, v7, :cond_2

    if-eq v8, v10, :cond_1

    if-eq v8, v11, :cond_0

    iget-object v13, v1, Lg/cjg;->g:Lg/gjn;

    goto :goto_1

    :cond_0
    iget-object v13, v1, Lg/cjg;->e:Lg/gjn;

    goto :goto_1

    :cond_1
    iget-object v13, v1, Lg/cjg;->a:Lg/gjn;

    goto :goto_1

    :cond_2
    iget-object v13, v1, Lg/cjg;->l:Lg/gjn;

    goto :goto_1

    :cond_3
    new-instance v13, Lg/tf;

    aget v11, p2, v8

    invoke-direct {v13, v11}, Lg/tf;-><init>(F)V

    :goto_1
    if-eq v8, v7, :cond_6

    if-eq v8, v10, :cond_5

    const/4 v11, 0x3

    if-eq v8, v11, :cond_4

    iget-object v11, v1, Lg/cjg;->i:Lg/afo;

    goto :goto_2

    :cond_4
    iget-object v11, v1, Lg/cjg;->f:Lg/afo;

    goto :goto_2

    :cond_5
    iget-object v11, v1, Lg/cjg;->c:Lg/afo;

    goto :goto_2

    :cond_6
    iget-object v11, v1, Lg/cjg;->k:Lg/afo;

    :goto_2
    aget-object v10, v14, v8

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v13, v2}, Lg/gjn;->b(Landroid/graphics/RectF;)F

    move-result v13

    move/from16 v7, p3

    invoke-virtual {v11, v10, v7, v13}, Lg/afo;->bd(Lg/cif;FF)V

    add-int/lit8 v10, v8, 0x1

    rem-int/lit8 v11, v10, 0x4

    mul-int/lit8 v11, v11, 0x5a

    int-to-float v11, v11

    aget-object v13, v15, v8

    invoke-virtual {v13}, Landroid/graphics/Matrix;->reset()V

    iget-object v13, v0, Lg/ll;->c:Landroid/graphics/PointF;

    const/4 v7, 0x1

    if-eq v8, v7, :cond_9

    const/4 v7, 0x2

    if-eq v8, v7, :cond_8

    const/4 v7, 0x3

    if-eq v8, v7, :cond_7

    iget v7, v2, Landroid/graphics/RectF;->right:F

    move/from16 v17, v8

    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_7
    move/from16 v17, v8

    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_8
    move/from16 v17, v8

    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v13, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_9
    move/from16 v17, v8

    iget v7, v2, Landroid/graphics/RectF;->right:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v13, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    :goto_3
    aget-object v7, v15, v17

    iget v8, v13, Landroid/graphics/PointF;->x:F

    iget v13, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v13}, Landroid/graphics/Matrix;->setTranslate(FF)V

    aget-object v7, v15, v17

    invoke-virtual {v7, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    aget-object v7, v14, v17

    iget v8, v7, Lg/cif;->e:F

    aput v8, v12, v16

    iget v7, v7, Lg/cif;->f:F

    const/16 v18, 0x1

    aput v7, v12, v18

    aget-object v7, v15, v17

    invoke-virtual {v7, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget-object v7, v9, v17

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    aget-object v7, v9, v17

    aget v8, v12, v16

    aget v12, v12, v18

    invoke-virtual {v7, v8, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    aget-object v7, v9, v17

    invoke-virtual {v7, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    move v8, v10

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v13, :cond_14

    aget-object v8, v14, v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    aput v10, v12, v16

    iget v8, v8, Lg/cif;->c:F

    const/16 v18, 0x1

    aput v8, v12, v18

    aget-object v8, v15, v7

    invoke-virtual {v8, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v7, :cond_b

    aget v8, v12, v16

    aget v11, v12, v18

    invoke-virtual {v4, v8, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    :cond_b
    aget v8, v12, v16

    aget v11, v12, v18

    invoke-virtual {v4, v8, v11}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    aget-object v8, v14, v7

    aget-object v11, v15, v7

    invoke-virtual {v8, v11, v4}, Lg/cif;->j(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    if-eqz v3, :cond_c

    aget-object v8, v14, v7

    aget-object v11, v15, v7

    iget-object v13, v3, Lg/eie;->g:Ljava/lang/Object;

    check-cast v13, Lg/ddm;

    const/16 p2, 0x0

    iget-object v10, v13, Lg/ddm;->dl:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v10, v7, v2}, Ljava/util/BitSet;->set(IZ)V

    iget-object v2, v13, Lg/ddm;->df:[Lg/ajj;

    iget v10, v8, Lg/cif;->b:F

    invoke-virtual {v8, v10}, Lg/cif;->i(F)V

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10, v11}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v11, Ljava/util/ArrayList;

    iget-object v8, v8, Lg/cif;->g:Ljava/util/ArrayList;

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v8, Lg/cru;

    invoke-direct {v8, v11, v10}, Lg/cru;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    aput-object v8, v2, v7

    goto :goto_6

    :cond_c
    const/16 p2, 0x0

    :goto_6
    add-int/lit8 v2, v7, 0x1

    rem-int/lit8 v8, v2, 0x4

    aget-object v10, v14, v7

    iget v11, v10, Lg/cif;->e:F

    const/16 v16, 0x0

    aput v11, v12, v16

    iget v10, v10, Lg/cif;->f:F

    const/16 v18, 0x1

    aput v10, v12, v18

    aget-object v10, v15, v7

    invoke-virtual {v10, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget-object v10, v14, v8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v0, Lg/ll;->h:[F

    aput p2, v11, v16

    iget v10, v10, Lg/cif;->c:F

    aput v10, v11, v18

    aget-object v10, v15, v8

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v10, v12, v16

    aget v13, v11, v16

    sub-float/2addr v10, v13

    move-object v13, v9

    float-to-double v9, v10

    aget v19, v12, v18

    aget v11, v11, v18

    sub-float v11, v19, v11

    move-object/from16 p3, v13

    move-object/from16 v19, v14

    float-to-double v13, v11

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v9, v9

    const v10, 0x3a83126f    # 0.001f

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aget-object v10, v19, v7

    iget v11, v10, Lg/cif;->e:F

    const/16 v16, 0x0

    aput v11, v12, v16

    iget v10, v10, Lg/cif;->f:F

    const/4 v11, 0x1

    aput v10, v12, v11

    aget-object v10, v15, v7

    invoke-virtual {v10, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq v7, v11, :cond_d

    const/4 v10, 0x3

    if-eq v7, v10, :cond_d

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aget v13, v12, v11

    sub-float/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    goto :goto_7

    :cond_d
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    const/16 v16, 0x0

    aget v11, v12, v16

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    :goto_7
    const/high16 v10, 0x43870000    # 270.0f

    iget-object v11, v0, Lg/ll;->l:Lg/cif;

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v10, v13}, Lg/cif;->h(FFF)V

    const/4 v10, 0x1

    if-eq v7, v10, :cond_10

    const/4 v10, 0x2

    if-eq v7, v10, :cond_f

    const/4 v13, 0x3

    if-eq v7, v13, :cond_e

    iget-object v14, v1, Lg/cjg;->j:Lg/bmr;

    goto :goto_8

    :cond_e
    iget-object v14, v1, Lg/cjg;->h:Lg/bmr;

    goto :goto_8

    :cond_f
    const/4 v13, 0x3

    iget-object v14, v1, Lg/cjg;->d:Lg/bmr;

    goto :goto_8

    :cond_10
    const/4 v10, 0x2

    const/4 v13, 0x3

    iget-object v14, v1, Lg/cjg;->b:Lg/bmr;

    :goto_8
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v14, 0x0

    invoke-virtual {v11, v9, v14}, Lg/cif;->k(FF)V

    iget-object v9, v0, Lg/ll;->j:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    aget-object v14, p3, v7

    invoke-virtual {v11, v14, v9}, Lg/cif;->j(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-boolean v14, v0, Lg/ll;->d:Z

    if-eqz v14, :cond_11

    invoke-virtual {v0, v9, v7}, Lg/ll;->n(Landroid/graphics/Path;I)Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v0, v9, v8}, Lg/ll;->n(Landroid/graphics/Path;I)Z

    move-result v8

    if-eqz v8, :cond_11

    goto :goto_9

    :cond_11
    const/16 v18, 0x1

    goto :goto_a

    :cond_12
    :goto_9
    sget-object v8, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v9, v9, v6, v8}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    const/4 v14, 0x0

    const/16 v16, 0x0

    aput v14, v12, v16

    iget v8, v11, Lg/cif;->c:F

    const/16 v18, 0x1

    aput v8, v12, v18

    aget-object v8, p3, v7

    invoke-virtual {v8, v12}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v8, v12, v16

    aget v9, v12, v18

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    aget-object v8, p3, v7

    invoke-virtual {v11, v8, v5}, Lg/cif;->j(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_b

    :goto_a
    aget-object v8, p3, v7

    invoke-virtual {v11, v8, v4}, Lg/cif;->j(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    :goto_b
    if-eqz v3, :cond_13

    aget-object v8, p3, v7

    iget-object v9, v3, Lg/eie;->g:Ljava/lang/Object;

    check-cast v9, Lg/ddm;

    iget-object v14, v9, Lg/ddm;->dl:Ljava/util/BitSet;

    add-int/lit8 v10, v7, 0x4

    const/4 v13, 0x0

    invoke-virtual {v14, v10, v13}, Ljava/util/BitSet;->set(IZ)V

    iget-object v9, v9, Lg/ddm;->dk:[Lg/ajj;

    iget v10, v11, Lg/cif;->b:F

    invoke-virtual {v11, v10}, Lg/cif;->i(F)V

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10, v8}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    new-instance v8, Ljava/util/ArrayList;

    iget-object v11, v11, Lg/cif;->g:Ljava/util/ArrayList;

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v11, Lg/cru;

    invoke-direct {v11, v8, v10}, Lg/cru;-><init>(Ljava/util/ArrayList;Landroid/graphics/Matrix;)V

    aput-object v11, v9, v7

    goto :goto_c

    :cond_13
    const/4 v13, 0x0

    :goto_c
    move-object/from16 v9, p3

    move v7, v2

    move-object/from16 v14, v19

    const/4 v13, 0x4

    const/16 v16, 0x0

    move-object/from16 v2, p4

    goto/16 :goto_4

    :cond_14
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    invoke-virtual {v5}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    sget-object v1, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_15
    return-void
.end method

.method public final n(Landroid/graphics/Path;I)Z
    .locals 3

    iget-object v0, p0, Lg/ll;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lg/ll;->f:[Lg/cif;

    aget-object v1, v1, p2

    iget-object v2, p0, Lg/ll;->i:[Landroid/graphics/Matrix;

    aget-object p2, v2, p2

    invoke-virtual {v1, p2, v0}, Lg/cif;->j(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

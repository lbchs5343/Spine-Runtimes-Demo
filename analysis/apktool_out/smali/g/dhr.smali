.class public final Lg/dhr;
.super Lg/grq;


# instance fields
.field public final a:Lg/gee;

.field public final b:Ljava/util/ArrayList;

.field public final f:Lg/dph;

.field public final g:Lg/fts;

.field public final h:Landroid/graphics/Matrix;

.field public final i:Lg/dph;

.field public final o:Landroid/util/LongSparseArray;

.field public final p:Ljava/util/HashMap;

.field public final q:Lg/bsb;

.field public final r:Lg/dph;

.field public final s:Landroid/graphics/RectF;

.field public final t:Lg/cgf;

.field public final u:Lg/bsb;

.field public final v:Lg/gee;

.field public final w:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lg/fts;Lg/cbc;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lg/grq;-><init>(Lg/fts;Lg/cbc;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lg/dhr;->w:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lg/dhr;->s:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lg/dhr;->h:Landroid/graphics/Matrix;

    new-instance v0, Lg/gee;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lg/gee;-><init>(II)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v0, p0, Lg/dhr;->a:Lg/gee;

    new-instance v0, Lg/gee;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lg/gee;-><init>(II)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v0, p0, Lg/dhr;->v:Lg/gee;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/dhr;->p:Ljava/util/HashMap;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lg/dhr;->o:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/dhr;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lg/dhr;->g:Lg/fts;

    iget-object p1, p2, Lg/cbc;->q:Lg/cgf;

    iput-object p1, p0, Lg/dhr;->t:Lg/cgf;

    iget-object p1, p2, Lg/cbc;->s:Lg/dlz;

    new-instance v0, Lg/dph;

    iget-object p1, p1, Lg/bgf;->z:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lg/dph;-><init>(ILjava/util/List;)V

    iput-object v0, p0, Lg/dhr;->i:Lg/dph;

    invoke-virtual {v0, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p0, v0}, Lg/grq;->bg(Lg/cej;)V

    iget-object p1, p2, Lg/cbc;->x:Lg/dpa;

    if-eqz p1, :cond_0

    iget-object p2, p1, Lg/dpa;->g:Ljava/lang/Object;

    check-cast p2, Lg/dlz;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lg/dlz;->dq()Lg/cej;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lg/dph;

    iput-object v0, p0, Lg/dhr;->r:Lg/dph;

    invoke-virtual {p2, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p0, p2}, Lg/grq;->bg(Lg/cej;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Lg/dpa;->d:Ljava/lang/Object;

    check-cast p2, Lg/dlz;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lg/dlz;->dq()Lg/cej;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lg/dph;

    iput-object v0, p0, Lg/dhr;->f:Lg/dph;

    invoke-virtual {p2, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p0, p2}, Lg/grq;->bg(Lg/cej;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p1, Lg/dpa;->e:Ljava/lang/Object;

    check-cast p2, Lg/cnc;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lg/cnc;->dq()Lg/cej;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lg/bsb;

    iput-object v0, p0, Lg/dhr;->q:Lg/bsb;

    invoke-virtual {p2, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p0, p2}, Lg/grq;->bg(Lg/cej;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p1, Lg/dpa;->c:Ljava/lang/Object;

    check-cast p1, Lg/cnc;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lg/cnc;->dq()Lg/cej;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lg/bsb;

    iput-object p2, p0, Lg/dhr;->u:Lg/bsb;

    invoke-virtual {p1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p0, p1}, Lg/grq;->bg(Lg/cej;)V

    :cond_3
    return-void
.end method

.method public static x(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v7, p1

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static y(Landroid/graphics/Canvas;Lg/bil;IF)V
    .locals 6

    iget-object v0, p1, Lg/bil;->d:Landroid/graphics/PointF;

    iget-object v1, p1, Lg/bil;->h:Landroid/graphics/PointF;

    invoke-static {}, Lg/ebx;->h()F

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    iget v4, p1, Lg/bil;->g:F

    const v5, 0x3f19999a    # 0.6f

    mul-float v4, v4, v5

    mul-float v4, v4, v2

    iget v5, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    :goto_0
    int-to-float p2, p2

    iget v5, p1, Lg/bil;->g:F

    mul-float p2, p2, v5

    mul-float p2, p2, v2

    add-float/2addr p2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget v0, v0, Landroid/graphics/PointF;->x:F

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_2
    sget-object v1, Lg/fhi;->a:[I

    iget-object p1, p1, Lg/bil;->c:Lg/cxw;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    return-void

    :cond_3
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v3, p1

    add-float/2addr v3, v0

    div-float/2addr p3, p1

    sub-float/2addr v3, p3

    invoke-virtual {p0, v3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_4
    add-float/2addr v0, v3

    sub-float/2addr v0, p3

    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_5
    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public static z(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final aa(I)Lg/ayl;
    .locals 4

    iget-object v0, p0, Lg/dhr;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v1, p1, :cond_0

    new-instance v2, Lg/ayl;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-string v3, ""

    iput-object v3, v2, Lg/ayl;->a:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, v2, Lg/ayl;->b:F

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/ayl;

    return-object p1
.end method

.method public final ab(Ljava/lang/String;FLg/glv;FFZ)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v5, v13, :cond_5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eqz p6, :cond_0

    iget-object v14, v2, Lg/glv;->b:Ljava/lang/String;

    iget-object v15, v2, Lg/glv;->d:Ljava/lang/String;

    invoke-static {v13, v14, v15}, Lg/fki;->f(CLjava/lang/String;Ljava/lang/String;)I

    move-result v14

    iget-object v15, v0, Lg/dhr;->t:Lg/cgf;

    iget-object v15, v15, Lg/cgf;->r:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/fki;

    if-eqz v14, :cond_4

    iget-wide v14, v14, Lg/fki;->e:D

    double-to-float v14, v14

    mul-float v14, v14, p4

    invoke-static {}, Lg/ebx;->h()F

    move-result v15

    mul-float v15, v15, v14

    add-float v15, v15, p5

    goto :goto_1

    :cond_0
    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v1, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lg/dhr;->a:Lg/gee;

    invoke-virtual {v15, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    add-float v15, v14, p5

    :goto_1
    const/16 v14, 0x20

    if-ne v13, v14, :cond_1

    const/4 v9, 0x1

    move v12, v15

    goto :goto_2

    :cond_1
    if-eqz v9, :cond_2

    move v11, v5

    move v10, v15

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    add-float/2addr v10, v15

    :goto_2
    add-float/2addr v6, v15

    cmpl-float v16, p2, v4

    if-lez v16, :cond_4

    cmpl-float v16, v6, p2

    if-ltz v16, :cond_4

    if-eq v13, v14, :cond_4

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Lg/dhr;->aa(I)Lg/ayl;

    move-result-object v13

    if-ne v11, v8, :cond_3

    invoke-virtual {v1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v11, v8

    int-to-float v8, v11

    mul-float v8, v8, v12

    sub-float/2addr v6, v15

    sub-float/2addr v6, v8

    iput-object v10, v13, Lg/ayl;->a:Ljava/lang/String;

    iput v6, v13, Lg/ayl;->b:F

    move v8, v5

    move v11, v8

    move v6, v15

    move v10, v6

    goto :goto_3

    :cond_3
    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v1, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v8, v15

    int-to-float v8, v8

    mul-float v8, v8, v12

    sub-float/2addr v6, v10

    sub-float/2addr v6, v8

    sub-float/2addr v6, v12

    iput-object v14, v13, Lg/ayl;->a:Ljava/lang/String;

    iput v6, v13, Lg/ayl;->b:F

    move v6, v10

    move v8, v11

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    cmpl-float v2, v6, v4

    if-lez v2, :cond_6

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Lg/dhr;->aa(I)Lg/ayl;

    move-result-object v2

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lg/ayl;->a:Ljava/lang/String;

    iput v6, v2, Lg/ayl;->b:F

    :cond_6
    iget-object v1, v0, Lg/dhr;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lg/grq;->bj(I)V

    iget-object v1, v0, Lg/dhr;->i:Lg/dph;

    invoke-virtual {v1}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lg/bil;

    iget-object v9, v0, Lg/dhr;->t:Lg/cgf;

    iget-object v1, v9, Lg/cgf;->g:Ljava/util/HashMap;

    iget-object v2, v8, Lg/bil;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lg/glv;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v1, v3, Lg/glv;->c:Ljava/lang/String;

    iget-object v10, v3, Lg/glv;->d:Ljava/lang/String;

    iget-object v11, v3, Lg/glv;->b:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v12, v0, Lg/dhr;->a:Lg/gee;

    iget-object v2, v0, Lg/dhr;->r:Lg/dph;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget v2, v8, Lg/bil;->a:I

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v13, v0, Lg/dhr;->v:Lg/gee;

    iget-object v2, v0, Lg/dhr;->f:Lg/dph;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget v2, v8, Lg/bil;->i:I

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v2, v0, Lg/grq;->ar:Lg/amp;

    iget-object v2, v2, Lg/amp;->l:Lg/dph;

    const/16 v4, 0x64

    if-nez v2, :cond_3

    const/16 v2, 0x64

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    mul-int/lit16 v2, v2, 0xff

    div-int/2addr v2, v4

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, v0, Lg/dhr;->q:Lg/bsb;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    :cond_4
    iget v2, v8, Lg/bil;->k:F

    invoke-static {}, Lg/ebx;->h()F

    move-result v4

    mul-float v4, v4, v2

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_3
    iget-object v14, v0, Lg/dhr;->g:Lg/fts;

    iget-object v2, v14, Lg/fts;->n:Ljava/util/Map;

    const-string v4, "\n"

    const-string v5, "\u0003"

    const-string v6, "\r"

    const-string v15, "\r\n"

    const/16 v16, -0x1

    move-object/from16 p3, v2

    iget-object v2, v0, Lg/dhr;->u:Lg/bsb;

    const/high16 v17, 0x41200000    # 10.0f

    const/high16 v18, 0x42c80000    # 100.0f

    move-object/from16 v19, v13

    if-nez p3, :cond_f

    iget-object v13, v14, Lg/fts;->h:Lg/dpc;

    if-nez v13, :cond_f

    iget-object v13, v14, Lg/fts;->x:Lg/cgf;

    iget-object v13, v13, Lg/cgf;->r:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-lez v13, :cond_f

    iget v1, v8, Lg/bil;->l:F

    div-float v1, v1, v18

    invoke-static/range {p2 .. p2}, Lg/ebx;->i(Landroid/graphics/Matrix;)F

    iget-object v13, v8, Lg/bil;->f:Ljava/lang/String;

    invoke-virtual {v13, v15, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    iget v4, v8, Lg/bil;->e:I

    int-to-float v4, v4

    div-float v4, v4, v17

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v4, v2

    :cond_5
    move v5, v4

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v15, :cond_e

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v8, Lg/bil;->h:Landroid/graphics/PointF;

    if-nez v6, :cond_6

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    iget v6, v6, Landroid/graphics/PointF;->x:F

    :goto_5
    const/16 v17, 0x1

    move-object/from16 v17, v4

    move v4, v1

    move-object/from16 v1, v17

    move/from16 v17, v2

    move v2, v6

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lg/dhr;->ab(Ljava/lang/String;FLg/glv;FFZ)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_d

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/ayl;

    move-object/from16 p2, v1

    add-int/lit8 v1, v16, 0x1

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move/from16 v18, v2

    iget v2, v6, Lg/ayl;->b:F

    invoke-static {v7, v8, v1, v2}, Lg/dhr;->y(Landroid/graphics/Canvas;Lg/bil;IF)V

    iget-object v2, v6, Lg/ayl;->a:Ljava/lang/String;

    move/from16 v16, v1

    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v6, v1, :cond_c

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, v11, v10}, Lg/fki;->f(CLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v20, v2

    iget-object v2, v9, Lg/cgf;->r:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fki;

    if-eqz v1, :cond_b

    iget-object v2, v0, Lg/dhr;->p:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v13

    move/from16 v24, v15

    goto :goto_9

    :cond_7
    move/from16 v21, v5

    iget-object v5, v1, Lg/fki;->c:Ljava/util/ArrayList;

    move/from16 v22, v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v23, v13

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v24, v15

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v6, :cond_8

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v5

    move-object/from16 v5, v25

    check-cast v5, Lg/ewz;

    move/from16 v25, v6

    new-instance v6, Lg/bl;

    invoke-direct {v6, v14, v0, v5, v9}, Lg/bl;-><init>(Lg/fts;Lg/grq;Lg/ewz;Lg/cgf;)V

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v25

    move-object/from16 v5, v26

    goto :goto_8

    :cond_8
    invoke-virtual {v2, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v13

    :goto_9
    const/4 v5, 0x0

    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/bl;

    invoke-virtual {v6}, Lg/bl;->p()Landroid/graphics/Path;

    move-result-object v6

    iget-object v13, v0, Lg/dhr;->s:Landroid/graphics/RectF;

    const/4 v15, 0x0

    invoke-virtual {v6, v13, v15}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v13, v0, Lg/dhr;->h:Landroid/graphics/Matrix;

    invoke-virtual {v13}, Landroid/graphics/Matrix;->reset()V

    iget v15, v8, Lg/bil;->m:F

    neg-float v15, v15

    invoke-static {}, Lg/ebx;->h()F

    move-result v25

    mul-float v15, v15, v25

    move-object/from16 v25, v2

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v13, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v6, v13}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v2, v8, Lg/bil;->b:Z

    if-eqz v2, :cond_9

    invoke-static {v6, v12, v7}, Lg/dhr;->z(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    move-object/from16 v13, v19

    invoke-static {v6, v13, v7}, Lg/dhr;->z(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_b

    :cond_9
    move-object/from16 v13, v19

    invoke-static {v6, v13, v7}, Lg/dhr;->z(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    invoke-static {v6, v12, v7}, Lg/dhr;->z(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v19, v13

    move-object/from16 v2, v25

    goto :goto_a

    :cond_a
    move-object/from16 v13, v19

    iget-wide v1, v1, Lg/fki;->e:D

    double-to-float v1, v1

    mul-float v1, v1, v4

    invoke-static {}, Lg/ebx;->h()F

    move-result v2

    mul-float v2, v2, v1

    add-float v2, v2, v21

    const/4 v1, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_c

    :cond_b
    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v13

    move/from16 v24, v15

    move-object/from16 v13, v19

    :goto_c
    add-int/lit8 v6, v22, 0x1

    move-object/from16 v19, v13

    move-object/from16 v2, v20

    move/from16 v5, v21

    move-object/from16 v13, v23

    move/from16 v15, v24

    goto/16 :goto_7

    :cond_c
    move/from16 v21, v5

    move-object/from16 v23, v13

    move/from16 v24, v15

    move-object/from16 v13, v19

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v18, 0x1

    move-object/from16 v1, p2

    move-object/from16 v13, v23

    goto/16 :goto_6

    :cond_d
    move/from16 v21, v5

    move-object/from16 v23, v13

    move/from16 v24, v15

    move-object/from16 v13, v19

    add-int/lit8 v2, v17, 0x1

    move v1, v4

    move-object/from16 v13, v23

    goto/16 :goto_4

    :cond_e
    move-object v11, v7

    goto/16 :goto_20

    :cond_f
    move-object/from16 v13, v19

    iget-object v9, v14, Lg/fts;->n:Ljava/util/Map;

    if-eqz v9, :cond_12

    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    :goto_d
    move-object/from16 v19, v2

    :goto_e
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    goto/16 :goto_15

    :cond_10
    invoke-interface {v9, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    goto :goto_d

    :cond_11
    move-object/from16 v19, v2

    const-string v2, "-"

    invoke-static {v11, v2, v10}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    goto :goto_e

    :cond_12
    move-object/from16 v19, v2

    :cond_13
    invoke-virtual {v14}, Lg/fts;->au()Lg/daw;

    move-result-object v2

    if-eqz v2, :cond_20

    iget-object v9, v2, Lg/daw;->e:Ljava/lang/Object;

    check-cast v9, Lg/gtb;

    iput-object v11, v9, Lg/gtb;->d:Ljava/lang/Object;

    iput-object v10, v9, Lg/gtb;->b:Ljava/lang/Object;

    iget-object v7, v2, Lg/daw;->f:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Typeface;

    if-eqz v20, :cond_14

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v1, v20

    move-object/from16 v20, v4

    goto/16 :goto_15

    :cond_14
    move-object/from16 v20, v4

    iget-object v4, v2, Lg/daw;->b:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/AssetManager;

    move-object/from16 v21, v5

    iget-object v5, v2, Lg/daw;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/graphics/Typeface;

    if-eqz v22, :cond_15

    move-object/from16 v1, v22

    move-object/from16 v22, v6

    goto/16 :goto_12

    :cond_15
    move-object/from16 v22, v6

    iget-object v6, v2, Lg/daw;->d:Ljava/lang/Object;

    check-cast v6, Lg/fav;

    if-eqz v6, :cond_17

    invoke-virtual {v6, v11, v10, v1}, Lg/fav;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    if-nez v6, :cond_16

    iget-object v6, v2, Lg/daw;->d:Ljava/lang/Object;

    check-cast v6, Lg/fav;

    invoke-virtual {v6, v11}, Lg/fav;->dq(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    :cond_16
    move-object/from16 p2, v6

    goto :goto_f

    :cond_17
    const/16 p2, 0x0

    :goto_f
    iget-object v6, v2, Lg/daw;->d:Ljava/lang/Object;

    check-cast v6, Lg/fav;

    if-eqz v6, :cond_19

    if-nez p2, :cond_19

    invoke-virtual {v6, v11, v10, v1}, Lg/fav;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v1, v2, Lg/daw;->d:Ljava/lang/Object;

    check-cast v1, Lg/fav;

    invoke-virtual {v1, v11}, Lg/fav;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_18
    if-eqz v1, :cond_19

    :try_start_0
    invoke-static {v4, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_10

    :catchall_0
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_10

    :cond_19
    move-object/from16 v6, p2

    :goto_10
    iget-object v1, v3, Lg/glv;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1a

    goto :goto_12

    :cond_1a
    if-nez v6, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "fonts/"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lg/daw;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_1
    invoke-static {v4, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_11

    :catchall_1
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_11

    :cond_1b
    move-object v1, v6

    :goto_11
    invoke-virtual {v5, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    const-string v2, "Italic"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "Bold"

    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v2, :cond_1c

    if-eqz v4, :cond_1c

    const/4 v2, 0x3

    goto :goto_13

    :cond_1c
    if-eqz v2, :cond_1d

    const/4 v2, 0x2

    goto :goto_13

    :cond_1d
    if-eqz v4, :cond_1e

    const/4 v2, 0x1

    goto :goto_13

    :cond_1e
    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    if-ne v4, v2, :cond_1f

    goto :goto_14

    :cond_1f
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_14
    invoke-virtual {v7, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_20
    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_21

    goto :goto_16

    :cond_21
    iget-object v1, v3, Lg/glv;->a:Landroid/graphics/Typeface;

    :goto_16
    if-nez v1, :cond_23

    :cond_22
    move-object/from16 v11, p1

    goto/16 :goto_20

    :cond_23
    iget-object v2, v8, Lg/bil;->f:Ljava/lang/String;

    iget-object v4, v14, Lg/fts;->h:Lg/dpc;

    if-eqz v4, :cond_26

    iget-object v5, v0, Lg/grq;->au:Lg/cbc;

    iget-object v5, v5, Lg/cbc;->u:Ljava/lang/String;

    iget-object v5, v4, Lg/dpc;->c:Ljava/util/HashMap;

    iget-boolean v6, v4, Lg/dpc;->e:Z

    if-eqz v6, :cond_24

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_17

    :cond_24
    invoke-virtual {v4, v2}, Lg/dpc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_25

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    move-object v2, v4

    :cond_26
    :goto_17
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v1, v8, Lg/bil;->l:F

    invoke-static {}, Lg/ebx;->h()F

    move-result v4

    mul-float v4, v4, v1

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v12}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v4, v8, Lg/bil;->e:I

    int-to-float v4, v4

    div-float v4, v4, v17

    if-eqz v19, :cond_27

    invoke-virtual/range {v19 .. v19}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    :cond_27
    invoke-static {}, Lg/ebx;->h()F

    move-result v5

    mul-float v5, v5, v4

    mul-float v5, v5, v1

    div-float v5, v5, v18

    move-object/from16 v1, v22

    invoke-virtual {v2, v15, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v21

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v20

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v15, 0x0

    :goto_18
    if-ge v15, v9, :cond_22

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v8, Lg/bil;->h:Landroid/graphics/PointF;

    if-nez v2, :cond_28

    const/4 v2, 0x0

    goto :goto_19

    :cond_28
    iget v2, v2, Landroid/graphics/PointF;->x:F

    :goto_19
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lg/dhr;->ab(Ljava/lang/String;FLg/glv;FFZ)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_30

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/ayl;

    add-int/lit8 v6, v16, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v10, v4, Lg/ayl;->b:F

    move-object/from16 v11, p1

    invoke-static {v11, v8, v6, v10}, Lg/dhr;->y(Landroid/graphics/Canvas;Lg/bil;IF)V

    iget-object v4, v4, Lg/ayl;->a:Ljava/lang/String;

    const/4 v10, 0x0

    :goto_1b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v10, v14, :cond_2f

    invoke-virtual {v4, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->charCount(I)I

    move-result v16

    add-int v16, v16, v10

    move-object/from16 p2, v1

    move/from16 v17, v2

    move/from16 v1, v16

    :goto_1c
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2a

    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    move/from16 v16, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->getType(I)I

    move-result v2

    move-object/from16 v18, v3

    const/16 v3, 0x10

    if-eq v2, v3, :cond_29

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_29

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_29

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v3, 0x1c

    if-eq v2, v3, :cond_29

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_29

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->getType(I)I

    move-result v2

    const/16 v3, 0x13

    if-ne v2, v3, :cond_2b

    :cond_29
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v14, v14, 0x1f

    add-int v14, v14, v16

    move-object/from16 v3, v18

    goto :goto_1c

    :cond_2a
    move-object/from16 v18, v3

    :cond_2b
    int-to-long v2, v14

    iget-object v14, v0, Lg/dhr;->o:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v16

    if-ltz v16, :cond_2c

    invoke-virtual {v14, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move/from16 v19, v5

    goto :goto_1e

    :cond_2c
    move/from16 v19, v5

    iget-object v5, v0, Lg/dhr;->w:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, v10

    :goto_1d
    if-ge v0, v1, :cond_2d

    move/from16 v16, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v1, v16

    goto :goto_1d

    :cond_2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_1e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v10, v0

    iget-boolean v0, v8, Lg/bil;->b:Z

    if-eqz v0, :cond_2e

    invoke-static {v1, v12, v11}, Lg/dhr;->x(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    invoke-static {v1, v13, v11}, Lg/dhr;->x(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1f

    :cond_2e
    invoke-static {v1, v13, v11}, Lg/dhr;->x(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    invoke-static {v1, v12, v11}, Lg/dhr;->x(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_1f
    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float v0, v0, v19

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v5, v19

    goto/16 :goto_1b

    :cond_2f
    move-object/from16 p2, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v5

    const/4 v1, 0x0

    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v16, v6

    goto/16 :goto_1a

    :cond_30
    move-object/from16 v11, p1

    move-object/from16 v18, v3

    move/from16 v19, v5

    const/4 v1, 0x0

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_18

    :goto_20
    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lg/grq;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lg/dhr;->t:Lg/cgf;

    iget-object p3, p2, Lg/cgf;->o:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    iget-object p2, p2, Lg/cgf;->o:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

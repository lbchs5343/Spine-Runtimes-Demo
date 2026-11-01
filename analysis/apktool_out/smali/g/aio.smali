.class public final Lg/aio;
.super Lg/grq;


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/RectF;

.field public f:Z

.field public final g:Ljava/util/ArrayList;

.field public final h:Landroid/graphics/Paint;

.field public final i:Lg/bsb;


# direct methods
.method public constructor <init>(Lg/fts;Lg/cbc;Ljava/util/List;Lg/cgf;Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    invoke-direct/range {p0 .. p2}, Lg/grq;-><init>(Lg/fts;Lg/cbc;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lg/aio;->g:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lg/aio;->b:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lg/aio;->a:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lg/aio;->h:Landroid/graphics/Paint;

    const/4 v7, 0x1

    iput-boolean v7, v0, Lg/aio;->f:Z

    move-object/from16 v1, p2

    iget-object v1, v1, Lg/cbc;->m:Lg/cnc;

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lg/cnc;->dq()Lg/cej;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lg/bsb;

    iput-object v3, v0, Lg/aio;->i:Lg/bsb;

    invoke-virtual {v0, v1}, Lg/grq;->bg(Lg/cej;)V

    invoke-virtual {v1, v0}, Lg/cej;->l(Lg/fyj;)V

    goto :goto_0

    :cond_0
    iput-object v8, v0, Lg/aio;->i:Lg/bsb;

    :goto_0
    new-instance v9, Landroid/util/LongSparseArray;

    iget-object v1, v5, Lg/cgf;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v9, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    move v10, v1

    move-object v11, v8

    :goto_1
    const/4 v12, 0x0

    if-ltz v10, :cond_b

    move-object/from16 v13, p3

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lg/cbc;

    sget-object v1, Lg/cjl;->a:[I

    iget-object v4, v3, Lg/cbc;->g:Lg/ayj;

    iget-object v6, v3, Lg/cbc;->w:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unknown layer type "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lg/cbc;->g:Lg/ayj;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg/hbp;->b(Ljava/lang/String;)V

    move-object v1, v8

    goto/16 :goto_6

    :pswitch_0
    new-instance v1, Lg/dhr;

    invoke-direct {v1, v2, v3}, Lg/dhr;-><init>(Lg/fts;Lg/cbc;)V

    goto/16 :goto_6

    :pswitch_1
    new-instance v1, Lg/gda;

    invoke-direct {v1, v2, v3}, Lg/grq;-><init>(Lg/fts;Lg/cbc;)V

    goto/16 :goto_6

    :pswitch_2
    iget-object v1, v2, Lg/fts;->x:Lg/cgf;

    if-nez v1, :cond_1

    move-object v1, v8

    goto :goto_2

    :cond_1
    iget-object v1, v1, Lg/cgf;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hcl;

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, v1, Lg/hcl;->d:Ljava/lang/String;

    const-string v4, "text:"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_3

    new-instance v1, Lg/fis;

    move-object/from16 v4, p5

    invoke-direct {v1, v2, v3, v4}, Lg/fis;-><init>(Lg/fts;Lg/cbc;Landroid/content/Context;)V

    goto/16 :goto_6

    :cond_3
    move-object/from16 v4, p5

    iget-object v1, v2, Lg/fts;->x:Lg/cgf;

    if-nez v1, :cond_4

    move-object v1, v8

    goto :goto_4

    :cond_4
    iget-object v1, v1, Lg/cgf;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hcl;

    :goto_4
    if-eqz v1, :cond_5

    iget-object v1, v1, Lg/hcl;->d:Ljava/lang/String;

    const-string v6, "videoview:"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_6

    new-instance v1, Lg/bm;

    invoke-direct {v1, v2, v3}, Lg/chy;-><init>(Lg/fts;Lg/cbc;)V

    iput-object v8, v1, Lg/bm;->_n:Landroid/graphics/Path;

    const/4 v6, -0x1

    iput v6, v1, Lg/bm;->b:I

    iput v6, v1, Lg/bm;->a:I

    iget-object v6, v1, Lg/chy;->f:Lg/hcl;

    if-eqz v6, :cond_7

    invoke-static {}, Lg/ebx;->h()F

    move-result v14

    iget v15, v6, Lg/hcl;->e:I

    int-to-float v15, v15

    mul-float v15, v15, v14

    float-to-int v15, v15

    iput v15, v1, Lg/bm;->b:I

    iget v6, v6, Lg/hcl;->h:I

    int-to-float v6, v6

    mul-float v6, v6, v14

    float-to-int v6, v6

    iput v6, v1, Lg/bm;->a:I

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    int-to-float v15, v15

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v7, v15, v6}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v1, Lg/bm;->_n:Landroid/graphics/Path;

    const/high16 v7, 0x42200000    # 40.0f

    mul-float v14, v14, v7

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v8, v14, v14, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_6

    :cond_6
    new-instance v1, Lg/chy;

    invoke-direct {v1, v2, v3}, Lg/chy;-><init>(Lg/fts;Lg/cbc;)V

    goto :goto_6

    :pswitch_3
    move-object/from16 v4, p5

    new-instance v1, Lg/evm;

    invoke-direct {v1, v2, v3}, Lg/evm;-><init>(Lg/fts;Lg/cbc;)V

    goto :goto_6

    :pswitch_4
    move-object/from16 v4, p5

    new-instance v1, Lg/aio;

    iget-object v7, v5, Lg/cgf;->q:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object/from16 v16, v6

    move-object v6, v4

    move-object/from16 v4, v16

    invoke-direct/range {v1 .. v6}, Lg/aio;-><init>(Lg/fts;Lg/cbc;Ljava/util/List;Lg/cgf;Landroid/content/Context;)V

    goto :goto_6

    :pswitch_5
    new-instance v1, Lg/rz;

    invoke-direct {v1, v2, v3, v0, v5}, Lg/rz;-><init>(Lg/fts;Lg/cbc;Lg/aio;Lg/cgf;)V

    :cond_7
    :goto_6
    if-eqz v1, :cond_a

    iget-object v4, v1, Lg/grq;->au:Lg/cbc;

    iget-wide v6, v4, Lg/cbc;->e:J

    invoke-virtual {v9, v6, v7, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    if-eqz v11, :cond_8

    iput-object v1, v11, Lg/grq;->at:Lg/grq;

    const/4 v4, 0x1

    const/4 v11, 0x0

    goto :goto_7

    :cond_8
    iget-object v4, v0, Lg/aio;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v12, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, v3, Lg/cbc;->i:Lg/bwd;

    if-eqz v3, :cond_a

    sget-object v4, Lg/ts;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v6, 0x2

    if-eq v3, v6, :cond_9

    goto :goto_7

    :cond_9
    move-object v11, v1

    goto :goto_7

    :cond_a
    const/4 v4, 0x1

    :goto_7
    add-int/lit8 v10, v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_b
    :goto_8
    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v12, v1, :cond_d

    invoke-virtual {v9, v12}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/grq;

    if-eqz v1, :cond_c

    iget-object v2, v1, Lg/grq;->au:Lg/cbc;

    iget-wide v2, v2, Lg/cbc;->l:J

    invoke-virtual {v9, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/grq;

    if-eqz v2, :cond_c

    iput-object v2, v1, Lg/grq;->bb:Lg/grq;

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7

    invoke-virtual {p0, p3}, Lg/grq;->bj(I)V

    iget-object v0, p0, Lg/grq;->au:Lg/cbc;

    iget v1, v0, Lg/cbc;->c:F

    iget v2, v0, Lg/cbc;->n:F

    iget-object v3, p0, Lg/aio;->a:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lg/grq;->af:Lg/fts;

    iget-boolean v1, v1, Lg/fts;->af:Z

    const/16 v2, 0xff

    iget-object v4, p0, Lg/aio;->g:Ljava/util/ArrayList;

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_0

    if-eq p3, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v6, p0, Lg/aio;->h:Landroid/graphics/Paint;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {p1, v3, v6}, Lg/ebx;->j(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    if-eqz v1, :cond_2

    const/16 p3, 0xff

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    :goto_2
    if-ltz v1, :cond_6

    iget-boolean v2, p0, Lg/aio;->f:Z

    if-nez v2, :cond_3

    const-string v2, "__container"

    iget-object v6, v0, Lg/cbc;->u:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v2

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/grq;

    invoke-virtual {v2, p1, p2, p3}, Lg/grq;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lg/buj;->bd()V

    return-void
.end method

.method public final j(F)V
    .locals 5

    invoke-super {p0, p1}, Lg/grq;->j(F)V

    iget-object v0, p0, Lg/grq;->au:Lg/cbc;

    iget-object v1, p0, Lg/aio;->i:Lg/bsb;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lg/grq;->af:Lg/fts;

    iget-object p1, p1, Lg/fts;->x:Lg/cgf;

    iget v2, p1, Lg/cgf;->f:F

    iget p1, p1, Lg/cgf;->b:F

    sub-float/2addr v2, p1

    const p1, 0x3c23d70a    # 0.01f

    add-float/2addr v2, p1

    iget-object p1, v0, Lg/cbc;->q:Lg/cgf;

    iget p1, p1, Lg/cgf;->b:F

    invoke-virtual {v1}, Lg/cej;->m()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v0, Lg/cbc;->q:Lg/cgf;

    iget v4, v4, Lg/cgf;->l:F

    mul-float v3, v3, v4

    sub-float/2addr v3, p1

    div-float p1, v3, v2

    :cond_0
    if-nez v1, :cond_1

    iget v1, v0, Lg/cbc;->d:F

    iget-object v2, v0, Lg/cbc;->q:Lg/cgf;

    iget v3, v2, Lg/cgf;->f:F

    iget v2, v2, Lg/cgf;->b:F

    sub-float/2addr v3, v2

    div-float/2addr v1, v3

    sub-float/2addr p1, v1

    :cond_1
    iget v1, v0, Lg/cbc;->o:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    const-string v1, "__container"

    iget-object v2, v0, Lg/cbc;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v0, v0, Lg/cbc;->o:F

    div-float/2addr p1, v0

    :cond_2
    iget-object v0, p0, Lg/aio;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/grq;

    invoke-virtual {v2, p1}, Lg/grq;->j(F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final k(Z)V
    .locals 2

    invoke-super {p0, p1}, Lg/grq;->k(Z)V

    iget-object v0, p0, Lg/aio;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/grq;

    invoke-virtual {v1, p1}, Lg/grq;->k(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lg/grq;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lg/aio;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    :goto_0
    if-ltz p3, :cond_0

    iget-object v1, p0, Lg/aio;->b:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/grq;

    iget-object v3, p0, Lg/grq;->ah:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3, v0}, Lg/grq;->m(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

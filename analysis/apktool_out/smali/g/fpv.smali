.class public final Lg/fpv;
.super Lg/cw;


# instance fields
.field public j:Ljava/lang/String;

.field public k:Landroid/graphics/Path;

.field public l:Landroid/graphics/PorterDuffXfermode;

.field public m:F

.field public n:Landroid/graphics/Path;

.field public o:F

.field public p:Landroid/graphics/Paint;

.field public q:Landroid/graphics/Path;

.field public r:Z

.field public s:Z

.field public t:F


# virtual methods
.method public final d(II)V
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-boolean v1, p0, Lg/fpv;->r:Z

    if-eqz v1, :cond_0

    int-to-float p1, p1

    iput p1, p0, Lg/fpv;->m:F

    iput-boolean v0, p0, Lg/fpv;->r:Z

    :cond_0
    if-lez p2, :cond_1

    iget-boolean p1, p0, Lg/fpv;->s:Z

    if-eqz p1, :cond_1

    int-to-float p1, p2

    iput p1, p0, Lg/fpv;->o:F

    iput-boolean v0, p0, Lg/fpv;->s:Z

    :cond_1
    return-void
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lg/fpv;->q:Landroid/graphics/Path;

    iget-object v1, p0, Lg/fpv;->n:Landroid/graphics/Path;

    iget-object v7, p0, Lg/fpv;->k:Landroid/graphics/Path;

    iget-object v13, p0, Lg/fpv;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Lg/cw;->b:Ljava/lang/Object;

    check-cast v2, Lg/dlv;

    invoke-virtual {v2}, Lg/dlv;->t()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget v3, p0, Lg/fpv;->m:F

    invoke-virtual {v2}, Lg/dlv;->t()F

    move-result v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    iget v4, p0, Lg/fpv;->o:F

    invoke-virtual {v2}, Lg/dlv;->t()F

    move-result v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lg/fpv;->l:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v4, p0, Lg/fpv;->j:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "right"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_1
    const-string v5, "left"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_2
    const-string v5, "top"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v5, "center"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_4
    const-string v5, "bottom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    int-to-float v9, v3

    iget v11, p0, Lg/fpv;->m:F

    iget v12, p0, Lg/fpv;->o:F

    const/4 v10, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_1
    move-object v8, p1

    iget p1, p0, Lg/fpv;->m:F

    int-to-float v0, v3

    sub-float v11, p1, v0

    iget v12, p0, Lg/fpv;->o:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_2
    move-object v8, p1

    iget v11, p0, Lg/fpv;->m:F

    iget p1, p0, Lg/fpv;->o:F

    int-to-float v0, v2

    sub-float v12, p1, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_3
    move-object v8, p1

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget p1, p0, Lg/fpv;->m:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr p1, v9

    iget v2, p0, Lg/fpv;->o:F

    div-float/2addr v2, v9

    int-to-float v3, v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, p1, v2, v3, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget v4, p0, Lg/fpv;->m:F

    div-float v2, v4, v9

    const/4 v3, 0x0

    move-object v6, v5

    iget v5, p0, Lg/fpv;->o:F

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    move-object p1, v1

    sget-object v10, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v7, v10}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget v1, p0, Lg/fpv;->m:F

    div-float v3, v1, v9

    iget v4, p0, Lg/fpv;->o:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v0, v7, v10}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    invoke-virtual {v8, p1, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v8, v0, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :pswitch_4
    move-object v8, p1

    int-to-float v10, v2

    iget v11, p0, Lg/fpv;->m:F

    iget v12, p0, Lg/fpv;->o:F

    const/4 v9, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_4
        -0x514d33ab -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 4

    iget-object v0, p0, Lg/cw;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lg/fpv;->t:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lg/cw;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "start"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lg/fpv;->t:F

    const-string v1, "direction"

    const-string v2, "center"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/fpv;->j:Ljava/lang/String;

    return-void
.end method

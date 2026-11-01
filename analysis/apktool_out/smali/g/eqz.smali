.class public final Lg/eqz;
.super Lg/cw;


# instance fields
.field public j:Landroid/graphics/Paint;

.field public k:Landroid/graphics/LinearGradient;

.field public l:Ljava/lang/String;

.field public m:Landroid/graphics/Matrix;

.field public n:F

.field public o:F

.field public p:Landroid/graphics/Paint;

.field public q:Landroid/graphics/PorterDuffXfermode;

.field public r:Landroid/view/View;


# virtual methods
.method public final d(II)V
    .locals 12

    int-to-float p1, p1

    iput p1, p0, Lg/eqz;->n:F

    int-to-float p1, p2

    iput p1, p0, Lg/eqz;->o:F

    iget-object p1, p0, Lg/eqz;->l:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "right"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string p2, "left"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string p2, "top"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string p2, "bottom"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    new-instance v1, Landroid/graphics/LinearGradient;

    iget p1, p0, Lg/eqz;->n:F

    neg-float v2, p1

    iget v5, p0, Lg/eqz;->o:F

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lg/eqz;->k:Landroid/graphics/LinearGradient;

    return-void

    :pswitch_1
    new-instance v2, Landroid/graphics/LinearGradient;

    iget v3, p0, Lg/eqz;->n:F

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lg/eqz;->k:Landroid/graphics/LinearGradient;

    return-void

    :pswitch_2
    new-instance v3, Landroid/graphics/LinearGradient;

    iget v5, p0, Lg/eqz;->o:F

    const/4 v9, -0x1

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lg/eqz;->k:Landroid/graphics/LinearGradient;

    return-void

    :pswitch_3
    new-instance v4, Landroid/graphics/LinearGradient;

    iget p1, p0, Lg/eqz;->o:F

    neg-float v6, p1

    const/4 v10, -0x1

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v4, p0, Lg/eqz;->k:Landroid/graphics/LinearGradient;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v1, p0

    iget-object v7, v1, Lg/eqz;->j:Landroid/graphics/Paint;

    iget-object v0, v1, Lg/eqz;->m:Landroid/graphics/Matrix;

    iget-object v13, v1, Lg/eqz;->p:Landroid/graphics/Paint;

    iget-object v2, v1, Lg/cw;->b:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lg/dlv;

    :try_start_0
    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v2

    const/4 v9, 0x0

    cmpl-float v2, v2, v9

    if-lez v2, :cond_9

    iget v2, v1, Lg/eqz;->n:F

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v3, v1, Lg/eqz;->o:F

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget-object v4, v1, Lg/eqz;->q:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v4, v1, Lg/eqz;->l:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "right"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :sswitch_1
    const-string v5, "left"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "top"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_3
    const-string v5, "bottom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v4, -0x1

    :goto_1
    const v12, 0x3f666666    # 0.9f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x437f0000    # 255.0f

    if-eqz v4, :cond_7

    if-eq v4, v11, :cond_5

    if-eq v4, v6, :cond_3

    if-eq v4, v10, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v5, v1, Lg/eqz;->n:F

    iget v2, v1, Lg/eqz;->o:F

    int-to-float v10, v3

    sub-float v6, v2, v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lg/eqz;->o:F

    sub-float/2addr v2, v10

    invoke-virtual {v0, v9, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, v1, Lg/eqz;->k:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, v1, Lg/eqz;->k:Landroid/graphics/LinearGradient;

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v0

    cmpg-float v0, v0, v14

    if-gtz v0, :cond_2

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v0

    cmpl-float v0, v0, v12

    if-lez v0, :cond_2

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v0

    mul-float v0, v0, v15

    sub-float/2addr v15, v0

    float-to-int v0, v15

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2
    iget v9, v1, Lg/eqz;->n:F

    move v0, v10

    iget v10, v1, Lg/eqz;->o:F

    const/4 v11, 0x0

    sub-float v12, v10, v0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_3
    int-to-float v4, v3

    iget v5, v1, Lg/eqz;->n:F

    iget v6, v1, Lg/eqz;->o:F

    const/4 v3, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v0, v9, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, v1, Lg/eqz;->k:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, v1, Lg/eqz;->k:Landroid/graphics/LinearGradient;

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v0

    cmpg-float v0, v0, v14

    if-gtz v0, :cond_4

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v0

    cmpl-float v0, v0, v12

    if-lez v0, :cond_4

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v0

    mul-float v0, v0, v15

    sub-float/2addr v15, v0

    float-to-int v0, v15

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_4
    iget v11, v1, Lg/eqz;->n:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move v12, v4

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_5
    iget v3, v1, Lg/eqz;->n:F

    int-to-float v10, v2

    sub-float v5, v3, v10

    iget v6, v1, Lg/eqz;->o:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lg/eqz;->n:F

    sub-float/2addr v2, v10

    invoke-virtual {v0, v2, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, v1, Lg/eqz;->k:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, v1, Lg/eqz;->k:Landroid/graphics/LinearGradient;

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v0

    cmpg-float v0, v0, v14

    if-gtz v0, :cond_6

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v0

    cmpl-float v0, v0, v12

    if-lez v0, :cond_6

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v0

    mul-float v0, v0, v15

    sub-float/2addr v15, v0

    float-to-int v0, v15

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_6
    iget v9, v1, Lg/eqz;->n:F

    move v0, v10

    iget v10, v1, Lg/eqz;->o:F

    sub-float v11, v9, v0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_7
    int-to-float v3, v2

    iget v5, v1, Lg/eqz;->n:F

    iget v6, v1, Lg/eqz;->o:F

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Lg/eqz;->o:F

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, v1, Lg/eqz;->k:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, v1, Lg/eqz;->k:Landroid/graphics/LinearGradient;

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v0

    cmpg-float v0, v0, v14

    if-gtz v0, :cond_8

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v0

    cmpl-float v0, v0, v12

    if-lez v0, :cond_8

    invoke-virtual {v8}, Lg/dlv;->gx()F

    move-result v0

    mul-float v0, v0, v15

    sub-float/2addr v15, v0

    float-to-int v0, v15

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    iget v12, v1, Lg/eqz;->o:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move v11, v3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :goto_2
    return-void

    :goto_3
    const-string v2, "BaseEffectWrapper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch
.end method

.method public final g()Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "rubIn"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/aiu;->o:Lg/aiu;

    invoke-virtual {v2}, Lg/aiu;->e()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lg/cw;->a:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "direction"

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/eqz;->l:Ljava/lang/String;

    return-void
.end method

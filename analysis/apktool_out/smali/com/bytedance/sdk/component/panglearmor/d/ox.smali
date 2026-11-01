.class public Lcom/bytedance/sdk/component/panglearmor/d/ox;
.super Ljava/lang/Object;


# direct methods
.method public static dq(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)[F
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)[F"
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ge v5, v0, :cond_0

    move-object/from16 v9, p0

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move-object/from16 v11, p1

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    move-object/from16 v13, p2

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    new-array v15, v7, [F

    aput v10, v15, v2

    aput v12, v15, v8

    aput v14, v15, v6

    move-object/from16 v10, p3

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    move-object/from16 v14, p4

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Float;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v2, p5

    const/16 v17, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v18

    const/16 v19, 0x2

    new-array v6, v7, [F

    aput v12, v6, v17

    aput v16, v6, v8

    aput v18, v6, v19

    const/16 v12, 0x9

    new-array v12, v12, [F

    new-array v7, v7, [F

    const/16 v16, 0x1

    const/4 v8, 0x0

    invoke-static {v12, v8, v15, v6}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    invoke-static {v12, v7}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    aget v6, v7, v17

    move v8, v1

    float-to-double v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    add-float/2addr v1, v2

    rem-float/2addr v1, v2

    add-float/2addr v1, v8

    aget v6, v7, v16

    move v12, v3

    const/high16 v15, 0x43b40000    # 360.0f

    float-to-double v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    add-float/2addr v2, v15

    rem-float/2addr v2, v15

    add-float v3, v2, v12

    aget v2, v7, v19

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v2, v6

    add-float/2addr v2, v15

    rem-float/2addr v2, v15

    add-float/2addr v4, v2

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_0
    move v8, v1

    move v12, v3

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x2

    int-to-float v0, v0

    div-float v1, v8, v0

    div-float v3, v12, v0

    div-float/2addr v4, v0

    new-array v0, v7, [F

    aput v1, v0, v17

    aput v3, v0, v16

    aput v4, v0, v19

    return-object v0
.end method

.method public static dq(Ljava/util/LinkedList;I)[I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lorg/json/JSONObject;",
            ">;I)[I"
        }
    .end annotation

    new-array v0, p1, [I

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "t"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/16 v9, 0x3c

    div-long/2addr v5, v9

    div-long/2addr v5, v9

    long-to-int v1, v5

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-virtual {v5, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    div-long/2addr v5, v7

    div-long/2addr v5, v9

    div-long/2addr v5, v9

    long-to-int v6, v5

    sub-int v5, v1, v6

    if-ltz v5, :cond_1

    if-ge v5, p1, :cond_1

    aget v6, v0, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v5

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static dq([DJ)[I
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-lez v3, :cond_2

    const-wide/16 v0, 0x168

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    div-long/2addr v0, p1

    long-to-int v1, v0

    new-array v0, v1, [I

    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, p0, v2

    long-to-double v5, p1

    div-double/2addr v3, v5

    double-to-int v3, v3

    aget v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    new-array p0, v2, [I

    return-object p0
.end method

.method public static dq(Ljava/util/List;JJ)[[I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;JJ)[[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-wide/from16 v0, p3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [D

    new-array v4, v2, [D

    new-array v5, v2, [D

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ge v7, v2, :cond_1

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v12, "val"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ne v12, v9, :cond_0

    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v12

    aput-wide v12, v3, v7

    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    aput-wide v9, v4, v7

    invoke-virtual {v11, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    aput-wide v8, v5, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-wide v11, p1

    invoke-static {v3, v11, v12}, Lcom/bytedance/sdk/component/panglearmor/d/ox;->dq([DJ)[I

    move-result-object p0

    invoke-static {v4, v0, v1}, Lcom/bytedance/sdk/component/panglearmor/d/ox;->dq([DJ)[I

    move-result-object v2

    invoke-static {v5, v0, v1}, Lcom/bytedance/sdk/component/panglearmor/d/ox;->dq([DJ)[I

    move-result-object v0

    new-array v1, v9, [[I

    aput-object p0, v1, v6

    aput-object v2, v1, v10

    aput-object v0, v1, v8

    return-object v1
.end method

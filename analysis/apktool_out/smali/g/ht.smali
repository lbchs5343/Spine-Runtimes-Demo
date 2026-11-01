.class public abstract Lg/ht;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/view/animation/LinearInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lg/ht;->a:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public static b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;
    .locals 6

    iget v0, p0, Landroid/graphics/PointF;->x:F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lg/din;->c(FFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Landroid/graphics/PointF;->y:F

    const/high16 v3, -0x3d380000    # -100.0f

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v0, v3, v4}, Lg/din;->c(FFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1, v2}, Lg/din;->c(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3, v4}, Lg/din;->c(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    sget-object v1, Lg/ebx;->c:Lg/cqw;

    :try_start_0
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v1, v3, v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    const-string v1, "The Path cannot loop back on itself."

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v0, p0, v1, p1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_0
    return-object v2
.end method

.method public static c(Landroid/util/JsonReader;Lg/cgf;FLg/cce;ZZ)Lg/flj;
    .locals 38

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v4, "to"

    const-string v6, "ti"

    const-string v8, "t"

    const-string v10, "s"

    const-string v12, "o"

    const-string v14, "i"

    const-string v15, "h"

    const-string v3, "e"

    const/16 v16, -0x1

    sget-object v17, Lg/ht;->a:Landroid/view/animation/LinearInterpolator;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    if-eqz p4, :cond_1e

    if-eqz p5, :cond_1e

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    move-object/from16 v7, v20

    move-object v9, v7

    move-object v11, v9

    move-object v13, v11

    move-object/from16 v24, v13

    move-object/from16 v26, v24

    move-object/from16 v29, v26

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    const/16 v21, 0x0

    const/16 v27, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_19

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v33

    sparse-switch v33, :sswitch_data_0

    :goto_1
    const/16 p4, -0x1

    goto :goto_2

    :sswitch_0
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 p4, 0x7

    goto :goto_2

    :sswitch_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 p4, 0x6

    goto :goto_2

    :sswitch_2
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/16 p4, 0x5

    goto :goto_2

    :sswitch_3
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/16 p4, 0x4

    goto :goto_2

    :sswitch_4
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/16 p4, 0x3

    goto :goto_2

    :sswitch_5
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/16 p4, 0x2

    goto :goto_2

    :sswitch_6
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    const/16 p4, 0x1

    goto :goto_2

    :sswitch_7
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    const/16 p4, 0x0

    :goto_2
    const-string v5, "y"

    move-object/from16 v33, v3

    const-string v3, "x"

    packed-switch p4, :pswitch_data_0

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    :goto_3
    move-object/from16 v3, v33

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v1}, Lg/cux;->af(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v31

    goto :goto_3

    :pswitch_1
    invoke-static {v0, v1}, Lg/cux;->af(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v32

    goto :goto_3

    :pswitch_2
    move-object/from16 v34, v14

    move-object/from16 v35, v15

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v3, v14

    move/from16 v27, v3

    :goto_4
    move-object/from16 v3, v33

    move-object/from16 v14, v34

    :goto_5
    move-object/from16 v15, v35

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v34, v14

    move-object/from16 v35, v15

    invoke-interface {v2, v0, v1}, Lg/cce;->an(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v24

    goto :goto_3

    :pswitch_4
    move-object/from16 v34, v14

    move-object/from16 v35, v15

    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v14

    sget-object v15, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v14, v15, :cond_f

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_e

    move-object/from16 v36, v12

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_b

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    :goto_7
    move-object/from16 v12, v36

    goto :goto_6

    :cond_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v12

    sget-object v13, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v12, v13, :cond_9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v12

    double-to-float v15, v12

    move v13, v15

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    move-object v12, v6

    move-object/from16 p4, v7

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v7

    if-ne v7, v13, :cond_a

    move v13, v6

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    move v15, v6

    goto :goto_8

    :cond_a
    move v13, v6

    move v15, v13

    :goto_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    move-object/from16 v7, p4

    move-object v6, v12

    goto :goto_7

    :cond_b
    move-object v12, v6

    move-object/from16 p4, v7

    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v7, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v6, v7, :cond_c

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v14, v6

    move-object/from16 v7, p4

    move-object v6, v12

    move v11, v14

    goto :goto_7

    :cond_c
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    move-object/from16 p5, v12

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v11

    double-to-float v11, v11

    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    if-ne v6, v7, :cond_d

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v6, v6

    move v14, v6

    goto :goto_9

    :cond_d
    move v14, v11

    :goto_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    move-object/from16 v7, p4

    move-object/from16 v6, p5

    goto :goto_7

    :cond_e
    move-object/from16 p5, v6

    move-object/from16 p4, v7

    move-object/from16 v36, v12

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v11, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    move-object v11, v3

    goto/16 :goto_4

    :cond_f
    move-object/from16 p5, v6

    move-object/from16 v36, v12

    invoke-static {v0, v1}, Lg/cux;->af(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v7

    goto/16 :goto_4

    :pswitch_5
    move-object/from16 p5, v6

    move-object/from16 p4, v7

    move-object/from16 v36, v12

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v7, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v6, v7, :cond_17

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_a
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_13

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_a

    :cond_10
    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v7

    sget-object v14, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v7, v14, :cond_11

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v14, v14

    move v7, v14

    goto :goto_a

    :cond_11
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    move-object v15, v8

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v8

    if-ne v8, v14, :cond_12

    move v14, v7

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    goto :goto_b

    :cond_12
    move v14, v7

    :goto_b
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    move v8, v14

    move v14, v7

    move v7, v8

    move-object v8, v15

    goto :goto_a

    :cond_13
    move-object v15, v8

    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v8, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v6, v8, :cond_14

    move-object/from16 v37, v5

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v12, v5

    move v6, v12

    :goto_c
    move-object v8, v15

    move-object/from16 v5, v37

    goto :goto_a

    :cond_14
    move-object/from16 v37, v5

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v6, v5

    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v5

    if-ne v5, v8, :cond_15

    move v8, v6

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    double-to-float v5, v5

    move v12, v5

    goto :goto_d

    :cond_15
    move v8, v6

    move v12, v8

    :goto_d
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    move v6, v8

    goto :goto_c

    :cond_16
    move-object v15, v8

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v12, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    move-object/from16 v7, p4

    move-object/from16 v6, p5

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    :goto_e
    move-object/from16 v3, v33

    move-object/from16 v14, v34

    move-object/from16 v15, v35

    move-object/from16 v12, v36

    goto/16 :goto_0

    :cond_17
    move-object v15, v8

    invoke-static {v0, v1}, Lg/cux;->af(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v9

    move-object/from16 v7, p4

    move-object/from16 v6, p5

    goto :goto_e

    :pswitch_6
    move-object/from16 p5, v6

    move-object/from16 p4, v7

    move-object/from16 v36, v12

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-object v15, v8

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_18

    const/16 v21, 0x1

    goto :goto_f

    :cond_18
    const/16 v21, 0x0

    :goto_f
    move-object/from16 v7, p4

    move-object/from16 v6, p5

    move-object v8, v15

    goto :goto_e

    :pswitch_7
    move-object/from16 p5, v6

    move-object/from16 p4, v7

    move-object/from16 v36, v12

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-object v15, v8

    invoke-interface {v2, v0, v1}, Lg/cce;->an(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v3, v33

    goto/16 :goto_5

    :cond_19
    move-object/from16 p4, v7

    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v21, :cond_1a

    move-object/from16 v26, v24

    goto :goto_10

    :cond_1a
    if-eqz p4, :cond_1c

    if-eqz v9, :cond_1c

    move-object/from16 v7, p4

    invoke-static {v7, v9}, Lg/ht;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v17

    :cond_1b
    :goto_10
    move-object/from16 v25, v26

    move/from16 v28, v27

    move-object/from16 v26, v17

    move-object/from16 v27, v20

    goto :goto_11

    :cond_1c
    if-eqz v11, :cond_1b

    if-eqz v13, :cond_1b

    move-object/from16 v3, v29

    if-eqz v3, :cond_1b

    move-object/from16 v5, v30

    if-eqz v5, :cond_1b

    invoke-static {v11, v3}, Lg/ht;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-static {v13, v5}, Lg/ht;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v1

    move-object/from16 v25, v26

    move/from16 v28, v27

    move-object/from16 v27, v1

    move-object/from16 v26, v20

    move-object/from16 v20, v0

    :goto_11
    if-eqz v20, :cond_1d

    if-eqz v27, :cond_1d

    new-instance v22, Lg/flj;

    move-object/from16 v23, p1

    move-object/from16 v26, v20

    invoke-direct/range {v22 .. v28}, Lg/flj;-><init>(Lg/cgf;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;F)V

    :goto_12
    move-object/from16 v0, v22

    move-object/from16 v1, v31

    goto :goto_13

    :cond_1d
    new-instance v22, Lg/flj;

    move/from16 v27, v28

    const/16 v28, 0x0

    move-object/from16 v23, p1

    invoke-direct/range {v22 .. v28}, Lg/flj;-><init>(Lg/cgf;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    goto :goto_12

    :goto_13
    iput-object v1, v0, Lg/flj;->f:Landroid/graphics/PointF;

    move-object/from16 v1, v32

    iput-object v1, v0, Lg/flj;->m:Landroid/graphics/PointF;

    return-object v0

    :cond_1e
    move-object/from16 v33, v3

    move-object/from16 p5, v6

    move-object/from16 v36, v12

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-object v15, v8

    if-eqz p4, :cond_2b

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    move-object/from16 v3, v20

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_14
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_28

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_1

    :goto_15
    move-object/from16 v13, p5

    :goto_16
    move-object/from16 v19, v4

    move-object/from16 v14, v36

    :goto_17
    const/4 v12, -0x1

    goto/16 :goto_19

    :sswitch_8
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    goto :goto_15

    :cond_1f
    move-object/from16 v13, p5

    move-object/from16 v19, v4

    move-object/from16 v14, v36

    const/4 v12, 0x7

    goto/16 :goto_19

    :sswitch_9
    move-object/from16 v13, p5

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_20

    goto :goto_18

    :cond_20
    move-object/from16 v19, v4

    move-object/from16 v14, v36

    const/4 v12, 0x6

    goto/16 :goto_19

    :sswitch_a
    move-object/from16 v13, p5

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_21

    goto :goto_18

    :cond_21
    move-object/from16 v19, v4

    move-object/from16 v14, v36

    const/4 v12, 0x5

    goto :goto_19

    :sswitch_b
    move-object/from16 v13, p5

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_22

    :goto_18
    goto :goto_16

    :cond_22
    move-object/from16 v19, v4

    move-object/from16 v14, v36

    const/4 v12, 0x4

    goto :goto_19

    :sswitch_c
    move-object/from16 v13, p5

    move-object/from16 v14, v36

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v19, v4

    if-nez v12, :cond_23

    goto :goto_17

    :cond_23
    const/4 v12, 0x3

    goto :goto_19

    :sswitch_d
    move-object/from16 v13, p5

    move-object/from16 v19, v4

    move-object/from16 v4, v34

    move-object/from16 v14, v36

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_24

    goto :goto_17

    :cond_24
    const/4 v12, 0x2

    goto :goto_19

    :sswitch_e
    move-object/from16 v13, p5

    move-object/from16 v19, v4

    move-object/from16 v4, v35

    move-object/from16 v14, v36

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_25

    goto :goto_17

    :cond_25
    const/4 v12, 0x1

    goto :goto_19

    :sswitch_f
    move-object/from16 v13, p5

    move-object/from16 v19, v4

    move-object/from16 v4, v33

    move-object/from16 v14, v36

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_26

    goto/16 :goto_17

    :cond_26
    const/4 v12, 0x0

    :goto_19
    const/high16 v4, 0x3f800000    # 1.0f

    packed-switch v12, :pswitch_data_1

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    :goto_1a
    move-object/from16 p5, v13

    move-object/from16 v36, v14

    move-object/from16 v4, v19

    goto/16 :goto_14

    :pswitch_8
    invoke-static {v0, v1}, Lg/cux;->af(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_1a

    :pswitch_9
    invoke-static {v0, v1}, Lg/cux;->af(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v9

    goto :goto_1a

    :pswitch_a
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    double-to-float v5, v4

    goto :goto_1a

    :pswitch_b
    invoke-interface {v2, v0, v1}, Lg/cce;->an(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v20

    goto :goto_1a

    :pswitch_c
    invoke-static {v0, v4}, Lg/cux;->af(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_1a

    :pswitch_d
    invoke-static {v0, v4}, Lg/cux;->af(Landroid/util/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v6

    goto :goto_1a

    :pswitch_e
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_27

    const/4 v11, 0x1

    goto :goto_1a

    :cond_27
    const/4 v11, 0x0

    goto :goto_1a

    :pswitch_f
    const/4 v12, 0x1

    invoke-interface {v2, v0, v1}, Lg/cce;->an(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1a

    :cond_28
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    if-eqz v11, :cond_29

    move-object/from16 v7, v20

    goto :goto_1b

    :cond_29
    if-eqz v3, :cond_2a

    if-eqz v6, :cond_2a

    invoke-static {v3, v6}, Lg/ht;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v17

    :cond_2a
    :goto_1b
    move-object v3, v7

    move-object/from16 v4, v17

    new-instance v0, Lg/flj;

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct/range {v0 .. v6}, Lg/flj;-><init>(Lg/cgf;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    iput-object v8, v0, Lg/flj;->f:Landroid/graphics/PointF;

    iput-object v9, v0, Lg/flj;->m:Landroid/graphics/PointF;

    return-object v0

    :cond_2b
    invoke-interface {v2, v0, v1}, Lg/cce;->an(Landroid/util/JsonReader;F)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lg/flj;

    invoke-direct {v1, v0}, Lg/flj;-><init>(Ljava/lang/Object;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_7
        0x68 -> :sswitch_6
        0x69 -> :sswitch_5
        0x6f -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0xe75 -> :sswitch_1
        0xe7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x65 -> :sswitch_f
        0x68 -> :sswitch_e
        0x69 -> :sswitch_d
        0x6f -> :sswitch_c
        0x73 -> :sswitch_b
        0x74 -> :sswitch_a
        0xe75 -> :sswitch_9
        0xe7b -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

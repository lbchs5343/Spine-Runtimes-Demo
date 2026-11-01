.class public final Lg/cyl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cce;
.implements Lg/hc;


# static fields
.field public static volatile c:Lg/cyl;

.field public static final d:Ljava/lang/Object;


# instance fields
.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/cyl;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lg/cyl;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/cyl;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xcf

    iput v0, p0, Lg/cyl;->e:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static f()Lg/cyl;
    .locals 3

    sget-object v0, Lg/cyl;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/cyl;->c:Lg/cyl;

    if-nez v1, :cond_0

    new-instance v1, Lg/cyl;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lg/cyl;-><init>(I)V

    sput-object v1, Lg/cyl;->c:Lg/cyl;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lg/cyl;->c:Lg/cyl;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "WM-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public an(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginArray()V

    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-ne v3, v8, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v9

    if-nez v3, :cond_3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v7, v0, Lg/cyl;->e:I

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endArray()V

    :cond_4
    iget v2, v0, Lg/cyl;->e:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/2addr v2, v8

    iput v2, v0, Lg/cyl;->e:I

    :cond_5
    iget v2, v0, Lg/cyl;->e:I

    new-array v3, v2, [F

    new-array v9, v2, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    iget v13, v0, Lg/cyl;->e:I

    mul-int/lit8 v13, v13, 0x4

    if-ge v10, v13, :cond_b

    div-int/lit8 v13, v10, 0x4

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    float-to-double v14, v14

    const/16 p2, 0x0

    rem-int/lit8 v5, v10, 0x4

    if-eqz v5, :cond_9

    const-wide v16, 0x406fe00000000000L    # 255.0

    if-eq v5, v4, :cond_8

    if-eq v5, v7, :cond_7

    if-eq v5, v6, :cond_6

    goto :goto_3

    :cond_6
    mul-double v14, v14, v16

    double-to-int v5, v14

    const/16 v14, 0xff

    invoke-static {v14, v11, v12, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v9, v13

    goto :goto_3

    :cond_7
    mul-double v14, v14, v16

    double-to-int v12, v14

    goto :goto_3

    :cond_8
    mul-double v14, v14, v16

    double-to-int v11, v14

    goto :goto_3

    :cond_9
    if-lez v13, :cond_a

    add-int/lit8 v5, v13, -0x1

    aget v5, v3, v5

    double-to-float v4, v14

    cmpl-float v5, v5, v4

    if-ltz v5, :cond_a

    const v5, 0x3c23d70a    # 0.01f

    add-float/2addr v4, v5

    aput v4, v3, v13

    goto :goto_3

    :cond_a
    double-to-float v4, v14

    aput v4, v3, v13

    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_b
    const/16 p2, 0x0

    new-instance v4, Lg/fns;

    invoke-direct {v4, v3, v9}, Lg/fns;-><init>([F[I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v5, v13, :cond_c

    return-object v4

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v13

    div-int/2addr v5, v7

    new-array v6, v5, [F

    new-array v8, v5, [F

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v13, v11, :cond_e

    rem-int/lit8 v11, v13, 0x2

    if-nez v11, :cond_d

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v6, v10

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_e
    iget-object v1, v4, Lg/fns;->a:[F

    array-length v4, v1

    if-nez v4, :cond_f

    move-object v1, v6

    goto :goto_b

    :cond_f
    if-nez v5, :cond_10

    goto :goto_b

    :cond_10
    array-length v4, v1

    add-int/2addr v4, v5

    new-array v10, v4, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_6
    if-ge v11, v4, :cond_17

    array-length v15, v1

    const/high16 v17, 0x7fc00000    # Float.NaN

    if-ge v13, v15, :cond_11

    aget v15, v1, v13

    goto :goto_7

    :cond_11
    const/high16 v15, 0x7fc00000    # Float.NaN

    :goto_7
    if-ge v14, v5, :cond_12

    aget v17, v6, v14

    :cond_12
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-nez v18, :cond_16

    cmpg-float v18, v15, v17

    if-gez v18, :cond_13

    goto :goto_9

    :cond_13
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v18

    if-nez v18, :cond_15

    cmpg-float v18, v17, v15

    if-gez v18, :cond_14

    goto :goto_8

    :cond_14
    aput v15, v10, v11

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_15
    :goto_8
    aput v17, v10, v11

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_16
    :goto_9
    aput v15, v10, v11

    add-int/lit8 v13, v13, 0x1

    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_17
    if-nez v12, :cond_18

    move-object v1, v10

    goto :goto_b

    :cond_18
    sub-int/2addr v4, v12

    invoke-static {v10, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    :goto_b
    array-length v4, v1

    new-array v10, v4, [I

    const/4 v11, 0x0

    :goto_c
    if-ge v11, v4, :cond_27

    aget v12, v1, v11

    invoke-static {v3, v12}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v13

    invoke-static {v6, v12}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v14

    const-string v15, "Unreachable code."

    const/high16 v17, 0x437f0000    # 255.0f

    if-ltz v13, :cond_20

    if-lez v14, :cond_19

    goto/16 :goto_13

    :cond_19
    aget v13, v9, v13

    if-lt v5, v7, :cond_1f

    aget v14, v6, p2

    cmpg-float v14, v12, v14

    if-gtz v14, :cond_1a

    goto :goto_11

    :cond_1a
    const/4 v14, 0x1

    :goto_d
    if-ge v14, v5, :cond_1e

    aget v18, v6, v14

    cmpg-float v19, v18, v12

    if-gez v19, :cond_1c

    add-int/lit8 v7, v5, -0x1

    if-ne v14, v7, :cond_1b

    goto :goto_e

    :cond_1b
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x2

    goto :goto_d

    :cond_1c
    :goto_e
    if-gtz v19, :cond_1d

    aget v7, v8, v14

    :goto_f
    mul-float v7, v7, v17

    float-to-int v7, v7

    goto :goto_10

    :cond_1d
    add-int/lit8 v7, v14, -0x1

    aget v15, v6, v7

    sub-float v18, v18, v15

    sub-float/2addr v12, v15

    div-float v12, v12, v18

    aget v7, v8, v7

    aget v14, v8, v14

    invoke-static {v7, v14, v12}, Lg/din;->d(FFF)F

    move-result v7

    goto :goto_f

    :goto_10
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v14

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v7, v12, v14, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    goto :goto_12

    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    :goto_11
    aget v7, v8, p2

    mul-float v7, v7, v17

    float-to-int v7, v7

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v14

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v7, v12, v14, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    :goto_12
    aput v7, v10, v11

    move/from16 v17, v2

    goto :goto_18

    :cond_20
    :goto_13
    if-gez v14, :cond_21

    add-int/lit8 v14, v14, 0x1

    neg-int v14, v14

    :cond_21
    aget v7, v8, v14

    const/4 v13, 0x2

    if-lt v2, v13, :cond_22

    aget v14, v3, p2

    cmpl-float v14, v12, v14

    if-nez v14, :cond_23

    :cond_22
    move/from16 v17, v2

    goto :goto_16

    :cond_23
    const/4 v14, 0x1

    :goto_14
    if-ge v14, v2, :cond_26

    aget v18, v3, v14

    cmpg-float v19, v18, v12

    if-gez v19, :cond_25

    add-int/lit8 v13, v2, -0x1

    if-ne v14, v13, :cond_24

    goto :goto_15

    :cond_24
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x2

    goto :goto_14

    :cond_25
    :goto_15
    add-int/lit8 v13, v14, -0x1

    aget v15, v3, v13

    sub-float v18, v18, v15

    sub-float/2addr v12, v15

    div-float v12, v12, v18

    aget v14, v9, v14

    aget v13, v9, v13

    mul-float v7, v7, v17

    float-to-int v7, v7

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v15

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v15, v12, v0}, Lg/aky;->g(IFI)I

    move-result v0

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v15

    move/from16 v17, v2

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v15, v12, v2}, Lg/aky;->g(IFI)I

    move-result v2

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    invoke-static {v13, v12, v14}, Lg/aky;->g(IFI)I

    move-result v12

    invoke-static {v7, v0, v2, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_17

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_16
    aget v0, v9, p2

    :goto_17
    aput v0, v10, v11

    :goto_18
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    const/4 v7, 0x2

    goto/16 :goto_c

    :cond_27
    new-instance v0, Lg/fns;

    invoke-direct {v0, v1, v10}, Lg/fns;-><init>([F[I)V

    return-object v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    iget p1, p0, Lg/cyl;->e:I

    return p1
.end method

.method public h()I
    .locals 2

    iget v0, p0, Lg/cyl;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0xf

    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    return v0

    :cond_2
    const/16 v0, 0x10

    return v0

    :cond_3
    const/16 v0, 0xc

    return v0

    :cond_4
    const/16 v0, 0xb

    return v0

    :cond_5
    const/16 v0, 0xa

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lg/cyl;->e:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lg/cyl;->e:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

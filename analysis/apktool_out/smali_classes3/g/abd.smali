.class public final Lg/abd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:[S

.field public final e:F

.field public f:[S

.field public final g:F

.field public final h:I

.field public i:I

.field public j:I

.field public final k:I

.field public l:I

.field public m:I

.field public n:I

.field public final o:[S

.field public final p:I

.field public q:[S

.field public r:I

.field public s:I

.field public final t:F

.field public final u:I

.field public v:I


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/abd;->h:I

    iput p2, p0, Lg/abd;->p:I

    iput p3, p0, Lg/abd;->t:F

    iput p4, p0, Lg/abd;->e:F

    int-to-float p3, p1

    int-to-float p4, p5

    div-float/2addr p3, p4

    iput p3, p0, Lg/abd;->g:F

    div-int/lit16 p3, p1, 0x190

    iput p3, p0, Lg/abd;->k:I

    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Lg/abd;->u:I

    add-int/2addr p1, p1

    iput p1, p0, Lg/abd;->a:I

    new-array p3, p1, [S

    iput-object p3, p0, Lg/abd;->o:[S

    mul-int p1, p1, p2

    new-array p2, p1, [S

    iput-object p2, p0, Lg/abd;->q:[S

    new-array p2, p1, [S

    iput-object p2, p0, Lg/abd;->f:[S

    new-array p1, p1, [S

    iput-object p1, p0, Lg/abd;->d:[S

    return-void
.end method

.method public static w(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int v2, p3, p1

    mul-int v3, p7, p1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    add-int/2addr v3, v1

    add-int/2addr v2, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p0, :cond_0

    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int v7, v7, v6

    aget-short v6, p6, v3

    mul-int v6, v6, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final aa([SII)V
    .locals 4

    iget-object v0, p0, Lg/abd;->f:[S

    iget v1, p0, Lg/abd;->n:I

    invoke-virtual {p0, v0, v1, p3}, Lg/abd;->z([SII)[S

    move-result-object v0

    iput-object v0, p0, Lg/abd;->f:[S

    iget v1, p0, Lg/abd;->n:I

    iget v2, p0, Lg/abd;->p:I

    mul-int v1, v1, v2

    mul-int v3, p3, v2

    mul-int p2, p2, v2

    invoke-static {p1, p2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lg/abd;->n:I

    add-int/2addr p1, p3

    iput p1, p0, Lg/abd;->n:I

    return-void
.end method

.method public final ab([SII)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lg/abd;->a:I

    div-int/2addr v2, p3

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lg/abd;->p:I

    mul-int v5, v4, p3

    if-ge v2, v5, :cond_0

    mul-int v4, v4, p2

    mul-int v5, v5, v1

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    aget-short v4, p1, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    div-int/2addr v3, v5

    iget-object v2, p0, Lg/abd;->o:[S

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final x()V
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lg/abd;->t:F

    iget v2, v0, Lg/abd;->e:F

    div-float/2addr v1, v2

    float-to-double v3, v1

    const-wide v5, 0x3ff0000a7c5ac472L    # 1.00001

    iget v8, v0, Lg/abd;->h:I

    iget v9, v0, Lg/abd;->p:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    cmpl-double v12, v3, v5

    iget v5, v0, Lg/abd;->n:I

    if-gtz v12, :cond_1

    const-wide v12, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v6, v3, v12

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lg/abd;->q:[S

    iget v3, v0, Lg/abd;->b:I

    invoke-virtual {v0, v1, v10, v3}, Lg/abd;->aa([SII)V

    iput v10, v0, Lg/abd;->b:I

    :goto_0
    move/from16 v24, v2

    const/high16 v21, 0x3f800000    # 1.0f

    goto/16 :goto_c

    :cond_1
    :goto_1
    iget v6, v0, Lg/abd;->b:I

    iget v12, v0, Lg/abd;->a:I

    if-ge v6, v12, :cond_2

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    :goto_2
    iget v14, v0, Lg/abd;->v:I

    if-lez v14, :cond_3

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget-object v15, v0, Lg/abd;->q:[S

    invoke-virtual {v0, v15, v13, v14}, Lg/abd;->aa([SII)V

    iget v15, v0, Lg/abd;->v:I

    sub-int/2addr v15, v14

    iput v15, v0, Lg/abd;->v:I

    add-int/2addr v13, v14

    move/from16 v23, v1

    move/from16 v24, v2

    move-wide/from16 v25, v3

    const/high16 v21, 0x3f800000    # 1.0f

    goto/16 :goto_b

    :cond_3
    iget-object v14, v0, Lg/abd;->q:[S

    const/16 v15, 0xfa0

    if-le v8, v15, :cond_4

    div-int/lit16 v15, v8, 0xfa0

    :goto_3
    const/high16 v21, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const/4 v15, 0x1

    goto :goto_3

    :goto_4
    iget v7, v0, Lg/abd;->u:I

    iget v10, v0, Lg/abd;->k:I

    if-ne v9, v11, :cond_5

    if-ne v15, v11, :cond_5

    invoke-virtual {v0, v14, v13, v10, v7}, Lg/abd;->y([SIII)I

    move-result v7

    move/from16 v23, v1

    move/from16 v24, v2

    move-wide/from16 v25, v3

    goto :goto_7

    :cond_5
    invoke-virtual {v0, v14, v13, v15}, Lg/abd;->ab([SII)V

    div-int v11, v7, v15

    move/from16 v23, v1

    div-int v1, v10, v15

    move/from16 v24, v2

    iget-object v2, v0, Lg/abd;->o:[S

    move-wide/from16 v25, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v11}, Lg/abd;->y([SIII)I

    move-result v1

    const/4 v3, 0x1

    if-eq v15, v3, :cond_9

    mul-int v1, v1, v15

    mul-int/lit8 v15, v15, 0x4

    sub-int v3, v1, v15

    if-lt v3, v10, :cond_6

    move v10, v3

    :cond_6
    add-int/2addr v1, v15

    if-le v1, v7, :cond_7

    :goto_5
    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    move v7, v1

    goto :goto_5

    :goto_6
    if-ne v9, v3, :cond_8

    invoke-virtual {v0, v14, v13, v10, v7}, Lg/abd;->y([SIII)I

    move-result v7

    goto :goto_7

    :cond_8
    invoke-virtual {v0, v14, v13, v3}, Lg/abd;->ab([SII)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v10, v7}, Lg/abd;->y([SIII)I

    move-result v7

    goto :goto_7

    :cond_9
    move v7, v1

    :goto_7
    iget v1, v0, Lg/abd;->i:I

    iget v2, v0, Lg/abd;->j:I

    if-eqz v1, :cond_c

    iget v3, v0, Lg/abd;->l:I

    if-nez v3, :cond_a

    goto :goto_8

    :cond_a
    mul-int/lit8 v4, v1, 0x3

    if-le v2, v4, :cond_b

    goto :goto_8

    :cond_b
    add-int v2, v1, v1

    iget v4, v0, Lg/abd;->s:I

    mul-int/lit8 v4, v4, 0x3

    if-gt v2, v4, :cond_d

    :cond_c
    :goto_8
    move v3, v7

    :cond_d
    add-int v18, v13, v3

    iput v1, v0, Lg/abd;->s:I

    iput v7, v0, Lg/abd;->l:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-double v7, v25, v1

    int-to-float v1, v3

    if-lez v7, :cond_f

    iget-object v2, v0, Lg/abd;->q:[S

    add-float v4, v23, v4

    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v10, v23, v7

    if-ltz v10, :cond_e

    div-float/2addr v1, v4

    float-to-int v1, v1

    goto :goto_9

    :cond_e
    sub-float v7, v7, v23

    mul-float v7, v7, v1

    div-float/2addr v7, v4

    float-to-int v1, v7

    iput v1, v0, Lg/abd;->v:I

    move v1, v3

    :goto_9
    iget-object v4, v0, Lg/abd;->f:[S

    iget v7, v0, Lg/abd;->n:I

    invoke-virtual {v0, v4, v7, v1}, Lg/abd;->z([SII)[S

    move-result-object v15

    iput-object v15, v0, Lg/abd;->f:[S

    iget v14, v0, Lg/abd;->p:I

    iget v4, v0, Lg/abd;->n:I

    move-object/from16 v19, v2

    move-object/from16 v17, v2

    move/from16 v16, v4

    move/from16 v20, v18

    move/from16 v18, v13

    move v13, v1

    invoke-static/range {v13 .. v20}, Lg/abd;->w(II[SI[SI[SI)V

    iget v1, v0, Lg/abd;->n:I

    add-int/2addr v1, v13

    iput v1, v0, Lg/abd;->n:I

    add-int/2addr v3, v13

    add-int v3, v3, v18

    move v13, v3

    goto :goto_b

    :cond_f
    move/from16 v20, v18

    move/from16 v18, v13

    iget-object v2, v0, Lg/abd;->q:[S

    sub-float v7, v21, v23

    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v10, v23, v10

    if-gez v10, :cond_10

    mul-float v1, v1, v23

    div-float/2addr v1, v7

    float-to-int v1, v1

    move v13, v1

    goto :goto_a

    :cond_10
    add-float v10, v23, v23

    add-float/2addr v10, v4

    mul-float v10, v10, v1

    div-float/2addr v10, v7

    float-to-int v1, v10

    iput v1, v0, Lg/abd;->v:I

    move v13, v3

    :goto_a
    iget-object v1, v0, Lg/abd;->f:[S

    iget v4, v0, Lg/abd;->n:I

    add-int v7, v3, v13

    invoke-virtual {v0, v1, v4, v7}, Lg/abd;->z([SII)[S

    move-result-object v1

    iput-object v1, v0, Lg/abd;->f:[S

    mul-int v4, v18, v9

    iget v10, v0, Lg/abd;->n:I

    mul-int v10, v10, v9

    mul-int v11, v3, v9

    invoke-static {v2, v4, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v15, v0, Lg/abd;->f:[S

    iget v1, v0, Lg/abd;->n:I

    add-int v16, v1, v3

    iget v14, v0, Lg/abd;->p:I

    move-object/from16 v19, v2

    move/from16 v17, v20

    move/from16 v20, v18

    move/from16 v18, v17

    move-object/from16 v17, v2

    invoke-static/range {v13 .. v20}, Lg/abd;->w(II[SI[SI[SI)V

    move/from16 v18, v20

    iget v1, v0, Lg/abd;->n:I

    add-int/2addr v1, v7

    iput v1, v0, Lg/abd;->n:I

    add-int v13, v18, v13

    :goto_b
    add-int v1, v13, v12

    if-le v1, v6, :cond_1a

    iget v1, v0, Lg/abd;->b:I

    sub-int/2addr v1, v13

    iget-object v2, v0, Lg/abd;->q:[S

    mul-int v13, v13, v9

    mul-int v3, v1, v9

    const/4 v4, 0x0

    invoke-static {v2, v13, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Lg/abd;->b:I

    :goto_c
    iget v1, v0, Lg/abd;->g:F

    mul-float v1, v1, v24

    cmpl-float v2, v1, v21

    if-eqz v2, :cond_19

    iget v2, v0, Lg/abd;->n:I

    if-ne v2, v5, :cond_11

    goto/16 :goto_13

    :cond_11
    int-to-float v2, v8

    div-float/2addr v2, v1

    float-to-int v1, v2

    :goto_d
    const/16 v2, 0x4000

    if-gt v1, v2, :cond_12

    if-le v8, v2, :cond_13

    :cond_12
    const/4 v7, 0x0

    const/16 v22, 0x1

    goto/16 :goto_12

    :cond_13
    iget v2, v0, Lg/abd;->n:I

    sub-int/2addr v2, v5

    iget-object v3, v0, Lg/abd;->d:[S

    iget v4, v0, Lg/abd;->c:I

    invoke-virtual {v0, v3, v4, v2}, Lg/abd;->z([SII)[S

    move-result-object v3

    iput-object v3, v0, Lg/abd;->d:[S

    iget-object v4, v0, Lg/abd;->f:[S

    mul-int v6, v5, v9

    iget v7, v0, Lg/abd;->c:I

    mul-int v7, v7, v9

    mul-int v10, v2, v9

    invoke-static {v4, v6, v3, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, v0, Lg/abd;->n:I

    iget v3, v0, Lg/abd;->c:I

    add-int/2addr v3, v2

    iput v3, v0, Lg/abd;->c:I

    const/4 v3, 0x0

    :goto_e
    iget v2, v0, Lg/abd;->c:I

    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_18

    :goto_f
    iget v2, v0, Lg/abd;->m:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    mul-int v5, v2, v1

    iget v6, v0, Lg/abd;->r:I

    mul-int v7, v6, v8

    if-le v5, v7, :cond_15

    iget-object v2, v0, Lg/abd;->f:[S

    iget v5, v0, Lg/abd;->n:I

    invoke-virtual {v0, v2, v5, v4}, Lg/abd;->z([SII)[S

    move-result-object v2

    iput-object v2, v0, Lg/abd;->f:[S

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v9, :cond_14

    iget-object v4, v0, Lg/abd;->f:[S

    iget v5, v0, Lg/abd;->n:I

    mul-int v5, v5, v9

    iget-object v6, v0, Lg/abd;->d:[S

    mul-int v7, v3, v9

    add-int/2addr v7, v2

    aget-short v10, v6, v7

    add-int/2addr v7, v9

    aget-short v6, v6, v7

    iget v7, v0, Lg/abd;->r:I

    mul-int v7, v7, v8

    iget v11, v0, Lg/abd;->m:I

    mul-int v12, v11, v1

    const/16 v22, 0x1

    add-int/lit8 v11, v11, 0x1

    mul-int v11, v11, v1

    sub-int v7, v11, v7

    mul-int v10, v10, v7

    sub-int/2addr v11, v12

    sub-int v7, v11, v7

    mul-int v7, v7, v6

    add-int/2addr v7, v10

    div-int/2addr v7, v11

    int-to-short v6, v7

    add-int/2addr v5, v2

    aput-short v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_14
    iget v2, v0, Lg/abd;->r:I

    const/16 v22, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lg/abd;->r:I

    iget v2, v0, Lg/abd;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lg/abd;->n:I

    goto :goto_f

    :cond_15
    const/16 v22, 0x1

    iput v2, v0, Lg/abd;->m:I

    const/4 v7, 0x0

    if-ne v2, v8, :cond_17

    iput v7, v0, Lg/abd;->m:I

    if-ne v6, v1, :cond_16

    const/4 v2, 0x1

    goto :goto_11

    :cond_16
    const/4 v2, 0x0

    :goto_11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iput v7, v0, Lg/abd;->r:I

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_18
    const/4 v7, 0x0

    if-eqz v4, :cond_19

    iget-object v1, v0, Lg/abd;->d:[S

    sub-int/2addr v2, v4

    mul-int v3, v4, v9

    mul-int v2, v2, v9

    invoke-static {v1, v3, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lg/abd;->c:I

    sub-int/2addr v1, v4

    iput v1, v0, Lg/abd;->c:I

    return-void

    :goto_12
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v8, v8, 0x2

    goto/16 :goto_d

    :cond_19
    :goto_13
    return-void

    :cond_1a
    const/16 v22, 0x1

    move/from16 v1, v23

    move/from16 v2, v24

    move-wide/from16 v3, v25

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_2
.end method

.method public final y([SIII)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt p3, p4, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, p3, :cond_0

    iget v7, p0, Lg/abd;->p:I

    mul-int v7, v7, p2

    add-int v8, v7, v5

    aget-short v8, p1, v8

    add-int/2addr v7, p3

    add-int/2addr v7, v5

    aget-short v7, p1, v7

    sub-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    mul-int v5, v6, v3

    mul-int v7, v1, p3

    if-ge v5, v7, :cond_1

    move v1, v6

    :cond_1
    if-ge v5, v7, :cond_2

    move v3, p3

    :cond_2
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_3

    move v4, v6

    :cond_3
    if-le v5, v7, :cond_4

    move v2, p3

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    div-int/2addr v1, v3

    iput v1, p0, Lg/abd;->i:I

    div-int/2addr v4, v2

    iput v4, p0, Lg/abd;->j:I

    return v3
.end method

.method public final z([SII)[S
    .locals 2

    array-length v0, p1

    iget v1, p0, Lg/abd;->p:I

    div-int/2addr v0, v1

    add-int/2addr p2, p3

    if-gt p2, v0, :cond_0

    return-object p1

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    return-object p1
.end method

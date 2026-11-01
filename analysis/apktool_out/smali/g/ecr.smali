.class public final Lg/ecr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/duf;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final c:Lg/duf;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lg/duf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ecr;->a:Ljava/lang/Class;

    iput-object p2, p0, Lg/ecr;->c:Lg/duf;

    return-void
.end method


# virtual methods
.method public final b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    iget-object v3, v2, Lg/cnu;->j:Lg/cxa;

    const-string v4, "[]"

    if-nez v0, :cond_1

    iget v0, v3, Lg/cxa;->k:I

    sget-object v2, Lg/gar;->WriteNullListAsEmpty:Lg/gar;

    iget v2, v2, Lg/gar;->mask:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {v3, v4}, Lg/cxa;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Lg/cxa;->o()V

    return-void

    :cond_1
    instance-of v5, v0, [Z

    const/16 v6, 0x5d

    const/16 v7, 0x2c

    const/16 v8, 0x5b

    const/4 v9, 0x0

    if-eqz v5, :cond_5

    check-cast v0, [Z

    invoke-virtual {v3, v8}, Lg/cxa;->write(I)V

    :goto_0
    array-length v2, v0

    if-ge v9, v2, :cond_4

    if-eqz v9, :cond_2

    invoke-virtual {v3, v7}, Lg/cxa;->write(I)V

    :cond_2
    aget-boolean v2, v0, v9

    if-eqz v2, :cond_3

    const-string v2, "true"

    goto :goto_1

    :cond_3
    const-string v2, "false"

    :goto_1
    invoke-virtual {v3, v2}, Lg/cxa;->write(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v6}, Lg/cxa;->write(I)V

    return-void

    :cond_5
    instance-of v5, v0, [B

    const/4 v10, 0x1

    if-eqz v5, :cond_f

    check-cast v0, [B

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v0

    iget v4, v3, Lg/cxa;->k:I

    sget-object v5, Lg/gar;->UseSingleQuotes:Lg/gar;

    iget v5, v5, Lg/gar;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_7

    const/16 v5, 0x27

    goto :goto_3

    :cond_7
    const/16 v5, 0x22

    :goto_3
    if-nez v2, :cond_9

    if-eqz v4, :cond_8

    const-string v0, "\'\'"

    goto :goto_4

    :cond_8
    const-string v0, "\"\""

    :goto_4
    invoke-virtual {v3, v0}, Lg/cxa;->write(Ljava/lang/String;)V

    return-void

    :cond_9
    sget-object v4, Lg/fzg;->a:[C

    div-int/lit8 v6, v2, 0x3

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v7, v2, -0x1

    div-int/lit8 v8, v7, 0x3

    add-int/2addr v8, v10

    const/4 v11, 0x2

    shl-int/2addr v8, v11

    iget v12, v3, Lg/cxa;->m:I

    add-int/2addr v8, v12

    add-int/lit8 v13, v8, 0x2

    iget-object v14, v3, Lg/cxa;->l:[C

    array-length v14, v14

    if-le v13, v14, :cond_a

    invoke-virtual {v3, v13}, Lg/cxa;->u(I)V

    :cond_a
    iput v13, v3, Lg/cxa;->m:I

    iget-object v13, v3, Lg/cxa;->l:[C

    add-int/lit8 v14, v12, 0x1

    aput-char v5, v13, v12

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v6, :cond_b

    add-int/lit8 v13, v12, 0x1

    aget-byte v15, v0, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, v12, 0x2

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v15

    add-int/lit8 v12, v12, 0x3

    aget-byte v15, v0, v16

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v13, v15

    iget-object v15, v3, Lg/cxa;->l:[C

    add-int/lit8 v16, v14, 0x1

    ushr-int/lit8 v17, v13, 0x12

    and-int/lit8 v17, v17, 0x3f

    aget-char v17, v4, v17

    aput-char v17, v15, v14

    add-int/lit8 v17, v14, 0x2

    ushr-int/lit8 v18, v13, 0xc

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v4, v18

    aput-char v18, v15, v16

    add-int/lit8 v16, v14, 0x3

    ushr-int/lit8 v18, v13, 0x6

    and-int/lit8 v18, v18, 0x3f

    aget-char v18, v4, v18

    aput-char v18, v15, v17

    add-int/lit8 v14, v14, 0x4

    and-int/lit8 v13, v13, 0x3f

    aget-char v13, v4, v13

    aput-char v13, v15, v16

    goto :goto_5

    :cond_b
    sub-int/2addr v2, v6

    if-lez v2, :cond_e

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0xa

    if-ne v2, v11, :cond_c

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v9, v0, 0x2

    :cond_c
    or-int v0, v6, v9

    iget-object v6, v3, Lg/cxa;->l:[C

    add-int/lit8 v7, v8, -0x3

    shr-int/lit8 v9, v0, 0xc

    aget-char v9, v4, v9

    aput-char v9, v6, v7

    add-int/lit8 v7, v8, -0x2

    ushr-int/lit8 v9, v0, 0x6

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v4, v9

    aput-char v9, v6, v7

    add-int/lit8 v7, v8, -0x1

    const/16 v9, 0x3d

    if-ne v2, v11, :cond_d

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v4, v0

    goto :goto_6

    :cond_d
    const/16 v0, 0x3d

    :goto_6
    aput-char v0, v6, v7

    aput-char v9, v6, v8

    :cond_e
    iget-object v0, v3, Lg/cxa;->l:[C

    add-int/2addr v8, v10

    aput-char v5, v0, v8

    return-void

    :cond_f
    instance-of v5, v0, [C

    if-eqz v5, :cond_10

    check-cast v0, [C

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v2}, Lg/cxa;->t(Ljava/lang/String;)V

    return-void

    :cond_10
    instance-of v5, v0, [D

    const/4 v11, -0x1

    if-eqz v5, :cond_15

    check-cast v0, [D

    array-length v2, v0

    sub-int/2addr v2, v10

    if-ne v2, v11, :cond_11

    invoke-virtual {v3, v4}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    return-void

    :cond_11
    invoke-virtual {v3, v8}, Lg/cxa;->write(I)V

    :goto_7
    if-ge v9, v2, :cond_13

    aget-wide v4, v0, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v3}, Lg/cxa;->o()V

    goto :goto_8

    :cond_12
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    :goto_8
    invoke-virtual {v3, v7}, Lg/cxa;->write(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_13
    aget-wide v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v3}, Lg/cxa;->o()V

    goto :goto_9

    :cond_14
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    :goto_9
    invoke-virtual {v3, v6}, Lg/cxa;->write(I)V

    return-void

    :cond_15
    instance-of v5, v0, [F

    if-eqz v5, :cond_1a

    check-cast v0, [F

    array-length v2, v0

    sub-int/2addr v2, v10

    if-ne v2, v11, :cond_16

    invoke-virtual {v3, v4}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    return-void

    :cond_16
    invoke-virtual {v3, v8}, Lg/cxa;->write(I)V

    :goto_a
    if-ge v9, v2, :cond_18

    aget v4, v0, v9

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v3}, Lg/cxa;->o()V

    goto :goto_b

    :cond_17
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    :goto_b
    invoke-virtual {v3, v7}, Lg/cxa;->write(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_18
    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v3}, Lg/cxa;->o()V

    goto :goto_c

    :cond_19
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    :goto_c
    invoke-virtual {v3, v6}, Lg/cxa;->write(I)V

    return-void

    :cond_1a
    instance-of v4, v0, [I

    if-eqz v4, :cond_1d

    check-cast v0, [I

    invoke-virtual {v3, v8}, Lg/cxa;->write(I)V

    :goto_d
    array-length v2, v0

    if-ge v9, v2, :cond_1c

    if-eqz v9, :cond_1b

    invoke-virtual {v3, v7}, Lg/cxa;->write(I)V

    :cond_1b
    aget v2, v0, v9

    invoke-virtual {v3, v2}, Lg/cxa;->q(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_1c
    invoke-virtual {v3, v6}, Lg/cxa;->write(I)V

    return-void

    :cond_1d
    instance-of v4, v0, [J

    if-eqz v4, :cond_20

    check-cast v0, [J

    invoke-virtual {v3, v8}, Lg/cxa;->write(I)V

    :goto_e
    array-length v2, v0

    if-ge v9, v2, :cond_1f

    if-eqz v9, :cond_1e

    invoke-virtual {v3, v7}, Lg/cxa;->write(I)V

    :cond_1e
    aget-wide v4, v0, v9

    invoke-virtual {v3, v4, v5}, Lg/cxa;->w(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_1f
    invoke-virtual {v3, v6}, Lg/cxa;->write(I)V

    return-void

    :cond_20
    instance-of v4, v0, [S

    if-eqz v4, :cond_23

    check-cast v0, [S

    invoke-virtual {v3, v8}, Lg/cxa;->write(I)V

    :goto_f
    array-length v2, v0

    if-ge v9, v2, :cond_22

    if-eqz v9, :cond_21

    invoke-virtual {v3, v7}, Lg/cxa;->write(I)V

    :cond_21
    aget-short v2, v0, v9

    invoke-virtual {v3, v2}, Lg/cxa;->q(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_22
    invoke-virtual {v3, v6}, Lg/cxa;->write(I)V

    return-void

    :cond_23
    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    iget-object v10, v2, Lg/cnu;->b:Lg/aca;

    move-object/from16 v11, p3

    invoke-virtual {v2, v10, v0, v11}, Lg/cnu;->q(Lg/aca;Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v3, v8}, Lg/cxa;->write(I)V

    :goto_10
    if-ge v9, v5, :cond_27

    if-eqz v9, :cond_24

    invoke-virtual {v3, v7}, Lg/cxa;->write(I)V

    goto :goto_11

    :catchall_0
    move-exception v0

    goto :goto_13

    :cond_24
    :goto_11
    aget-object v0, v4, v9

    if-nez v0, :cond_25

    const-string v0, "null"

    invoke-virtual {v3, v0}, Lg/cxa;->s(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    iget-object v11, v1, Lg/ecr;->a:Ljava/lang/Class;

    const/4 v12, 0x0

    if-ne v8, v11, :cond_26

    iget-object v8, v1, Lg/ecr;->c:Lg/duf;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v2, v0, v11, v12}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_12

    :cond_26
    iget-object v8, v2, Lg/cnu;->f:Lg/cbq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v8, v11}, Lg/cbq;->c(Ljava/lang/Class;)Lg/duf;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v2, v0, v11, v12}, Lg/duf;->b(Lg/cnu;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    :goto_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_27
    invoke-virtual {v3, v6}, Lg/cxa;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v10, v2, Lg/cnu;->b:Lg/aca;

    return-void

    :goto_13
    iput-object v10, v2, Lg/cnu;->b:Lg/aca;

    throw v0
.end method

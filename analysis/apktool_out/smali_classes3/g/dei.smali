.class public final Lg/dei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dxm;


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:[I


# instance fields
.field public final c:I

.field public final d:I

.field public final e:Lg/bsv;

.field public final f:[I

.field public final g:[I

.field public final h:Lg/cuf;

.field public final i:[Ljava/lang/Object;

.field public final j:I

.field public final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lg/dei;->b:[I

    invoke-static {}, Lg/euh;->s()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lg/dei;->a:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILg/bsv;[IIILg/cuf;Lg/gpu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dei;->f:[I

    iput-object p2, p0, Lg/dei;->i:[Ljava/lang/Object;

    iput p3, p0, Lg/dei;->j:I

    iput p4, p0, Lg/dei;->d:I

    iput-object p6, p0, Lg/dei;->g:[I

    iput p7, p0, Lg/dei;->k:I

    iput p8, p0, Lg/dei;->c:I

    iput-object p9, p0, Lg/dei;->h:Lg/cuf;

    iput-object p5, p0, Lg/dei;->e:Lg/bsv;

    return-void
.end method

.method public static l(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static m(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " for "

    const-string v4, " not found. Known fields are "

    const-string v5, "Field "

    invoke-static {v5, p1, v3, p0, v4}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static o(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static p(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lg/fsu;

    if-eqz v0, :cond_1

    check-cast p0, Lg/fsu;

    invoke-virtual {p0}, Lg/fsu;->v()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static q(Lg/hcu;Lg/cuf;Lg/gpu;)Lg/dei;
    .locals 35

    move-object/from16 v0, p0

    instance-of v1, v0, Lg/hcu;

    if-eqz v1, :cond_37

    iget-object v1, v0, Lg/hcu;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lg/dei;->b:[I

    move-object v15, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    new-array v7, v13, [I

    move-object v13, v7

    move v7, v4

    move v4, v15

    move-object v15, v13

    move v13, v12

    move v12, v9

    move v9, v13

    move v13, v10

    move/from16 v10, v16

    move/from16 v16, v14

    :goto_a
    sget-object v14, Lg/dei;->a:Lsun/misc/Unsafe;

    iget-object v3, v0, Lg/hcu;->d:[Ljava/lang/Object;

    iget-object v8, v0, Lg/hcu;->b:Lg/bsv;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    add-int v9, v16, v9

    add-int v6, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v6, v6, [Ljava/lang/Object;

    move/from16 v23, v9

    move/from16 v22, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v26, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v5, v2, :cond_15

    and-int/lit16 v2, v5, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v4, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v26

    move/from16 v2, v27

    goto :goto_c

    :cond_15
    shl-int v2, v5, v24

    or-int/2addr v4, v2

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    move/from16 v27, v2

    move/from16 v2, v24

    :goto_d
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v24, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_18

    and-int/lit16 v2, v2, 0x1fff

    const/16 v26, 0xd

    :goto_e
    add-int/lit8 v28, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v3, :cond_17

    and-int/lit16 v3, v5, 0x1fff

    shl-int v3, v3, v26

    or-int/2addr v2, v3

    add-int/lit8 v26, v26, 0xd

    move/from16 v5, v28

    const v3, 0xd800

    goto :goto_e

    :cond_17
    shl-int v3, v5, v26

    or-int/2addr v2, v3

    move/from16 v5, v28

    :cond_18
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_19

    add-int/lit8 v3, v20, 0x1

    aput v21, v15, v20

    move/from16 v20, v3

    :cond_19
    and-int/lit16 v3, v2, 0xff

    move/from16 v26, v4

    and-int/lit16 v4, v2, 0x800

    move/from16 v28, v4

    const/16 v4, 0x33

    if-lt v3, v4, :cond_23

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v29, v4

    const v4, 0xd800

    if-lt v5, v4, :cond_1b

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v33, v29

    move/from16 v29, v5

    move/from16 v5, v33

    const/16 v33, 0xd

    :goto_f
    add-int/lit8 v34, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_1a

    and-int/lit16 v4, v5, 0x1fff

    shl-int v4, v4, v33

    or-int v29, v29, v4

    add-int/lit8 v33, v33, 0xd

    move/from16 v5, v34

    const v4, 0xd800

    goto :goto_f

    :cond_1a
    shl-int v4, v5, v33

    or-int v5, v29, v4

    move/from16 v4, v34

    goto :goto_10

    :cond_1b
    move/from16 v4, v29

    :goto_10
    move/from16 v29, v4

    add-int/lit8 v4, v3, -0x33

    move/from16 v33, v5

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1c

    const/16 v5, 0x11

    if-ne v4, v5, :cond_1d

    :cond_1c
    const/4 v5, 0x1

    goto :goto_13

    :cond_1d
    const/16 v5, 0xc

    if-ne v4, v5, :cond_20

    invoke-virtual {v0}, Lg/hcu;->e()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1f

    if-eqz v28, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v4, 0x0

    goto :goto_14

    :cond_1f
    :goto_11
    add-int/lit8 v4, v10, 0x1

    div-int/lit8 v19, v21, 0x3

    add-int v19, v19, v19

    add-int/lit8 v19, v19, 0x1

    aget-object v10, v24, v10

    aput-object v10, v6, v19

    :goto_12
    move v10, v4

    :cond_20
    move/from16 v4, v28

    goto :goto_14

    :goto_13
    add-int/lit8 v4, v10, 0x1

    div-int/lit8 v19, v21, 0x3

    add-int v19, v19, v19

    add-int/lit8 v30, v19, 0x1

    aget-object v5, v24, v10

    aput-object v5, v6, v30

    goto :goto_12

    :goto_14
    add-int v5, v33, v33

    move/from16 v28, v4

    aget-object v4, v24, v5

    move/from16 v30, v5

    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_21

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_21
    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lg/dei;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v24, v30

    :goto_15
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v5, v4

    add-int/lit8 v4, v30, 0x1

    move/from16 v30, v4

    aget-object v4, v24, v30

    move/from16 v31, v5

    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_22

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_22
    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lg/dei;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v24, v30

    :goto_16
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v5, v4

    move-object v4, v8

    move v8, v5

    move/from16 v5, v31

    move/from16 v31, v29

    move-object/from16 v29, v6

    move-object v6, v4

    move/from16 v30, v7

    move/from16 v4, v28

    const/4 v7, 0x0

    const v25, 0xd800

    goto/16 :goto_23

    :cond_23
    add-int/lit8 v4, v10, 0x1

    aget-object v29, v24, v10

    move/from16 v33, v4

    move-object/from16 v4, v29

    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lg/dei;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object/from16 v29, v6

    const/16 v6, 0x9

    if-eq v3, v6, :cond_24

    const/16 v6, 0x11

    if-ne v3, v6, :cond_25

    :cond_24
    move/from16 v30, v7

    const/4 v7, 0x1

    goto/16 :goto_1c

    :cond_25
    const/16 v6, 0x1b

    if-eq v3, v6, :cond_2d

    const/16 v6, 0x31

    if-ne v3, v6, :cond_26

    add-int/lit8 v10, v10, 0x2

    move/from16 v30, v7

    const/4 v7, 0x1

    goto/16 :goto_1b

    :cond_26
    const/16 v6, 0xc

    if-eq v3, v6, :cond_2a

    const/16 v6, 0x1e

    if-eq v3, v6, :cond_2a

    const/16 v6, 0x2c

    if-ne v3, v6, :cond_27

    goto :goto_18

    :cond_27
    const/16 v6, 0x32

    if-ne v3, v6, :cond_29

    add-int/lit8 v6, v10, 0x2

    add-int/lit8 v30, v22, 0x1

    aput v21, v15, v22

    div-int/lit8 v22, v21, 0x3

    aget-object v31, v24, v33

    add-int v22, v22, v22

    aput-object v31, v29, v22

    if-eqz v28, :cond_28

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v10, v10, 0x3

    aget-object v6, v24, v6

    aput-object v6, v29, v22

    move-object v6, v8

    move/from16 v22, v30

    :goto_17
    move/from16 v30, v7

    goto :goto_1e

    :cond_28
    move v10, v6

    move-object v6, v8

    move/from16 v22, v30

    const/16 v28, 0x0

    goto :goto_17

    :cond_29
    move/from16 v30, v7

    const/4 v7, 0x1

    goto :goto_1d

    :cond_2a
    :goto_18
    invoke-virtual {v0}, Lg/hcu;->e()I

    move-result v6

    move/from16 v30, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2c

    if-eqz v28, :cond_2b

    goto :goto_19

    :cond_2b
    move-object v6, v8

    move/from16 v10, v33

    const/16 v28, 0x0

    goto :goto_1e

    :cond_2c
    :goto_19
    add-int/lit8 v10, v10, 0x2

    div-int/lit8 v6, v21, 0x3

    add-int/2addr v6, v6

    add-int/2addr v6, v7

    aget-object v19, v24, v33

    aput-object v19, v29, v6

    :goto_1a
    move-object v6, v8

    goto :goto_1e

    :cond_2d
    move/from16 v30, v7

    const/4 v7, 0x1

    add-int/lit8 v10, v10, 0x2

    :goto_1b
    div-int/lit8 v6, v21, 0x3

    add-int/2addr v6, v6

    add-int/2addr v6, v7

    aget-object v19, v24, v33

    aput-object v19, v29, v6

    goto :goto_1a

    :goto_1c
    div-int/lit8 v6, v21, 0x3

    add-int/2addr v6, v6

    add-int/2addr v6, v7

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v29, v6

    :goto_1d
    move-object v6, v8

    move/from16 v10, v33

    :goto_1e
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v4, v7

    and-int/lit16 v7, v2, 0x1000

    const v8, 0xfffff

    if-eqz v7, :cond_31

    const/16 v7, 0x11

    if-gt v3, v7, :cond_31

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v8, 0xd800

    if-lt v5, v8, :cond_2f

    and-int/lit16 v5, v5, 0x1fff

    const/16 v25, 0xd

    :goto_1f
    add-int/lit8 v31, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2e

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v25

    or-int/2addr v5, v7

    add-int/lit8 v25, v25, 0xd

    move/from16 v7, v31

    goto :goto_1f

    :cond_2e
    shl-int v7, v7, v25

    or-int/2addr v5, v7

    goto :goto_20

    :cond_2f
    move/from16 v31, v7

    :goto_20
    add-int v7, v30, v30

    div-int/lit8 v25, v5, 0x20

    add-int v25, v25, v7

    aget-object v7, v24, v25

    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_30

    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_21

    :cond_30
    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lg/dei;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v24, v25

    :goto_21
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    rem-int/lit8 v5, v5, 0x20

    const v25, 0xd800

    goto :goto_22

    :cond_31
    const v25, 0xd800

    move/from16 v31, v5

    const/4 v5, 0x0

    :goto_22
    const/16 v7, 0x12

    if-lt v3, v7, :cond_32

    const/16 v7, 0x31

    if-gt v3, v7, :cond_32

    add-int/lit8 v7, v23, 0x1

    aput v4, v15, v23

    move/from16 v23, v7

    :cond_32
    move v7, v5

    move v5, v4

    move/from16 v4, v28

    :goto_23
    add-int/lit8 v28, v21, 0x1

    aput v26, v11, v21

    add-int/lit8 v26, v21, 0x2

    move-object/from16 v32, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_33

    const/high16 v1, 0x20000000

    goto :goto_24

    :cond_33
    const/4 v1, 0x0

    :goto_24
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_34

    const/high16 v2, 0x10000000

    goto :goto_25

    :cond_34
    const/4 v2, 0x0

    :goto_25
    if-eqz v4, :cond_35

    const/high16 v4, -0x80000000

    goto :goto_26

    :cond_35
    const/4 v4, 0x0

    :goto_26
    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    or-int/2addr v1, v3

    or-int/2addr v1, v5

    aput v1, v11, v28

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v7, 0x14

    or-int/2addr v1, v8

    aput v1, v11, v26

    move-object v8, v6

    move-object/from16 v3, v24

    move/from16 v2, v27

    move-object/from16 v6, v29

    move/from16 v7, v30

    move/from16 v4, v31

    move-object/from16 v1, v32

    const v5, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v29, v6

    new-instance v1, Lg/dei;

    iget-object v14, v0, Lg/hcu;->b:Lg/bsv;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move/from16 v17, v9

    move-object v10, v11

    move-object/from16 v11, v29

    move-object v9, v1

    invoke-direct/range {v9 .. v19}, Lg/dei;-><init>([I[Ljava/lang/Object;IILg/bsv;[IIILg/cuf;Lg/gpu;)V

    return-object v9

    :cond_37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final aa(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lg/dei;->p(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lg/fsu;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lg/fsu;

    invoke-virtual {v0}, Lg/fsu;->s()V

    iput v1, v0, Lg/bsv;->zza:I

    invoke-virtual {v0}, Lg/fsu;->w()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lg/dei;->f:[I

    array-length v3, v2

    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Lg/dei;->am(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lg/dei;->o(I)I

    move-result v3

    int-to-long v4, v4

    const/16 v6, 0x9

    if-eq v3, v6, :cond_3

    const/16 v6, 0x3c

    if-eq v3, v6, :cond_2

    const/16 v6, 0x44

    if-eq v3, v6, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lg/dei;->a:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object v6, v3

    check-cast v6, Lg/ou;

    invoke-virtual {v6}, Lg/ou;->c()V

    invoke-virtual {v2, p1, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gmb;

    check-cast v2, Lg/bxh;

    iget-boolean v3, v2, Lg/bxh;->e:Z

    if-eqz v3, :cond_4

    iput-boolean v1, v2, Lg/bxh;->e:Z

    goto :goto_1

    :cond_2
    aget v2, v2, v0

    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v2

    sget-object v3, Lg/dei;->a:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lg/dxm;->aa(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v0, p1}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v2

    sget-object v3, Lg/dei;->a:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lg/dxm;->aa(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lg/dei;->h:Lg/cuf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lg/fsu;

    iget-object p1, p1, Lg/fsu;->zzc:Lg/wl;

    iget-boolean v0, p1, Lg/wl;->c:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p1, Lg/wl;->c:Z

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ab(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lg/dxm;->zze()Lg/fsu;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lg/dei;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lg/dei;->am(I)I

    move-result p2

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lg/dei;->p(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lg/dxm;->zze()Lg/fsu;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lg/dxm;->al(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final ac(II)I
    .locals 6

    iget-object v0, p0, Lg/dei;->f:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v3, v1, p2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, v0, v4

    if-ne p1, v5, :cond_0

    return v4

    :cond_0
    if-ge p1, v5, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final ad(Ljava/lang/Object;Lg/dnb;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    sget-object v7, Lg/dei;->a:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v3, 0x0

    const v4, 0xfffff

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v1, Lg/dei;->f:[I

    array-length v10, v6

    if-ge v3, v10, :cond_7

    invoke-virtual {v1, v3}, Lg/dei;->am(I)I

    move-result v10

    invoke-static {v10}, Lg/dei;->o(I)I

    move-result v11

    aget v12, v6, v3

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v11, v13, :cond_2

    add-int/lit8 v13, v3, 0x2

    aget v13, v6, v13

    and-int v15, v13, v9

    if-eq v15, v4, :cond_1

    if-ne v15, v9, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    int-to-long v4, v15

    invoke-virtual {v7, v2, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v5, v4

    :goto_1
    move v4, v15

    :cond_1
    ushr-int/lit8 v13, v13, 0x14

    shl-int v13, v14, v13

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    and-int/2addr v10, v9

    int-to-long v9, v10

    const/16 v16, 0x3f

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v3}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v9

    invoke-virtual {v0, v12, v6, v9}, Lg/dnb;->d(ILjava/lang/Object;Lg/dxm;)V

    goto/16 :goto_b

    :pswitch_1
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/dei;->l(JLjava/lang/Object;)J

    move-result-wide v9

    add-long v13, v9, v9

    shr-long v9, v9, v16

    xor-long/2addr v9, v13

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v9, v10}, Lg/ctv;->l(IJ)V

    goto/16 :goto_b

    :pswitch_2
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v6

    add-int v9, v6, v6

    shr-int/lit8 v6, v6, 0x1f

    xor-int/2addr v6, v9

    iget-object v9, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v9, Lg/ctv;

    invoke-virtual {v9, v12, v6}, Lg/ctv;->u(II)V

    goto/16 :goto_b

    :pswitch_3
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/dei;->l(JLjava/lang/Object;)J

    move-result-wide v9

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v9, v10}, Lg/ctv;->v(IJ)V

    goto/16 :goto_b

    :pswitch_4
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v6

    iget-object v9, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v9, Lg/ctv;

    invoke-virtual {v9, v12, v6}, Lg/ctv;->n(II)V

    goto/16 :goto_b

    :pswitch_5
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v6

    iget-object v9, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v9, Lg/ctv;

    invoke-virtual {v9, v12, v6}, Lg/ctv;->p(II)V

    goto/16 :goto_b

    :pswitch_6
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v6

    iget-object v9, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v9, Lg/ctv;

    invoke-virtual {v9, v12, v6}, Lg/ctv;->u(II)V

    goto/16 :goto_b

    :pswitch_7
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/aki;

    iget-object v9, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v9, Lg/ctv;

    invoke-virtual {v9, v12, v6}, Lg/ctv;->t(ILg/aki;)V

    goto/16 :goto_b

    :pswitch_8
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v3}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v9

    invoke-virtual {v0, v12, v6, v9}, Lg/dnb;->b(ILjava/lang/Object;Lg/dxm;)V

    goto/16 :goto_b

    :pswitch_9
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_3

    check-cast v6, Ljava/lang/String;

    iget-object v9, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v9, Lg/ctv;

    invoke-virtual {v9, v12, v6}, Lg/ctv;->o(ILjava/lang/String;)V

    goto/16 :goto_b

    :cond_3
    check-cast v6, Lg/aki;

    iget-object v9, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v9, Lg/ctv;

    invoke-virtual {v9, v12, v6}, Lg/ctv;->t(ILg/aki;)V

    goto/16 :goto_b

    :pswitch_a
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v9, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v9, Lg/ctv;

    shl-int/lit8 v10, v12, 0x3

    invoke-virtual {v9, v10}, Lg/ctv;->s(I)V

    iget v10, v9, Lg/ctv;->e:I

    :try_start_0
    iget-object v11, v9, Lg/ctv;->c:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v12, v10, 0x1

    :try_start_1
    aput-byte v6, v11, v10
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    iput v12, v9, Lg/ctv;->e:I

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move v10, v12

    :goto_3
    move-object v8, v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_4
    iget v0, v9, Lg/ctv;->d:I

    new-instance v2, Lg/gng;

    int-to-long v3, v10

    int-to-long v5, v0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v8}, Lg/gng;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v2

    :pswitch_b
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v6

    iget-object v9, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v9, Lg/ctv;

    invoke-virtual {v9, v12, v6}, Lg/ctv;->n(II)V

    goto/16 :goto_b

    :pswitch_c
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/dei;->l(JLjava/lang/Object;)J

    move-result-wide v9

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v9, v10}, Lg/ctv;->v(IJ)V

    goto/16 :goto_b

    :pswitch_d
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v6

    iget-object v9, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v9, Lg/ctv;

    invoke-virtual {v9, v12, v6}, Lg/ctv;->p(II)V

    goto/16 :goto_b

    :pswitch_e
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/dei;->l(JLjava/lang/Object;)J

    move-result-wide v9

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v9, v10}, Lg/ctv;->l(IJ)V

    goto/16 :goto_b

    :pswitch_f
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/dei;->l(JLjava/lang/Object;)J

    move-result-wide v9

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v9, v10}, Lg/ctv;->l(IJ)V

    goto/16 :goto_b

    :pswitch_10
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v9, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v9, Lg/ctv;

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    invoke-virtual {v9, v12, v6}, Lg/ctv;->n(II)V

    goto/16 :goto_b

    :pswitch_11
    invoke-virtual {v1, v12, v3, v2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v9, v10, v2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    invoke-virtual {v6, v12, v9, v10}, Lg/ctv;->v(IJ)V

    goto/16 :goto_b

    :pswitch_12
    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    goto/16 :goto_b

    :cond_4
    div-int/lit8 v3, v3, 0x3

    iget-object v0, v1, Lg/dei;->i:[Ljava/lang/Object;

    add-int/2addr v3, v3

    aget-object v0, v0, v3

    invoke-static {v0}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :pswitch_13
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v1, v3}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v10

    sget-object v11, Lg/gog;->a:Lg/cuf;

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v11, 0x0

    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v6, v12, v10}, Lg/dnb;->d(ILjava/lang/Object;Lg/dxm;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :pswitch_14
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->t(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_15
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->k(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_16
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->b(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_17
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->f(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_18
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->p(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_19
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->x(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_1a
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->v(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_1b
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->w(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_1c
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->l(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_1d
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->n(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_1e
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->h(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_1f
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->y(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_20
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->m(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_21
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lg/gog;->aa(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_22
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->t(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_23
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->k(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_24
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->b(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_25
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->f(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_26
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->p(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_27
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->x(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_28
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    sget-object v10, Lg/gog;->a:Lg/cuf;

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v11, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v11, Lg/ctv;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/aki;

    invoke-virtual {v11, v6, v12}, Lg/ctv;->t(ILg/aki;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :pswitch_29
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v1, v3}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v10

    sget-object v11, Lg/gog;->a:Lg/cuf;

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v11, 0x0

    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v6, v12, v10}, Lg/dnb;->b(ILjava/lang/Object;Lg/dxm;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :pswitch_2a
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    sget-object v10, Lg/gog;->a:Lg/cuf;

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    :goto_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v11, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v11, Lg/ctv;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v6, v12}, Lg/ctv;->o(ILjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :pswitch_2b
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->v(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_2c
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->w(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_2d
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->l(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_2e
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->n(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_2f
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->h(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_30
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->y(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_31
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->m(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_32
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lg/gog;->aa(ILjava/util/List;Lg/dnb;Z)V

    goto/16 :goto_b

    :pswitch_33
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v3}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v9

    invoke-virtual {v0, v12, v6, v9}, Lg/dnb;->d(ILjava/lang/Object;Lg/dxm;)V

    goto/16 :goto_b

    :pswitch_34
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    add-long v13, v9, v9

    shr-long v9, v9, v16

    xor-long/2addr v9, v13

    iget-object v1, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v1, Lg/ctv;

    invoke-virtual {v1, v12, v9, v10}, Lg/ctv;->l(IJ)V

    goto/16 :goto_b

    :pswitch_35
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v6, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v6

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v1}, Lg/ctv;->u(II)V

    goto/16 :goto_b

    :pswitch_36
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    iget-object v1, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v1, Lg/ctv;

    invoke-virtual {v1, v12, v9, v10}, Lg/ctv;->v(IJ)V

    goto/16 :goto_b

    :pswitch_37
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v1}, Lg/ctv;->n(II)V

    goto/16 :goto_b

    :pswitch_38
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v1}, Lg/ctv;->p(II)V

    goto/16 :goto_b

    :pswitch_39
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v1}, Lg/ctv;->u(II)V

    goto/16 :goto_b

    :pswitch_3a
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/aki;

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v1}, Lg/ctv;->t(ILg/aki;)V

    goto/16 :goto_b

    :pswitch_3b
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v3}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v9

    invoke-virtual {v0, v12, v6, v9}, Lg/dnb;->b(ILjava/lang/Object;Lg/dxm;)V

    goto/16 :goto_b

    :pswitch_3c
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_5

    check-cast v1, Ljava/lang/String;

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v1}, Lg/ctv;->o(ILjava/lang/String;)V

    goto/16 :goto_b

    :cond_5
    check-cast v1, Lg/aki;

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v1}, Lg/ctv;->t(ILg/aki;)V

    goto/16 :goto_b

    :pswitch_3d
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v1, Lg/euh;->f:Lg/aul;

    invoke-virtual {v1, v9, v10, v2}, Lg/aul;->b(JLjava/lang/Object;)Z

    move-result v1

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    shl-int/lit8 v9, v12, 0x3

    invoke-virtual {v6, v9}, Lg/ctv;->s(I)V

    iget v9, v6, Lg/ctv;->e:I

    :try_start_2
    iget-object v10, v6, Lg/ctv;->c:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v11, v9, 0x1

    :try_start_3
    aput-byte v1, v10, v9
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    iput v11, v6, Lg/ctv;->e:I

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move v9, v11

    :goto_9
    move-object/from16 v16, v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    :goto_a
    iget v0, v6, Lg/ctv;->d:I

    new-instance v10, Lg/gng;

    int-to-long v11, v9

    int-to-long v13, v0

    const/4 v15, 0x1

    invoke-direct/range {v10 .. v16}, Lg/gng;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v10

    :pswitch_3e
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v1}, Lg/ctv;->n(II)V

    goto/16 :goto_b

    :pswitch_3f
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    iget-object v1, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v1, Lg/ctv;

    invoke-virtual {v1, v12, v9, v10}, Lg/ctv;->v(IJ)V

    goto/16 :goto_b

    :pswitch_40
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-virtual {v6, v12, v1}, Lg/ctv;->p(II)V

    goto :goto_b

    :pswitch_41
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    iget-object v1, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v1, Lg/ctv;

    invoke-virtual {v1, v12, v9, v10}, Lg/ctv;->l(IJ)V

    goto :goto_b

    :pswitch_42
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    iget-object v1, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v1, Lg/ctv;

    invoke-virtual {v1, v12, v9, v10}, Lg/ctv;->l(IJ)V

    goto :goto_b

    :pswitch_43
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v1, Lg/euh;->f:Lg/aul;

    invoke-virtual {v1, v9, v10, v2}, Lg/aul;->c(JLjava/lang/Object;)F

    move-result v1

    iget-object v6, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v6, Lg/ctv;

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {v6, v12, v1}, Lg/ctv;->n(II)V

    goto :goto_b

    :pswitch_44
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v1, Lg/euh;->f:Lg/aul;

    invoke-virtual {v1, v9, v10, v2}, Lg/aul;->g(JLjava/lang/Object;)D

    move-result-wide v9

    iget-object v1, v0, Lg/dnb;->a:Ljava/lang/Object;

    check-cast v1, Lg/ctv;

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    invoke-virtual {v1, v12, v9, v10}, Lg/ctv;->v(IJ)V

    :cond_6
    :goto_b
    add-int/lit8 v3, v3, 0x3

    const v9, 0xfffff

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    check-cast v1, Lg/fsu;

    iget-object v1, v1, Lg/fsu;->zzc:Lg/wl;

    invoke-virtual {v1, v0}, Lg/wl;->h(Lg/dnb;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ae(Ljava/lang/Object;[BIIILg/dsc;)I
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    invoke-static {v2}, Lg/dei;->p(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    sget-object v1, Lg/dei;->a:Lsun/misc/Unsafe;

    move/from16 v4, p3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const v16, 0xfffff

    :goto_1
    iget-object v13, v0, Lg/dei;->i:[Ljava/lang/Object;

    iget-object v12, v0, Lg/dei;->f:[I

    if-ge v4, v5, :cond_91

    add-int/lit8 v15, v4, 0x1

    aget-byte v4, v3, v4

    if-gez v4, :cond_0

    invoke-static {v4, v3, v15, v6}, Lg/baf;->aj(I[BILg/dsc;)I

    move-result v15

    iget v4, v6, Lg/dsc;->b:I

    :cond_0
    move/from16 v35, v15

    move v15, v4

    move/from16 v4, v35

    const/16 p3, 0x3

    ushr-int/lit8 v11, v15, 0x3

    iget v3, v0, Lg/dei;->d:I

    move/from16 v19, v4

    iget v4, v0, Lg/dei;->j:I

    if-le v11, v7, :cond_1

    div-int/lit8 v8, v8, 0x3

    if-lt v11, v4, :cond_2

    if-gt v11, v3, :cond_2

    invoke-virtual {v0, v11, v8}, Lg/dei;->ac(II)I

    move-result v3

    goto :goto_2

    :cond_1
    if-lt v11, v4, :cond_2

    if-gt v11, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v11, v3}, Lg/dei;->ac(II)I

    move-result v4

    move v3, v4

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    sget-object v8, Lg/wl;->a:Lg/wl;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    move-object/from16 v3, p2

    move/from16 v0, p5

    move-object v5, v6

    move/from16 v29, v9

    move v10, v11

    move-object/from16 v21, v12

    move-object/from16 v17, v13

    move v9, v15

    move/from16 v4, v19

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    move-object v11, v1

    move-object v12, v2

    goto/16 :goto_3c

    :cond_3
    and-int/lit8 v7, v15, 0x7

    add-int/lit8 v17, v3, 0x1

    aget v4, v12, v17

    invoke-static {v4}, Lg/dei;->o(I)I

    move-result v5

    and-int v6, v4, v16

    move-object/from16 v21, v12

    move-object/from16 v17, v13

    int-to-long v12, v6

    const-wide/16 v22, 0x1

    const/high16 v24, 0x20000000

    const-wide/16 v25, 0x0

    const-string v6, "Protocol message had invalid UTF-8."

    move-wide/from16 v28, v12

    const-string v13, ""

    const-string v12, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    const/16 v31, 0x1

    const/16 v10, 0x11

    if-gt v5, v10, :cond_27

    add-int/lit8 v10, v3, 0x2

    aget v10, v21, v10

    ushr-int/lit8 v27, v10, 0x14

    shl-int v27, v31, v27

    and-int v10, v10, v16

    move/from16 v33, v11

    if-eq v10, v9, :cond_6

    const v11, 0xfffff

    move-object/from16 v34, v12

    if-eq v9, v11, :cond_4

    int-to-long v11, v9

    invoke-virtual {v1, v2, v11, v12, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v11, 0xfffff

    :cond_4
    if-ne v10, v11, :cond_5

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    int-to-long v11, v10

    invoke-virtual {v1, v2, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    :goto_3
    move v14, v9

    goto :goto_4

    :cond_6
    move-object/from16 v34, v12

    move v10, v9

    :goto_4
    packed-switch v5, :pswitch_data_0

    const/4 v5, 0x3

    if-ne v7, v5, :cond_7

    or-int v14, v14, v27

    invoke-virtual {v0, v3, v2}, Lg/dei;->x(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    shl-int/lit8 v5, v33, 0x3

    or-int/lit8 v8, v5, 0x4

    move-object v5, v4

    invoke-virtual {v0, v3}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v4

    move/from16 v7, p4

    move-object/from16 v9, p6

    move v11, v3

    move-object v3, v5

    move/from16 v6, v19

    const/16 v20, -0x1

    move-object/from16 v5, p2

    invoke-static/range {v3 .. v9}, Lg/baf;->ao(Ljava/lang/Object;Lg/dxm;[BIIILg/dsc;)I

    move-result v4

    move-object v12, v9

    move-object v9, v5

    invoke-virtual {v0, v2, v11, v3}, Lg/dei;->y(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v5, p4

    :goto_5
    move-object v3, v9

    move v9, v10

    move v8, v11

    move-object v6, v12

    :goto_6
    move/from16 v7, v33

    goto/16 :goto_0

    :cond_7
    move v11, v3

    const/16 v20, -0x1

    move-object/from16 v12, p2

    move-object v9, v1

    move-object v1, v2

    move/from16 v28, v14

    move/from16 v3, v19

    const/16 v18, 0x0

    move/from16 v19, v15

    move-object/from16 v15, p6

    goto/16 :goto_19

    :pswitch_0
    move-object/from16 v9, p2

    move-object/from16 v12, p6

    move v11, v3

    move/from16 v3, v19

    const/16 v20, -0x1

    if-nez v7, :cond_8

    or-int v14, v14, v27

    invoke-static {v9, v3, v12}, Lg/baf;->ar([BILg/dsc;)I

    move-result v7

    iget-wide v3, v12, Lg/dsc;->c:J

    and-long v5, v3, v22

    ushr-long v3, v3, v31

    neg-long v5, v5

    xor-long/2addr v5, v3

    move-wide/from16 v3, v28

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move v4, v7

    goto :goto_5

    :cond_8
    move/from16 v28, v14

    move/from16 v19, v15

    const/16 v18, 0x0

    move-object v15, v12

    move-object v12, v9

    :cond_9
    move-object v9, v1

    :cond_a
    move-object v1, v2

    goto/16 :goto_19

    :pswitch_1
    move-object/from16 v9, p2

    move-object/from16 v12, p6

    move-object v13, v2

    move v11, v3

    move/from16 v3, v19

    move-wide/from16 v5, v28

    const/16 v20, -0x1

    if-nez v7, :cond_b

    or-int v14, v14, v27

    invoke-static {v9, v3, v12}, Lg/baf;->bb([BILg/dsc;)I

    move-result v4

    iget v2, v12, Lg/dsc;->b:I

    and-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1

    neg-int v3, v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v13, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_7
    move/from16 v5, p4

    :goto_8
    move-object v3, v9

    move v9, v10

    move v8, v11

    move-object v6, v12

    :goto_9
    move-object v2, v13

    goto :goto_6

    :cond_b
    move/from16 v28, v14

    move/from16 v19, v15

    const/16 v18, 0x0

    move-object v15, v12

    move-object v12, v9

    move-object v9, v1

    :goto_a
    move-object v1, v13

    goto/16 :goto_19

    :pswitch_2
    move-object/from16 v9, p2

    move-object/from16 v12, p6

    move-object v13, v2

    move v11, v3

    move/from16 v3, v19

    move-wide/from16 v5, v28

    const/16 v20, -0x1

    if-nez v7, :cond_b

    invoke-static {v9, v3, v12}, Lg/baf;->bb([BILg/dsc;)I

    move-result v2

    iget v3, v12, Lg/dsc;->b:I

    invoke-virtual {v0, v11}, Lg/dei;->r(I)Lg/ebv;

    move-result-object v7

    const/high16 v17, -0x80000000

    and-int v4, v4, v17

    if-eqz v4, :cond_e

    if-eqz v7, :cond_e

    invoke-interface {v7, v3}, Lg/ebv;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_c

    :cond_c
    move-object v4, v13

    check-cast v4, Lg/fsu;

    iget-object v5, v4, Lg/fsu;->zzc:Lg/wl;

    if-ne v5, v8, :cond_d

    invoke-static {}, Lg/wl;->g()Lg/wl;

    move-result-object v5

    iput-object v5, v4, Lg/fsu;->zzc:Lg/wl;

    :cond_d
    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v15, v3}, Lg/wl;->k(ILjava/lang/Object;)V

    :goto_b
    move/from16 v5, p4

    move v4, v2

    goto :goto_8

    :cond_e
    :goto_c
    or-int v14, v14, v27

    invoke-virtual {v1, v13, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :pswitch_3
    move-object/from16 v9, p2

    move-object/from16 v12, p6

    move-object v13, v2

    move v11, v3

    move/from16 v3, v19

    move-wide/from16 v5, v28

    const/4 v2, 0x2

    const/16 v20, -0x1

    if-ne v7, v2, :cond_b

    or-int v14, v14, v27

    invoke-static {v9, v3, v12}, Lg/baf;->ac([BILg/dsc;)I

    move-result v4

    iget-object v2, v12, Lg/dsc;->d:Ljava/lang/Object;

    invoke-virtual {v1, v13, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    move-object/from16 v9, p2

    move-object/from16 v12, p6

    move-object v13, v2

    move v11, v3

    move/from16 v3, v19

    const/4 v2, 0x2

    const/16 v20, -0x1

    if-ne v7, v2, :cond_f

    or-int v14, v14, v27

    move-object v2, v1

    invoke-virtual {v0, v11, v13}, Lg/dei;->x(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v2

    invoke-virtual {v0, v11}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v2

    move-object v5, v4

    move v4, v3

    move-object v3, v9

    move-object v9, v5

    move/from16 v5, p4

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lg/baf;->bp(Ljava/lang/Object;Lg/dxm;[BIILg/dsc;)I

    move-result v4

    move-object v2, v1

    move-object v12, v3

    move-object v1, v6

    invoke-virtual {v0, v13, v11, v2}, Lg/dei;->y(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v1, v9

    move v9, v10

    move v8, v11

    goto/16 :goto_9

    :cond_f
    move-object/from16 v35, v9

    move-object v9, v1

    move-object v1, v12

    move-object/from16 v12, v35

    move/from16 v28, v14

    move/from16 v19, v15

    const/16 v18, 0x0

    move-object v15, v1

    goto/16 :goto_a

    :pswitch_5
    move-object/from16 v12, p2

    move-object v9, v1

    move-object v5, v2

    move v11, v3

    move/from16 v3, v19

    const/4 v2, 0x2

    const/16 v20, -0x1

    move-object/from16 v1, p6

    move/from16 v19, v15

    move-wide/from16 v35, v28

    move/from16 v28, v14

    move-wide/from16 v14, v35

    if-ne v7, v2, :cond_24

    and-int v2, v4, v24

    if-eqz v2, :cond_21

    or-int v2, v28, v27

    invoke-static {v12, v3, v1}, Lg/baf;->bb([BILg/dsc;)I

    move-result v3

    iget v4, v1, Lg/dsc;->b:I

    if-ltz v4, :cond_20

    if-nez v4, :cond_10

    iput-object v13, v1, Lg/dsc;->d:Ljava/lang/Object;

    move/from16 v17, v2

    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_10
    sget v7, Lg/bib;->a:I

    array-length v7, v12

    sub-int v8, v7, v3

    or-int v13, v3, v4

    sub-int/2addr v8, v4

    or-int/2addr v8, v13

    if-ltz v8, :cond_1f

    add-int v7, v3, v4

    new-array v4, v4, [C

    const/4 v8, 0x0

    :goto_d
    if-ge v3, v7, :cond_11

    aget-byte v13, v12, v3

    if-ltz v13, :cond_11

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v17, v8, 0x1

    int-to-char v13, v13

    aput-char v13, v4, v8

    move/from16 v8, v17

    goto :goto_d

    :cond_11
    :goto_e
    if-ge v3, v7, :cond_1e

    add-int/lit8 v13, v3, 0x1

    move/from16 v17, v2

    aget-byte v2, v12, v3

    if-ltz v2, :cond_13

    add-int/lit8 v3, v8, 0x1

    int-to-char v2, v2

    aput-char v2, v4, v8

    move v8, v3

    move v3, v13

    :goto_f
    if-ge v3, v7, :cond_12

    aget-byte v2, v12, v3

    if-ltz v2, :cond_12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v13, v8, 0x1

    int-to-char v2, v2

    aput-char v2, v4, v8

    move v8, v13

    goto :goto_f

    :cond_12
    move/from16 v2, v17

    goto :goto_e

    :cond_13
    move/from16 v21, v3

    const/16 v3, -0x20

    if-ge v2, v3, :cond_16

    if-ge v13, v7, :cond_15

    add-int/lit8 v3, v8, 0x1

    add-int/lit8 v21, v21, 0x2

    aget-byte v13, v12, v13

    move/from16 p3, v3

    const/16 v3, -0x3e

    if-lt v2, v3, :cond_14

    invoke-static {v13}, Lg/acw;->bf(B)Z

    move-result v3

    if-nez v3, :cond_14

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v3, v13, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v4, v8

    move/from16 v8, p3

    move/from16 v2, v17

    move/from16 v3, v21

    goto :goto_e

    :cond_14
    new-instance v1, Lg/fba;

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Lg/fba;

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    const/16 v3, -0x10

    if-ge v2, v3, :cond_1b

    add-int/lit8 v3, v7, -0x1

    if-ge v13, v3, :cond_1a

    add-int/lit8 v3, v8, 0x1

    add-int/lit8 v22, v21, 0x2

    aget-byte v13, v12, v13

    add-int/lit8 v21, v21, 0x3

    aget-byte v22, v12, v22

    invoke-static {v13}, Lg/acw;->bf(B)Z

    move-result v23

    if-nez v23, :cond_19

    move/from16 v23, v3

    const/16 v3, -0x60

    move/from16 v24, v7

    const/16 v7, -0x20

    if-ne v2, v7, :cond_17

    if-lt v13, v3, :cond_19

    const/16 v2, -0x20

    :cond_17
    const/16 v7, -0x13

    if-ne v2, v7, :cond_18

    if-ge v13, v3, :cond_19

    const/16 v2, -0x13

    :cond_18
    invoke-static/range {v22 .. v22}, Lg/acw;->bf(B)Z

    move-result v3

    if-nez v3, :cond_19

    and-int/lit8 v2, v2, 0xf

    and-int/lit8 v3, v13, 0x3f

    and-int/lit8 v7, v22, 0x3f

    shl-int/lit8 v2, v2, 0xc

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    or-int/2addr v2, v7

    int-to-char v2, v2

    aput-char v2, v4, v8

    move/from16 v2, v17

    move/from16 v3, v21

    move/from16 v8, v23

    :goto_10
    move/from16 v7, v24

    goto/16 :goto_e

    :cond_19
    new-instance v1, Lg/fba;

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v1, Lg/fba;

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    move/from16 v24, v7

    add-int/lit8 v7, v24, -0x2

    if-ge v13, v7, :cond_1d

    add-int/lit8 v3, v21, 0x2

    aget-byte v7, v12, v13

    add-int/lit8 v13, v21, 0x3

    aget-byte v3, v12, v3

    add-int/lit8 v21, v21, 0x4

    aget-byte v13, v12, v13

    invoke-static {v7}, Lg/acw;->bf(B)Z

    move-result v22

    if-nez v22, :cond_1c

    shl-int/lit8 v22, v2, 0x1c

    add-int/lit8 v23, v7, 0x70

    add-int v23, v23, v22

    shr-int/lit8 v22, v23, 0x1e

    if-nez v22, :cond_1c

    invoke-static {v3}, Lg/acw;->bf(B)Z

    move-result v22

    if-nez v22, :cond_1c

    invoke-static {v13}, Lg/acw;->bf(B)Z

    move-result v22

    if-nez v22, :cond_1c

    and-int/lit8 v2, v2, 0x7

    and-int/lit8 v7, v7, 0x3f

    and-int/lit8 v3, v3, 0x3f

    and-int/lit8 v13, v13, 0x3f

    shl-int/lit8 v2, v2, 0x12

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v2, v7

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    or-int/2addr v2, v13

    ushr-int/lit8 v3, v2, 0xa

    const v7, 0xd7c0

    add-int/2addr v3, v7

    int-to-char v3, v3

    aput-char v3, v4, v8

    add-int/lit8 v3, v8, 0x1

    and-int/lit16 v2, v2, 0x3ff

    const v7, 0xdc00

    add-int/2addr v2, v7

    int-to-char v2, v2

    aput-char v2, v4, v3

    add-int/lit8 v8, v8, 0x2

    move/from16 v2, v17

    move/from16 v3, v21

    goto :goto_10

    :cond_1c
    new-instance v1, Lg/fba;

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    new-instance v1, Lg/fba;

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    move/from16 v17, v2

    move/from16 v24, v7

    new-instance v2, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6, v8}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, v1, Lg/dsc;->d:Ljava/lang/Object;

    move/from16 v3, v24

    :goto_11
    move v4, v3

    move/from16 v2, v17

    goto :goto_13

    :cond_1f
    const/4 v6, 0x0

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v3, v5, v31

    const/16 v32, 0x2

    aput-object v4, v5, v32

    const-string v2, "buffer length=%d, index=%d, size=%d"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    new-instance v1, Lg/fba;

    move-object/from16 v2, v34

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    move-object/from16 v2, v34

    const/4 v6, 0x0

    invoke-static {v12, v3, v1}, Lg/baf;->bb([BILg/dsc;)I

    move-result v3

    iget v4, v1, Lg/dsc;->b:I

    if-ltz v4, :cond_23

    or-int v2, v28, v27

    if-nez v4, :cond_22

    iput-object v13, v1, Lg/dsc;->d:Ljava/lang/Object;

    :goto_12
    move v4, v3

    goto :goto_13

    :cond_22
    new-instance v7, Ljava/lang/String;

    sget-object v8, Lg/cua;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v12, v3, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v7, v1, Lg/dsc;->d:Ljava/lang/Object;

    add-int/2addr v3, v4

    goto :goto_12

    :goto_13
    iget-object v3, v1, Lg/dsc;->d:Ljava/lang/Object;

    invoke-virtual {v9, v5, v14, v15, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_14
    move-object v6, v1

    move v14, v2

    move-object v2, v5

    move-object v1, v9

    move v9, v10

    move v8, v11

    move-object v3, v12

    move/from16 v15, v19

    move/from16 v7, v33

    :goto_15
    const v16, 0xfffff

    move/from16 v5, p4

    goto/16 :goto_1

    :cond_23
    new-instance v1, Lg/fba;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    move-object v15, v1

    move-object v1, v5

    const/16 v18, 0x0

    goto/16 :goto_19

    :pswitch_6
    move-object/from16 v12, p2

    move-object v9, v1

    move-object v5, v2

    move v11, v3

    move/from16 v3, v19

    const/4 v6, 0x0

    const/16 v20, -0x1

    move-object/from16 v1, p6

    move/from16 v19, v15

    move-wide/from16 v35, v28

    move/from16 v28, v14

    move-wide/from16 v14, v35

    if-nez v7, :cond_24

    or-int v2, v28, v27

    invoke-static {v12, v3, v1}, Lg/baf;->ar([BILg/dsc;)I

    move-result v4

    iget-wide v7, v1, Lg/dsc;->c:J

    cmp-long v3, v7, v25

    if-eqz v3, :cond_25

    const/4 v3, 0x1

    goto :goto_16

    :cond_25
    const/4 v3, 0x0

    :goto_16
    sget-object v7, Lg/euh;->f:Lg/aul;

    invoke-virtual {v7, v5, v14, v15, v3}, Lg/aul;->e(Ljava/lang/Object;JZ)V

    goto :goto_14

    :pswitch_7
    move-object/from16 v12, p2

    move-object v9, v1

    move-object v5, v2

    move v11, v3

    move/from16 v3, v19

    const/4 v2, 0x5

    const/4 v6, 0x0

    const/16 v20, -0x1

    move-object/from16 v1, p6

    move/from16 v19, v15

    move-wide/from16 v35, v28

    move/from16 v28, v14

    move-wide/from16 v14, v35

    if-ne v7, v2, :cond_24

    add-int/lit8 v4, v3, 0x4

    or-int v2, v28, v27

    invoke-static {v12, v3}, Lg/baf;->az([BI)I

    move-result v3

    invoke-virtual {v9, v5, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_14

    :pswitch_8
    move-object/from16 v12, p2

    move-object v9, v1

    move-object v5, v2

    move v11, v3

    move/from16 v3, v19

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/16 v20, -0x1

    move-object/from16 v1, p6

    move/from16 v19, v15

    move-wide/from16 v35, v28

    move/from16 v28, v14

    move-wide/from16 v14, v35

    if-ne v7, v2, :cond_26

    add-int/lit8 v7, v3, 0x8

    or-int v8, v28, v27

    const/16 v18, 0x0

    invoke-static {v3, v12}, Lg/baf;->bj(I[B)J

    move-result-wide v5

    move-object/from16 v2, p1

    move-wide v3, v14

    move-object v15, v1

    move-object v1, v9

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move v4, v7

    move v14, v8

    :goto_17
    move v9, v10

    move v8, v11

    move-object v3, v12

    move-object v6, v15

    move/from16 v15, v19

    goto/16 :goto_6

    :cond_26
    move-object v15, v1

    const/16 v18, 0x0

    move-object v1, v5

    goto/16 :goto_19

    :pswitch_9
    move-object/from16 v12, p2

    move v11, v3

    move/from16 v3, v19

    move-wide/from16 v5, v28

    const/16 v18, 0x0

    const/16 v20, -0x1

    move/from16 v28, v14

    move/from16 v19, v15

    move-object/from16 v15, p6

    if-nez v7, :cond_9

    or-int v14, v28, v27

    invoke-static {v12, v3, v15}, Lg/baf;->bb([BILg/dsc;)I

    move-result v4

    iget v3, v15, Lg/dsc;->b:I

    invoke-virtual {v1, v2, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p4

    goto :goto_17

    :pswitch_a
    move-object/from16 v12, p2

    move v11, v3

    move/from16 v3, v19

    move-wide/from16 v5, v28

    const/16 v18, 0x0

    const/16 v20, -0x1

    move/from16 v28, v14

    move/from16 v19, v15

    move-object/from16 v15, p6

    if-nez v7, :cond_9

    or-int v14, v28, v27

    invoke-static {v12, v3, v15}, Lg/baf;->ar([BILg/dsc;)I

    move-result v7

    move-wide v3, v5

    iget-wide v5, v15, Lg/dsc;->c:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move v4, v7

    goto :goto_17

    :pswitch_b
    move-object/from16 v12, p2

    move-object v9, v1

    move v11, v3

    move/from16 v3, v19

    move-wide/from16 v5, v28

    const/4 v1, 0x5

    const/16 v18, 0x0

    const/16 v20, -0x1

    move/from16 v28, v14

    move/from16 v19, v15

    move-object/from16 v15, p6

    if-ne v7, v1, :cond_a

    add-int/lit8 v4, v3, 0x4

    or-int v14, v28, v27

    invoke-static {v12, v3}, Lg/baf;->az([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sget-object v3, Lg/euh;->f:Lg/aul;

    invoke-virtual {v3, v2, v5, v6, v1}, Lg/aul;->d(Ljava/lang/Object;JF)V

    move/from16 v5, p4

    :goto_18
    move-object v1, v9

    goto :goto_17

    :pswitch_c
    move-object/from16 v12, p2

    move-object v9, v1

    move v11, v3

    move/from16 v3, v19

    move-wide/from16 v5, v28

    const/4 v1, 0x1

    const/16 v18, 0x0

    const/16 v20, -0x1

    move/from16 v28, v14

    move/from16 v19, v15

    move-object/from16 v15, p6

    if-ne v7, v1, :cond_a

    add-int/lit8 v7, v3, 0x8

    or-int v14, v28, v27

    invoke-static {v3, v12}, Lg/baf;->bj(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sget-object v1, Lg/euh;->f:Lg/aul;

    move-wide/from16 v35, v5

    move-wide v5, v3

    move-wide/from16 v3, v35

    invoke-virtual/range {v1 .. v6}, Lg/aul;->f(Ljava/lang/Object;JD)V

    move/from16 v5, p4

    move v4, v7

    goto :goto_18

    :goto_19
    move v0, v11

    move-object v11, v9

    move/from16 v9, v19

    move/from16 v19, v0

    move/from16 v0, p5

    move v4, v3

    move/from16 v29, v10

    move-object v3, v12

    move-object v5, v15

    move/from16 v14, v28

    move/from16 v10, v33

    move-object v12, v1

    goto/16 :goto_3c

    :cond_27
    move-object v10, v1

    move-object v1, v2

    move/from16 v33, v11

    move-object v2, v12

    move/from16 v27, v14

    const/16 v18, 0x0

    const/16 v20, -0x1

    move-object/from16 v12, p2

    move v11, v3

    move/from16 v35, v19

    move/from16 v19, v15

    move-wide/from16 v14, v28

    move/from16 v28, v35

    const/16 v3, 0x1b

    move/from16 v29, v9

    if-ne v5, v3, :cond_2b

    const/4 v3, 0x2

    if-ne v7, v3, :cond_2a

    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gmb;

    move-object v3, v2

    check-cast v3, Lg/bxh;

    iget-boolean v3, v3, Lg/bxh;->e:Z

    if-nez v3, :cond_29

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_28

    const/16 v9, 0xa

    goto :goto_1a

    :cond_28
    add-int v9, v3, v3

    :goto_1a
    invoke-interface {v2, v9}, Lg/gmb;->zzd(I)Lg/gmb;

    move-result-object v2

    invoke-virtual {v10, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_29
    move-object v6, v2

    invoke-virtual {v0, v11}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v1

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v3, v12

    move/from16 v2, v19

    move/from16 v4, v28

    move-object/from16 v12, p1

    invoke-static/range {v1 .. v7}, Lg/baf;->ab(Lg/dxm;I[BIILg/gmb;Lg/dsc;)I

    move-result v4

    move v1, v2

    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v15, v1

    move-object v1, v10

    move v8, v11

    move-object v2, v12

    move/from16 v14, v27

    move/from16 v9, v29

    goto/16 :goto_6

    :cond_2a
    move-object v12, v1

    move-object/from16 v3, p2

    move-object v1, v10

    move/from16 v9, v19

    move/from16 v19, v28

    move/from16 v10, v33

    move-object/from16 v28, v8

    move-object v8, v0

    goto/16 :goto_31

    :cond_2b
    move-object v12, v1

    move/from16 v1, v19

    move/from16 v3, v28

    const/16 v9, 0x31

    if-gt v5, v9, :cond_7f

    move/from16 v28, v3

    int-to-long v3, v4

    invoke-virtual {v10, v12, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/gmb;

    move/from16 v34, v1

    move-object v1, v9

    check-cast v1, Lg/bxh;

    iget-boolean v1, v1, Lg/bxh;->e:Z

    if-nez v1, :cond_2c

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v1

    invoke-interface {v9, v1}, Lg/gmb;->zzd(I)Lg/gmb;

    move-result-object v9

    invoke-virtual {v10, v12, v14, v15, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2c
    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    const/4 v14, 0x0

    packed-switch v5, :pswitch_data_1

    const/4 v5, 0x3

    if-ne v7, v5, :cond_2e

    and-int/lit8 v1, v34, -0x8

    or-int/lit8 v6, v1, 0x4

    invoke-virtual {v0, v11}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v2

    invoke-interface {v2}, Lg/dxm;->zze()Lg/fsu;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v4, v28

    move/from16 v13, v34

    invoke-static/range {v1 .. v7}, Lg/baf;->ao(Ljava/lang/Object;Lg/dxm;[BIIILg/dsc;)I

    move-result v14

    move v15, v4

    move-object v4, v1

    move v1, v6

    move-object v6, v7

    invoke-interface {v2, v4}, Lg/dxm;->aa(Ljava/lang/Object;)V

    iput-object v4, v6, Lg/dsc;->d:Ljava/lang/Object;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1b
    if-ge v14, v5, :cond_2d

    invoke-static {v3, v14, v6}, Lg/baf;->bb([BILg/dsc;)I

    move-result v4

    iget v7, v6, Lg/dsc;->b:I

    if-ne v13, v7, :cond_2d

    move v6, v1

    invoke-interface {v2}, Lg/dxm;->zze()Lg/fsu;

    move-result-object v1

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lg/baf;->ao(Ljava/lang/Object;Lg/dxm;[BIIILg/dsc;)I

    move-result v14

    move-object v4, v1

    move v1, v6

    move-object v6, v7

    invoke-interface {v2, v4}, Lg/dxm;->aa(Ljava/lang/Object;)V

    iput-object v4, v6, Lg/dsc;->d:Ljava/lang/Object;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2d
    move-object v4, v6

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move v9, v13

    move v5, v15

    move/from16 v10, v33

    move-object v8, v0

    move v0, v14

    goto/16 :goto_30

    :cond_2e
    move/from16 v5, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move/from16 v5, v28

    move/from16 v9, v34

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    :goto_1c
    move/from16 v10, v33

    move-object v8, v0

    goto/16 :goto_2f

    :pswitch_d
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v15, v28

    move/from16 v13, v34

    const/4 v2, 0x2

    if-ne v7, v2, :cond_32

    if-nez v9, :cond_31

    invoke-static {v3, v15, v6}, Lg/baf;->bb([BILg/dsc;)I

    move-result v2

    iget v4, v6, Lg/dsc;->b:I

    add-int/2addr v4, v2

    if-lt v2, v4, :cond_30

    if-ne v2, v4, :cond_2f

    :goto_1d
    move-object v4, v6

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move v9, v13

    move v5, v15

    move/from16 v10, v33

    move-object v8, v0

    move v0, v2

    goto/16 :goto_30

    :cond_2f
    new-instance v2, Lg/fba;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_30
    invoke-static {v3, v2, v6}, Lg/baf;->ar([BILg/dsc;)I

    throw v14

    :cond_31
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_32
    if-eqz v7, :cond_34

    :cond_33
    move-object v4, v6

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move v9, v13

    move v5, v15

    goto :goto_1c

    :cond_34
    if-nez v9, :cond_35

    invoke-static {v3, v15, v6}, Lg/baf;->ar([BILg/dsc;)I

    throw v14

    :cond_35
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :pswitch_e
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v15, v28

    move/from16 v13, v34

    const/4 v2, 0x2

    if-ne v7, v2, :cond_38

    check-cast v9, Lg/gwj;

    invoke-static {v3, v15, v6}, Lg/baf;->bb([BILg/dsc;)I

    move-result v2

    iget v4, v6, Lg/dsc;->b:I

    add-int/2addr v4, v2

    :goto_1e
    if-ge v2, v4, :cond_36

    invoke-static {v3, v2, v6}, Lg/baf;->bb([BILg/dsc;)I

    move-result v2

    iget v7, v6, Lg/dsc;->b:I

    and-int/lit8 v14, v7, 0x1

    const/16 v31, 0x1

    ushr-int/lit8 v7, v7, 0x1

    neg-int v14, v14

    xor-int/2addr v7, v14

    invoke-virtual {v9, v7}, Lg/gwj;->i(I)V

    goto :goto_1e

    :cond_36
    if-ne v2, v4, :cond_37

    goto :goto_1d

    :cond_37
    new-instance v2, Lg/fba;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_38
    if-nez v7, :cond_33

    check-cast v9, Lg/gwj;

    invoke-static {v3, v15, v6}, Lg/baf;->bb([BILg/dsc;)I

    move-result v1

    iget v2, v6, Lg/dsc;->b:I

    and-int/lit8 v4, v2, 0x1

    const/16 v31, 0x1

    ushr-int/lit8 v2, v2, 0x1

    neg-int v4, v4

    xor-int/2addr v2, v4

    invoke-virtual {v9, v2}, Lg/gwj;->i(I)V

    :goto_1f
    if-ge v1, v5, :cond_39

    invoke-static {v3, v1, v6}, Lg/baf;->bb([BILg/dsc;)I

    move-result v2

    iget v4, v6, Lg/dsc;->b:I

    if-ne v13, v4, :cond_39

    invoke-static {v3, v2, v6}, Lg/baf;->bb([BILg/dsc;)I

    move-result v1

    iget v2, v6, Lg/dsc;->b:I

    and-int/lit8 v4, v2, 0x1

    const/16 v31, 0x1

    ushr-int/lit8 v2, v2, 0x1

    neg-int v4, v4

    xor-int/2addr v2, v4

    invoke-virtual {v9, v2}, Lg/gwj;->i(I)V

    goto :goto_1f

    :cond_39
    move-object v4, v6

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move v9, v13

    move v5, v15

    move/from16 v10, v33

    move-object v8, v0

    move v0, v1

    goto/16 :goto_30

    :pswitch_f
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v15, v28

    move/from16 v13, v34

    const/4 v2, 0x2

    if-ne v7, v2, :cond_3a

    invoke-static {v3, v15, v9, v6}, Lg/baf;->ay([BILg/gmb;Lg/dsc;)I

    move-result v1

    move v4, v15

    goto :goto_20

    :cond_3a
    if-nez v7, :cond_42

    move-object v2, v3

    move v4, v5

    move-object v5, v9

    move v1, v13

    move v3, v15

    invoke-static/range {v1 .. v6}, Lg/baf;->ae(I[BIILg/gmb;Lg/dsc;)I

    move-result v7

    move v5, v4

    move v4, v3

    move-object v3, v2

    move v1, v7

    :goto_20
    invoke-virtual {v0, v11}, Lg/dei;->r(I)Lg/ebv;

    move-result-object v2

    sget-object v7, Lg/gog;->a:Lg/cuf;

    if-eqz v2, :cond_40

    iget-object v7, v0, Lg/dei;->h:Lg/cuf;

    if-eqz v9, :cond_3e

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v19, v1

    move-object/from16 v28, v8

    move-object v8, v14

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_21
    if-ge v14, v15, :cond_3d

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v34, v10

    move-object/from16 v10, v22

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lg/ebv;->zza(I)Z

    move-result v22

    if-eqz v22, :cond_3c

    if-eq v14, v1, :cond_3b

    invoke-interface {v9, v1, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, v33

    goto :goto_22

    :cond_3c
    move/from16 v10, v33

    invoke-static {v12, v10, v0, v8, v7}, Lg/gog;->e(Ljava/lang/Object;IILjava/lang/Object;Lg/cuf;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    :goto_22
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v33, v10

    move-object/from16 v10, v34

    goto :goto_21

    :cond_3d
    move-object/from16 v34, v10

    move/from16 v10, v33

    if-eq v1, v15, :cond_41

    invoke-interface {v9, v1, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_24

    :cond_3e
    move/from16 v19, v1

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3f
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lg/ebv;->zza(I)Z

    move-result v8

    if-nez v8, :cond_3f

    invoke-static {v12, v10, v1, v14, v7}, Lg/gog;->e(Ljava/lang/Object;IILjava/lang/Object;Lg/cuf;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_23

    :cond_40
    move/from16 v19, v1

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    :cond_41
    :goto_24
    move-object/from16 v8, p0

    move v5, v4

    move-object v4, v6

    move v9, v13

    move/from16 v0, v19

    goto/16 :goto_30

    :cond_42
    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    move-object/from16 v8, p0

    move-object v4, v6

    move v9, v13

    move v5, v15

    goto/16 :goto_2f

    :pswitch_10
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v4, v28

    move/from16 v13, v34

    const/4 v0, 0x2

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    if-ne v7, v0, :cond_4a

    invoke-static {v3, v4, v6}, Lg/baf;->bb([BILg/dsc;)I

    move-result v0

    iget v7, v6, Lg/dsc;->b:I

    if-ltz v7, :cond_49

    array-length v8, v3

    sub-int/2addr v8, v0

    if-gt v7, v8, :cond_48

    if-nez v7, :cond_43

    sget-object v7, Lg/aki;->a:Lg/gto;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_43
    invoke-static {v0, v3, v7}, Lg/aki;->c(I[BI)Lg/gto;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    add-int/2addr v0, v7

    :goto_26
    if-ge v0, v5, :cond_47

    invoke-static {v3, v0, v6}, Lg/baf;->bb([BILg/dsc;)I

    move-result v7

    iget v8, v6, Lg/dsc;->b:I

    if-ne v13, v8, :cond_47

    invoke-static {v3, v7, v6}, Lg/baf;->bb([BILg/dsc;)I

    move-result v0

    iget v7, v6, Lg/dsc;->b:I

    if-ltz v7, :cond_46

    array-length v8, v3

    sub-int/2addr v8, v0

    if-gt v7, v8, :cond_45

    if-nez v7, :cond_44

    sget-object v7, Lg/aki;->a:Lg/gto;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_44
    invoke-static {v0, v3, v7}, Lg/aki;->c(I[BI)Lg/gto;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_45
    new-instance v0, Lg/fba;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    new-instance v0, Lg/fba;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    move-object/from16 v8, p0

    move v5, v4

    move-object v4, v6

    move v9, v13

    goto/16 :goto_30

    :cond_48
    new-instance v0, Lg/fba;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    new-instance v0, Lg/fba;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    move-object/from16 v8, p0

    move v5, v4

    move-object v4, v6

    move v9, v13

    goto/16 :goto_2f

    :pswitch_11
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v4, v28

    move/from16 v13, v34

    const/4 v0, 0x2

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    if-ne v7, v0, :cond_4a

    move-object/from16 v8, p0

    invoke-virtual {v8, v11}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v1

    move-object v7, v6

    move-object v6, v9

    move v2, v13

    invoke-static/range {v1 .. v7}, Lg/baf;->ab(Lg/dxm;I[BIILg/gmb;Lg/dsc;)I

    move-result v0

    move v9, v2

    move v5, v4

    move-object v4, v7

    goto/16 :goto_30

    :pswitch_12
    move/from16 v5, p4

    move-object/from16 v15, p6

    move-wide/from16 v22, v3

    move-object v3, v9

    move/from16 v14, v28

    move/from16 v1, v34

    move-object/from16 v9, p2

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    move-object v8, v0

    const/4 v0, 0x2

    if-ne v7, v0, :cond_58

    const-wide/32 v30, 0x20000000

    and-long v22, v22, v30

    cmp-long v0, v22, v25

    if-nez v0, :cond_50

    invoke-static {v9, v14, v15}, Lg/baf;->bb([BILg/dsc;)I

    move-result v0

    iget v4, v15, Lg/dsc;->b:I

    if-ltz v4, :cond_4f

    if-nez v4, :cond_4b

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_4b
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lg/cua;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v9, v0, v4, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/2addr v0, v4

    :goto_28
    if-ge v0, v5, :cond_4e

    invoke-static {v9, v0, v15}, Lg/baf;->bb([BILg/dsc;)I

    move-result v4

    iget v6, v15, Lg/dsc;->b:I

    if-ne v1, v6, :cond_4e

    invoke-static {v9, v4, v15}, Lg/baf;->bb([BILg/dsc;)I

    move-result v0

    iget v4, v15, Lg/dsc;->b:I

    if-ltz v4, :cond_4d

    if-nez v4, :cond_4c

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_4c
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lg/cua;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v9, v0, v4, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_4d
    new-instance v0, Lg/fba;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    move-object v3, v9

    move v5, v14

    move-object v4, v15

    move v9, v1

    goto/16 :goto_30

    :cond_4f
    new-instance v0, Lg/fba;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    invoke-static {v9, v14, v15}, Lg/baf;->bb([BILg/dsc;)I

    move-result v0

    iget v4, v15, Lg/dsc;->b:I

    if-ltz v4, :cond_57

    if-nez v4, :cond_51

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v22, v14

    goto :goto_29

    :cond_51
    add-int v7, v0, v4

    invoke-static {v0, v9, v7}, Lg/bib;->b(I[BI)Z

    move-result v19

    if-eqz v19, :cond_56

    move/from16 v19, v7

    new-instance v7, Ljava/lang/String;

    move/from16 v22, v14

    sget-object v14, Lg/cua;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, v9, v0, v4, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v19

    :goto_29
    if-ge v0, v5, :cond_55

    invoke-static {v9, v0, v15}, Lg/baf;->bb([BILg/dsc;)I

    move-result v4

    iget v7, v15, Lg/dsc;->b:I

    if-ne v1, v7, :cond_55

    invoke-static {v9, v4, v15}, Lg/baf;->bb([BILg/dsc;)I

    move-result v0

    iget v4, v15, Lg/dsc;->b:I

    if-ltz v4, :cond_54

    if-nez v4, :cond_52

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_52
    add-int v7, v0, v4

    invoke-static {v0, v9, v7}, Lg/bib;->b(I[BI)Z

    move-result v14

    if-eqz v14, :cond_53

    new-instance v14, Ljava/lang/String;

    move/from16 v19, v1

    sget-object v1, Lg/cua;->a:Ljava/nio/charset/Charset;

    invoke-direct {v14, v9, v0, v4, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v7

    move/from16 v1, v19

    goto :goto_29

    :cond_53
    new-instance v0, Lg/fba;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    new-instance v0, Lg/fba;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    move/from16 v19, v1

    move-object v3, v9

    move-object v4, v15

    move/from16 v9, v19

    move/from16 v5, v22

    goto/16 :goto_30

    :cond_56
    new-instance v0, Lg/fba;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    new-instance v0, Lg/fba;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    move-object v3, v9

    move v5, v14

    move-object v4, v15

    move v9, v1

    goto/16 :goto_2f

    :pswitch_13
    move/from16 v5, p4

    move-object/from16 v15, p6

    move-object v3, v9

    move/from16 v4, v28

    move/from16 v13, v34

    const/4 v2, 0x2

    move-object/from16 v9, p2

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    move-object v8, v0

    if-ne v7, v2, :cond_5d

    if-nez v3, :cond_5c

    invoke-static {v9, v4, v15}, Lg/baf;->bb([BILg/dsc;)I

    move-result v0

    iget v2, v15, Lg/dsc;->b:I

    add-int/2addr v2, v0

    if-lt v0, v2, :cond_5b

    if-ne v0, v2, :cond_5a

    :cond_59
    :goto_2a
    move v5, v4

    move-object v3, v9

    move v9, v13

    move-object v4, v15

    goto/16 :goto_30

    :cond_5a
    new-instance v0, Lg/fba;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    invoke-static {v9, v0, v15}, Lg/baf;->ar([BILg/dsc;)I

    throw v14

    :cond_5c
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_5d
    if-eqz v7, :cond_5f

    :cond_5e
    :goto_2b
    move v5, v4

    move-object v3, v9

    move v9, v13

    move-object v4, v15

    goto/16 :goto_2f

    :cond_5f
    if-nez v3, :cond_60

    invoke-static {v9, v4, v15}, Lg/baf;->ar([BILg/dsc;)I

    throw v14

    :cond_60
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_14
    move/from16 v5, p4

    move-object/from16 v15, p6

    move-object v3, v9

    move/from16 v4, v28

    move/from16 v13, v34

    const/4 v2, 0x2

    move-object/from16 v9, p2

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    move-object v8, v0

    if-ne v7, v2, :cond_67

    move-object v0, v3

    check-cast v0, Lg/gwj;

    invoke-static {v9, v4, v15}, Lg/baf;->bb([BILg/dsc;)I

    move-result v2

    iget v3, v15, Lg/dsc;->b:I

    add-int v6, v2, v3

    array-length v7, v9

    if-gt v6, v7, :cond_66

    iget v7, v0, Lg/gwj;->c:I

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v7

    iget-object v7, v0, Lg/gwj;->d:[I

    array-length v7, v7

    if-gt v3, v7, :cond_61

    goto :goto_2d

    :cond_61
    if-eqz v7, :cond_63

    :goto_2c
    if-ge v7, v3, :cond_62

    mul-int/lit8 v7, v7, 0x3

    const/16 v32, 0x2

    div-int/lit8 v7, v7, 0x2

    const/16 v31, 0x1

    add-int/lit8 v7, v7, 0x1

    const/16 v14, 0xa

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_2c

    :cond_62
    iget-object v3, v0, Lg/gwj;->d:[I

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v0, Lg/gwj;->d:[I

    goto :goto_2d

    :cond_63
    const/16 v14, 0xa

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v0, Lg/gwj;->d:[I

    :goto_2d
    if-ge v2, v6, :cond_64

    invoke-static {v9, v2}, Lg/baf;->az([BI)I

    move-result v3

    invoke-virtual {v0, v3}, Lg/gwj;->i(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_2d

    :cond_64
    if-ne v2, v6, :cond_65

    move v0, v2

    goto/16 :goto_2a

    :cond_65
    new-instance v0, Lg/fba;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    new-instance v0, Lg/fba;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    const/4 v1, 0x5

    if-ne v7, v1, :cond_5e

    add-int/lit8 v0, v4, 0x4

    move-object v1, v3

    check-cast v1, Lg/gwj;

    invoke-static {v9, v4}, Lg/baf;->az([BI)I

    move-result v2

    invoke-virtual {v1, v2}, Lg/gwj;->i(I)V

    :goto_2e
    if-ge v0, v5, :cond_59

    invoke-static {v9, v0, v15}, Lg/baf;->bb([BILg/dsc;)I

    move-result v2

    iget v3, v15, Lg/dsc;->b:I

    if-ne v13, v3, :cond_59

    invoke-static {v9, v2}, Lg/baf;->az([BI)I

    move-result v0

    invoke-virtual {v1, v0}, Lg/gwj;->i(I)V

    add-int/lit8 v0, v2, 0x4

    goto :goto_2e

    :pswitch_15
    move/from16 v5, p4

    move-object/from16 v15, p6

    move-object v3, v9

    move/from16 v4, v28

    move/from16 v13, v34

    const/4 v2, 0x2

    move-object/from16 v9, p2

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    move-object v8, v0

    if-ne v7, v2, :cond_6a

    if-nez v3, :cond_69

    invoke-static {v9, v4, v15}, Lg/baf;->bb([BILg/dsc;)I

    move-result v0

    iget v2, v15, Lg/dsc;->b:I

    add-int/2addr v0, v2

    array-length v2, v9

    if-le v0, v2, :cond_68

    new-instance v0, Lg/fba;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    throw v14

    :cond_69
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_6a
    const/4 v1, 0x1

    if-eq v7, v1, :cond_6b

    goto/16 :goto_2b

    :cond_6b
    if-nez v3, :cond_6c

    invoke-static {v4, v9}, Lg/baf;->bj(I[B)J

    throw v14

    :cond_6c
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_16
    move/from16 v5, p4

    move-object/from16 v15, p6

    move-object v3, v9

    move/from16 v4, v28

    move/from16 v13, v34

    const/4 v2, 0x2

    move-object/from16 v9, p2

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    move-object v8, v0

    if-ne v7, v2, :cond_6d

    invoke-static {v9, v4, v3, v15}, Lg/baf;->ay([BILg/gmb;Lg/dsc;)I

    move-result v0

    goto/16 :goto_2a

    :cond_6d
    if-nez v7, :cond_5e

    move v1, v5

    move-object v5, v3

    move v3, v4

    move v4, v1

    move-object v2, v9

    move v1, v13

    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lg/baf;->ae(I[BIILg/gmb;Lg/dsc;)I

    move-result v0

    move v9, v1

    move v5, v3

    move-object v4, v6

    move-object v3, v2

    goto/16 :goto_30

    :pswitch_17
    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object v6, v9

    move/from16 v5, v28

    move/from16 v9, v34

    const/4 v2, 0x2

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    move-object v8, v0

    if-ne v7, v2, :cond_71

    if-nez v6, :cond_70

    invoke-static {v3, v5, v4}, Lg/baf;->bb([BILg/dsc;)I

    move-result v0

    iget v2, v4, Lg/dsc;->b:I

    add-int/2addr v2, v0

    if-lt v0, v2, :cond_6f

    if-ne v0, v2, :cond_6e

    goto/16 :goto_30

    :cond_6e
    new-instance v0, Lg/fba;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    invoke-static {v3, v0, v4}, Lg/baf;->ar([BILg/dsc;)I

    throw v14

    :cond_70
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_71
    if-eqz v7, :cond_72

    goto/16 :goto_2f

    :cond_72
    if-nez v6, :cond_73

    invoke-static {v3, v5, v4}, Lg/baf;->ar([BILg/dsc;)I

    throw v14

    :cond_73
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_18
    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object v6, v9

    move/from16 v5, v28

    move/from16 v9, v34

    const/4 v2, 0x2

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    move-object v8, v0

    if-ne v7, v2, :cond_76

    if-nez v6, :cond_75

    invoke-static {v3, v5, v4}, Lg/baf;->bb([BILg/dsc;)I

    move-result v0

    iget v2, v4, Lg/dsc;->b:I

    add-int/2addr v0, v2

    array-length v2, v3

    if-le v0, v2, :cond_74

    new-instance v0, Lg/fba;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    throw v14

    :cond_75
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_76
    const/4 v1, 0x5

    if-eq v7, v1, :cond_77

    goto :goto_2f

    :cond_77
    if-nez v6, :cond_78

    invoke-static {v3, v5}, Lg/baf;->az([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v14

    :cond_78
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_19
    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move-object v6, v9

    move/from16 v5, v28

    move/from16 v9, v34

    const/4 v2, 0x2

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    move-object v8, v0

    if-ne v7, v2, :cond_7b

    if-nez v6, :cond_7a

    invoke-static {v3, v5, v4}, Lg/baf;->bb([BILg/dsc;)I

    move-result v0

    iget v2, v4, Lg/dsc;->b:I

    add-int/2addr v0, v2

    array-length v2, v3

    if-le v0, v2, :cond_79

    new-instance v0, Lg/fba;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    throw v14

    :cond_7a
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_7b
    const/4 v1, 0x1

    if-eq v7, v1, :cond_7d

    :goto_2f
    move v0, v5

    :goto_30
    if-eq v0, v5, :cond_7c

    move/from16 v5, p4

    move-object v6, v4

    move v15, v9

    move v7, v10

    move-object v2, v12

    move/from16 v14, v27

    move/from16 v9, v29

    move-object/from16 v1, v34

    const v16, 0xfffff

    move v4, v0

    move-object v0, v8

    move v8, v11

    goto/16 :goto_1

    :cond_7c
    move-object v5, v4

    move/from16 v19, v11

    move/from16 v14, v27

    move-object/from16 v8, v28

    move-object/from16 v11, v34

    move v4, v0

    move/from16 v0, p5

    goto/16 :goto_3c

    :cond_7d
    if-nez v6, :cond_7e

    invoke-static {v5, v3}, Lg/baf;->bj(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v14

    :cond_7e
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_7f
    move v9, v1

    move/from16 v19, v3

    move-object/from16 v28, v8

    move-object/from16 v34, v10

    move/from16 v10, v33

    move-object/from16 v3, p2

    move-object v8, v0

    const/16 v0, 0x32

    if-ne v5, v0, :cond_82

    const/4 v2, 0x2

    if-ne v7, v2, :cond_81

    const/4 v5, 0x3

    div-int/lit8 v3, v11, 0x3

    add-int/2addr v3, v3

    aget-object v0, v17, v3

    move-object/from16 v1, v34

    invoke-virtual {v1, v12, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lg/ou;

    invoke-virtual {v3}, Lg/ou;->d()Z

    move-result v3

    if-nez v3, :cond_80

    sget-object v3, Lg/ou;->a:Lg/ou;

    invoke-virtual {v3}, Lg/ou;->e()Lg/ou;

    move-result-object v3

    invoke-static {v3, v2}, Lg/fbc;->t(Ljava/lang/Object;Ljava/lang/Object;)Lg/ou;

    invoke-virtual {v1, v12, v14, v15, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_80
    invoke-static {v0}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_81
    move-object/from16 v1, v34

    :goto_31
    move/from16 v0, p5

    move-object/from16 v5, p6

    move/from16 v4, v19

    move/from16 v14, v27

    move-object/from16 v8, v28

    move/from16 v19, v11

    move-object v11, v1

    goto/16 :goto_3c

    :cond_82
    move-object/from16 v1, v34

    add-int/lit8 v0, v11, 0x2

    aget v0, v21, v0

    const v16, 0xfffff

    and-int v0, v0, v16

    move-object v2, v1

    int-to-long v0, v0

    packed-switch v5, :pswitch_data_2

    :cond_83
    move-object/from16 v5, p6

    move/from16 v4, v19

    move-object/from16 v8, v28

    move/from16 v19, v11

    move-object v11, v2

    goto/16 :goto_3a

    :pswitch_1a
    const/4 v5, 0x3

    if-ne v7, v5, :cond_83

    and-int/lit8 v0, v9, -0x8

    or-int/lit8 v6, v0, 0x4

    invoke-virtual {v8, v10, v11, v12}, Lg/dei;->ab(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v34, v2

    invoke-virtual {v8, v11}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v4, v19

    move-object/from16 v13, v34

    invoke-static/range {v1 .. v7}, Lg/baf;->ao(Ljava/lang/Object;Lg/dxm;[BIIILg/dsc;)I

    move-result v0

    move-object v6, v7

    invoke-virtual {v8, v12, v10, v1, v11}, Lg/dei;->ag(Ljava/lang/Object;ILjava/lang/Object;I)V

    move v2, v0

    :goto_32
    move-object v5, v6

    :goto_33
    move/from16 v19, v11

    move-object v11, v13

    move-object/from16 v8, v28

    goto/16 :goto_3b

    :pswitch_1b
    move-object/from16 v6, p6

    move-object v13, v2

    move/from16 v4, v19

    if-nez v7, :cond_84

    invoke-static {v3, v4, v6}, Lg/baf;->ar([BILg/dsc;)I

    move-result v2

    iget-wide v7, v6, Lg/dsc;->c:J

    move-wide/from16 v24, v7

    and-long v7, v24, v22

    const/16 v31, 0x1

    ushr-long v22, v24, v31

    neg-long v7, v7

    xor-long v7, v22, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v12, v14, v15, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v0, v1, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_32

    :cond_84
    :goto_34
    move-object v5, v6

    move/from16 v19, v11

    move-object v11, v13

    move-object/from16 v8, v28

    goto/16 :goto_3a

    :pswitch_1c
    move-object/from16 v6, p6

    move-object v13, v2

    move/from16 v4, v19

    if-nez v7, :cond_84

    invoke-static {v3, v4, v6}, Lg/baf;->bb([BILg/dsc;)I

    move-result v2

    iget v5, v6, Lg/dsc;->b:I

    and-int/lit8 v7, v5, 0x1

    const/16 v31, 0x1

    ushr-int/lit8 v5, v5, 0x1

    neg-int v7, v7

    xor-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v12, v14, v15, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v0, v1, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_32

    :pswitch_1d
    move-object/from16 v6, p6

    move-object v13, v2

    move/from16 v4, v19

    if-nez v7, :cond_88

    invoke-static {v3, v4, v6}, Lg/baf;->bb([BILg/dsc;)I

    move-result v2

    iget v5, v6, Lg/dsc;->b:I

    move-object/from16 v8, p0

    invoke-virtual {v8, v11}, Lg/dei;->r(I)Lg/ebv;

    move-result-object v7

    if-eqz v7, :cond_85

    invoke-interface {v7, v5}, Lg/ebv;->zza(I)Z

    move-result v7

    if-eqz v7, :cond_86

    :cond_85
    move-object/from16 v7, v28

    goto :goto_35

    :cond_86
    move-object v0, v12

    check-cast v0, Lg/fsu;

    iget-object v1, v0, Lg/fsu;->zzc:Lg/wl;

    move-object/from16 v7, v28

    if-ne v1, v7, :cond_87

    invoke-static {}, Lg/wl;->g()Lg/wl;

    move-result-object v1

    iput-object v1, v0, Lg/fsu;->zzc:Lg/wl;

    :cond_87
    int-to-long v14, v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lg/wl;->k(ILjava/lang/Object;)V

    goto :goto_36

    :goto_35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v12, v14, v15, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v0, v1, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_36
    move-object v5, v6

    move-object v8, v7

    move/from16 v19, v11

    move-object v11, v13

    goto/16 :goto_3b

    :cond_88
    move-object/from16 v8, p0

    goto :goto_34

    :pswitch_1e
    move-object/from16 v6, p6

    move-object v13, v2

    move/from16 v4, v19

    const/4 v2, 0x2

    if-ne v7, v2, :cond_84

    invoke-static {v3, v4, v6}, Lg/baf;->ac([BILg/dsc;)I

    move-result v2

    iget-object v5, v6, Lg/dsc;->d:Ljava/lang/Object;

    invoke-virtual {v13, v12, v14, v15, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v13, v12, v0, v1, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_32

    :pswitch_1f
    move-object/from16 v6, p6

    move-object v13, v2

    move/from16 v4, v19

    const/4 v2, 0x2

    if-ne v7, v2, :cond_84

    invoke-virtual {v8, v10, v11, v12}, Lg/dei;->ab(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v11}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v2

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lg/baf;->bp(Ljava/lang/Object;Lg/dxm;[BIILg/dsc;)I

    move-result v0

    move-object v5, v6

    invoke-virtual {v8, v12, v10, v1, v11}, Lg/dei;->ag(Ljava/lang/Object;ILjava/lang/Object;I)V

    move v2, v0

    goto/16 :goto_33

    :pswitch_20
    move-object/from16 v5, p6

    move/from16 v22, v4

    move/from16 v4, v19

    move-object/from16 v8, v28

    move/from16 v19, v11

    move-object v11, v2

    const/4 v2, 0x2

    if-ne v7, v2, :cond_8d

    invoke-static {v3, v4, v5}, Lg/baf;->bb([BILg/dsc;)I

    move-result v2

    iget v7, v5, Lg/dsc;->b:I

    if-nez v7, :cond_89

    invoke-virtual {v11, v12, v14, v15, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_38

    :cond_89
    and-int v13, v22, v24

    move/from16 v22, v13

    add-int v13, v2, v7

    if-eqz v22, :cond_8b

    invoke-static {v2, v3, v13}, Lg/bib;->b(I[BI)Z

    move-result v22

    if-eqz v22, :cond_8a

    goto :goto_37

    :cond_8a
    new-instance v0, Lg/fba;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    :goto_37
    new-instance v6, Ljava/lang/String;

    move/from16 v22, v13

    sget-object v13, Lg/cua;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v2, v7, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v11, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v2, v22

    :goto_38
    invoke-virtual {v11, v12, v0, v1, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3b

    :pswitch_21
    move-object/from16 v5, p6

    move/from16 v4, v19

    move-object/from16 v8, v28

    move/from16 v19, v11

    move-object v11, v2

    if-nez v7, :cond_8d

    invoke-static {v3, v4, v5}, Lg/baf;->ar([BILg/dsc;)I

    move-result v2

    iget-wide v6, v5, Lg/dsc;->c:J

    cmp-long v13, v6, v25

    if-eqz v13, :cond_8c

    const/16 v31, 0x1

    goto :goto_39

    :cond_8c
    const/16 v31, 0x0

    :goto_39
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v11, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v12, v0, v1, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3b

    :pswitch_22
    move-object/from16 v5, p6

    move/from16 v4, v19

    move-object/from16 v8, v28

    move/from16 v19, v11

    move-object v11, v2

    const/4 v2, 0x5

    if-ne v7, v2, :cond_8d

    add-int/lit8 v2, v4, 0x4

    invoke-static {v3, v4}, Lg/baf;->az([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v12, v0, v1, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3b

    :pswitch_23
    move-object/from16 v5, p6

    move/from16 v4, v19

    move-object/from16 v8, v28

    move/from16 v19, v11

    move-object v11, v2

    const/4 v2, 0x1

    if-ne v7, v2, :cond_8d

    add-int/lit8 v2, v4, 0x8

    invoke-static {v4, v3}, Lg/baf;->bj(I[B)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v11, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v12, v0, v1, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_3b

    :pswitch_24
    move-object/from16 v5, p6

    move/from16 v4, v19

    move-object/from16 v8, v28

    move/from16 v19, v11

    move-object v11, v2

    if-nez v7, :cond_8d

    invoke-static {v3, v4, v5}, Lg/baf;->bb([BILg/dsc;)I

    move-result v2

    iget v6, v5, Lg/dsc;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v11, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v12, v0, v1, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3b

    :pswitch_25
    move-object/from16 v5, p6

    move/from16 v4, v19

    move-object/from16 v8, v28

    move/from16 v19, v11

    move-object v11, v2

    if-nez v7, :cond_8d

    invoke-static {v3, v4, v5}, Lg/baf;->ar([BILg/dsc;)I

    move-result v2

    iget-wide v6, v5, Lg/dsc;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v11, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v12, v0, v1, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3b

    :pswitch_26
    move-object/from16 v5, p6

    move/from16 v4, v19

    move-object/from16 v8, v28

    move/from16 v19, v11

    move-object v11, v2

    const/4 v2, 0x5

    if-ne v7, v2, :cond_8d

    add-int/lit8 v2, v4, 0x4

    invoke-static {v3, v4}, Lg/baf;->az([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v11, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v12, v0, v1, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3b

    :pswitch_27
    move-object/from16 v5, p6

    move/from16 v4, v19

    move-object/from16 v8, v28

    move/from16 v19, v11

    move-object v11, v2

    const/4 v2, 0x1

    if-ne v7, v2, :cond_8d

    add-int/lit8 v2, v4, 0x8

    invoke-static {v4, v3}, Lg/baf;->bj(I[B)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v11, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v12, v0, v1, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3b

    :cond_8d
    :goto_3a
    move v2, v4

    :goto_3b
    if-eq v2, v4, :cond_8e

    move-object/from16 v0, p0

    move v4, v2

    move-object v6, v5

    move v15, v9

    move v7, v10

    move-object v1, v11

    move-object v2, v12

    move/from16 v8, v19

    move/from16 v14, v27

    move/from16 v9, v29

    goto/16 :goto_15

    :cond_8e
    move/from16 v0, p5

    move v4, v2

    move/from16 v14, v27

    :goto_3c
    if-ne v9, v0, :cond_8f

    if-eqz v0, :cond_8f

    move/from16 v5, p4

    move v15, v9

    move/from16 v9, v29

    :goto_3d
    const v1, 0xfffff

    goto :goto_3e

    :cond_8f
    move-object v1, v12

    check-cast v1, Lg/fsu;

    iget-object v2, v1, Lg/fsu;->zzc:Lg/wl;

    if-ne v2, v8, :cond_90

    invoke-static {}, Lg/wl;->g()Lg/wl;

    move-result-object v2

    iput-object v2, v1, Lg/fsu;->zzc:Lg/wl;

    :cond_90
    move-object v6, v5

    move v1, v9

    move-object v5, v2

    move-object v2, v3

    move v3, v4

    move/from16 v4, p4

    invoke-static/range {v1 .. v6}, Lg/baf;->bi(I[BIILg/wl;Lg/dsc;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v6, p6

    move v15, v1

    move v5, v4

    move v7, v10

    move-object v1, v11

    move-object v2, v12

    move/from16 v8, v19

    move/from16 v9, v29

    const v16, 0xfffff

    move v4, v3

    move-object/from16 v3, p2

    goto/16 :goto_1

    :cond_91
    move/from16 v0, p5

    move-object v11, v1

    move/from16 v29, v9

    move-object/from16 v21, v12

    move-object/from16 v17, v13

    move/from16 v27, v14

    move-object v12, v2

    goto :goto_3d

    :goto_3e
    if-eq v9, v1, :cond_92

    int-to-long v1, v9

    invoke-virtual {v11, v12, v1, v2, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_92
    move-object/from16 v8, p0

    iget v1, v8, Lg/dei;->k:I

    :goto_3f
    iget v2, v8, Lg/dei;->c:I

    if-ge v1, v2, :cond_95

    iget-object v2, v8, Lg/dei;->g:[I

    aget v2, v2, v1

    aget v3, v21, v2

    invoke-virtual {v8, v2}, Lg/dei;->am(I)I

    move-result v3

    const v16, 0xfffff

    and-int v3, v3, v16

    int-to-long v6, v3

    invoke-static {v6, v7, v12}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_93

    goto :goto_40

    :cond_93
    invoke-virtual {v8, v2}, Lg/dei;->r(I)Lg/ebv;

    move-result-object v6

    if-nez v6, :cond_94

    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_94
    check-cast v3, Lg/ou;

    const/4 v5, 0x3

    div-int/2addr v2, v5

    add-int/2addr v2, v2

    aget-object v0, v17, v2

    invoke-static {v0}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_95
    const-string v1, "Failed to parse the message."

    if-nez v0, :cond_97

    if-ne v4, v5, :cond_96

    goto :goto_41

    :cond_96
    new-instance v0, Lg/fba;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    if-gt v4, v5, :cond_98

    if-ne v15, v0, :cond_98

    :goto_41
    return v4

    :cond_98
    new-instance v0, Lg/fba;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_99
    move-object v8, v0

    move-object v12, v2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mutating immutable message: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final af(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ag(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 5

    sget-object v0, Lg/dei;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p4}, Lg/dei;->am(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v3, v1

    invoke-virtual {v0, p1, v3, v4, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x2

    iget-object p3, p0, Lg/dei;->f:[I

    aget p3, p3, p4

    and-int/2addr p3, v2

    int-to-long p3, p3

    invoke-static {p1, p3, p4, p2}, Lg/euh;->u(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final ah(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p2, p3}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lg/dei;->am(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lg/dei;->a:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object p3

    invoke-virtual {p0, p2, p1}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lg/dei;->p(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lg/dxm;->zze()Lg/fsu;

    move-result-object v4

    invoke-interface {p3, v4, v0}, Lg/dxm;->al(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p2, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lg/dei;->p(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p3}, Lg/dxm;->zze()Lg/fsu;

    move-result-object v4

    invoke-interface {p3, v4, p2}, Lg/dxm;->al(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v4

    :cond_3
    invoke-interface {p3, p2, v0}, Lg/dxm;->al(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lg/dei;->f:[I

    aget p2, v0, p2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is present but null: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ai(Ljava/lang/Object;)Z
    .locals 14

    const/4 v6, 0x0

    const v7, 0xfffff

    const v2, 0xfffff

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    iget v4, p0, Lg/dei;->k:I

    const/4 v5, 0x1

    if-ge v8, v4, :cond_b

    iget-object v4, p0, Lg/dei;->g:[I

    aget v4, v4, v8

    iget-object v9, p0, Lg/dei;->f:[I

    aget v10, v9, v4

    invoke-virtual {p0, v4}, Lg/dei;->am(I)I

    move-result v11

    add-int/lit8 v12, v4, 0x2

    aget v9, v9, v12

    and-int v12, v9, v7

    ushr-int/lit8 v9, v9, 0x14

    shl-int/2addr v5, v9

    if-eq v12, v2, :cond_1

    if-eq v12, v7, :cond_0

    int-to-long v2, v12

    sget-object v9, Lg/dei;->a:Lsun/misc/Unsafe;

    invoke-virtual {v9, p1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    :cond_0
    move v2, v4

    move v4, v3

    move v3, v12

    goto :goto_1

    :cond_1
    move v13, v3

    move v3, v2

    move v2, v4

    move v4, v13

    :goto_1
    const/high16 v9, 0x10000000

    and-int/2addr v9, v11

    if-eqz v9, :cond_2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_2
    invoke-static {v11}, Lg/dei;->o(I)I

    move-result v9

    const/16 v12, 0x9

    if-eq v9, v12, :cond_8

    const/16 v12, 0x11

    if-eq v9, v12, :cond_8

    const/16 v5, 0x1b

    if-eq v9, v5, :cond_6

    const/16 v5, 0x3c

    if-eq v9, v5, :cond_5

    const/16 v5, 0x44

    if-eq v9, v5, :cond_5

    const/16 v5, 0x31

    if-eq v9, v5, :cond_6

    const/16 v5, 0x32

    if-eq v9, v5, :cond_3

    goto/16 :goto_4

    :cond_3
    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {v9, v10, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/ou;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    div-int/lit8 v4, v2, 0x3

    iget-object v1, p0, Lg/dei;->i:[Ljava/lang/Object;

    add-int/2addr v4, v4

    aget-object v1, v1, v4

    invoke-static {v1}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    :cond_5
    invoke-virtual {p0, v10, v2, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0, v2}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v2

    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {v9, v10, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lg/dxm;->ai(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_6
    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {v9, v10, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p0, v2}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v2

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Lg/dxm;->ai(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0, v2}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v2

    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {v9, v10, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lg/dxm;->ai(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    :goto_3
    return v6

    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v2, v3

    move v3, v4

    goto/16 :goto_0

    :cond_b
    return v5
.end method

.method public final aj(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lg/dei;->f:[I

    aget v1, v0, p2

    invoke-virtual {p0, v1, p2, p3}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lg/dei;->am(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v4, Lg/dei;->a:Lsun/misc/Unsafe;

    int-to-long v5, v2

    invoke-virtual {v4, p3, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p2}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object p3

    invoke-virtual {p0, v1, p2, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v2}, Lg/dei;->p(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4, p1, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lg/dxm;->zze()Lg/fsu;

    move-result-object v7

    invoke-interface {p3, v7, v2}, Lg/dxm;->al(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    add-int/lit8 p2, p2, 0x2

    aget p2, v0, p2

    and-int/2addr p2, v3

    int-to-long p2, p2

    invoke-static {p1, p2, p3, v1}, Lg/euh;->u(Ljava/lang/Object;JI)V

    return-void

    :cond_2
    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lg/dei;->p(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p3}, Lg/dxm;->zze()Lg/fsu;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lg/dxm;->al(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v5, v6, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v0

    :cond_3
    invoke-interface {p3, p2, v2}, Lg/dxm;->al(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    aget p2, v0, p2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is present but null: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ak(I)Lg/dxm;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lg/dei;->i:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Lg/dxm;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    sget-object v2, Lg/fjo;->a:Lg/fjo;

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lg/fjo;->d(Ljava/lang/Class;)Lg/dxm;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v1
.end method

.method public final al(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    invoke-static {p1}, Lg/dei;->p(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg/dei;->f:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lg/dei;->am(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lg/dei;->o(I)I

    move-result v2

    aget v5, v1, v0

    int-to-long v8, v4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v7, p1

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, p1, v0, p2}, Lg/dei;->aj(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v5, v0, p2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, p1, v2}, Lg/euh;->m(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {p1, v1, v2, v5}, Lg/euh;->u(Ljava/lang/Object;JI)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v0, p2}, Lg/dei;->aj(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v0, p2}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, p1, v2}, Lg/euh;->m(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {p1, v1, v2, v5}, Lg/euh;->u(Ljava/lang/Object;JI)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Lg/gog;->a:Lg/cuf;

    invoke-static {v8, v9, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v9, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lg/fbc;->t(Ljava/lang/Object;Ljava/lang/Object;)Lg/ou;

    move-result-object v1

    invoke-static {v8, v9, p1, v1}, Lg/euh;->m(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {v8, v9, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/gmb;

    invoke-static {v8, v9, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/gmb;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v3, :cond_2

    if-lez v4, :cond_2

    move-object v5, v1

    check-cast v5, Lg/bxh;

    iget-boolean v5, v5, Lg/bxh;->e:Z

    if-nez v5, :cond_1

    add-int/2addr v4, v3

    invoke-interface {v1, v4}, Lg/gmb;->zzd(I)Lg/gmb;

    move-result-object v1

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-gtz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-static {v8, v9, p1, v2}, Lg/euh;->m(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v0, p2}, Lg/dei;->ah(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v8, v9, v1, v2}, Lg/euh;->i(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lg/euh;->u(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v8, v9, v1, v2}, Lg/euh;->i(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lg/euh;->u(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lg/euh;->u(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lg/euh;->u(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v9, p1, v1}, Lg/euh;->m(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, v0, p2}, Lg/dei;->ah(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v9, p1, v1}, Lg/euh;->m(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lg/euh;->f:Lg/aul;

    invoke-virtual {v1, v8, v9, p2}, Lg/aul;->b(JLjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1, v8, v9, v2}, Lg/aul;->e(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lg/euh;->u(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v8, v9, v1, v2}, Lg/euh;->i(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v8, v9, v1}, Lg/euh;->u(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v8, v9, v1, v2}, Lg/euh;->i(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v8, v9, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v8, v9, v1, v2}, Lg/euh;->i(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lg/euh;->f:Lg/aul;

    invoke-virtual {v1, v8, v9, p2}, Lg/aul;->c(JLjava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, p1, v8, v9, v2}, Lg/aul;->d(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v6, Lg/euh;->f:Lg/aul;

    invoke-virtual {v6, v8, v9, p2}, Lg/aul;->g(JLjava/lang/Object;)D

    move-result-wide v10

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lg/aul;->f(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v7}, Lg/dei;->t(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v0, v0, 0x3

    move-object p1, v7

    goto/16 :goto_0

    :cond_4
    move-object v7, p1

    invoke-static {v7, p2}, Lg/gog;->q(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v7, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Mutating immutable message: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final am(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lg/dei;->f:[I

    aget p1, v0, p1

    return p1
.end method

.method public final an(Lg/bsv;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v6, Lg/dei;->a:Lsun/misc/Unsafe;

    const v8, 0xfffff

    const/4 v2, 0x0

    const v3, 0xfffff

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v5, v0, Lg/dei;->f:[I

    array-length v10, v5

    if-ge v2, v10, :cond_19

    invoke-virtual {v0, v2}, Lg/dei;->am(I)I

    move-result v10

    invoke-static {v10}, Lg/dei;->o(I)I

    move-result v11

    aget v12, v5, v2

    add-int/lit8 v13, v2, 0x2

    aget v5, v5, v13

    and-int v13, v5, v8

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v11, v14, :cond_2

    if-eq v13, v3, :cond_1

    if-ne v13, v8, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v13

    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v13

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v15, v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v10, v8

    sget-object v13, Lg/mj;->zzJ:Lg/mj;

    invoke-virtual {v13}, Lg/mj;->zza()I

    move-result v13

    if-lt v11, v13, :cond_3

    sget-object v13, Lg/mj;->zzW:Lg/mj;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    int-to-long v13, v10

    const/16 v10, 0x3f

    const/4 v7, 0x4

    const/16 v8, 0x8

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_1d

    :pswitch_0
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/bsv;

    invoke-virtual {v0, v2}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v7

    shl-int/lit8 v8, v12, 0x3

    invoke-static {v8}, Lg/ctv;->i(I)I

    move-result v8

    add-int/2addr v8, v8

    invoke-virtual {v5, v7}, Lg/bsv;->k(Lg/dxm;)I

    move-result v5

    :goto_3
    add-int/2addr v5, v8

    :goto_4
    add-int/2addr v9, v5

    goto/16 :goto_1d

    :pswitch_1
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v1}, Lg/dei;->l(JLjava/lang/Object;)J

    move-result-wide v7

    add-long v11, v7, v7

    shr-long/2addr v7, v10

    invoke-static {v5}, Lg/ctv;->i(I)I

    move-result v5

    xor-long/2addr v7, v11

    invoke-static {v7, v8}, Lg/ctv;->h(J)I

    move-result v7

    :goto_5
    add-int/2addr v7, v5

    add-int/2addr v9, v7

    goto/16 :goto_1d

    :pswitch_2
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v1}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v7

    add-int v8, v7, v7

    shr-int/lit8 v7, v7, 0x1f

    invoke-static {v5}, Lg/ctv;->i(I)I

    move-result v5

    xor-int/2addr v7, v8

    :goto_6
    invoke-static {v7, v5, v9}, Lg/dub;->h(III)I

    move-result v9

    goto/16 :goto_1d

    :pswitch_3
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    :goto_7
    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v8, v9}, Lg/dub;->h(III)I

    move-result v9

    goto/16 :goto_1d

    :pswitch_4
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    :goto_8
    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v7, v9}, Lg/dub;->h(III)I

    move-result v9

    goto/16 :goto_1d

    :pswitch_5
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v1}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5}, Lg/ctv;->i(I)I

    move-result v5

    invoke-static {v7, v8}, Lg/ctv;->h(J)I

    move-result v7

    goto :goto_5

    :pswitch_6
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v1}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v7

    invoke-static {v5}, Lg/ctv;->i(I)I

    move-result v5

    goto :goto_6

    :pswitch_7
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v12, 0x3

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/aki;

    invoke-static {v5}, Lg/ctv;->i(I)I

    move-result v5

    invoke-virtual {v7}, Lg/aki;->g()I

    move-result v7

    :goto_9
    invoke-static {v7, v7, v5, v9}, Lg/dub;->l(IIII)I

    move-result v9

    goto/16 :goto_1d

    :pswitch_8
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v7

    sget-object v8, Lg/gog;->a:Lg/cuf;

    shl-int/lit8 v8, v12, 0x3

    check-cast v5, Lg/bsv;

    invoke-static {v8}, Lg/ctv;->i(I)I

    move-result v8

    invoke-virtual {v5, v7}, Lg/bsv;->k(Lg/dxm;)I

    move-result v5

    :goto_a
    invoke-static {v5, v5, v8, v9}, Lg/dub;->l(IIII)I

    move-result v9

    goto/16 :goto_1d

    :pswitch_9
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v12, 0x3

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lg/aki;

    if-eqz v8, :cond_4

    check-cast v7, Lg/aki;

    invoke-static {v5}, Lg/ctv;->i(I)I

    move-result v5

    invoke-virtual {v7}, Lg/aki;->g()I

    move-result v7

    goto :goto_9

    :cond_4
    check-cast v7, Ljava/lang/String;

    invoke-static {v5}, Lg/ctv;->i(I)I

    move-result v5

    invoke-static {v7}, Lg/ctv;->g(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :pswitch_a
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5, v15, v9}, Lg/dub;->h(III)I

    move-result v9

    goto/16 :goto_1d

    :pswitch_b
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto/16 :goto_8

    :pswitch_c
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto/16 :goto_7

    :pswitch_d
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v1}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5}, Lg/ctv;->i(I)I

    move-result v5

    invoke-static {v7, v8}, Lg/ctv;->h(J)I

    move-result v7

    goto/16 :goto_5

    :pswitch_e
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v1}, Lg/dei;->l(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-static {v5}, Lg/ctv;->i(I)I

    move-result v5

    invoke-static {v7, v8}, Lg/ctv;->h(J)I

    move-result v7

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v13, v14, v1}, Lg/dei;->l(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-static {v5}, Lg/ctv;->i(I)I

    move-result v5

    invoke-static {v7, v8}, Lg/ctv;->h(J)I

    move-result v7

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto/16 :goto_8

    :pswitch_11
    invoke-virtual {v0, v12, v2, v1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto/16 :goto_7

    :pswitch_12
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    div-int/lit8 v7, v2, 0x3

    iget-object v8, v0, Lg/dei;->i:[Ljava/lang/Object;

    add-int/2addr v7, v7

    aget-object v7, v8, v7

    check-cast v5, Lg/ou;

    if-nez v7, :cond_6

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v5}, Lg/ou;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_1d

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 v1, 0x0

    throw v1

    :cond_6
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :pswitch_13
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v7

    sget-object v8, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_7

    const/4 v11, 0x0

    goto :goto_c

    :cond_7
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_b
    if-ge v10, v8, :cond_8

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/bsv;

    shl-int/lit8 v14, v12, 0x3

    invoke-static {v14}, Lg/ctv;->i(I)I

    move-result v14

    add-int/2addr v14, v14

    invoke-virtual {v13, v7}, Lg/bsv;->k(Lg/dxm;)I

    move-result v13

    add-int/2addr v13, v14

    add-int/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_8
    :goto_c
    add-int/2addr v9, v11

    goto/16 :goto_1d

    :pswitch_14
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lg/gog;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    :goto_d
    invoke-static {v5, v7, v5, v9}, Lg/dub;->l(IIII)I

    move-result v9

    goto/16 :goto_1d

    :pswitch_15
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lg/gog;->d(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    goto :goto_d

    :pswitch_16
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    goto :goto_d

    :pswitch_17
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v8, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    goto :goto_d

    :pswitch_18
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lg/gog;->o(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    goto :goto_d

    :pswitch_19
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lg/gog;->r(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    goto :goto_d

    :pswitch_1a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    goto/16 :goto_d

    :pswitch_1b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v8, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    goto/16 :goto_d

    :pswitch_1c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    goto/16 :goto_d

    :pswitch_1d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lg/gog;->s(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    goto/16 :goto_d

    :pswitch_1e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lg/gog;->g(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    goto/16 :goto_d

    :pswitch_1f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lg/gog;->u(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    goto/16 :goto_d

    :pswitch_20
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v8, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    goto/16 :goto_d

    :pswitch_21
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_18

    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    goto/16 :goto_d

    :pswitch_22
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_9

    :goto_e
    const/4 v8, 0x0

    goto :goto_10

    :cond_9
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v5}, Lg/gog;->i(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lg/ctv;->i(I)I

    move-result v8

    :goto_f
    mul-int v8, v8, v7

    add-int/2addr v8, v5

    :cond_a
    :goto_10
    add-int/2addr v9, v8

    goto/16 :goto_1d

    :pswitch_23
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_b

    goto :goto_e

    :cond_b
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v5}, Lg/gog;->d(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lg/ctv;->i(I)I

    move-result v8

    goto :goto_f

    :pswitch_24
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lg/gog;->c(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_25
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lg/gog;->z(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_26
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_c

    goto :goto_e

    :cond_c
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v5}, Lg/gog;->o(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lg/ctv;->i(I)I

    move-result v8

    goto :goto_f

    :pswitch_27
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_d

    goto :goto_e

    :cond_d
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v5}, Lg/gog;->r(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lg/ctv;->i(I)I

    move-result v8

    goto :goto_f

    :pswitch_28
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_e

    :cond_e
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v8}, Lg/ctv;->i(I)I

    move-result v8

    mul-int v8, v8, v7

    const/4 v7, 0x0

    :goto_11
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_a

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/aki;

    invoke-virtual {v10}, Lg/aki;->g()I

    move-result v10

    invoke-static {v10, v10, v8}, Lg/dub;->h(III)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :pswitch_29
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v7

    sget-object v8, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_f

    const/4 v10, 0x0

    goto :goto_13

    :cond_f
    shl-int/lit8 v10, v12, 0x3

    invoke-static {v10}, Lg/ctv;->i(I)I

    move-result v10

    mul-int v10, v10, v8

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v8, :cond_10

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/bsv;

    invoke-virtual {v12, v7}, Lg/bsv;->k(Lg/dxm;)I

    move-result v12

    invoke-static {v12, v12, v10}, Lg/dub;->h(III)I

    move-result v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_10
    :goto_13
    add-int/2addr v9, v10

    goto/16 :goto_1d

    :pswitch_2a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_11

    goto/16 :goto_e

    :cond_11
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v8}, Lg/ctv;->i(I)I

    move-result v8

    mul-int v8, v8, v7

    const/4 v10, 0x0

    :goto_14
    if-ge v10, v7, :cond_a

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lg/aki;

    if-eqz v12, :cond_12

    check-cast v11, Lg/aki;

    invoke-virtual {v11}, Lg/aki;->g()I

    move-result v11

    invoke-static {v11, v11, v8}, Lg/dub;->h(III)I

    move-result v8

    goto :goto_15

    :cond_12
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lg/ctv;->g(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v8

    move v8, v11

    :goto_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :pswitch_2b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_13

    :goto_16
    const/4 v7, 0x0

    goto :goto_17

    :cond_13
    shl-int/lit8 v7, v12, 0x3

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    add-int/2addr v7, v15

    mul-int v7, v7, v5

    :goto_17
    add-int/2addr v9, v7

    goto/16 :goto_1d

    :pswitch_2c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lg/gog;->z(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lg/gog;->c(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_14

    goto/16 :goto_e

    :cond_14
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v5}, Lg/gog;->s(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lg/ctv;->i(I)I

    move-result v8

    goto/16 :goto_f

    :pswitch_2f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_15

    goto/16 :goto_e

    :cond_15
    shl-int/lit8 v8, v12, 0x3

    invoke-static {v5}, Lg/gog;->g(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lg/ctv;->i(I)I

    move-result v8

    goto/16 :goto_f

    :pswitch_30
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lg/gog;->a:Lg/cuf;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_16

    goto :goto_16

    :cond_16
    shl-int/lit8 v7, v12, 0x3

    invoke-static {v5}, Lg/gog;->u(Ljava/util/List;)I

    move-result v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v7}, Lg/ctv;->i(I)I

    move-result v7

    mul-int v7, v7, v5

    add-int/2addr v7, v8

    goto :goto_17

    :pswitch_31
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lg/gog;->z(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_32
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Lg/gog;->c(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/bsv;

    invoke-virtual {v0, v2}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v7

    shl-int/lit8 v8, v12, 0x3

    invoke-static {v8}, Lg/ctv;->i(I)I

    move-result v8

    add-int/2addr v8, v8

    invoke-virtual {v5, v7}, Lg/bsv;->k(Lg/dxm;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    add-long v11, v7, v7

    shr-long/2addr v7, v10

    invoke-static {v0}, Lg/ctv;->i(I)I

    move-result v0

    xor-long/2addr v7, v11

    invoke-static {v7, v8}, Lg/ctv;->h(J)I

    move-result v5

    :goto_18
    add-int/2addr v5, v0

    goto/16 :goto_4

    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v7, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    invoke-static {v0}, Lg/ctv;->i(I)I

    move-result v0

    xor-int/2addr v5, v7

    :goto_19
    invoke-static {v5, v0, v9}, Lg/dub;->h(III)I

    move-result v9

    goto/16 :goto_1d

    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    :goto_1a
    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v8, v9}, Lg/dub;->h(III)I

    move-result v9

    goto/16 :goto_1d

    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    :goto_1b
    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v7, v9}, Lg/dub;->h(III)I

    move-result v9

    goto/16 :goto_1d

    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v7, v5

    invoke-static {v0}, Lg/ctv;->i(I)I

    move-result v0

    invoke-static {v7, v8}, Lg/ctv;->h(J)I

    move-result v5

    goto :goto_18

    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v0}, Lg/ctv;->i(I)I

    move-result v0

    goto :goto_19

    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/aki;

    invoke-static {v0}, Lg/ctv;->i(I)I

    move-result v0

    invoke-virtual {v5}, Lg/aki;->g()I

    move-result v5

    :goto_1c
    invoke-static {v5, v5, v0, v9}, Lg/dub;->l(IIII)I

    move-result v9

    goto/16 :goto_1d

    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v7

    sget-object v8, Lg/gog;->a:Lg/cuf;

    shl-int/lit8 v8, v12, 0x3

    check-cast v5, Lg/bsv;

    invoke-static {v8}, Lg/ctv;->i(I)I

    move-result v8

    invoke-virtual {v5, v7}, Lg/bsv;->k(Lg/dxm;)I

    move-result v5

    goto/16 :goto_a

    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Lg/aki;

    if-eqz v7, :cond_17

    check-cast v5, Lg/aki;

    invoke-static {v0}, Lg/ctv;->i(I)I

    move-result v0

    invoke-virtual {v5}, Lg/aki;->g()I

    move-result v5

    goto :goto_1c

    :cond_17
    check-cast v5, Ljava/lang/String;

    invoke-static {v0}, Lg/ctv;->i(I)I

    move-result v0

    invoke-static {v5}, Lg/ctv;->g(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_18

    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v12, 0x3

    invoke-static {v0, v15, v9}, Lg/dub;->h(III)I

    move-result v9

    goto :goto_1d

    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    goto/16 :goto_1b

    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    goto/16 :goto_1a

    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v7, v5

    invoke-static {v0}, Lg/ctv;->i(I)I

    move-result v0

    invoke-static {v7, v8}, Lg/ctv;->h(J)I

    move-result v5

    goto/16 :goto_18

    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v0}, Lg/ctv;->i(I)I

    move-result v0

    invoke-static {v7, v8}, Lg/ctv;->h(J)I

    move-result v5

    goto/16 :goto_18

    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v12, 0x3

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v0}, Lg/ctv;->i(I)I

    move-result v0

    invoke-static {v7, v8}, Lg/ctv;->h(J)I

    move-result v5

    goto/16 :goto_18

    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    goto/16 :goto_1b

    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Lg/dei;->af(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    goto/16 :goto_1a

    :cond_18
    :goto_1d
    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v8, 0xfffff

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p1

    check-cast v0, Lg/fsu;

    iget-object v0, v0, Lg/fsu;->zzc:Lg/wl;

    invoke-virtual {v0}, Lg/wl;->j()I

    move-result v0

    add-int/2addr v0, v9

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ao(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lg/dei;->f:[I

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    invoke-static {v0, v1, p3}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final r(I)Lg/ebv;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lg/dei;->i:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lg/ebv;

    return-object p1
.end method

.method public final s(Lg/fsu;)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg/dei;->f:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lg/dei;->am(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lg/dei;->o(I)I

    move-result v3

    aget v2, v2, v0

    int-to-long v4, v4

    const/16 v6, 0x4d5

    const/16 v7, 0x4cf

    const/16 v8, 0x25

    const/16 v9, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    move v1, v2

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/dei;->l(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lg/cua;->a:Ljava/nio/charset/Charset;

    :goto_2
    ushr-long v4, v2, v9

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v2

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/dei;->l(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lg/cua;->a:Ljava/nio/charset/Charset;

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v2

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v2

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v2

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v3, Lg/cua;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_0

    :goto_3
    const/16 v6, 0x4cf

    :cond_0
    add-int/2addr v6, v1

    move v1, v6

    goto/16 :goto_5

    :pswitch_b
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/dei;->l(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lg/cua;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/dei;->m(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/dei;->l(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lg/cua;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/dei;->l(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lg/cua;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v2, v0, p1}, Lg/dei;->ao(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lg/cua;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    :cond_1
    :goto_4
    add-int/2addr v1, v8

    goto/16 :goto_5

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lg/cua;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lg/cua;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    sget-object v2, Lg/euh;->f:Lg/aul;

    invoke-virtual {v2, v4, v5, p1}, Lg/aul;->b(JLjava/lang/Object;)Z

    move-result v2

    sget-object v3, Lg/cua;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lg/cua;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lg/cua;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lg/cua;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    sget-object v2, Lg/euh;->f:Lg/aul;

    invoke-virtual {v2, v4, v5, p1}, Lg/aul;->c(JLjava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    sget-object v2, Lg/euh;->f:Lg/aul;

    invoke-virtual {v2, v4, v5, p1}, Lg/aul;->g(JLjava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lg/cua;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :cond_2
    :goto_5
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v1, v1, 0x35

    iget-object p1, p1, Lg/fsu;->zzc:Lg/wl;

    invoke-virtual {p1}, Lg/wl;->hashCode()I

    move-result p1

    add-int/2addr p1, v1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(ILjava/lang/Object;)V
    .locals 5

    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lg/dei;->f:[I

    aget p1, v0, p1

    const v0, 0xfffff

    and-int/2addr v0, p1

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p1, p1, 0x14

    invoke-static {v0, v1, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    shl-int p1, v3, p1

    or-int/2addr p1, v2

    invoke-static {p2, v0, v1, p1}, Lg/euh;->u(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final u(ILjava/lang/Object;)Z
    .locals 8

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lg/dei;->f:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_2

    invoke-virtual {p0, p1}, Lg/dei;->am(I)I

    move-result p1

    and-int v0, p1, v1

    invoke-static {p1}, Lg/dei;->o(I)I

    move-result p1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {v0, v1, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v0, v1, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :pswitch_2
    invoke-static {v0, v1, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v0, v1, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v0, v1, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v0, v1, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_6
    invoke-static {v0, v1, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p1, Lg/aki;->a:Lg/gto;

    invoke-static {v0, v1, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/gto;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :pswitch_8
    invoke-static {v0, v1, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_9
    invoke-static {v0, v1, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_0
    instance-of p2, p1, Lg/aki;

    if-eqz p2, :cond_1

    sget-object p2, Lg/aki;->a:Lg/gto;

    invoke-virtual {p2, p1}, Lg/gto;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    sget-object p1, Lg/euh;->f:Lg/aul;

    invoke-virtual {p1, v0, v1, p2}, Lg/aul;->b(JLjava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {v0, v1, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_c
    invoke-static {v0, v1, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto :goto_0

    :pswitch_d
    invoke-static {v0, v1, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_e
    invoke-static {v0, v1, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto :goto_0

    :pswitch_f
    invoke-static {v0, v1, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p1, Lg/euh;->f:Lg/aul;

    invoke-virtual {p1, v0, v1, p2}, Lg/aul;->c(JLjava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p1, Lg/euh;->f:Lg/aul;

    invoke-virtual {p1, v0, v1, p2}, Lg/aul;->g(JLjava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p1, v0, 0x14

    shl-int p1, v6, p1

    invoke-static {v2, v3, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    :goto_0
    return v6

    :cond_3
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v(Lg/fsu;Lg/fsu;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final w(Ljava/lang/Object;[BIILg/dsc;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lg/dei;->ae(Ljava/lang/Object;[BIIILg/dsc;)I

    return-void
.end method

.method public final x(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lg/dei;->ak(I)Lg/dxm;

    move-result-object v0

    invoke-virtual {p0, p1}, Lg/dei;->am(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lg/dei;->u(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lg/dxm;->zze()Lg/fsu;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p1, Lg/dei;->a:Lsun/misc/Unsafe;

    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lg/dei;->p(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lg/dxm;->zze()Lg/fsu;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lg/dxm;->al(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final y(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lg/dei;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lg/dei;->am(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lg/dei;->t(ILjava/lang/Object;)V

    return-void
.end method

.method public final z(Lg/fsu;Lg/fsu;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg/dei;->f:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lg/dei;->am(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    invoke-static {v3}, Lg/dei;->o(I)I

    move-result v3

    int-to-long v5, v5

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v2, v3, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    if-ne v4, v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lg/gog;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {v5, v6, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lg/gog;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {v5, v6, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lg/gog;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lg/gog;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v5, v6, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v5, v6, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v5, v6, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v5, v6, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v5, v6, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v5, v6, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lg/gog;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lg/gog;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/euh;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lg/gog;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lg/euh;->f:Lg/aul;

    invoke-virtual {v2, v5, v6, p1}, Lg/aul;->b(JLjava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v5, v6, p2}, Lg/aul;->b(JLjava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_2

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v5, v6, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v5, v6, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v5, v6, p2}, Lg/euh;->n(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v5, v6, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v5, v6, p2}, Lg/euh;->p(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lg/euh;->f:Lg/aul;

    invoke-virtual {v2, v5, v6, p1}, Lg/aul;->c(JLjava/lang/Object;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-virtual {v2, v5, v6, p2}, Lg/aul;->c(JLjava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v3, v2, :cond_2

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Lg/dei;->v(Lg/fsu;Lg/fsu;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lg/euh;->f:Lg/aul;

    invoke-virtual {v2, v5, v6, p1}, Lg/aul;->g(JLjava/lang/Object;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {v2, v5, v6, p2}, Lg/aul;->g(JLjava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object p1, p1, Lg/fsu;->zzc:Lg/wl;

    iget-object p2, p2, Lg/fsu;->zzc:Lg/wl;

    invoke-virtual {p1, p2}, Lg/wl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    :goto_3
    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zze()Lg/fsu;
    .locals 2

    iget-object v0, p0, Lg/dei;->e:Lg/bsv;

    check-cast v0, Lg/fsu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lg/fsu;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fsu;

    return-object v0
.end method

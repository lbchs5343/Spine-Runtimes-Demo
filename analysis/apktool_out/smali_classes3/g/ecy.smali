.class public final Lg/ecy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ciw;


# static fields
.field public static final a:[I

.field public static final b:Lsun/misc/Unsafe;


# instance fields
.field public final c:I

.field public final k:Lg/czj;

.field public final l:I

.field public final m:Lg/cir;

.field public final n:[I

.field public final o:Z

.field public final p:I

.field public final q:[Ljava/lang/Object;

.field public final r:Lg/dgb;

.field public final s:I

.field public final t:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lg/ecy;->a:[I

    invoke-static {}, Lg/diy;->n()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lg/ecy;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILg/cir;Z[IIILg/dgb;Lg/czj;Lg/gnz;Lg/aoq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ecy;->n:[I

    iput-object p2, p0, Lg/ecy;->q:[Ljava/lang/Object;

    iput p3, p0, Lg/ecy;->s:I

    iput p4, p0, Lg/ecy;->l:I

    iput-boolean p6, p0, Lg/ecy;->o:Z

    iput-object p7, p0, Lg/ecy;->t:[I

    iput p8, p0, Lg/ecy;->c:I

    iput p9, p0, Lg/ecy;->p:I

    iput-object p10, p0, Lg/ecy;->r:Lg/dgb;

    iput-object p11, p0, Lg/ecy;->k:Lg/czj;

    iput-object p5, p0, Lg/ecy;->m:Lg/cir;

    return-void
.end method

.method public static aa(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lg/diy;->f:Lg/frx;

    invoke-virtual {v0, p0, p1, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static ab(Ljava/lang/Object;)Lg/fjx;
    .locals 2

    check-cast p0, Lg/cys;

    iget-object v0, p0, Lg/cys;->zzc:Lg/fjx;

    sget-object v1, Lg/fjx;->a:Lg/fjx;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lg/fjx;->g()Lg/fjx;

    move-result-object v0

    iput-object v0, p0, Lg/cys;->zzc:Lg/fjx;

    :cond_0
    return-object v0
.end method

.method public static u(Lg/eqc;Lg/dgb;Lg/czj;Lg/gnz;Lg/aoq;)Lg/ecy;
    .locals 34

    move-object/from16 v0, p0

    iget v1, v0, Lg/eqc;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    iget-object v1, v0, Lg/eqc;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    move v5, v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    :cond_3
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_4

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_3

    :cond_4
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_5
    if-nez v7, :cond_6

    sget-object v7, Lg/ecy;->a:[I

    move-object v12, v7

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    goto/16 :goto_d

    :cond_6
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_8

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_7

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_4

    :cond_7
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_8
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_a

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_5

    :cond_9
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_a
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_c

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_b

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_6

    :cond_b
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_c
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_e

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_16

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v2, v16

    const/16 v16, 0xd

    const/16 v17, 0x1

    :goto_b
    add-int/lit8 v18, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_15

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v16

    or-int/2addr v15, v2

    add-int/lit8 v16, v16, 0xd

    move/from16 v2, v18

    goto :goto_b

    :cond_15
    shl-int v2, v2, v16

    or-int/2addr v15, v2

    move/from16 v16, v18

    goto :goto_c

    :cond_16
    const/16 v17, 0x1

    :goto_c
    add-int v2, v15, v13

    add-int/2addr v2, v14

    new-array v2, v2, [I

    add-int v14, v5, v5

    add-int/2addr v14, v7

    move v7, v12

    move-object v12, v2

    move v2, v5

    move/from16 v5, v16

    :goto_d
    sget-object v4, Lg/ecy;->b:Lsun/misc/Unsafe;

    iget-object v8, v0, Lg/eqc;->d:[Ljava/lang/Object;

    iget-object v6, v0, Lg/eqc;->b:Lg/cir;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v20, v2

    mul-int/lit8 v2, v7, 0x3

    new-array v2, v2, [I

    add-int/2addr v7, v7

    new-array v7, v7, [Ljava/lang/Object;

    add-int/2addr v13, v15

    move/from16 v24, v13

    move/from16 v23, v15

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_e
    if-ge v5, v3, :cond_33

    add-int/lit8 v25, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object/from16 v26, v2

    const v2, 0xd800

    if-lt v5, v2, :cond_18

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v2, v25

    const/16 v25, 0xd

    :goto_f
    add-int/lit8 v27, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v28, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_17

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v25

    or-int/2addr v5, v2

    add-int/lit8 v25, v25, 0xd

    move/from16 v2, v27

    move/from16 v3, v28

    goto :goto_f

    :cond_17
    shl-int v2, v2, v25

    or-int/2addr v5, v2

    move/from16 v2, v27

    goto :goto_10

    :cond_18
    move/from16 v28, v3

    move/from16 v2, v25

    :goto_10
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v25, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_1a

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v3, v25

    const/16 v25, 0xd

    :goto_11
    add-int/lit8 v27, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v29, v2

    const v2, 0xd800

    if-lt v3, v2, :cond_19

    and-int/lit16 v2, v3, 0x1fff

    shl-int v2, v2, v25

    or-int v2, v29, v2

    add-int/lit8 v25, v25, 0xd

    move/from16 v3, v27

    goto :goto_11

    :cond_19
    shl-int v2, v3, v25

    or-int v2, v29, v2

    move/from16 v3, v27

    goto :goto_12

    :cond_1a
    move/from16 v3, v25

    :goto_12
    move/from16 v25, v5

    and-int/lit16 v5, v2, 0xff

    move-object/from16 v27, v7

    and-int/lit16 v7, v2, 0x400

    if-eqz v7, :cond_1b

    add-int/lit8 v7, v22, 0x1

    aput v21, v12, v22

    move/from16 v22, v7

    :cond_1b
    const/16 v7, 0x33

    if-lt v5, v7, :cond_23

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v29, v7

    const v7, 0xd800

    if-lt v3, v7, :cond_1d

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v7, v29

    const/16 v29, 0xd

    :goto_13
    add-int/lit8 v32, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v33, v3

    const v3, 0xd800

    if-lt v7, v3, :cond_1c

    and-int/lit16 v3, v7, 0x1fff

    shl-int v3, v3, v29

    or-int v3, v33, v3

    add-int/lit8 v29, v29, 0xd

    move/from16 v7, v32

    goto :goto_13

    :cond_1c
    shl-int v3, v7, v29

    or-int v3, v33, v3

    move/from16 v7, v32

    goto :goto_14

    :cond_1d
    move/from16 v7, v29

    :goto_14
    move/from16 v29, v3

    add-int/lit8 v3, v5, -0x33

    move/from16 v32, v7

    const/16 v7, 0x9

    if-eq v3, v7, :cond_1f

    const/16 v7, 0x11

    if-ne v3, v7, :cond_1e

    goto :goto_16

    :cond_1e
    const/16 v7, 0xc

    if-ne v3, v7, :cond_20

    if-nez v11, :cond_20

    div-int/lit8 v3, v21, 0x3

    add-int/lit8 v7, v14, 0x1

    add-int/2addr v3, v3

    add-int/lit8 v3, v3, 0x1

    aget-object v14, v8, v14

    aput-object v14, v27, v3

    :goto_15
    move v14, v7

    goto :goto_17

    :cond_1f
    :goto_16
    div-int/lit8 v3, v21, 0x3

    add-int/lit8 v7, v14, 0x1

    add-int/2addr v3, v3

    add-int/lit8 v3, v3, 0x1

    aget-object v14, v8, v14

    aput-object v14, v27, v3

    goto :goto_15

    :cond_20
    :goto_17
    add-int v3, v29, v29

    aget-object v7, v8, v3

    move/from16 v29, v3

    instance-of v3, v7, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_21

    check-cast v7, Ljava/lang/reflect/Field;

    :goto_18
    move-object/from16 v33, v8

    goto :goto_19

    :cond_21
    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lg/ecy;->x(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v8, v29

    goto :goto_18

    :goto_19
    invoke-virtual {v4, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v3, v7

    add-int/lit8 v7, v29, 0x1

    aget-object v8, v33, v7

    move/from16 v29, v3

    instance-of v3, v8, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_22

    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_1a

    :cond_22
    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v8}, Lg/ecy;->x(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v33, v7

    :goto_1a
    invoke-virtual {v4, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v3, v7

    move/from16 v7, v29

    move/from16 v29, v3

    move v3, v7

    const/4 v7, 0x0

    goto/16 :goto_25

    :cond_23
    move-object/from16 v33, v8

    add-int/lit8 v7, v14, 0x1

    aget-object v8, v33, v14

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v8}, Lg/ecy;->x(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    move/from16 v29, v7

    const/16 v7, 0x9

    if-eq v5, v7, :cond_2a

    const/16 v7, 0x11

    if-ne v5, v7, :cond_24

    goto :goto_1e

    :cond_24
    const/16 v7, 0x1b

    if-eq v5, v7, :cond_29

    const/16 v7, 0x31

    if-ne v5, v7, :cond_25

    goto :goto_1d

    :cond_25
    const/16 v7, 0xc

    if-eq v5, v7, :cond_28

    const/16 v7, 0x1e

    if-eq v5, v7, :cond_28

    const/16 v7, 0x2c

    if-ne v5, v7, :cond_26

    goto :goto_1c

    :cond_26
    const/16 v7, 0x32

    if-ne v5, v7, :cond_2b

    add-int/lit8 v7, v23, 0x1

    aput v21, v12, v23

    div-int/lit8 v23, v21, 0x3

    add-int v23, v23, v23

    add-int/lit8 v30, v14, 0x2

    aget-object v29, v33, v29

    aput-object v29, v27, v23

    move/from16 v31, v7

    and-int/lit16 v7, v2, 0x800

    if-eqz v7, :cond_27

    add-int/lit8 v7, v14, 0x3

    add-int/lit8 v23, v23, 0x1

    aget-object v14, v33, v30

    aput-object v14, v27, v23

    move v14, v7

    :goto_1b
    move/from16 v23, v31

    goto :goto_1f

    :cond_27
    move/from16 v14, v30

    goto :goto_1b

    :cond_28
    :goto_1c
    if-nez v11, :cond_2b

    div-int/lit8 v7, v21, 0x3

    add-int/lit8 v14, v14, 0x2

    add-int/2addr v7, v7

    add-int/lit8 v7, v7, 0x1

    aget-object v29, v33, v29

    aput-object v29, v27, v7

    goto :goto_1f

    :cond_29
    :goto_1d
    div-int/lit8 v7, v21, 0x3

    add-int/lit8 v14, v14, 0x2

    add-int/2addr v7, v7

    add-int/lit8 v7, v7, 0x1

    aget-object v29, v33, v29

    aput-object v29, v27, v7

    goto :goto_1f

    :cond_2a
    :goto_1e
    div-int/lit8 v7, v21, 0x3

    add-int/2addr v7, v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v27, v7

    :cond_2b
    move/from16 v14, v29

    :goto_1f
    invoke-virtual {v4, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    and-int/lit16 v7, v2, 0x1000

    const v29, 0xfffff

    move/from16 v30, v8

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_2f

    const/16 v7, 0x11

    if-gt v5, v7, :cond_2f

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v8, 0xd800

    if-lt v3, v8, :cond_2d

    and-int/lit16 v3, v3, 0x1fff

    const/16 v19, 0xd

    :goto_20
    add-int/lit8 v29, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2c

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v19

    or-int/2addr v3, v7

    add-int/lit8 v19, v19, 0xd

    move/from16 v7, v29

    goto :goto_20

    :cond_2c
    shl-int v7, v7, v19

    or-int/2addr v3, v7

    goto :goto_21

    :cond_2d
    move/from16 v29, v7

    :goto_21
    add-int v7, v20, v20

    div-int/lit8 v19, v3, 0x20

    add-int v19, v19, v7

    aget-object v7, v33, v19

    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_2e

    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_22

    :cond_2e
    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lg/ecy;->x(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v33, v19

    :goto_22
    invoke-virtual {v4, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    rem-int/lit8 v3, v3, 0x20

    move/from16 v7, v29

    move/from16 v29, v8

    goto :goto_23

    :cond_2f
    move v7, v3

    const/4 v3, 0x0

    :goto_23
    const/16 v8, 0x12

    if-lt v5, v8, :cond_30

    const/16 v8, 0x31

    if-gt v5, v8, :cond_30

    add-int/lit8 v8, v24, 0x1

    aput v30, v12, v24

    move/from16 v32, v7

    move/from16 v24, v8

    :goto_24
    move v7, v3

    move/from16 v3, v30

    goto :goto_25

    :cond_30
    move/from16 v32, v7

    goto :goto_24

    :goto_25
    add-int/lit8 v8, v21, 0x1

    aput v25, v26, v21

    add-int/lit8 v19, v21, 0x2

    move-object/from16 v25, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_31

    const/high16 v1, 0x20000000

    goto :goto_26

    :cond_31
    const/4 v1, 0x0

    :goto_26
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_32

    const/high16 v2, 0x10000000

    goto :goto_27

    :cond_32
    const/4 v2, 0x0

    :goto_27
    or-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    aput v1, v26, v8

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v7, 0x14

    or-int v1, v1, v29

    aput v1, v26, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v7, v27

    move/from16 v3, v28

    move/from16 v5, v32

    move-object/from16 v8, v33

    goto/16 :goto_e

    :cond_33
    move-object/from16 v26, v2

    move-object/from16 v27, v7

    new-instance v5, Lg/ecy;

    iget-object v0, v0, Lg/eqc;->b:Lg/cir;

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move v8, v9

    move v9, v10

    move v14, v13

    move v13, v15

    move-object/from16 v6, v26

    move-object/from16 v15, p1

    move-object v10, v0

    invoke-direct/range {v5 .. v18}, Lg/ecy;-><init>([I[Ljava/lang/Object;IILg/cir;Z[IIILg/dgb;Lg/czj;Lg/gnz;Lg/aoq;)V

    return-object v5
.end method

.method public static v(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static w(Lg/eqc;Lg/dgb;Lg/czj;Lg/gnz;Lg/aoq;)Lg/ecy;
    .locals 1

    instance-of v0, p0, Lg/eqc;

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lg/ecy;->u(Lg/eqc;Lg/dgb;Lg/czj;Lg/gnz;Lg/aoq;)Lg/ecy;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static x(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " for "

    const-string v3, " not found. Known fields are "

    const-string v4, "Field "

    invoke-static {v4, p1, v2, p0, v3}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static y(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lg/diy;->f:Lg/frx;

    invoke-virtual {v0, p0, p1, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static final z(ILjava/lang/Object;Lg/aoy;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast p2, Lg/p;

    invoke-virtual {p2, p0, p1}, Lg/p;->s(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lg/cyb;

    invoke-virtual {p2, p0, p1}, Lg/aoy;->aa(ILg/cyb;)V

    return-void
.end method


# virtual methods
.method public final ac(I)Lg/dcm;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lg/ecy;->q:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lg/dcm;

    return-object p1
.end method

.method public final ad(II)I
    .locals 6

    iget-object v0, p0, Lg/ecy;->n:[I

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

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move p2, v3

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final ae(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 4

    invoke-virtual {p0, p2}, Lg/ecy;->ao(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p2, p3}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lg/diy;->f:Lg/frx;

    invoke-virtual {v2, v0, v1, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v1, p3}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz v3, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3, p3}, Lg/dhz;->d(Ljava/lang/Object;Ljava/lang/Object;)Lg/cys;

    move-result-object p3

    invoke-static {v0, v1, p1, p3}, Lg/diy;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lg/ecy;->ap(ILjava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    invoke-static {v0, v1, p1, p3}, Lg/diy;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lg/ecy;->ap(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final af(Ljava/lang/Object;[BIIIIIIJIJLg/fks;)I
    .locals 11

    move/from16 v0, p5

    move/from16 v1, p7

    move/from16 v6, p8

    move-wide/from16 v2, p12

    sget-object v4, Lg/ecy;->b:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/cwe;

    move-object v7, v5

    check-cast v7, Lg/gzj;

    iget-boolean v7, v7, Lg/gzj;->f:Z

    if-nez v7, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v7, v7

    :goto_0
    invoke-interface {v5, v7}, Lg/cwe;->zzd(I)Lg/cwe;

    move-result-object v5

    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    move-object v4, v5

    const/4 v7, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x2

    packed-switch p11, :pswitch_data_0

    if-ne v1, v7, :cond_56

    invoke-virtual {p0, v6}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object p1

    and-int/lit8 v1, v0, -0x8

    or-int/lit8 v1, v1, 0x4

    move-object/from16 p6, p1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move-object/from16 p11, p14

    move/from16 p10, v1

    invoke-static/range {p6 .. p11}, Lg/buj;->s(Lg/ciw;[BIIILg/fks;)I

    move-result p1

    move-object/from16 v2, p6

    move/from16 v6, p10

    move-object/from16 v5, p11

    iget-object v7, v5, Lg/fks;->c:Ljava/lang/Object;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge p1, p4, :cond_3

    invoke-static {p2, p1, v5}, Lg/buj;->as([BILg/fks;)I

    move-result v7

    iget v8, v5, Lg/fks;->a:I

    if-eq v0, v8, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 p7, p2

    move/from16 p9, p4

    move-object/from16 p6, v2

    move-object/from16 p11, v5

    move/from16 p10, v6

    move/from16 p8, v7

    invoke-static/range {p6 .. p11}, Lg/buj;->s(Lg/ciw;[BIIILg/fks;)I

    move-result p1

    move-object/from16 v1, p6

    move-object/from16 v9, p11

    iget-object v5, v9, Lg/fks;->c:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    move-object v5, v9

    goto :goto_1

    :cond_3
    :goto_2
    return p1

    :pswitch_0
    move-object/from16 v9, p14

    if-ne v1, v5, :cond_6

    check-cast v4, Lg/ajv;

    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result p1

    iget v0, v9, Lg/fks;->a:I

    add-int/2addr v0, p1

    :goto_3
    if-ge p1, v0, :cond_4

    invoke-static {p2, p1, v9}, Lg/buj;->ai([BILg/fks;)I

    move-result p1

    iget-wide v5, v9, Lg/fks;->b:J

    invoke-static {v5, v6}, Lg/awt;->m(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lg/ajv;->zzg(J)V

    goto :goto_3

    :cond_4
    if-ne p1, v0, :cond_5

    return p1

    :cond_5
    invoke-static {}, Lg/drq;->d()Lg/drq;

    move-result-object p1

    throw p1

    :cond_6
    if-nez v1, :cond_56

    check-cast v4, Lg/ajv;

    invoke-static {p2, p3, v9}, Lg/buj;->ai([BILg/fks;)I

    move-result p1

    iget-wide v5, v9, Lg/fks;->b:J

    invoke-static {v5, v6}, Lg/awt;->m(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lg/ajv;->zzg(J)V

    :goto_4
    if-ge p1, p4, :cond_8

    invoke-static {p2, p1, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v1

    iget v5, v9, Lg/fks;->a:I

    if-eq v0, v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {p2, v1, v9}, Lg/buj;->ai([BILg/fks;)I

    move-result p1

    iget-wide v5, v9, Lg/fks;->b:J

    invoke-static {v5, v6}, Lg/awt;->m(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lg/ajv;->zzg(J)V

    goto :goto_4

    :cond_8
    :goto_5
    return p1

    :pswitch_1
    move-object/from16 v9, p14

    if-ne v1, v5, :cond_b

    check-cast v4, Lg/eaa;

    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result p1

    iget v0, v9, Lg/fks;->a:I

    add-int/2addr v0, p1

    :goto_6
    if-ge p1, v0, :cond_9

    invoke-static {p2, p1, v9}, Lg/buj;->as([BILg/fks;)I

    move-result p1

    iget v1, v9, Lg/fks;->a:I

    invoke-static {v1}, Lg/awt;->am(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lg/eaa;->d(I)V

    goto :goto_6

    :cond_9
    if-ne p1, v0, :cond_a

    return p1

    :cond_a
    invoke-static {}, Lg/drq;->d()Lg/drq;

    move-result-object p1

    throw p1

    :cond_b
    if-nez v1, :cond_56

    check-cast v4, Lg/eaa;

    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result p1

    iget v1, v9, Lg/fks;->a:I

    invoke-static {v1}, Lg/awt;->am(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lg/eaa;->d(I)V

    :goto_7
    if-ge p1, p4, :cond_d

    invoke-static {p2, p1, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v1

    iget v5, v9, Lg/fks;->a:I

    if-eq v0, v5, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {p2, v1, v9}, Lg/buj;->as([BILg/fks;)I

    move-result p1

    iget v1, v9, Lg/fks;->a:I

    invoke-static {v1}, Lg/awt;->am(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lg/eaa;->d(I)V

    goto :goto_7

    :cond_d
    :goto_8
    return p1

    :pswitch_2
    move-object/from16 v9, p14

    if-ne v1, v5, :cond_10

    move-object v0, v4

    check-cast v0, Lg/eaa;

    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v1

    iget v3, v9, Lg/fks;->a:I

    add-int/2addr v3, v1

    :goto_9
    if-ge v1, v3, :cond_e

    invoke-static {p2, v1, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v1

    iget v5, v9, Lg/fks;->a:I

    invoke-virtual {v0, v5}, Lg/eaa;->d(I)V

    goto :goto_9

    :cond_e
    if-ne v1, v3, :cond_f

    goto :goto_a

    :cond_f
    invoke-static {}, Lg/drq;->d()Lg/drq;

    move-result-object p1

    throw p1

    :cond_10
    if-nez v1, :cond_56

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lg/buj;->u(I[BIILg/cwe;Lg/fks;)I

    move-result v1

    :goto_a
    check-cast p1, Lg/cys;

    iget-object p2, p1, Lg/cys;->zzc:Lg/fjx;

    sget-object v0, Lg/fjx;->a:Lg/fjx;

    if-ne p2, v0, :cond_11

    goto :goto_b

    :cond_11
    move-object v8, p2

    :goto_b
    invoke-virtual {p0, v6}, Lg/ecy;->ac(I)Lg/dcm;

    move-result-object p2

    sget-object v0, Lg/ave;->b:Ljava/lang/Class;

    if-nez p2, :cond_12

    goto/16 :goto_f

    :cond_12
    iget-object v0, p0, Lg/ecy;->k:Lg/czj;

    if-eqz v4, :cond_18

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_c
    if-ge v3, v2, :cond_16

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {p2, v9}, Lg/dcm;->zza(I)Z

    move-result v10

    if-eqz v10, :cond_14

    if-eq v3, v5, :cond_13

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_14
    if-nez v8, :cond_15

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/fjx;->g()Lg/fjx;

    move-result-object v8

    :cond_15
    int-to-long v9, v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    shl-int/lit8 v9, p6, 0x3

    invoke-virtual {v8, v9, v6}, Lg/fjx;->j(ILjava/lang/Object;)V

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_16
    if-ne v5, v2, :cond_17

    goto :goto_f

    :cond_17
    invoke-interface {v4, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_f

    :cond_18
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p2, v3}, Lg/dcm;->zza(I)Z

    move-result v4

    if-nez v4, :cond_19

    if-nez v8, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/fjx;->g()Lg/fjx;

    move-result-object v4

    move-object v8, v4

    :cond_1a
    int-to-long v3, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    shl-int/lit8 v4, p6, 0x3

    invoke-virtual {v8, v4, v3}, Lg/fjx;->j(ILjava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    :cond_1b
    :goto_f
    if-nez v8, :cond_1c

    return v1

    :cond_1c
    iput-object v8, p1, Lg/cys;->zzc:Lg/fjx;

    return v1

    :pswitch_3
    move-object/from16 v9, p14

    if-ne v1, v5, :cond_56

    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v1

    iget v2, v9, Lg/fks;->a:I

    if-ltz v2, :cond_24

    array-length v5, p2

    sub-int/2addr v5, v1

    if-gt v2, v5, :cond_23

    if-nez v2, :cond_1d

    sget-object v2, Lg/cyb;->d:Lg/crn;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1d
    invoke-static {v1, p2, v2}, Lg/cyb;->f(I[BI)Lg/crn;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10
    add-int/2addr v1, v2

    :goto_11
    if-ge v1, p4, :cond_22

    invoke-static {p2, v1, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v2

    iget v5, v9, Lg/fks;->a:I

    if-eq v0, v5, :cond_1e

    goto :goto_12

    :cond_1e
    invoke-static {p2, v2, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v1

    iget v2, v9, Lg/fks;->a:I

    if-ltz v2, :cond_21

    array-length v5, p2

    sub-int/2addr v5, v1

    if-gt v2, v5, :cond_20

    if-nez v2, :cond_1f

    sget-object v2, Lg/cyb;->d:Lg/crn;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1f
    invoke-static {v1, p2, v2}, Lg/cyb;->f(I[BI)Lg/crn;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_20
    invoke-static {}, Lg/drq;->d()Lg/drq;

    move-result-object p1

    throw p1

    :cond_21
    invoke-static {}, Lg/drq;->c()Lg/drq;

    move-result-object p1

    throw p1

    :cond_22
    :goto_12
    return v1

    :cond_23
    invoke-static {}, Lg/drq;->d()Lg/drq;

    move-result-object p1

    throw p1

    :cond_24
    invoke-static {}, Lg/drq;->c()Lg/drq;

    move-result-object p1

    throw p1

    :pswitch_4
    move-object/from16 v9, p14

    if-eq v1, v5, :cond_25

    goto/16 :goto_21

    :cond_25
    invoke-virtual {p0, v6}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v1

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move/from16 p7, v0

    move-object/from16 p6, v1

    move-object/from16 p11, v4

    move-object/from16 p12, v9

    invoke-static/range {p6 .. p12}, Lg/buj;->aq(Lg/ciw;I[BIILg/cwe;Lg/fks;)I

    move-result p1

    return p1

    :pswitch_5
    move-object/from16 v9, p14

    move-object v6, v4

    move v4, v0

    if-ne v1, v5, :cond_56

    const-wide/32 v1, 0x20000000

    and-long v1, p9, v1

    const-wide/16 v7, 0x0

    const-string v3, ""

    cmp-long v5, v1, v7

    if-nez v5, :cond_2b

    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v1

    iget v2, v9, Lg/fks;->a:I

    if-ltz v2, :cond_2a

    if-nez v2, :cond_26

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_26
    new-instance v5, Ljava/lang/String;

    sget-object v7, Lg/dhz;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, p2, v1, v2, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_13
    add-int/2addr v1, v2

    :goto_14
    if-ge v1, p4, :cond_29

    invoke-static {p2, v1, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v2

    iget v5, v9, Lg/fks;->a:I

    if-ne v4, v5, :cond_29

    invoke-static {p2, v2, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v1

    iget v2, v9, Lg/fks;->a:I

    if-ltz v2, :cond_28

    if-nez v2, :cond_27

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_27
    new-instance v5, Ljava/lang/String;

    sget-object v7, Lg/dhz;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, p2, v1, v2, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_28
    invoke-static {}, Lg/drq;->c()Lg/drq;

    move-result-object p1

    throw p1

    :cond_29
    return v1

    :cond_2a
    invoke-static {}, Lg/drq;->c()Lg/drq;

    move-result-object p1

    throw p1

    :cond_2b
    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v1

    iget v2, v9, Lg/fks;->a:I

    if-ltz v2, :cond_32

    if-nez v2, :cond_2c

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2c
    add-int v5, v1, v2

    sget-object v7, Lg/gua;->a:Lg/cuf;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2, v5}, Lg/cuf;->g(I[BI)Z

    move-result v7

    if-eqz v7, :cond_31

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lg/dhz;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, p2, v1, v2, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_15
    move v1, v5

    :goto_16
    if-ge v1, p4, :cond_30

    invoke-static {p2, v1, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v2

    iget v5, v9, Lg/fks;->a:I

    if-ne v4, v5, :cond_30

    invoke-static {p2, v2, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v1

    iget v2, v9, Lg/fks;->a:I

    if-ltz v2, :cond_2f

    if-nez v2, :cond_2d

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2d
    add-int v5, v1, v2

    sget-object v7, Lg/gua;->a:Lg/cuf;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2, v5}, Lg/cuf;->g(I[BI)Z

    move-result v7

    if-eqz v7, :cond_2e

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lg/dhz;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, p2, v1, v2, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2e
    invoke-static {}, Lg/drq;->b()Lg/drq;

    move-result-object p1

    throw p1

    :cond_2f
    invoke-static {}, Lg/drq;->c()Lg/drq;

    move-result-object p1

    throw p1

    :cond_30
    return v1

    :cond_31
    invoke-static {}, Lg/drq;->b()Lg/drq;

    move-result-object p1

    throw p1

    :cond_32
    invoke-static {}, Lg/drq;->c()Lg/drq;

    move-result-object p1

    throw p1

    :pswitch_6
    move-object/from16 v9, p14

    move-object v6, v4

    if-ne v1, v5, :cond_36

    if-nez v6, :cond_35

    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v0

    iget v1, v9, Lg/fks;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_34

    if-ne v0, v1, :cond_33

    return v0

    :cond_33
    invoke-static {}, Lg/drq;->d()Lg/drq;

    move-result-object p1

    throw p1

    :cond_34
    invoke-static {p2, v0, v9}, Lg/buj;->ai([BILg/fks;)I

    throw v8

    :cond_35
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_36
    if-eqz v1, :cond_37

    goto/16 :goto_21

    :cond_37
    if-nez v6, :cond_38

    invoke-static {p2, p3, v9}, Lg/buj;->ai([BILg/fks;)I

    throw v8

    :cond_38
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_7
    move-object/from16 v9, p14

    move-object v6, v4

    move v4, v0

    if-ne v1, v5, :cond_3b

    move-object v4, v6

    check-cast v4, Lg/eaa;

    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v0

    iget v1, v9, Lg/fks;->a:I

    add-int/2addr v1, v0

    :goto_17
    if-ge v0, v1, :cond_39

    invoke-static {p2, v0}, Lg/buj;->ae([BI)I

    move-result v2

    invoke-virtual {v4, v2}, Lg/eaa;->d(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_17

    :cond_39
    if-ne v0, v1, :cond_3a

    return v0

    :cond_3a
    invoke-static {}, Lg/drq;->d()Lg/drq;

    move-result-object p1

    throw p1

    :cond_3b
    if-ne v1, v2, :cond_56

    move-object v1, v6

    check-cast v1, Lg/eaa;

    invoke-static/range {p2 .. p3}, Lg/buj;->ae([BI)I

    move-result v2

    invoke-virtual {v1, v2}, Lg/eaa;->d(I)V

    add-int/lit8 v2, p3, 0x4

    :goto_18
    if-ge v2, p4, :cond_3d

    invoke-static {p2, v2, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v3

    iget v5, v9, Lg/fks;->a:I

    if-eq v4, v5, :cond_3c

    goto :goto_19

    :cond_3c
    invoke-static {p2, v3}, Lg/buj;->ae([BI)I

    move-result v2

    invoke-virtual {v1, v2}, Lg/eaa;->d(I)V

    add-int/lit8 v2, v3, 0x4

    goto :goto_18

    :cond_3d
    :goto_19
    return v2

    :pswitch_8
    move-object/from16 v9, p14

    move-object v6, v4

    move v4, v0

    if-ne v1, v5, :cond_40

    move-object v4, v6

    check-cast v4, Lg/ajv;

    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v0

    iget v1, v9, Lg/fks;->a:I

    add-int/2addr v1, v0

    :goto_1a
    if-ge v0, v1, :cond_3e

    invoke-static {v0, p2}, Lg/buj;->af(I[B)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lg/ajv;->zzg(J)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_1a

    :cond_3e
    if-ne v0, v1, :cond_3f

    return v0

    :cond_3f
    invoke-static {}, Lg/drq;->d()Lg/drq;

    move-result-object p1

    throw p1

    :cond_40
    if-ne v1, v3, :cond_56

    move-object v1, v6

    check-cast v1, Lg/ajv;

    invoke-static {p3, p2}, Lg/buj;->af(I[B)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lg/ajv;->zzg(J)V

    add-int/lit8 v2, p3, 0x8

    :goto_1b
    if-ge v2, p4, :cond_42

    invoke-static {p2, v2, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v3

    iget v5, v9, Lg/fks;->a:I

    if-eq v4, v5, :cond_41

    goto :goto_1c

    :cond_41
    invoke-static {v3, p2}, Lg/buj;->af(I[B)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lg/ajv;->zzg(J)V

    add-int/lit8 v2, v3, 0x8

    goto :goto_1b

    :cond_42
    :goto_1c
    return v2

    :pswitch_9
    move-object/from16 v9, p14

    move-object v6, v4

    move v4, v0

    if-ne v1, v5, :cond_45

    move-object v4, v6

    check-cast v4, Lg/eaa;

    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v0

    iget v1, v9, Lg/fks;->a:I

    add-int/2addr v1, v0

    :goto_1d
    if-ge v0, v1, :cond_43

    invoke-static {p2, v0, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v0

    iget v2, v9, Lg/fks;->a:I

    invoke-virtual {v4, v2}, Lg/eaa;->d(I)V

    goto :goto_1d

    :cond_43
    if-ne v0, v1, :cond_44

    return v0

    :cond_44
    invoke-static {}, Lg/drq;->d()Lg/drq;

    move-result-object p1

    throw p1

    :cond_45
    if-eqz v1, :cond_46

    goto/16 :goto_21

    :cond_46
    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p6, v4

    move-object/from16 p10, v6

    move-object/from16 p11, v9

    invoke-static/range {p6 .. p11}, Lg/buj;->u(I[BIILg/cwe;Lg/fks;)I

    move-result p1

    return p1

    :pswitch_a
    move-object/from16 v9, p14

    if-ne v1, v5, :cond_49

    check-cast v4, Lg/ajv;

    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v0

    iget v1, v9, Lg/fks;->a:I

    add-int/2addr v1, v0

    :goto_1e
    if-ge v0, v1, :cond_47

    invoke-static {p2, v0, v9}, Lg/buj;->ai([BILg/fks;)I

    move-result v0

    iget-wide v2, v9, Lg/fks;->b:J

    invoke-virtual {v4, v2, v3}, Lg/ajv;->zzg(J)V

    goto :goto_1e

    :cond_47
    if-ne v0, v1, :cond_48

    return v0

    :cond_48
    invoke-static {}, Lg/drq;->d()Lg/drq;

    move-result-object p1

    throw p1

    :cond_49
    if-nez v1, :cond_56

    check-cast v4, Lg/ajv;

    invoke-static {p2, p3, v9}, Lg/buj;->ai([BILg/fks;)I

    move-result v1

    iget-wide v5, v9, Lg/fks;->b:J

    invoke-virtual {v4, v5, v6}, Lg/ajv;->zzg(J)V

    :goto_1f
    if-ge v1, p4, :cond_4b

    invoke-static {p2, v1, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v2

    iget v5, v9, Lg/fks;->a:I

    if-eq v0, v5, :cond_4a

    goto :goto_20

    :cond_4a
    invoke-static {p2, v2, v9}, Lg/buj;->ai([BILg/fks;)I

    move-result v1

    iget-wide v5, v9, Lg/fks;->b:J

    invoke-virtual {v4, v5, v6}, Lg/ajv;->zzg(J)V

    goto :goto_1f

    :cond_4b
    :goto_20
    return v1

    :pswitch_b
    move-object/from16 v9, p14

    if-ne v1, v5, :cond_4f

    if-nez v4, :cond_4e

    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v0

    iget v1, v9, Lg/fks;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_4d

    if-ne v0, v1, :cond_4c

    return v0

    :cond_4c
    invoke-static {}, Lg/drq;->d()Lg/drq;

    move-result-object p1

    throw p1

    :cond_4d
    invoke-static {p2, v0}, Lg/buj;->ae([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v8

    :cond_4e
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_4f
    if-eq v1, v2, :cond_50

    goto :goto_21

    :cond_50
    if-nez v4, :cond_51

    invoke-static/range {p2 .. p3}, Lg/buj;->ae([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v8

    :cond_51
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_c
    move-object/from16 v9, p14

    if-ne v1, v5, :cond_55

    if-nez v4, :cond_54

    invoke-static {p2, p3, v9}, Lg/buj;->as([BILg/fks;)I

    move-result v0

    iget v1, v9, Lg/fks;->a:I

    add-int/2addr v1, v0

    if-lt v0, v1, :cond_53

    if-ne v0, v1, :cond_52

    return v0

    :cond_52
    invoke-static {}, Lg/drq;->d()Lg/drq;

    move-result-object p1

    throw p1

    :cond_53
    invoke-static {v0, p2}, Lg/buj;->af(I[B)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v8

    :cond_54
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_55
    if-eq v1, v3, :cond_57

    :cond_56
    :goto_21
    return p3

    :cond_57
    if-nez v4, :cond_58

    invoke-static {p3, p2}, Lg/buj;->af(I[B)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v8

    :cond_58
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x12
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ag(Ljava/lang/Object;)I
    .locals 12

    sget-object v0, Lg/ecy;->b:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lg/ecy;->n:[I

    array-length v5, v4

    if-ge v2, v5, :cond_e

    invoke-virtual {p0, v2}, Lg/ecy;->ao(I)I

    move-result v5

    invoke-static {v5}, Lg/ecy;->v(I)I

    move-result v6

    aget v7, v4, v2

    const v8, 0xfffff

    and-int/2addr v5, v8

    int-to-long v8, v5

    sget-object v5, Lg/jh;->zzJ:Lg/jh;

    invoke-virtual {v5}, Lg/jh;->zza()I

    move-result v5

    if-lt v6, v5, :cond_0

    sget-object v5, Lg/jh;->zzW:Lg/jh;

    invoke-virtual {v5}, Lg/jh;->zza()I

    move-result v5

    if-gt v6, v5, :cond_0

    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    :cond_0
    const/4 v4, 0x1

    const/16 v5, 0x3f

    const/4 v10, 0x4

    const/16 v11, 0x8

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cir;

    invoke-virtual {p0, v2}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lg/p;->k(ILg/cir;Lg/ciw;)I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v8, v9, p1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v8

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    add-long v6, v8, v8

    shr-long/2addr v8, v5

    xor-long/2addr v6, v8

    invoke-static {v6, v7}, Lg/p;->i(J)I

    move-result v5

    :goto_2
    add-int/2addr v5, v4

    add-int/2addr v3, v5

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v8, v9, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4, v5, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4, v11, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_4
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4, v10, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_5
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v8, v9, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    invoke-static {v4}, Lg/p;->g(I)I

    move-result v4

    :goto_3
    add-int/2addr v4, v5

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v8, v9, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    invoke-static {v4, v5, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_7
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cyb;

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    invoke-virtual {v4}, Lg/cyb;->c()I

    move-result v4

    invoke-static {v4, v4, v5, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_8
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lg/ave;->n(ILjava/lang/Object;Lg/ciw;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lg/cyb;

    if-eqz v5, :cond_1

    check-cast v4, Lg/cyb;

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    invoke-virtual {v4}, Lg/cyb;->c()I

    move-result v4

    invoke-static {v4, v4, v5, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :cond_1
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    invoke-static {v4}, Lg/p;->j(Ljava/lang/String;)I

    move-result v4

    goto :goto_3

    :pswitch_a
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5, v4, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_b
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4, v10, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_c
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4, v11, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_d
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v8, v9, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    invoke-static {v4}, Lg/p;->g(I)I

    move-result v4

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v8, v9, p1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v4

    shl-int/lit8 v6, v7, 0x3

    invoke-static {v6}, Lg/p;->h(I)I

    move-result v6

    invoke-static {v4, v5}, Lg/p;->i(J)I

    move-result v4

    :goto_4
    add-int/2addr v4, v6

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v8, v9, p1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v4

    shl-int/lit8 v6, v7, 0x3

    invoke-static {v6}, Lg/p;->h(I)I

    move-result v6

    invoke-static {v4, v5}, Lg/p;->i(J)I

    move-result v4

    goto :goto_4

    :pswitch_10
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4, v10, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_11
    invoke-virtual {p0, v7, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4, v11, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_12
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2}, Lg/ecy;->an(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lg/aoq;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_13
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v2}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v5

    sget-object v6, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5
    if-ge v8, v6, :cond_3

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/cir;

    invoke-static {v7, v10, v5}, Lg/p;->k(ILg/cir;Lg/ciw;)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_2
    const/4 v9, 0x0

    :cond_3
    add-int/2addr v3, v9

    goto/16 :goto_8

    :pswitch_14
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lg/ave;->ai(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_15
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lg/ave;->s(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_16
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lg/ave;->j(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_17
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lg/ave;->v(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_18
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lg/ave;->r(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_19
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lg/ave;->k(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_1a
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_1b
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lg/ave;->v(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_1c
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lg/ave;->j(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_1d
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lg/ave;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_1e
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lg/ave;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_1f
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lg/ave;->ae(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_20
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lg/ave;->v(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_21
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lg/ave;->j(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_d

    invoke-static {v7}, Lg/p;->l(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_22
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    :goto_6
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_4
    invoke-static {v4}, Lg/ave;->ai(Ljava/util/List;)I

    move-result v4

    invoke-static {v7, v5, v4}, Lg/dub;->c(III)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_6

    :cond_5
    invoke-static {v4}, Lg/ave;->s(Ljava/util/List;)I

    move-result v4

    invoke-static {v7, v5, v4}, Lg/dub;->c(III)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v7, v4}, Lg/ave;->aj(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v7, v4}, Lg/ave;->u(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_26
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {v4}, Lg/ave;->r(Ljava/util/List;)I

    move-result v4

    invoke-static {v7, v5, v4}, Lg/dub;->c(III)I

    move-result v4

    goto/16 :goto_1

    :pswitch_27
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {v4}, Lg/ave;->k(Ljava/util/List;)I

    move-result v4

    invoke-static {v7, v5, v4}, Lg/dub;->c(III)I

    move-result v4

    goto/16 :goto_1

    :pswitch_28
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v7, v4}, Lg/ave;->af(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_29
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v2}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lg/ave;->t(ILjava/util/List;Lg/ciw;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_2a
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v7, v4}, Lg/ave;->ag(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_2b
    sget-object v5, Lg/diy;->f:Lg/frx;

    invoke-virtual {v5, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v6, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v6, 0x0

    goto :goto_7

    :cond_8
    shl-int/lit8 v6, v7, 0x3

    invoke-static {v6}, Lg/p;->h(I)I

    move-result v6

    add-int/2addr v6, v4

    mul-int v6, v6, v5

    :goto_7
    add-int/2addr v3, v6

    goto/16 :goto_8

    :pswitch_2c
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v7, v4}, Lg/ave;->u(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_2d
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v7, v4}, Lg/ave;->aj(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_2e
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-static {v4}, Lg/ave;->e(Ljava/util/List;)I

    move-result v4

    invoke-static {v7, v5, v4}, Lg/dub;->c(III)I

    move-result v4

    goto/16 :goto_1

    :pswitch_2f
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_6

    :cond_a
    invoke-static {v4}, Lg/ave;->h(Ljava/util/List;)I

    move-result v4

    invoke-static {v7, v5, v4}, Lg/dub;->c(III)I

    move-result v4

    goto/16 :goto_1

    :pswitch_30
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_6

    :cond_b
    invoke-static {v4}, Lg/ave;->ae(Ljava/util/List;)I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v7, v4, v5}, Lg/dub;->c(III)I

    move-result v4

    goto/16 :goto_1

    :pswitch_31
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v7, v4}, Lg/ave;->u(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_32
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v7, v4}, Lg/ave;->aj(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_33
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cir;

    invoke-virtual {p0, v2}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lg/p;->k(ILg/cir;Lg/ciw;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v8

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    add-long v6, v8, v8

    shr-long/2addr v8, v5

    xor-long/2addr v6, v8

    invoke-static {v6, v7}, Lg/p;->i(J)I

    move-result v5

    goto/16 :goto_2

    :pswitch_35
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    add-int v6, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4, v5, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_36
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4, v11, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_37
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4, v10, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_38
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    invoke-static {v4}, Lg/p;->g(I)I

    move-result v4

    goto/16 :goto_3

    :pswitch_39
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    invoke-static {v4, v5, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_3a
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cyb;

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    invoke-virtual {v4}, Lg/cyb;->c()I

    move-result v4

    invoke-static {v4, v4, v5, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :pswitch_3b
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lg/ave;->n(ILjava/lang/Object;Lg/ciw;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_3c
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lg/cyb;

    if-eqz v5, :cond_c

    check-cast v4, Lg/cyb;

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    invoke-virtual {v4}, Lg/cyb;->c()I

    move-result v4

    invoke-static {v4, v4, v5, v3}, Lg/dub;->j(IIII)I

    move-result v3

    goto/16 :goto_8

    :cond_c
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    invoke-static {v4}, Lg/p;->j(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_3d
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5, v4, v3}, Lg/dub;->d(III)I

    move-result v3

    goto/16 :goto_8

    :pswitch_3e
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4, v10, v3}, Lg/dub;->d(III)I

    move-result v3

    goto :goto_8

    :pswitch_3f
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4, v11, v3}, Lg/dub;->d(III)I

    move-result v3

    goto :goto_8

    :pswitch_40
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    shl-int/lit8 v5, v7, 0x3

    invoke-static {v5}, Lg/p;->h(I)I

    move-result v5

    invoke-static {v4}, Lg/p;->g(I)I

    move-result v4

    goto/16 :goto_3

    :pswitch_41
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v4

    shl-int/lit8 v6, v7, 0x3

    invoke-static {v6}, Lg/p;->h(I)I

    move-result v6

    invoke-static {v4, v5}, Lg/p;->i(J)I

    move-result v4

    goto/16 :goto_4

    :pswitch_42
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v4

    shl-int/lit8 v6, v7, 0x3

    invoke-static {v6}, Lg/p;->h(I)I

    move-result v6

    invoke-static {v4, v5}, Lg/p;->i(J)I

    move-result v4

    goto/16 :goto_4

    :pswitch_43
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4, v10, v3}, Lg/dub;->d(III)I

    move-result v3

    goto :goto_8

    :pswitch_44
    invoke-virtual {p0, v2, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    shl-int/lit8 v4, v7, 0x3

    invoke-static {v4, v11, v3}, Lg/dub;->d(III)I

    move-result v3

    :cond_d
    :goto_8
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lg/ecy;->k:Lg/czj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lg/cys;

    iget-object p1, p1, Lg/cys;->zzc:Lg/fjx;

    invoke-virtual {p1}, Lg/fjx;->i()I

    move-result p1

    add-int/2addr p1, v3

    return p1

    nop

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

.method public final ah(I)Lg/ciw;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lg/ecy;->q:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Lg/ciw;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lg/auv;->a:Lg/auv;

    add-int/lit8 v2, p1, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lg/auv;->d(Ljava/lang/Class;)Lg/ciw;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v1
.end method

.method public final ai(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lg/ecy;->n:[I

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    sget-object p2, Lg/diy;->f:Lg/frx;

    invoke-virtual {p2, v0, v1, p3}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final aj(Ljava/lang/Object;JI)V
    .locals 3

    sget-object v0, Lg/ecy;->b:Lsun/misc/Unsafe;

    invoke-virtual {p0, p4}, Lg/ecy;->an(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lg/dhf;

    invoke-virtual {v2}, Lg/dhf;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lg/dhf;->a:Lg/dhf;

    invoke-virtual {v2}, Lg/dhf;->d()Lg/dhf;

    move-result-object v2

    invoke-static {v2, v1}, Lg/aoq;->b(Ljava/lang/Object;Ljava/lang/Object;)Lg/dhf;

    invoke-virtual {v0, p1, p2, p3, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-static {p4}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method

.method public final ak(Ljava/lang/Object;[BIIILg/fks;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move/from16 v4, p4

    move/from16 v15, p5

    move-object/from16 v13, p6

    sget-object v9, Lg/ecy;->b:Lsun/misc/Unsafe;

    move/from16 v3, p3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffff

    const/4 v14, 0x0

    :goto_0
    const v16, 0xfffff

    :goto_1
    iget-object v10, v0, Lg/ecy;->n:[I

    if-ge v3, v4, :cond_1d

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v1, v3

    if-gez v3, :cond_0

    invoke-static {v3, v1, v5, v13}, Lg/buj;->z(I[BILg/fks;)I

    move-result v5

    iget v3, v13, Lg/fks;->a:I

    :cond_0
    move/from16 v25, v5

    move v5, v3

    move/from16 v3, v25

    ushr-int/lit8 v12, v5, 0x3

    move/from16 v18, v7

    and-int/lit8 v7, v5, 0x7

    iget v11, v0, Lg/ecy;->l:I

    iget v1, v0, Lg/ecy;->s:I

    move/from16 p3, v3

    const/4 v3, 0x3

    if-le v12, v6, :cond_2

    div-int/lit8 v6, v18, 0x3

    if-lt v12, v1, :cond_1

    if-gt v12, v11, :cond_1

    invoke-virtual {v0, v12, v6}, Lg/ecy;->ad(II)I

    move-result v1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :goto_2
    const/4 v11, 0x0

    :goto_3
    const/4 v6, -0x1

    goto :goto_4

    :cond_2
    if-lt v12, v1, :cond_3

    if-gt v12, v11, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v0, v12, v11}, Lg/ecy;->ad(II)I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    const/4 v1, -0x1

    goto :goto_3

    :goto_4
    if-ne v1, v6, :cond_4

    move-object v6, v0

    move v11, v5

    move/from16 v16, v8

    move-object/from16 v24, v9

    move-object/from16 v23, v10

    move/from16 v20, v12

    const/4 v7, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    move-object v8, v2

    move/from16 v2, p3

    goto/16 :goto_15

    :cond_4
    add-int/lit8 v17, v1, 0x1

    aget v6, v10, v17

    const/16 v19, 0x0

    invoke-static {v6}, Lg/ecy;->v(I)I

    move-result v11

    and-int v3, v6, v16

    move/from16 v20, v12

    int-to-long v12, v3

    const/16 v3, 0x11

    if-gt v11, v3, :cond_12

    add-int/lit8 v3, v1, 0x2

    aget v3, v10, v3

    ushr-int/lit8 v21, v3, 0x14

    const/4 v4, 0x1

    shl-int v21, v4, v21

    and-int v3, v3, v16

    if-eq v3, v8, :cond_6

    move-object/from16 v23, v10

    const v10, 0xfffff

    move/from16 v16, v11

    if-eq v8, v10, :cond_5

    int-to-long v10, v8

    invoke-virtual {v9, v2, v10, v11, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v10, v3

    invoke-virtual {v9, v2, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v10, v3

    move v14, v8

    goto :goto_5

    :cond_6
    move-object/from16 v23, v10

    move/from16 v16, v11

    move v10, v8

    :goto_5
    const/4 v3, 0x5

    packed-switch v16, :pswitch_data_0

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    invoke-virtual {v0, v1}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v3

    shl-int/lit8 v4, v20, 0x3

    or-int/lit8 v7, v4, 0x4

    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v8, p6

    move v11, v5

    const/16 v17, -0x1

    move/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lg/buj;->s(Lg/ciw;[BIIILg/fks;)I

    move-result v3

    move-object/from16 v25, v8

    move-object v8, v4

    move-object/from16 v4, v25

    and-int v5, v14, v21

    if-nez v5, :cond_7

    iget-object v5, v4, Lg/fks;->c:Ljava/lang/Object;

    invoke-virtual {v9, v2, v12, v13, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v9, v2, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v4, Lg/fks;->c:Ljava/lang/Object;

    invoke-static {v5, v6}, Lg/dhz;->d(Ljava/lang/Object;Ljava/lang/Object;)Lg/cys;

    move-result-object v5

    invoke-virtual {v9, v2, v12, v13, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    or-int v14, v14, v21

    move v7, v1

    move-object v13, v4

    move-object v1, v8

    move v8, v10

    move v5, v11

    move/from16 v6, v20

    const v16, 0xfffff

    move/from16 v4, p4

    goto/16 :goto_1

    :cond_8
    move-object/from16 v8, p2

    move v11, v5

    const/16 v17, -0x1

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v2

    move-object v7, v9

    move/from16 v9, p3

    goto/16 :goto_10

    :pswitch_0
    move-object/from16 v8, p2

    move-object/from16 v4, p6

    move v11, v5

    const/16 v17, -0x1

    move/from16 v5, p3

    if-nez v7, :cond_9

    invoke-static {v8, v5, v4}, Lg/buj;->ai([BILg/fks;)I

    move-result v7

    iget-wide v5, v4, Lg/fks;->b:J

    invoke-static {v5, v6}, Lg/awt;->m(J)J

    move-result-wide v5

    move-wide/from16 v25, v12

    move-object v13, v4

    move-wide/from16 v3, v25

    move v12, v1

    move-object v1, v9

    move/from16 v9, p4

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v14, v14, v21

    move v3, v7

    :goto_7
    move v4, v9

    move v5, v11

    move v7, v12

    move/from16 v6, v20

    const v16, 0xfffff

    move-object v9, v1

    move-object v1, v8

    move v8, v10

    goto/16 :goto_1

    :cond_9
    move v12, v1

    move-object v13, v4

    move-object v1, v9

    move/from16 v9, p4

    :cond_a
    move-object v7, v1

    move-object v1, v2

    move v9, v5

    goto/16 :goto_10

    :pswitch_1
    move-object/from16 v8, p2

    move v11, v5

    move-wide v3, v12

    const/16 v17, -0x1

    move/from16 v5, p3

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v9

    move/from16 v9, p4

    if-nez v7, :cond_a

    invoke-static {v8, v5, v13}, Lg/buj;->as([BILg/fks;)I

    move-result v5

    iget v6, v13, Lg/fks;->a:I

    invoke-static {v6}, Lg/awt;->am(I)I

    move-result v6

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    or-int v14, v14, v21

    :goto_9
    move v3, v5

    goto :goto_7

    :pswitch_2
    move-object/from16 v8, p2

    move v11, v5

    move-wide v3, v12

    const/16 v17, -0x1

    move/from16 v5, p3

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v9

    move/from16 v9, p4

    if-nez v7, :cond_a

    invoke-static {v8, v5, v13}, Lg/buj;->as([BILg/fks;)I

    move-result v5

    iget v6, v13, Lg/fks;->a:I

    invoke-virtual {v0, v12}, Lg/ecy;->ac(I)Lg/dcm;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-interface {v7, v6}, Lg/dcm;->zza(I)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_a

    :cond_b
    invoke-static {v2}, Lg/ecy;->ab(Ljava/lang/Object;)Lg/fjx;

    move-result-object v3

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v11, v4}, Lg/fjx;->j(ILjava/lang/Object;)V

    goto :goto_9

    :cond_c
    :goto_a
    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_3
    move-object/from16 v8, p2

    move v11, v5

    move-wide v3, v12

    const/4 v6, 0x2

    const/16 v17, -0x1

    move/from16 v5, p3

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v9

    move/from16 v9, p4

    if-ne v7, v6, :cond_a

    invoke-static {v8, v5, v13}, Lg/buj;->p([BILg/fks;)I

    move-result v5

    iget-object v6, v13, Lg/fks;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    move-object/from16 v8, p2

    move v11, v5

    move-wide v3, v12

    const/4 v6, 0x2

    const/16 v17, -0x1

    move/from16 v5, p3

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v9

    move/from16 v9, p4

    if-ne v7, v6, :cond_a

    invoke-virtual {v0, v12}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v6

    invoke-static {v6, v8, v5, v9, v13}, Lg/buj;->ay(Lg/ciw;[BIILg/fks;)I

    move-result v5

    and-int v6, v14, v21

    if-nez v6, :cond_d

    iget-object v6, v13, Lg/fks;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :cond_d
    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v13, Lg/fks;->c:Ljava/lang/Object;

    invoke-static {v6, v7}, Lg/dhz;->d(Ljava/lang/Object;Ljava/lang/Object;)Lg/cys;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_5
    move-object/from16 v8, p2

    move v11, v5

    move-wide v3, v12

    const/16 v17, -0x1

    move/from16 v5, p3

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v9

    const/4 v9, 0x2

    if-ne v7, v9, :cond_a

    const/high16 v7, 0x20000000

    and-int/2addr v6, v7

    if-nez v6, :cond_e

    invoke-static {v8, v5, v13}, Lg/buj;->r([BILg/fks;)I

    move-result v5

    goto :goto_b

    :cond_e
    invoke-static {v8, v5, v13}, Lg/buj;->ap([BILg/fks;)I

    move-result v5

    :goto_b
    iget-object v6, v13, Lg/fks;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_c
    or-int v14, v14, v21

    move/from16 v4, p4

    move-object v9, v1

    move v3, v5

    :goto_d
    move-object v1, v8

    move v8, v10

    move v5, v11

    move v7, v12

    move/from16 v6, v20

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v8, p2

    move v11, v5

    move-wide v3, v12

    const/16 v17, -0x1

    move/from16 v5, p3

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v9

    if-nez v7, :cond_a

    invoke-static {v8, v5, v13}, Lg/buj;->ai([BILg/fks;)I

    move-result v5

    iget-wide v6, v13, Lg/fks;->b:J

    const-wide/16 v22, 0x0

    cmp-long v9, v6, v22

    if-eqz v9, :cond_f

    const/4 v6, 0x1

    goto :goto_e

    :cond_f
    const/4 v6, 0x0

    :goto_e
    sget-object v7, Lg/diy;->f:Lg/frx;

    invoke-virtual {v7, v2, v3, v4, v6}, Lg/frx;->g(Ljava/lang/Object;JZ)V

    goto :goto_c

    :pswitch_7
    move-object/from16 v8, p2

    move v11, v5

    move-wide v3, v12

    const/4 v6, 0x5

    const/16 v17, -0x1

    move/from16 v5, p3

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v9

    if-ne v7, v6, :cond_a

    invoke-static {v8, v5}, Lg/buj;->ae([BI)I

    move-result v6

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v3, v5, 0x4

    :goto_f
    or-int v14, v14, v21

    move/from16 v4, p4

    move-object v9, v1

    goto :goto_d

    :pswitch_8
    move-object/from16 v8, p2

    move v11, v5

    move-wide v3, v12

    const/4 v6, 0x1

    const/16 v17, -0x1

    move/from16 v5, p3

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v9

    if-ne v7, v6, :cond_10

    move v7, v5

    invoke-static {v7, v8}, Lg/buj;->af(I[B)J

    move-result-wide v5

    move v9, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v3, v9, 0x8

    goto :goto_f

    :cond_10
    move v9, v5

    :cond_11
    move-object v7, v1

    move-object v1, v2

    goto/16 :goto_10

    :pswitch_9
    move-object/from16 v8, p2

    move v11, v5

    move-wide v3, v12

    const/16 v17, -0x1

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v9

    move/from16 v9, p3

    if-nez v7, :cond_11

    invoke-static {v8, v9, v13}, Lg/buj;->as([BILg/fks;)I

    move-result v5

    iget v6, v13, Lg/fks;->a:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_a
    move-object/from16 v8, p2

    move v11, v5

    move-wide v3, v12

    const/16 v17, -0x1

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v9

    move/from16 v9, p3

    if-nez v7, :cond_11

    invoke-static {v8, v9, v13}, Lg/buj;->ai([BILg/fks;)I

    move-result v7

    iget-wide v5, v13, Lg/fks;->b:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v14, v14, v21

    move/from16 v4, p4

    move-object v9, v1

    move v3, v7

    goto/16 :goto_d

    :pswitch_b
    move-object/from16 v8, p2

    move v11, v5

    move-wide v3, v12

    const/4 v6, 0x5

    const/16 v17, -0x1

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v9

    move/from16 v9, p3

    if-ne v7, v6, :cond_11

    invoke-static {v8, v9}, Lg/buj;->ae([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    sget-object v6, Lg/diy;->f:Lg/frx;

    invoke-virtual {v6, v2, v3, v4, v5}, Lg/frx;->e(Ljava/lang/Object;JF)V

    add-int/lit8 v3, v9, 0x4

    goto :goto_f

    :pswitch_c
    move-object/from16 v8, p2

    move v11, v5

    move-wide v3, v12

    const/4 v6, 0x1

    const/16 v17, -0x1

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v9

    move/from16 v9, p3

    if-ne v7, v6, :cond_11

    invoke-static {v9, v8}, Lg/buj;->af(I[B)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    move-object v7, v1

    sget-object v1, Lg/diy;->f:Lg/frx;

    invoke-virtual/range {v1 .. v6}, Lg/frx;->c(Ljava/lang/Object;JD)V

    move-object v1, v2

    add-int/lit8 v3, v9, 0x8

    or-int v14, v14, v21

    move/from16 v4, p4

    move-object v9, v7

    goto/16 :goto_d

    :goto_10
    move-object v6, v0

    move-object v8, v1

    move-object/from16 v24, v7

    move v2, v9

    move/from16 v16, v10

    move v7, v12

    const/16 v18, -0x1

    goto/16 :goto_15

    :cond_12
    move-object/from16 v23, v10

    move/from16 v16, v11

    move-wide v3, v12

    const/16 v17, -0x1

    move-object/from16 v13, p6

    move v12, v1

    move-object v1, v2

    move v11, v5

    move-object v10, v9

    move/from16 v9, p3

    const/16 v2, 0x1b

    move/from16 v5, v16

    if-ne v5, v2, :cond_16

    const/4 v2, 0x2

    if-ne v7, v2, :cond_15

    invoke-virtual {v10, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cwe;

    move-object v5, v2

    check-cast v5, Lg/gzj;

    iget-boolean v5, v5, Lg/gzj;->f:Z

    if-nez v5, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_13

    const/16 v5, 0xa

    goto :goto_11

    :cond_13
    add-int/2addr v5, v5

    :goto_11
    invoke-interface {v2, v5}, Lg/cwe;->zzd(I)Lg/cwe;

    move-result-object v2

    invoke-virtual {v10, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_14
    move-object v6, v2

    invoke-virtual {v0, v12}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move v4, v9

    move v2, v11

    move-object v7, v13

    invoke-static/range {v1 .. v7}, Lg/buj;->aq(Lg/ciw;I[BIILg/cwe;Lg/fks;)I

    move-result v1

    move-object/from16 v2, p1

    move/from16 v4, p4

    move-object/from16 v13, p6

    move v3, v1

    move-object v9, v10

    move v5, v11

    move v7, v12

    move/from16 v6, v20

    const v16, 0xfffff

    move-object/from16 v1, p2

    goto/16 :goto_1

    :cond_15
    move-object/from16 v2, p1

    move/from16 v16, v8

    move v3, v9

    move-object/from16 v24, v10

    move v5, v11

    move/from16 v17, v14

    const/16 v18, -0x1

    goto/16 :goto_14

    :cond_16
    const/16 v1, 0x31

    if-gt v5, v1, :cond_19

    move v2, v8

    move-object v1, v10

    move v8, v12

    move-wide v12, v3

    move v3, v9

    int-to-long v9, v6

    move v4, v11

    move v11, v5

    move v5, v4

    move/from16 v4, p4

    move-object/from16 v24, v1

    move/from16 v16, v2

    move/from16 v17, v14

    move/from16 v6, v20

    const/16 v18, -0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lg/ecy;->af(Ljava/lang/Object;[BIIIIIIJIJLg/fks;)I

    move-result v7

    move-object v2, v1

    move v11, v5

    move v12, v8

    if-eq v7, v3, :cond_17

    move-object/from16 v1, p2

    move/from16 v4, p4

    move-object/from16 v13, p6

    move v3, v7

    :goto_12
    move v5, v11

    move v7, v12

    move/from16 v8, v16

    move/from16 v14, v17

    move/from16 v6, v20

    move-object/from16 v9, v24

    goto/16 :goto_0

    :cond_17
    move-object v6, v0

    move-object v8, v2

    :cond_18
    move v2, v7

    :goto_13
    move v7, v12

    move/from16 v14, v17

    goto :goto_15

    :cond_19
    move-object/from16 v2, p1

    move/from16 v16, v8

    move-object/from16 v24, v10

    move/from16 v17, v14

    const/16 v18, -0x1

    move/from16 v25, v9

    move v9, v5

    move v5, v11

    move-wide v10, v3

    move/from16 v3, v25

    const/16 v1, 0x32

    if-ne v9, v1, :cond_1b

    const/4 v1, 0x2

    if-eq v7, v1, :cond_1a

    :goto_14
    move-object v6, v0

    move-object v8, v2

    move v2, v3

    move v11, v5

    goto :goto_13

    :cond_1a
    invoke-virtual {v0, v2, v10, v11, v12}, Lg/ecy;->aj(Ljava/lang/Object;JI)V

    const/4 v1, 0x0

    throw v1

    :cond_1b
    move/from16 v4, p4

    move-object/from16 v13, p6

    move-object v1, v2

    move v8, v6

    move/from16 v6, v20

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v13}, Lg/ecy;->at(Ljava/lang/Object;[BIIIIIIIJILg/fks;)I

    move-result v7

    move-object v8, v1

    move v11, v5

    move-object v6, v0

    if-eq v7, v3, :cond_18

    move-object/from16 v1, p2

    move/from16 v4, p4

    move-object/from16 v13, p6

    move-object v0, v6

    move v3, v7

    move-object v2, v8

    goto :goto_12

    :goto_15
    if-ne v11, v15, :cond_1c

    if-eqz v15, :cond_1c

    move/from16 v4, p4

    move v3, v2

    move v5, v11

    :goto_16
    move/from16 v0, v16

    const v10, 0xfffff

    goto :goto_17

    :cond_1c
    invoke-static {v8}, Lg/ecy;->ab(Ljava/lang/Object;)Lg/fjx;

    move-result-object v4

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    move v0, v11

    invoke-static/range {v0 .. v5}, Lg/buj;->az(I[BIILg/fjx;Lg/fks;)I

    move-result v2

    move-object/from16 v13, p6

    move v4, v3

    move-object v0, v6

    move v5, v11

    move/from16 v6, v20

    move-object/from16 v9, v24

    move v3, v2

    move-object v2, v8

    move/from16 v8, v16

    goto/16 :goto_0

    :cond_1d
    move-object v6, v0

    move/from16 v16, v8

    move-object/from16 v24, v9

    move-object/from16 v23, v10

    move/from16 v17, v14

    move-object v8, v2

    goto :goto_16

    :goto_17
    if-eq v0, v10, :cond_1e

    int-to-long v0, v0

    move-object/from16 v7, v24

    invoke-virtual {v7, v8, v0, v1, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1e
    iget v0, v6, Lg/ecy;->c:I

    :goto_18
    iget v1, v6, Lg/ecy;->p:I

    if-ge v0, v1, :cond_21

    iget-object v1, v6, Lg/ecy;->t:[I

    aget v1, v1, v0

    aget v2, v23, v1

    invoke-virtual {v6, v1}, Lg/ecy;->ao(I)I

    move-result v2

    and-int/2addr v2, v10

    int-to-long v11, v2

    sget-object v2, Lg/diy;->f:Lg/frx;

    invoke-virtual {v2, v11, v12, v8}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1f

    goto :goto_19

    :cond_1f
    invoke-virtual {v6, v1}, Lg/ecy;->ac(I)Lg/dcm;

    move-result-object v7

    if-nez v7, :cond_20

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_20
    check-cast v2, Lg/dhf;

    invoke-virtual {v6, v1}, Lg/ecy;->an(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_21
    const-string v0, "Failed to parse the message."

    if-nez v15, :cond_23

    if-ne v3, v4, :cond_22

    goto :goto_1a

    :cond_22
    new-instance v1, Lg/drq;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    if-gt v3, v4, :cond_24

    if-ne v5, v15, :cond_24

    :goto_1a
    return v3

    :cond_24
    new-instance v1, Lg/drq;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

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
.end method

.method public final al(Lg/cys;Lg/cys;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final am(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 7

    invoke-virtual {p0, p2}, Lg/ecy;->ao(I)I

    move-result v0

    iget-object v1, p0, Lg/ecy;->n:[I

    aget v2, v1, p2

    const v3, 0xfffff

    and-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {p0, v2, p2, p3}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v2, p2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lg/diy;->f:Lg/frx;

    invoke-virtual {v0, v4, v5, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v6, Lg/diy;->f:Lg/frx;

    invoke-virtual {v6, v4, v5, p3}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, p3}, Lg/dhz;->d(Ljava/lang/Object;Ljava/lang/Object;)Lg/cys;

    move-result-object p3

    invoke-static {v4, v5, p1, p3}, Lg/diy;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x2

    aget p2, v1, p2

    and-int/2addr p2, v3

    int-to-long p2, p2

    invoke-static {p1, p2, p3, v2}, Lg/diy;->s(Ljava/lang/Object;JI)V

    return-void

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    invoke-static {v4, v5, p1, p3}, Lg/diy;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x2

    aget p2, v1, p2

    and-int/2addr p2, v3

    int-to-long p2, p2

    invoke-static {p1, p2, p3, v2}, Lg/diy;->s(Ljava/lang/Object;JI)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final an(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lg/ecy;->q:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final ao(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lg/ecy;->n:[I

    aget p1, v0, p1

    return p1
.end method

.method public final ap(ILjava/lang/Object;)V
    .locals 5

    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lg/ecy;->n:[I

    aget p1, v0, p1

    const v0, 0xfffff

    and-int/2addr v0, p1

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    sget-object v2, Lg/diy;->f:Lg/frx;

    invoke-virtual {v2, v0, v1, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v2

    ushr-int/lit8 p1, p1, 0x14

    const/4 v3, 0x1

    shl-int p1, v3, p1

    or-int/2addr p1, v2

    invoke-static {p2, v0, v1, p1}, Lg/diy;->s(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final aq(Ljava/lang/Object;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lg/ecy;->b:Lsun/misc/Unsafe;

    const v4, 0xfffff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0xfffff

    :goto_0
    iget-object v9, v0, Lg/ecy;->n:[I

    array-length v10, v9

    if-ge v5, v10, :cond_f

    invoke-virtual {v0, v5}, Lg/ecy;->ao(I)I

    move-result v10

    aget v11, v9, v5

    invoke-static {v10}, Lg/ecy;->v(I)I

    move-result v12

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v12, v13, :cond_0

    add-int/lit8 v13, v5, 0x2

    aget v9, v9, v13

    and-int v13, v9, v4

    ushr-int/lit8 v9, v9, 0x14

    shl-int v9, v14, v9

    if-eq v13, v8, :cond_1

    int-to-long v7, v13

    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    move v8, v13

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :cond_1
    :goto_1
    and-int/2addr v10, v4

    int-to-long v3, v10

    const/16 v15, 0x3f

    const/4 v10, 0x4

    const/16 v13, 0x8

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cir;

    invoke-virtual {v0, v5}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lg/p;->k(ILg/cir;Lg/ciw;)I

    move-result v3

    :goto_2
    add-int/2addr v6, v3

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v3, v4, v1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lg/p;->h(I)I

    move-result v9

    add-long v10, v3, v3

    shr-long/2addr v3, v15

    xor-long/2addr v3, v10

    invoke-static {v3, v4}, Lg/p;->i(J)I

    move-result v3

    :goto_3
    add-int/2addr v3, v9

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v3, v4, v1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v9

    invoke-static {v3, v4, v6}, Lg/dub;->d(III)I

    move-result v6

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v13, v6}, Lg/dub;->d(III)I

    move-result v6

    goto/16 :goto_8

    :pswitch_4
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v10, v6}, Lg/dub;->d(III)I

    move-result v6

    goto/16 :goto_8

    :pswitch_5
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v3, v4, v1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-static {v3}, Lg/p;->g(I)I

    move-result v3

    :goto_4
    add-int/2addr v3, v4

    goto :goto_2

    :pswitch_6
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v3, v4, v1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-static {v3, v4, v6}, Lg/dub;->d(III)I

    move-result v6

    goto/16 :goto_8

    :pswitch_7
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cyb;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-virtual {v3}, Lg/cyb;->c()I

    move-result v3

    invoke-static {v3, v3, v4, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_8
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lg/ave;->n(ILjava/lang/Object;Lg/ciw;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lg/cyb;

    if-eqz v4, :cond_2

    check-cast v3, Lg/cyb;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-virtual {v3}, Lg/cyb;->c()I

    move-result v3

    invoke-static {v3, v3, v4, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :cond_2
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-static {v3}, Lg/p;->j(Ljava/lang/String;)I

    move-result v3

    goto :goto_4

    :pswitch_a
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v14, v6}, Lg/dub;->d(III)I

    move-result v6

    goto/16 :goto_8

    :pswitch_b
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v10, v6}, Lg/dub;->d(III)I

    move-result v6

    goto/16 :goto_8

    :pswitch_c
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v13, v6}, Lg/dub;->d(III)I

    move-result v6

    goto/16 :goto_8

    :pswitch_d
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v3, v4, v1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-static {v3}, Lg/p;->g(I)I

    move-result v3

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v3, v4, v1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lg/p;->h(I)I

    move-result v9

    invoke-static {v3, v4}, Lg/p;->i(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v3, v4, v1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lg/p;->h(I)I

    move-result v9

    invoke-static {v3, v4}, Lg/p;->i(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v10, v6}, Lg/dub;->d(III)I

    move-result v6

    goto/16 :goto_8

    :pswitch_11
    invoke-virtual {v0, v11, v5, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v13, v6}, Lg/dub;->d(III)I

    move-result v6

    goto/16 :goto_8

    :pswitch_12
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5}, Lg/ecy;->an(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lg/aoq;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_13
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v5}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v4

    sget-object v9, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_3

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_5
    if-ge v10, v9, :cond_4

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/cir;

    invoke-static {v11, v13, v4}, Lg/p;->k(ILg/cir;Lg/ciw;)I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_3
    const/4 v12, 0x0

    :cond_4
    add-int/2addr v6, v12

    goto/16 :goto_8

    :pswitch_14
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lg/ave;->ai(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_15
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lg/ave;->s(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_16
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lg/ave;->j(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_17
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lg/ave;->v(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_18
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lg/ave;->r(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_19
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lg/ave;->k(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_1a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_1b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lg/ave;->v(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_1c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lg/ave;->j(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_1d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lg/ave;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_1e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lg/ave;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_1f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lg/ave;->ae(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_20
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lg/ave;->v(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_21
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lg/ave;->j(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_e

    invoke-static {v11}, Lg/p;->l(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_22
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_5
    invoke-static {v3}, Lg/ave;->ai(Ljava/util/List;)I

    move-result v3

    invoke-static {v11, v4, v3}, Lg/dub;->c(III)I

    move-result v3

    goto/16 :goto_2

    :pswitch_23
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {v3}, Lg/ave;->s(Ljava/util/List;)I

    move-result v3

    invoke-static {v11, v4, v3}, Lg/dub;->c(III)I

    move-result v3

    goto/16 :goto_2

    :pswitch_24
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lg/ave;->aj(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_25
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lg/ave;->u(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_26
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {v3}, Lg/ave;->r(Ljava/util/List;)I

    move-result v3

    invoke-static {v11, v4, v3}, Lg/dub;->c(III)I

    move-result v3

    goto/16 :goto_2

    :pswitch_27
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {v3}, Lg/ave;->k(Ljava/util/List;)I

    move-result v3

    invoke-static {v11, v4, v3}, Lg/dub;->c(III)I

    move-result v3

    goto/16 :goto_2

    :pswitch_28
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lg/ave;->af(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_29
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v5}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lg/ave;->t(ILjava/util/List;Lg/ciw;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lg/ave;->ag(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_9

    const/4 v4, 0x0

    goto :goto_7

    :cond_9
    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    add-int/2addr v4, v14

    mul-int v4, v4, v3

    :goto_7
    add-int/2addr v6, v4

    goto/16 :goto_8

    :pswitch_2c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lg/ave;->u(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lg/ave;->aj(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_6

    :cond_a
    invoke-static {v3}, Lg/ave;->e(Ljava/util/List;)I

    move-result v3

    invoke-static {v11, v4, v3}, Lg/dub;->c(III)I

    move-result v3

    goto/16 :goto_2

    :pswitch_2f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_6

    :cond_b
    invoke-static {v3}, Lg/ave;->h(Ljava/util/List;)I

    move-result v3

    invoke-static {v11, v4, v3}, Lg/dub;->c(III)I

    move-result v3

    goto/16 :goto_2

    :pswitch_30
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lg/ave;->b:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_6

    :cond_c
    invoke-static {v3}, Lg/ave;->ae(Ljava/util/List;)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v11, v3, v4}, Lg/dub;->c(III)I

    move-result v3

    goto/16 :goto_2

    :pswitch_31
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lg/ave;->u(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_32
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lg/ave;->aj(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_33
    and-int/2addr v9, v7

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cir;

    invoke-virtual {v0, v5}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lg/p;->k(ILg/cir;Lg/ciw;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_34
    and-int/2addr v9, v7

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lg/p;->h(I)I

    move-result v9

    add-long v10, v3, v3

    shr-long/2addr v3, v15

    xor-long/2addr v3, v10

    invoke-static {v3, v4}, Lg/p;->i(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_35
    and-int/2addr v9, v7

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    add-int v9, v3, v3

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v9

    invoke-static {v3, v4, v6}, Lg/dub;->d(III)I

    move-result v6

    goto/16 :goto_8

    :pswitch_36
    and-int v3, v7, v9

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v13, v6}, Lg/dub;->d(III)I

    move-result v6

    goto/16 :goto_8

    :pswitch_37
    and-int v3, v7, v9

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v10, v6}, Lg/dub;->d(III)I

    move-result v6

    goto/16 :goto_8

    :pswitch_38
    and-int/2addr v9, v7

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-static {v3}, Lg/p;->g(I)I

    move-result v3

    goto/16 :goto_4

    :pswitch_39
    and-int/2addr v9, v7

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-static {v3, v4, v6}, Lg/dub;->d(III)I

    move-result v6

    goto/16 :goto_8

    :pswitch_3a
    and-int/2addr v9, v7

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cyb;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-virtual {v3}, Lg/cyb;->c()I

    move-result v3

    invoke-static {v3, v3, v4, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :pswitch_3b
    and-int/2addr v9, v7

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lg/ave;->n(ILjava/lang/Object;Lg/ciw;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3c
    and-int/2addr v9, v7

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lg/cyb;

    if-eqz v4, :cond_d

    check-cast v3, Lg/cyb;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-virtual {v3}, Lg/cyb;->c()I

    move-result v3

    invoke-static {v3, v3, v4, v6}, Lg/dub;->j(IIII)I

    move-result v6

    goto/16 :goto_8

    :cond_d
    check-cast v3, Ljava/lang/String;

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-static {v3}, Lg/p;->j(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_4

    :pswitch_3d
    and-int v3, v7, v9

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v14, v6}, Lg/dub;->d(III)I

    move-result v6

    goto :goto_8

    :pswitch_3e
    and-int v3, v7, v9

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v10, v6}, Lg/dub;->d(III)I

    move-result v6

    goto :goto_8

    :pswitch_3f
    and-int v3, v7, v9

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v13, v6}, Lg/dub;->d(III)I

    move-result v6

    goto :goto_8

    :pswitch_40
    and-int/2addr v9, v7

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    shl-int/lit8 v4, v11, 0x3

    invoke-static {v4}, Lg/p;->h(I)I

    move-result v4

    invoke-static {v3}, Lg/p;->g(I)I

    move-result v3

    goto/16 :goto_4

    :pswitch_41
    and-int/2addr v9, v7

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lg/p;->h(I)I

    move-result v9

    invoke-static {v3, v4}, Lg/p;->i(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_42
    and-int/2addr v9, v7

    if-eqz v9, :cond_e

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    shl-int/lit8 v9, v11, 0x3

    invoke-static {v9}, Lg/p;->h(I)I

    move-result v9

    invoke-static {v3, v4}, Lg/p;->i(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_43
    and-int v3, v7, v9

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v10, v6}, Lg/dub;->d(III)I

    move-result v6

    goto :goto_8

    :pswitch_44
    and-int v3, v7, v9

    if-eqz v3, :cond_e

    shl-int/lit8 v3, v11, 0x3

    invoke-static {v3, v13, v6}, Lg/dub;->d(III)I

    move-result v6

    :cond_e
    :goto_8
    add-int/lit8 v5, v5, 0x3

    const v4, 0xfffff

    goto/16 :goto_0

    :cond_f
    iget-object v2, v0, Lg/ecy;->k:Lg/czj;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lg/cys;

    iget-object v1, v1, Lg/cys;->zzc:Lg/fjx;

    invoke-virtual {v1}, Lg/fjx;->i()I

    move-result v1

    add-int/2addr v1, v6

    return v1

    nop

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

.method public final ar(ILjava/lang/Object;)Z
    .locals 8

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lg/ecy;->n:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_2

    invoke-virtual {p0, p1}, Lg/ecy;->ao(I)I

    move-result p1

    and-int v0, p1, v1

    int-to-long v0, v0

    invoke-static {p1}, Lg/ecy;->v(I)I

    move-result p1

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_1
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_3
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :pswitch_4
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_5
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_6
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p1, Lg/cyb;->d:Lg/crn;

    sget-object v2, Lg/diy;->f:Lg/frx;

    invoke-virtual {v2, v0, v1, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lg/crn;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :pswitch_8
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_9
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_0
    instance-of p2, p1, Lg/cyb;

    if-eqz p2, :cond_1

    sget-object p2, Lg/cyb;->d:Lg/crn;

    invoke-virtual {p2, p1}, Lg/crn;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->h(JLjava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_b
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_c
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto :goto_0

    :pswitch_d
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_e
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto :goto_0

    :pswitch_f
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->f(JLjava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v0, v1, p2}, Lg/frx;->d(JLjava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_2
    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v2, v3, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p1

    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    :goto_0
    return v6

    :cond_3
    const/4 p1, 0x0

    return p1

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

.method public final as(Ljava/lang/Object;[BIILg/fks;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v13, p5

    sget-object v1, Lg/ecy;->b:Lsun/misc/Unsafe;

    move/from16 v3, p3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_0
    if-ge v3, v8, :cond_17

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v7, v3

    if-gez v3, :cond_0

    invoke-static {v3, v7, v6, v13}, Lg/buj;->z(I[BILg/fks;)I

    move-result v6

    iget v3, v13, Lg/fks;->a:I

    :cond_0
    move v14, v6

    ushr-int/lit8 v6, v3, 0x3

    const v16, 0xfffff

    and-int/lit8 v15, v3, 0x7

    iget v10, v0, Lg/ecy;->l:I

    iget v9, v0, Lg/ecy;->s:I

    if-le v6, v4, :cond_2

    div-int/lit8 v5, v5, 0x3

    if-lt v6, v9, :cond_1

    if-gt v6, v10, :cond_1

    invoke-virtual {v0, v6, v5}, Lg/ecy;->ad(II)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    const/4 v9, 0x0

    :goto_2
    move v10, v4

    const/4 v4, -0x1

    goto :goto_3

    :cond_2
    if-lt v6, v9, :cond_3

    if-gt v6, v10, :cond_3

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v9}, Lg/ecy;->ad(II)I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    const/4 v4, -0x1

    goto :goto_2

    :goto_3
    if-ne v10, v4, :cond_4

    move-object/from16 v25, v1

    move-object v9, v2

    move v5, v3

    move v2, v14

    const/4 v8, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    goto/16 :goto_11

    :cond_4
    add-int/lit8 v5, v10, 0x1

    iget-object v4, v0, Lg/ecy;->n:[I

    aget v5, v4, v5

    invoke-static {v5}, Lg/ecy;->v(I)I

    move-result v9

    move/from16 p3, v3

    and-int v3, v5, v16

    move-object/from16 v19, v4

    int-to-long v3, v3

    move-wide/from16 v20, v3

    const/16 v3, 0x11

    if-gt v9, v3, :cond_d

    add-int/lit8 v3, v10, 0x2

    aget v3, v19, v3

    ushr-int/lit8 v19, v3, 0x14

    const/4 v4, 0x1

    shl-int v19, v4, v19

    and-int v3, v3, v16

    if-eq v3, v11, :cond_7

    const v4, 0xfffff

    move/from16 v23, v5

    if-eq v11, v4, :cond_5

    int-to-long v4, v11

    invoke-virtual {v1, v2, v4, v5, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v4, 0xfffff

    :cond_5
    if-eq v3, v4, :cond_6

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    :cond_6
    move v11, v3

    goto :goto_4

    :cond_7
    move/from16 v23, v5

    :goto_4
    const/4 v3, 0x5

    packed-switch v9, :pswitch_data_0

    move-object v9, v1

    move-object v1, v2

    move/from16 v17, v6

    const/16 v20, -0x1

    goto/16 :goto_b

    :pswitch_0
    if-nez v15, :cond_8

    invoke-static {v7, v14, v13}, Lg/buj;->ai([BILg/fks;)I

    move-result v9

    iget-wide v3, v13, Lg/fks;->b:J

    invoke-static {v3, v4}, Lg/awt;->m(J)J

    move-result-wide v3

    move/from16 v17, v6

    move-wide v5, v3

    move-wide/from16 v3, v20

    const/16 v20, -0x1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_5
    or-int v12, v12, v19

    move v3, v9

    :goto_6
    move v5, v10

    move/from16 v4, v17

    goto/16 :goto_0

    :cond_8
    move/from16 v17, v6

    const/16 v20, -0x1

    :cond_9
    move-object v9, v1

    move-object v1, v2

    goto/16 :goto_b

    :pswitch_1
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/16 v20, -0x1

    if-nez v15, :cond_9

    invoke-static {v7, v14, v13}, Lg/buj;->as([BILg/fks;)I

    move-result v3

    iget v6, v13, Lg/fks;->a:I

    invoke-static {v6}, Lg/awt;->am(I)I

    move-result v6

    invoke-virtual {v1, v2, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_7
    or-int v12, v12, v19

    goto :goto_6

    :pswitch_2
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/16 v20, -0x1

    if-nez v15, :cond_9

    invoke-static {v7, v14, v13}, Lg/buj;->as([BILg/fks;)I

    move-result v3

    iget v6, v13, Lg/fks;->a:I

    invoke-virtual {v1, v2, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_3
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/4 v3, 0x2

    const/16 v20, -0x1

    if-ne v15, v3, :cond_9

    invoke-static {v7, v14, v13}, Lg/buj;->p([BILg/fks;)I

    move-result v3

    iget-object v6, v13, Lg/fks;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/4 v3, 0x2

    const/16 v20, -0x1

    if-ne v15, v3, :cond_9

    invoke-virtual {v0, v10}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v3

    invoke-static {v3, v7, v14, v8, v13}, Lg/buj;->ay(Lg/ciw;[BIILg/fks;)I

    move-result v3

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_a

    iget-object v6, v13, Lg/fks;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_a
    iget-object v9, v13, Lg/fks;->c:Ljava/lang/Object;

    invoke-static {v6, v9}, Lg/dhz;->d(Ljava/lang/Object;Ljava/lang/Object;)Lg/cys;

    move-result-object v6

    invoke-virtual {v1, v2, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_5
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/4 v3, 0x2

    const/16 v20, -0x1

    if-ne v15, v3, :cond_9

    const/high16 v3, 0x20000000

    and-int v3, v23, v3

    if-nez v3, :cond_b

    invoke-static {v7, v14, v13}, Lg/buj;->r([BILg/fks;)I

    move-result v3

    goto :goto_8

    :cond_b
    invoke-static {v7, v14, v13}, Lg/buj;->ap([BILg/fks;)I

    move-result v3

    :goto_8
    iget-object v6, v13, Lg/fks;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_6
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/16 v20, -0x1

    if-nez v15, :cond_9

    invoke-static {v7, v14, v13}, Lg/buj;->ai([BILg/fks;)I

    move-result v3

    iget-wide v14, v13, Lg/fks;->b:J

    const-wide/16 v21, 0x0

    cmp-long v6, v14, v21

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_9

    :cond_c
    const/4 v6, 0x0

    :goto_9
    sget-object v9, Lg/diy;->f:Lg/frx;

    invoke-virtual {v9, v2, v4, v5, v6}, Lg/frx;->g(Ljava/lang/Object;JZ)V

    goto/16 :goto_7

    :pswitch_7
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/16 v20, -0x1

    if-ne v15, v3, :cond_9

    invoke-static {v7, v14}, Lg/buj;->ae([BI)I

    move-result v3

    invoke-virtual {v1, v2, v4, v5, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_a
    add-int/lit8 v3, v14, 0x4

    goto/16 :goto_7

    :pswitch_8
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/4 v3, 0x1

    const/16 v20, -0x1

    if-ne v15, v3, :cond_9

    move-wide v3, v4

    invoke-static {v14, v7}, Lg/buj;->af(I[B)J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v3, v14, 0x8

    goto/16 :goto_7

    :pswitch_9
    move/from16 v17, v6

    move-wide/from16 v3, v20

    const/16 v20, -0x1

    if-nez v15, :cond_9

    invoke-static {v7, v14, v13}, Lg/buj;->as([BILg/fks;)I

    move-result v5

    iget v6, v13, Lg/fks;->a:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v12, v12, v19

    move v3, v5

    goto/16 :goto_6

    :pswitch_a
    move/from16 v17, v6

    move-wide/from16 v3, v20

    const/16 v20, -0x1

    if-nez v15, :cond_9

    invoke-static {v7, v14, v13}, Lg/buj;->ai([BILg/fks;)I

    move-result v9

    iget-wide v5, v13, Lg/fks;->b:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_5

    :pswitch_b
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/16 v20, -0x1

    if-ne v15, v3, :cond_9

    invoke-static {v7, v14}, Lg/buj;->ae([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    sget-object v6, Lg/diy;->f:Lg/frx;

    invoke-virtual {v6, v2, v4, v5, v3}, Lg/frx;->e(Ljava/lang/Object;JF)V

    goto :goto_a

    :pswitch_c
    move/from16 v17, v6

    move-wide/from16 v4, v20

    const/4 v3, 0x1

    const/16 v20, -0x1

    if-ne v15, v3, :cond_9

    invoke-static {v14, v7}, Lg/buj;->af(I[B)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v21

    move-object v3, v1

    sget-object v1, Lg/diy;->f:Lg/frx;

    move-object v9, v3

    move-wide v3, v4

    move-wide/from16 v5, v21

    invoke-virtual/range {v1 .. v6}, Lg/frx;->c(Ljava/lang/Object;JD)V

    move-object v1, v2

    add-int/lit8 v3, v14, 0x8

    or-int v12, v12, v19

    move-object v1, v9

    goto/16 :goto_6

    :goto_b
    move/from16 v5, p3

    move-object/from16 v25, v9

    move v8, v10

    move v2, v14

    move/from16 v6, v17

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object v9, v1

    goto/16 :goto_11

    :cond_d
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move/from16 v23, v5

    move/from16 v17, v6

    move-wide/from16 v3, v20

    const/16 v20, -0x1

    const/16 v5, 0x1b

    if-ne v9, v5, :cond_11

    const/4 v5, 0x2

    if-ne v15, v5, :cond_10

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/cwe;

    move-object v6, v5

    check-cast v6, Lg/gzj;

    iget-boolean v6, v6, Lg/gzj;->f:Z

    if-nez v6, :cond_f

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_e

    const/16 v6, 0xa

    goto :goto_c

    :cond_e
    add-int/2addr v6, v6

    :goto_c
    invoke-interface {v5, v6}, Lg/cwe;->zzd(I)Lg/cwe;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_f
    move-object v6, v5

    invoke-virtual {v0, v10}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v1

    move-object v3, v7

    move v5, v8

    move-object v7, v13

    move v4, v14

    move-object v8, v2

    move/from16 v2, p3

    invoke-static/range {v1 .. v7}, Lg/buj;->aq(Lg/ciw;I[BIILg/cwe;Lg/fks;)I

    move-result v1

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v13, p5

    move v3, v1

    move-object v1, v8

    move v5, v10

    move/from16 v4, v17

    :goto_d
    move/from16 v8, p4

    goto/16 :goto_0

    :cond_10
    move/from16 v5, p3

    move-object/from16 v25, v2

    move v8, v10

    move v15, v11

    move/from16 v24, v12

    move v3, v14

    move/from16 v6, v17

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object/from16 v2, p1

    goto/16 :goto_10

    :cond_11
    move/from16 v5, p3

    move-object v8, v2

    move v6, v14

    const/16 v1, 0x31

    if-gt v9, v1, :cond_14

    move-object v2, v8

    move v8, v10

    move v7, v11

    move/from16 v1, v23

    move v11, v9

    int-to-long v9, v1

    move v1, v15

    move v15, v7

    move v7, v1

    move-object/from16 v1, p1

    move-object/from16 v14, p5

    move-object/from16 v25, v2

    move/from16 v24, v12

    const/16 v18, 0x0

    move-object/from16 v2, p2

    move-wide v12, v3

    move v3, v6

    move/from16 v6, v17

    const/16 v17, -0x1

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v14}, Lg/ecy;->af(Ljava/lang/Object;[BIIIIIIJIJLg/fks;)I

    move-result v7

    move-object v2, v1

    if-eq v7, v3, :cond_12

    move-object/from16 v13, p5

    move v4, v6

    move v3, v7

    move v5, v8

    :goto_e
    move v11, v15

    move/from16 v12, v24

    move-object/from16 v1, v25

    move-object/from16 v7, p2

    goto :goto_d

    :cond_12
    move-object v9, v2

    :cond_13
    move v2, v7

    :goto_f
    move v11, v15

    move/from16 v12, v24

    goto :goto_11

    :cond_14
    move-object/from16 v2, p1

    move-object/from16 v25, v8

    move v8, v10

    move/from16 v24, v12

    move v7, v15

    move/from16 v1, v23

    const/16 v18, 0x0

    move-wide v12, v3

    move v3, v6

    move v15, v11

    move/from16 v6, v17

    const/16 v17, -0x1

    move v11, v9

    const/16 v4, 0x32

    if-ne v11, v4, :cond_16

    const/4 v4, 0x2

    if-eq v7, v4, :cond_15

    :goto_10
    move-object v9, v2

    move v2, v3

    goto :goto_f

    :cond_15
    invoke-virtual {v0, v2, v12, v13, v8}, Lg/ecy;->aj(Ljava/lang/Object;JI)V

    const/4 v1, 0x0

    throw v1

    :cond_16
    move/from16 v4, p4

    move v9, v11

    move-wide v10, v12

    move-object/from16 v13, p5

    move v12, v8

    move v8, v1

    move-object v1, v2

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v13}, Lg/ecy;->at(Ljava/lang/Object;[BIIIIIIIJILg/fks;)I

    move-result v7

    move-object v9, v1

    move v8, v12

    if-eq v7, v3, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v13, p5

    move v4, v6

    move v3, v7

    move v5, v8

    move-object v2, v9

    goto :goto_e

    :goto_11
    invoke-static {v9}, Lg/ecy;->ab(Ljava/lang/Object;)Lg/fjx;

    move-result-object v4

    move-object/from16 v1, p2

    move/from16 v3, p4

    move v0, v5

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lg/buj;->az(I[BIILg/fjx;Lg/fks;)I

    move-result v0

    move-object/from16 v7, p2

    move-object/from16 v13, p5

    move v4, v6

    move v5, v8

    move-object v2, v9

    move-object/from16 v1, v25

    move v8, v3

    move v3, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_17
    move-object/from16 v25, v1

    move-object v9, v2

    move v4, v8

    move v15, v11

    move/from16 v24, v12

    const v0, 0xfffff

    if-eq v15, v0, :cond_18

    int-to-long v0, v15

    move/from16 v12, v24

    move-object/from16 v2, v25

    invoke-virtual {v2, v9, v0, v1, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_18
    if-ne v3, v4, :cond_19

    return-void

    :cond_19
    new-instance v0, Lg/drq;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

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
.end method

.method public final at(Ljava/lang/Object;[BIIIIIIIJILg/fks;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p6

    move/from16 v3, p7

    move-wide/from16 v9, p10

    move/from16 v4, p12

    sget-object v11, Lg/ecy;->b:Lsun/misc/Unsafe;

    add-int/lit8 v5, v4, 0x2

    iget-object v6, v0, Lg/ecy;->n:[I

    aget v5, v6, v5

    const v6, 0xfffff

    and-int/2addr v5, v6

    int-to-long v12, v5

    const/4 v5, 0x5

    const/4 v14, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    packed-switch p9, :pswitch_data_0

    :cond_0
    move/from16 v2, p3

    goto/16 :goto_6

    :pswitch_0
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    move/from16 v5, p5

    invoke-virtual {v0, v4}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v2

    and-int/lit8 v3, v5, -0x8

    or-int/lit8 v6, v3, 0x4

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lg/buj;->s(Lg/ciw;[BIIILg/fks;)I

    move-result v2

    move-object v15, v7

    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_1

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    :cond_1
    if-nez v14, :cond_2

    iget-object v3, v15, Lg/fks;->c:Ljava/lang/Object;

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v3, v15, Lg/fks;->c:Ljava/lang/Object;

    invoke-static {v14, v3}, Lg/dhz;->d(Ljava/lang/Object;Ljava/lang/Object;)Lg/cys;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_1
    move-object/from16 v6, p2

    move/from16 v2, p3

    move-object/from16 v15, p13

    if-eqz v3, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-static {v6, v2, v15}, Lg/buj;->ai([BILg/fks;)I

    move-result v2

    iget-wide v3, v15, Lg/fks;->b:J

    invoke-static {v3, v4}, Lg/awt;->m(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_2
    move-object/from16 v6, p2

    move/from16 v2, p3

    move-object/from16 v15, p13

    if-eqz v3, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-static {v6, v2, v15}, Lg/buj;->as([BILg/fks;)I

    move-result v2

    iget v3, v15, Lg/fks;->a:I

    invoke-static {v3}, Lg/awt;->am(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_3
    move-object/from16 v6, p2

    move/from16 v2, p3

    move/from16 v5, p5

    move-object/from16 v15, p13

    if-nez v3, :cond_13

    invoke-static {v6, v2, v15}, Lg/buj;->as([BILg/fks;)I

    move-result v2

    iget v3, v15, Lg/fks;->a:I

    invoke-virtual {v0, v4}, Lg/ecy;->ac(I)Lg/dcm;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4, v3}, Lg/dcm;->zza(I)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lg/ecy;->ab(Ljava/lang/Object;)Lg/fjx;

    move-result-object v1

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lg/fjx;->j(ILjava/lang/Object;)V

    return v2

    :cond_6
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_4
    move-object/from16 v6, p2

    move/from16 v2, p3

    move-object/from16 v15, p13

    if-eq v3, v7, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-static {v6, v2, v15}, Lg/buj;->p([BILg/fks;)I

    move-result v2

    iget-object v3, v15, Lg/fks;->c:Ljava/lang/Object;

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_5
    move-object/from16 v6, p2

    move/from16 v2, p3

    move-object/from16 v15, p13

    if-ne v3, v7, :cond_13

    invoke-virtual {v0, v4}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v3

    move/from16 v5, p4

    invoke-static {v3, v6, v2, v5, v15}, Lg/buj;->ay(Lg/ciw;[BIILg/fks;)I

    move-result v2

    invoke-virtual {v11, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_8

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    :cond_8
    if-nez v14, :cond_9

    iget-object v3, v15, Lg/fks;->c:Ljava/lang/Object;

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_9
    iget-object v3, v15, Lg/fks;->c:Ljava/lang/Object;

    invoke-static {v14, v3}, Lg/dhz;->d(Ljava/lang/Object;Ljava/lang/Object;)Lg/cys;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_2
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_6
    move-object/from16 v6, p2

    move/from16 v2, p3

    move-object/from16 v15, p13

    if-ne v3, v7, :cond_13

    invoke-static {v6, v2, v15}, Lg/buj;->as([BILg/fks;)I

    move-result v2

    iget v3, v15, Lg/fks;->a:I

    if-nez v3, :cond_a

    const-string v3, ""

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_a
    const/high16 v4, 0x20000000

    and-int v4, p8, v4

    if-eqz v4, :cond_c

    add-int v4, v2, v3

    sget-object v5, Lg/gua;->a:Lg/cuf;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v6, v4}, Lg/cuf;->g(I[BI)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    invoke-static {}, Lg/drq;->b()Lg/drq;

    move-result-object v1

    throw v1

    :cond_c
    :goto_3
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lg/dhz;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v6, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v11, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v3

    :goto_4
    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_7
    move-object/from16 v4, p2

    move/from16 v2, p3

    move-object/from16 v15, p13

    if-nez v3, :cond_13

    invoke-static {v4, v2, v15}, Lg/buj;->ai([BILg/fks;)I

    move-result v2

    iget-wide v3, v15, Lg/fks;->b:J

    const-wide/16 v14, 0x0

    cmp-long v5, v3, v14

    if-eqz v5, :cond_d

    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_8
    move-object/from16 v4, p2

    move/from16 v2, p3

    if-eq v3, v5, :cond_e

    goto/16 :goto_6

    :cond_e
    invoke-static/range {p2 .. p3}, Lg/buj;->ae([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v2, 0x4

    return v1

    :pswitch_9
    move-object/from16 v4, p2

    move/from16 v2, p3

    if-eq v3, v6, :cond_f

    goto :goto_6

    :cond_f
    invoke-static {v2, v4}, Lg/buj;->af(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v2, 0x8

    return v1

    :pswitch_a
    move-object/from16 v4, p2

    move/from16 v2, p3

    move-object/from16 v15, p13

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_10
    invoke-static {v4, v2, v15}, Lg/buj;->as([BILg/fks;)I

    move-result v2

    iget v3, v15, Lg/fks;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_b
    move-object/from16 v4, p2

    move/from16 v2, p3

    move-object/from16 v15, p13

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    invoke-static {v4, v2, v15}, Lg/buj;->ai([BILg/fks;)I

    move-result v2

    iget-wide v3, v15, Lg/fks;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_c
    move-object/from16 v4, p2

    move/from16 v2, p3

    if-eq v3, v5, :cond_12

    goto :goto_6

    :cond_12
    invoke-static/range {p2 .. p3}, Lg/buj;->ae([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v2, 0x4

    return v1

    :pswitch_d
    move-object/from16 v4, p2

    move/from16 v2, p3

    if-eq v3, v6, :cond_14

    :cond_13
    :goto_6
    return v2

    :cond_14
    invoke-static {v2, v4}, Lg/buj;->af(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v11, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v11, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v2, 0x8

    return v1

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final au(Ljava/lang/Object;Lg/aoy;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lg/ecy;->n:[I

    array-length v4, v3

    sget-object v5, Lg/ecy;->b:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0xfffff

    :goto_0
    if-ge v8, v4, :cond_9

    invoke-virtual {v0, v8}, Lg/ecy;->ao(I)I

    move-result v11

    aget v12, v3, v8

    invoke-static {v11}, Lg/ecy;->v(I)I

    move-result v13

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v13, v14, :cond_1

    add-int/lit8 v14, v8, 0x2

    aget v14, v3, v14

    const v16, 0xfffff

    and-int v6, v14, v16

    if-eq v6, v10, :cond_0

    int-to-long v9, v6

    invoke-virtual {v5, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    move v10, v6

    :cond_0
    ushr-int/lit8 v6, v14, 0x14

    shl-int v6, v15, v6

    goto :goto_1

    :cond_1
    const v16, 0xfffff

    const/4 v6, 0x0

    :goto_1
    and-int v11, v11, v16

    move/from16 v17, v8

    int-to-long v7, v11

    packed-switch v13, :pswitch_data_0

    move/from16 v11, v17

    :cond_2
    :goto_2
    const/4 v14, 0x0

    goto/16 :goto_5

    :pswitch_0
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v11}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lg/aoy;->z(ILjava/lang/Object;Lg/ciw;)V

    goto :goto_2

    :pswitch_1
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v7, v8, v1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lg/aoy;->af(IJ)V

    goto :goto_2

    :pswitch_2
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v7, v8, v1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lg/aoy;->p(II)V

    goto :goto_2

    :pswitch_3
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v7, v8, v1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v8, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v8, Lg/p;

    invoke-virtual {v8, v12, v6, v7}, Lg/p;->w(IJ)V

    goto :goto_2

    :pswitch_4
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v7, v8, v1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    invoke-virtual {v7, v12, v6}, Lg/p;->p(II)V

    goto :goto_2

    :pswitch_5
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v7, v8, v1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    shl-int/lit8 v8, v12, 0x3

    invoke-virtual {v7, v8}, Lg/p;->r(I)V

    if-ltz v6, :cond_3

    invoke-virtual {v7, v6}, Lg/p;->r(I)V

    goto :goto_2

    :cond_3
    int-to-long v12, v6

    invoke-virtual {v7, v12, v13}, Lg/p;->v(J)V

    goto :goto_2

    :pswitch_6
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v7, v8, v1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    shl-int/lit8 v8, v12, 0x3

    invoke-virtual {v7, v8}, Lg/p;->r(I)V

    invoke-virtual {v7, v6}, Lg/p;->r(I)V

    goto/16 :goto_2

    :pswitch_7
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cyb;

    invoke-virtual {v2, v12, v6}, Lg/aoy;->aa(ILg/cyb;)V

    goto/16 :goto_2

    :pswitch_8
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v11}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lg/aoy;->ah(ILjava/lang/Object;Lg/ciw;)V

    goto/16 :goto_2

    :pswitch_9
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6, v2}, Lg/ecy;->z(ILjava/lang/Object;Lg/aoy;)V

    goto/16 :goto_2

    :pswitch_a
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lg/diy;->f:Lg/frx;

    invoke-virtual {v6, v7, v8, v1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    shl-int/lit8 v8, v12, 0x3

    invoke-virtual {v7, v8}, Lg/p;->r(I)V

    invoke-virtual {v7, v6}, Lg/p;->q(B)V

    goto/16 :goto_2

    :pswitch_b
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v7, v8, v1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    invoke-virtual {v7, v12, v6}, Lg/p;->p(II)V

    goto/16 :goto_2

    :pswitch_c
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v7, v8, v1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v8, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v8, Lg/p;

    invoke-virtual {v8, v12, v6, v7}, Lg/p;->w(IJ)V

    goto/16 :goto_2

    :pswitch_d
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v7, v8, v1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    shl-int/lit8 v8, v12, 0x3

    invoke-virtual {v7, v8}, Lg/p;->r(I)V

    if-ltz v6, :cond_4

    invoke-virtual {v7, v6}, Lg/p;->r(I)V

    goto/16 :goto_2

    :cond_4
    int-to-long v12, v6

    invoke-virtual {v7, v12, v13}, Lg/p;->v(J)V

    goto/16 :goto_2

    :pswitch_e
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v7, v8, v1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v8, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v8, Lg/p;

    invoke-virtual {v8, v12, v6, v7}, Lg/p;->o(IJ)V

    goto/16 :goto_2

    :pswitch_f
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v7, v8, v1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v8, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v8, Lg/p;

    invoke-virtual {v8, v12, v6, v7}, Lg/p;->o(IJ)V

    goto/16 :goto_2

    :pswitch_10
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lg/diy;->f:Lg/frx;

    invoke-virtual {v6, v7, v8, v1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    invoke-virtual {v7, v12, v6}, Lg/p;->p(II)V

    goto/16 :goto_2

    :pswitch_11
    move/from16 v11, v17

    invoke-virtual {v0, v12, v11, v1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lg/diy;->f:Lg/frx;

    invoke-virtual {v6, v7, v8, v1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v8, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v8, Lg/p;

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    invoke-virtual {v8, v12, v6, v7}, Lg/p;->w(IJ)V

    goto/16 :goto_2

    :pswitch_12
    move/from16 v11, v17

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v0, v11}, Lg/ecy;->an(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :pswitch_13
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v11}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v8

    sget-object v12, Lg/ave;->b:Ljava/lang/Class;

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_2

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v6, v13, v8}, Lg/aoy;->z(ILjava/lang/Object;Lg/ciw;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :pswitch_14
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->l(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_15
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->z(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_16
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->o(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_17
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->g(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_18
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->p(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_19
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->y(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_1a
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->ab(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_1b
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->w(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_1c
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->ak(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_1d
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->aa(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_1e
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->ad(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_1f
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->ac(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_20
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->f(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_21
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v15}, Lg/ave;->m(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_22
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v14, 0x0

    invoke-static {v6, v7, v2, v14}, Lg/ave;->l(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_5

    :pswitch_23
    move/from16 v11, v17

    const/4 v14, 0x0

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v14}, Lg/ave;->z(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_5

    :pswitch_24
    move/from16 v11, v17

    const/4 v14, 0x0

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v14}, Lg/ave;->o(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_5

    :pswitch_25
    move/from16 v11, v17

    const/4 v14, 0x0

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v14}, Lg/ave;->g(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_5

    :pswitch_26
    move/from16 v11, v17

    const/4 v14, 0x0

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v14}, Lg/ave;->p(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_5

    :pswitch_27
    move/from16 v11, v17

    const/4 v14, 0x0

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v14}, Lg/ave;->y(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_2

    :pswitch_28
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2}, Lg/ave;->ah(ILjava/util/List;Lg/aoy;)V

    goto/16 :goto_2

    :pswitch_29
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v11}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v8

    sget-object v12, Lg/ave;->b:Ljava/lang/Class;

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_2

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v6, v13, v8}, Lg/aoy;->ah(ILjava/lang/Object;Lg/ciw;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :pswitch_2a
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2}, Lg/ave;->i(ILjava/util/List;Lg/aoy;)V

    goto/16 :goto_2

    :pswitch_2b
    move/from16 v11, v17

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v14, 0x0

    invoke-static {v6, v7, v2, v14}, Lg/ave;->ab(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_5

    :pswitch_2c
    move/from16 v11, v17

    const/4 v14, 0x0

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v14}, Lg/ave;->w(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_5

    :pswitch_2d
    move/from16 v11, v17

    const/4 v14, 0x0

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v14}, Lg/ave;->ak(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_5

    :pswitch_2e
    move/from16 v11, v17

    const/4 v14, 0x0

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v14}, Lg/ave;->aa(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_5

    :pswitch_2f
    move/from16 v11, v17

    const/4 v14, 0x0

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v14}, Lg/ave;->ad(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_5

    :pswitch_30
    move/from16 v11, v17

    const/4 v14, 0x0

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v14}, Lg/ave;->ac(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_5

    :pswitch_31
    move/from16 v11, v17

    const/4 v14, 0x0

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v14}, Lg/ave;->f(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_5

    :pswitch_32
    move/from16 v11, v17

    const/4 v14, 0x0

    aget v6, v3, v11

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6, v7, v2, v14}, Lg/ave;->m(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_5

    :pswitch_33
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v11}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lg/aoy;->z(ILjava/lang/Object;Lg/ciw;)V

    goto/16 :goto_5

    :pswitch_34
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lg/aoy;->af(IJ)V

    goto/16 :goto_5

    :pswitch_35
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lg/aoy;->p(II)V

    goto/16 :goto_5

    :pswitch_36
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    iget-object v8, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v8, Lg/p;

    invoke-virtual {v8, v12, v6, v7}, Lg/p;->w(IJ)V

    goto/16 :goto_5

    :pswitch_37
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    invoke-virtual {v7, v12, v6}, Lg/p;->p(II)V

    goto/16 :goto_5

    :pswitch_38
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    shl-int/lit8 v8, v12, 0x3

    invoke-virtual {v7, v8}, Lg/p;->r(I)V

    if-ltz v6, :cond_6

    invoke-virtual {v7, v6}, Lg/p;->r(I)V

    goto/16 :goto_5

    :cond_6
    int-to-long v12, v6

    invoke-virtual {v7, v12, v13}, Lg/p;->v(J)V

    goto/16 :goto_5

    :pswitch_39
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    shl-int/lit8 v8, v12, 0x3

    invoke-virtual {v7, v8}, Lg/p;->r(I)V

    invoke-virtual {v7, v6}, Lg/p;->r(I)V

    goto/16 :goto_5

    :pswitch_3a
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/cyb;

    invoke-virtual {v2, v12, v6}, Lg/aoy;->aa(ILg/cyb;)V

    goto/16 :goto_5

    :pswitch_3b
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v11}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lg/aoy;->ah(ILjava/lang/Object;Lg/ciw;)V

    goto/16 :goto_5

    :pswitch_3c
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6, v2}, Lg/ecy;->z(ILjava/lang/Object;Lg/aoy;)V

    goto/16 :goto_5

    :pswitch_3d
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    sget-object v6, Lg/diy;->f:Lg/frx;

    invoke-virtual {v6, v7, v8, v1}, Lg/frx;->h(JLjava/lang/Object;)Z

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    shl-int/lit8 v8, v12, 0x3

    invoke-virtual {v7, v8}, Lg/p;->r(I)V

    invoke-virtual {v7, v6}, Lg/p;->q(B)V

    goto/16 :goto_5

    :pswitch_3e
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    invoke-virtual {v7, v12, v6}, Lg/p;->p(II)V

    goto/16 :goto_5

    :pswitch_3f
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    iget-object v8, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v8, Lg/p;

    invoke-virtual {v8, v12, v6, v7}, Lg/p;->w(IJ)V

    goto/16 :goto_5

    :pswitch_40
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    shl-int/lit8 v8, v12, 0x3

    invoke-virtual {v7, v8}, Lg/p;->r(I)V

    if-ltz v6, :cond_7

    invoke-virtual {v7, v6}, Lg/p;->r(I)V

    goto :goto_5

    :cond_7
    int-to-long v12, v6

    invoke-virtual {v7, v12, v13}, Lg/p;->v(J)V

    goto :goto_5

    :pswitch_41
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    iget-object v8, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v8, Lg/p;

    invoke-virtual {v8, v12, v6, v7}, Lg/p;->o(IJ)V

    goto :goto_5

    :pswitch_42
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    invoke-virtual {v5, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    iget-object v8, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v8, Lg/p;

    invoke-virtual {v8, v12, v6, v7}, Lg/p;->o(IJ)V

    goto :goto_5

    :pswitch_43
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    sget-object v6, Lg/diy;->f:Lg/frx;

    invoke-virtual {v6, v7, v8, v1}, Lg/frx;->f(JLjava/lang/Object;)F

    move-result v6

    iget-object v7, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v7, Lg/p;

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    invoke-virtual {v7, v12, v6}, Lg/p;->p(II)V

    goto :goto_5

    :pswitch_44
    move/from16 v11, v17

    const/4 v14, 0x0

    and-int/2addr v6, v9

    if-eqz v6, :cond_8

    sget-object v6, Lg/diy;->f:Lg/frx;

    invoke-virtual {v6, v7, v8, v1}, Lg/frx;->d(JLjava/lang/Object;)D

    move-result-wide v6

    iget-object v8, v2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v8, Lg/p;

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    invoke-virtual {v8, v12, v6, v7}, Lg/p;->w(IJ)V

    :cond_8
    :goto_5
    add-int/lit8 v8, v11, 0x3

    goto/16 :goto_0

    :cond_9
    iget-object v3, v0, Lg/ecy;->k:Lg/czj;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lg/cys;

    iget-object v1, v1, Lg/cys;->zzc:Lg/fjx;

    invoke-virtual {v1, v2}, Lg/fjx;->h(Lg/aoy;)V

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

.method public final d(Lg/cys;Lg/cys;)Z
    .locals 10

    iget-object v0, p0, Lg/ecy;->n:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lg/ecy;->ao(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    invoke-static {v4}, Lg/ecy;->v(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v4, v3, 0x2

    aget v4, v0, v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    sget-object v8, Lg/diy;->f:Lg/frx;

    invoke-virtual {v8, v4, v5, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v4, v5, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    if-ne v9, v4, :cond_2

    invoke-virtual {v8, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v6, v7, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lg/ave;->al(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :pswitch_1
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lg/ave;->al(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :pswitch_2
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lg/ave;->al(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lg/ave;->al(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v8, v4

    if-nez v6, :cond_2

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_2

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v8, v4

    if-nez v6, :cond_2

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_2

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_2

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_2

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lg/ave;->al(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lg/ave;->al(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lg/ave;->al(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->h(JLjava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->h(JLjava/lang/Object;)Z

    move-result v4

    if-ne v5, v4, :cond_2

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_2

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v8, v4

    if-nez v6, :cond_2

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    if-ne v5, v4, :cond_2

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v8, v4

    if-nez v6, :cond_2

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v8, v4

    if-nez v6, :cond_2

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->f(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->f(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v5, v4, :cond_2

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Lg/ecy;->al(Lg/cys;Lg/cys;I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->d(JLjava/lang/Object;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, p2}, Lg/frx;->d(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v6, v8, v4

    if-nez v6, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lg/ecy;->k:Lg/czj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lg/cys;->zzc:Lg/fjx;

    iget-object p2, p2, Lg/cys;->zzc:Lg/fjx;

    invoke-virtual {p1, p2}, Lg/fjx;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    :goto_3
    return v2

    :cond_3
    const/4 p1, 0x1

    return p1

    nop

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

.method public final e(Ljava/lang/Object;Lg/aoy;)V
    .locals 10

    iget-boolean v0, p0, Lg/ecy;->o:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lg/ecy;->n:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    invoke-virtual {p0, v3}, Lg/ecy;->ao(I)I

    move-result v4

    aget v5, v0, v3

    invoke-static {v4}, Lg/ecy;->v(I)I

    move-result v6

    const/4 v7, 0x1

    const v8, 0xfffff

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v6

    invoke-virtual {p2, v5, v4, v6}, Lg/aoy;->z(ILjava/lang/Object;Lg/ciw;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lg/aoy;->af(IJ)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lg/aoy;->p(II)V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v4, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v4, Lg/p;

    invoke-virtual {v4, v5, v6, v7}, Lg/p;->w(IJ)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    invoke-virtual {v6, v5, v4}, Lg/p;->p(II)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    shl-int/lit8 v5, v5, 0x3

    invoke-virtual {v6, v5}, Lg/p;->r(I)V

    if-ltz v4, :cond_0

    invoke-virtual {v6, v4}, Lg/p;->r(I)V

    goto/16 :goto_3

    :cond_0
    int-to-long v4, v4

    invoke-virtual {v6, v4, v5}, Lg/p;->v(J)V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    shl-int/lit8 v5, v5, 0x3

    invoke-virtual {v6, v5}, Lg/p;->r(I)V

    invoke-virtual {v6, v4}, Lg/p;->r(I)V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cyb;

    invoke-virtual {p2, v5, v4}, Lg/aoy;->aa(ILg/cyb;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v6

    invoke-virtual {p2, v5, v4, v6}, Lg/aoy;->ah(ILjava/lang/Object;Lg/ciw;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4, p2}, Lg/ecy;->z(ILjava/lang/Object;Lg/aoy;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    shl-int/lit8 v5, v5, 0x3

    invoke-virtual {v6, v5}, Lg/p;->r(I)V

    invoke-virtual {v6, v4}, Lg/p;->q(B)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    invoke-virtual {v6, v5, v4}, Lg/p;->p(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v4, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v4, Lg/p;

    invoke-virtual {v4, v5, v6, v7}, Lg/p;->w(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    shl-int/lit8 v5, v5, 0x3

    invoke-virtual {v6, v5}, Lg/p;->r(I)V

    if-ltz v4, :cond_1

    invoke-virtual {v6, v4}, Lg/p;->r(I)V

    goto/16 :goto_3

    :cond_1
    int-to-long v4, v4

    invoke-virtual {v6, v4, v5}, Lg/p;->v(J)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v4, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v4, Lg/p;

    invoke-virtual {v4, v5, v6, v7}, Lg/p;->o(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    invoke-static {v6, v7, p1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v4, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v4, Lg/p;

    invoke-virtual {v4, v5, v6, v7}, Lg/p;->o(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    invoke-virtual {v6, v5, v4}, Lg/p;->p(II)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {p0, v5, v3, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v4, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v4, Lg/p;

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lg/p;->w(IJ)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v4, v8

    int-to-long v4, v4

    sget-object v6, Lg/diy;->f:Lg/frx;

    invoke-virtual {v6, v4, v5, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0, v3}, Lg/ecy;->an(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :pswitch_13
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v3}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v6

    sget-object v7, Lg/ave;->b:Ljava/lang/Class;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, v5, v8, v6}, Lg/aoy;->z(ILjava/lang/Object;Lg/ciw;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :pswitch_14
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->l(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_15
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->z(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_16
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->o(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_17
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->g(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_18
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->p(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_19
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->y(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_1a
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->ab(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_1b
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->w(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_1c
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->ak(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_1d
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->aa(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_1e
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->ad(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_1f
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->ac(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_20
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->f(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_21
    and-int/2addr v4, v8

    int-to-long v8, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v8, v9, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v7}, Lg/ave;->m(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_22
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->l(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_23
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->z(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_24
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->o(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_25
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->g(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_26
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->p(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_27
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->y(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_28
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2}, Lg/ave;->ah(ILjava/util/List;Lg/aoy;)V

    goto/16 :goto_3

    :pswitch_29
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v3}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v6

    sget-object v7, Lg/ave;->b:Ljava/lang/Class;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, v5, v8, v6}, Lg/aoy;->ah(ILjava/lang/Object;Lg/ciw;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :pswitch_2a
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2}, Lg/ave;->i(ILjava/util/List;Lg/aoy;)V

    goto/16 :goto_3

    :pswitch_2b
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->ab(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_2c
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->w(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_2d
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->ak(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_2e
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->aa(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_2f
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->ad(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_30
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->ac(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_31
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->f(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_32
    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v5, v4, p2, v2}, Lg/ave;->m(ILjava/util/List;Lg/aoy;Z)V

    goto/16 :goto_3

    :pswitch_33
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v6

    invoke-virtual {p2, v5, v4, v6}, Lg/aoy;->z(ILjava/lang/Object;Lg/ciw;)V

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {p2, v5, v6, v7}, Lg/aoy;->af(IJ)V

    goto/16 :goto_3

    :pswitch_35
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    invoke-virtual {p2, v5, v4}, Lg/aoy;->p(II)V

    goto/16 :goto_3

    :pswitch_36
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v4, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v4, Lg/p;

    invoke-virtual {v4, v5, v6, v7}, Lg/p;->w(IJ)V

    goto/16 :goto_3

    :pswitch_37
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    invoke-virtual {v6, v5, v4}, Lg/p;->p(II)V

    goto/16 :goto_3

    :pswitch_38
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    shl-int/lit8 v5, v5, 0x3

    invoke-virtual {v6, v5}, Lg/p;->r(I)V

    if-ltz v4, :cond_3

    invoke-virtual {v6, v4}, Lg/p;->r(I)V

    goto/16 :goto_3

    :cond_3
    int-to-long v4, v4

    invoke-virtual {v6, v4, v5}, Lg/p;->v(J)V

    goto/16 :goto_3

    :pswitch_39
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    shl-int/lit8 v5, v5, 0x3

    invoke-virtual {v6, v5}, Lg/p;->r(I)V

    invoke-virtual {v6, v4}, Lg/p;->r(I)V

    goto/16 :goto_3

    :pswitch_3a
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/cyb;

    invoke-virtual {p2, v5, v4}, Lg/aoy;->aa(ILg/cyb;)V

    goto/16 :goto_3

    :pswitch_3b
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v6

    invoke-virtual {p2, v5, v4, v6}, Lg/aoy;->ah(ILjava/lang/Object;Lg/ciw;)V

    goto/16 :goto_3

    :pswitch_3c
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4, p2}, Lg/ecy;->z(ILjava/lang/Object;Lg/aoy;)V

    goto/16 :goto_3

    :pswitch_3d
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->h(JLjava/lang/Object;)Z

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    shl-int/lit8 v5, v5, 0x3

    invoke-virtual {v6, v5}, Lg/p;->r(I)V

    invoke-virtual {v6, v4}, Lg/p;->q(B)V

    goto/16 :goto_3

    :pswitch_3e
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    invoke-virtual {v6, v5, v4}, Lg/p;->p(II)V

    goto/16 :goto_3

    :pswitch_3f
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v4, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v4, Lg/p;

    invoke-virtual {v4, v5, v6, v7}, Lg/p;->w(IJ)V

    goto/16 :goto_3

    :pswitch_40
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    shl-int/lit8 v5, v5, 0x3

    invoke-virtual {v6, v5}, Lg/p;->r(I)V

    if-ltz v4, :cond_4

    invoke-virtual {v6, v4}, Lg/p;->r(I)V

    goto :goto_3

    :cond_4
    int-to-long v4, v4

    invoke-virtual {v6, v4, v5}, Lg/p;->v(J)V

    goto :goto_3

    :pswitch_41
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v4, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v4, Lg/p;

    invoke-virtual {v4, v5, v6, v7}, Lg/p;->o(IJ)V

    goto :goto_3

    :pswitch_42
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v6

    iget-object v4, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v4, Lg/p;

    invoke-virtual {v4, v5, v6, v7}, Lg/p;->o(IJ)V

    goto :goto_3

    :pswitch_43
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->f(JLjava/lang/Object;)F

    move-result v4

    iget-object v6, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v6, Lg/p;

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    invoke-virtual {v6, v5, v4}, Lg/p;->p(II)V

    goto :goto_3

    :pswitch_44
    invoke-virtual {p0, v3, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/2addr v4, v8

    int-to-long v6, v4

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->d(JLjava/lang/Object;)D

    move-result-wide v6

    iget-object v4, p2, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v4, Lg/p;

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lg/p;->w(IJ)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lg/ecy;->k:Lg/czj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lg/cys;

    iget-object p1, p1, Lg/cys;->zzc:Lg/fjx;

    invoke-virtual {p1, p2}, Lg/fjx;->h(Lg/aoy;)V

    return-void

    :cond_7
    invoke-virtual {p0, p1, p2}, Lg/ecy;->au(Ljava/lang/Object;Lg/aoy;)V

    return-void

    nop

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

.method public final f(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lg/ecy;->c:I

    :goto_0
    iget-object v1, p0, Lg/ecy;->t:[I

    iget v2, p0, Lg/ecy;->p:I

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lg/ecy;->ao(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    sget-object v3, Lg/diy;->f:Lg/frx;

    invoke-virtual {v3, v1, v2, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v4, v3

    check-cast v4, Lg/dhf;

    invoke-virtual {v4}, Lg/dhf;->b()V

    invoke-static {v1, v2, p1, v3}, Lg/diy;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget v3, v1, v2

    int-to-long v3, v3

    iget-object v5, p0, Lg/ecy;->r:Lg/dgb;

    invoke-virtual {v5, v3, v4, p1}, Lg/dgb;->c(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lg/ecy;->k:Lg/czj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lg/cys;

    iget-object p1, p1, Lg/cys;->zzc:Lg/fjx;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lg/fjx;->c:Z

    return-void
.end method

.method public final g(Ljava/lang/Object;[BIILg/fks;)V
    .locals 8

    iget-boolean v0, p0, Lg/ecy;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lg/ecy;->as(Ljava/lang/Object;[BIILg/fks;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lg/ecy;->ak(Ljava/lang/Object;[BIIILg/fks;)I

    return-void
.end method

.method public final h(Ljava/lang/Object;)Z
    .locals 13

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0xfffff

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lg/ecy;->c:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_f

    iget-object v5, p0, Lg/ecy;->t:[I

    aget v5, v5, v2

    iget-object v7, p0, Lg/ecy;->n:[I

    aget v8, v7, v5

    invoke-virtual {p0, v5}, Lg/ecy;->ao(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v7, v7, v10

    and-int v10, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v6, v7

    if-eq v10, v3, :cond_1

    if-eq v10, v0, :cond_0

    sget-object v3, Lg/ecy;->b:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v3, v10

    :cond_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v9

    if-eqz v10, :cond_4

    if-ne v3, v0, :cond_2

    invoke-virtual {p0, v5, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v10

    goto :goto_1

    :cond_2
    and-int v10, v4, v7

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_d

    :cond_4
    invoke-static {v9}, Lg/ecy;->v(I)I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_a

    const/16 v11, 0x11

    if-eq v10, v11, :cond_a

    const/16 v6, 0x1b

    if-eq v10, v6, :cond_8

    const/16 v6, 0x3c

    if-eq v10, v6, :cond_7

    const/16 v6, 0x44

    if-eq v10, v6, :cond_7

    const/16 v6, 0x31

    if-eq v10, v6, :cond_8

    const/16 v6, 0x32

    if-eq v10, v6, :cond_5

    goto/16 :goto_5

    :cond_5
    and-int v6, v9, v0

    int-to-long v6, v6

    sget-object v8, Lg/diy;->f:Lg/frx;

    invoke-virtual {v8, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/dhf;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p0, v5}, Lg/ecy;->an(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_7
    invoke-virtual {p0, v8, v5, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    sget-object v8, Lg/diy;->f:Lg/frx;

    invoke-virtual {v8, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lg/ciw;->h(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_4

    :cond_8
    and-int v6, v9, v0

    int-to-long v6, v6

    sget-object v8, Lg/diy;->f:Lg/frx;

    invoke-virtual {v8, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p0, v5}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v5

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lg/ciw;->h(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    if-ne v3, v0, :cond_b

    invoke-virtual {p0, v5, p1}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v6

    goto :goto_3

    :cond_b
    and-int/2addr v7, v4

    if-eqz v7, :cond_c

    goto :goto_3

    :cond_c
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lg/ecy;->ah(I)Lg/ciw;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    sget-object v8, Lg/diy;->f:Lg/frx;

    invoke-virtual {v8, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lg/ciw;->h(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    :goto_4
    return v1

    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return v6
.end method

.method public final i(Lg/cys;Lg/cys;)V
    .locals 11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg/ecy;->n:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lg/ecy;->ao(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    int-to-long v7, v4

    aget v4, v1, v0

    invoke-static {v2}, Lg/ecy;->v(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v6, p1

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p0, p1, v0, p2}, Lg/ecy;->am(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v4, v0, p2}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lg/diy;->f:Lg/frx;

    invoke-virtual {v2, v7, v8, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v8, p1, v2}, Lg/diy;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {p1, v1, v2, v4}, Lg/diy;->s(Ljava/lang/Object;JI)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v0, p2}, Lg/ecy;->am(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v4, v0, p2}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lg/diy;->f:Lg/frx;

    invoke-virtual {v2, v7, v8, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v7, v8, p1, v2}, Lg/diy;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {p1, v1, v2, v4}, Lg/diy;->s(Ljava/lang/Object;JI)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Lg/ave;->b:Ljava/lang/Class;

    sget-object v1, Lg/diy;->f:Lg/frx;

    invoke-virtual {v1, v7, v8, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v7, v8, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lg/aoq;->b(Ljava/lang/Object;Ljava/lang/Object;)Lg/dhf;

    move-result-object v1

    invoke-static {v7, v8, p1, v1}, Lg/diy;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lg/ecy;->r:Lg/dgb;

    invoke-virtual {v1, v7, v8, p1, p2}, Lg/dgb;->d(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v0, p2}, Lg/ecy;->ae(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v5, Lg/diy;->f:Lg/frx;

    invoke-virtual {v5, v7, v8, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v9

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lg/frx;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_8
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v7, v8, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p1

    invoke-static {v6, v7, v8, p1}, Lg/diy;->s(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_9
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v5, Lg/diy;->f:Lg/frx;

    invoke-virtual {v5, v7, v8, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Lg/frx;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_a
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v7, v8, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p1

    invoke-static {v6, v7, v8, p1}, Lg/diy;->s(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_b
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v7, v8, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p1

    invoke-static {v6, v7, v8, p1}, Lg/diy;->s(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_c
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v7, v8, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p1

    invoke-static {v6, v7, v8, p1}, Lg/diy;->s(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_d
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v7, v8, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v7, v8, v6, p1}, Lg/diy;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_e
    move-object v6, p1

    invoke-virtual {p0, v6, v0, p2}, Lg/ecy;->ae(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_f
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v7, v8, p2}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v7, v8, v6, p1}, Lg/diy;->h(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_10
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v7, v8, p2}, Lg/frx;->h(JLjava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v6, v7, v8, v1}, Lg/frx;->g(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_11
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v7, v8, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p1

    invoke-static {v6, v7, v8, p1}, Lg/diy;->s(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_12
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v5, Lg/diy;->f:Lg/frx;

    invoke-virtual {v5, v7, v8, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Lg/frx;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto :goto_2

    :pswitch_13
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v7, v8, p2}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result p1

    invoke-static {v6, v7, v8, p1}, Lg/diy;->s(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto :goto_2

    :pswitch_14
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v5, Lg/diy;->f:Lg/frx;

    invoke-virtual {v5, v7, v8, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Lg/frx;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto :goto_2

    :pswitch_15
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v5, Lg/diy;->f:Lg/frx;

    invoke-virtual {v5, v7, v8, p2}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Lg/frx;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto :goto_2

    :pswitch_16
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/diy;->f:Lg/frx;

    invoke-virtual {p1, v7, v8, p2}, Lg/frx;->f(JLjava/lang/Object;)F

    move-result v1

    invoke-virtual {p1, v6, v7, v8, v1}, Lg/frx;->e(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    goto :goto_2

    :pswitch_17
    move-object v6, p1

    invoke-virtual {p0, v0, p2}, Lg/ecy;->ar(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v5, Lg/diy;->f:Lg/frx;

    invoke-virtual {v5, v7, v8, p2}, Lg/frx;->d(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Lg/frx;->c(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v6}, Lg/ecy;->ap(ILjava/lang/Object;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x3

    move-object p1, v6

    goto/16 :goto_0

    :cond_2
    move-object v6, p1

    iget-object p1, p0, Lg/ecy;->k:Lg/czj;

    invoke-static {p1, v6, p2}, Lg/ave;->q(Lg/czj;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

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

.method public final j(Lg/cys;)I
    .locals 11

    iget-object v0, p0, Lg/ecy;->n:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lg/ecy;->ao(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Lg/ecy;->v(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lg/dhz;->c(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lg/dhz;->c(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lg/dhz;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_2
    const/16 v8, 0x4cf

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lg/dhz;->c(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lg/ecy;->y(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lg/dhz;->c(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lg/ecy;->aa(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lg/dhz;->c(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lg/ecy;->ai(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lg/dhz;->c(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lg/dhz;->c(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lg/dhz;->c(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->p(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->h(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Lg/dhz;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lg/dhz;->c(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->r(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lg/dhz;->c(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->k(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lg/dhz;->c(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->f(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lg/diy;->f:Lg/frx;

    invoke-virtual {v4, v6, v7, p1}, Lg/frx;->d(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lg/dhz;->c(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Lg/ecy;->k:Lg/czj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lg/cys;->zzc:Lg/fjx;

    invoke-virtual {p1}, Lg/fjx;->hashCode()I

    move-result p1

    add-int/2addr p1, v3

    return p1

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

.method public final zza(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lg/ecy;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lg/ecy;->ag(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lg/ecy;->aq(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final zze()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/ecy;->m:Lg/cir;

    check-cast v0, Lg/cys;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lg/cys;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

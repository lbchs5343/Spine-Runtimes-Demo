.class public final Lcom/google/android/gms/internal/ads/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ah;


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:[I


# instance fields
.field public final c:[I

.field public final m:Lcom/google/android/gms/internal/ads/i;

.field public final n:I

.field public final o:Lcom/google/android/gms/internal/ads/i;

.field public final p:Lcom/google/android/gms/internal/ads/zzhai;

.field public final q:[I

.field public final r:Z

.field public final s:I

.field public final t:[Ljava/lang/Object;

.field public final u:I

.field public final v:I

.field public final w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/aj;->b:[I

    invoke-static {}, Lg/gbc;->j()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzhai;[IIILcom/google/android/gms/internal/ads/i;Lcom/google/android/gms/internal/ads/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aj;->t:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/aj;->v:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/aj;->n:I

    instance-of p1, p5, Lcom/google/android/gms/internal/ads/zzgyx;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aj;->w:Z

    const/4 p1, 0x0

    if-eqz p10, :cond_0

    instance-of p2, p5, Lcom/google/android/gms/internal/ads/zzgyt;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aj;->r:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/aj;->c:[I

    iput p7, p0, Lcom/google/android/gms/internal/ads/aj;->s:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/aj;->u:I

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/aj;->m:Lcom/google/android/gms/internal/ads/i;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/aj;->o:Lcom/google/android/gms/internal/ads/i;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aj;->p:Lcom/google/android/gms/internal/ads/zzhai;

    return-void
.end method

.method public static aa(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static ab(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/aj;->ae(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbo;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgyx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbo;->zzc()Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbo;->g()Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    :cond_0
    return-object v0
.end method

.method public static ad(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static ae(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgyx;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgyx;->ck()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static x(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static y(Lg/cyk;Lcom/google/android/gms/internal/ads/i;Lcom/google/android/gms/internal/ads/i;)Lcom/google/android/gms/internal/ads/aj;
    .locals 35

    move-object/from16 v0, p0

    instance-of v1, v0, Lg/cyk;

    if-eqz v1, :cond_37

    iget-object v1, v0, Lg/cyk;->c:Ljava/lang/String;

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

    sget-object v7, Lcom/google/android/gms/internal/ads/aj;->b:[I

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
    sget-object v14, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    iget-object v3, v0, Lg/cyk;->d:[Ljava/lang/Object;

    iget-object v8, v0, Lg/cyk;->b:Lcom/google/android/gms/internal/ads/zzhai;

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

    invoke-virtual {v0}, Lg/cyk;->e()I

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

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/ads/aj;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/ads/aj;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/ads/aj;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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
    invoke-virtual {v0}, Lg/cyk;->e()I

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

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/aj;->z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    new-instance v1, Lcom/google/android/gms/internal/ads/aj;

    iget-object v14, v0, Lg/cyk;->b:Lcom/google/android/gms/internal/ads/zzhai;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move/from16 v17, v9

    move-object v10, v11

    move-object/from16 v11, v29

    move-object v9, v1

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/ads/aj;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzhai;[IIILcom/google/android/gms/internal/ads/i;Lcom/google/android/gms/internal/ads/i;)V

    return-object v9

    :cond_37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public static z(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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


# virtual methods
.method public final af(Ljava/lang/Object;[BIIILg/fse;)I
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    iget v11, v0, Lcom/google/android/gms/internal/ads/aj;->n:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/aj;->v:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aj;->ab(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    move/from16 v4, p3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffff

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    const v18, 0xfffff

    if-ge v4, v5, :cond_75

    const/16 p3, 0x0

    add-int/lit8 v15, v4, 0x1

    aget-byte v4, v3, v4

    if-gez v4, :cond_0

    invoke-static {v4, v3, v15, v6}, Lg/egh;->aj(I[BILg/fse;)I

    move-result v15

    iget v4, v6, Lg/fse;->c:I

    :cond_0
    move/from16 v32, v15

    move v15, v4

    move/from16 v4, v32

    ushr-int/lit8 v14, v15, 0x3

    const/4 v13, 0x3

    if-le v14, v7, :cond_2

    div-int/2addr v8, v13

    if-lt v14, v12, :cond_1

    if-gt v14, v11, :cond_1

    invoke-virtual {v0, v14, v8}, Lcom/google/android/gms/internal/ads/aj;->am(II)I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    const/4 v8, -0x1

    goto :goto_3

    :cond_2
    if-lt v14, v12, :cond_3

    if-gt v14, v11, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v0, v14, v7}, Lcom/google/android/gms/internal/ads/aj;->am(II)I

    move-result v8

    goto :goto_2

    :cond_3
    const/4 v8, -0x1

    :goto_2
    move v7, v8

    goto :goto_1

    :goto_3
    if-ne v7, v8, :cond_4

    move/from16 v0, p5

    move-object/from16 v30, v1

    move/from16 v27, v11

    move/from16 v26, v12

    move v13, v14

    move v10, v15

    const/4 v8, 0x0

    const/16 v19, -0x1

    move-object v11, v2

    move-object v14, v3

    move v3, v4

    move-object v15, v6

    goto/16 :goto_48

    :cond_4
    and-int/lit8 v8, v15, 0x7

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    add-int/lit8 v20, v7, 0x1

    aget v3, v13, v20

    move/from16 v20, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/aj;->ad(I)I

    move-result v4

    and-int v5, v3, v18

    int-to-long v5, v5

    move-wide/from16 v21, v5

    const-wide/16 v23, 0x0

    const/high16 v25, 0x20000000

    const-string v6, ""

    const-string v5, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move/from16 v27, v11

    const/16 v28, 0x1

    const/16 v11, 0x11

    if-gt v4, v11, :cond_18

    add-int/lit8 v11, v7, 0x2

    aget v11, v13, v11

    ushr-int/lit8 v13, v11, 0x14

    shl-int v13, v28, v13

    and-int v11, v11, v18

    move/from16 v26, v12

    if-eq v11, v9, :cond_7

    const v12, 0xfffff

    move/from16 v29, v13

    if-eq v9, v12, :cond_5

    int-to-long v12, v9

    move/from16 v9, v16

    invoke-virtual {v1, v2, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v12, 0xfffff

    :cond_5
    if-ne v11, v12, :cond_6

    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    int-to-long v12, v11

    invoke-virtual {v1, v2, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    :goto_4
    move/from16 v16, v9

    goto :goto_5

    :cond_7
    move/from16 v29, v13

    move/from16 v11, v16

    move v11, v9

    :goto_5
    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x3

    if-ne v8, v4, :cond_8

    or-int v16, v16, v29

    invoke-virtual {v0, v7, v2}, Lcom/google/android/gms/internal/ads/aj;->at(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, v14, 0x3

    or-int/lit8 v8, v4, 0x4

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v4

    move-object/from16 v5, p2

    move-object/from16 v9, p6

    move v12, v7

    move/from16 v6, v20

    const/16 v19, -0x1

    move/from16 v7, p4

    invoke-static/range {v3 .. v9}, Lg/egh;->bc(Ljava/lang/Object;Lg/ah;[BIIILg/fse;)I

    move-result v4

    move-object v7, v5

    invoke-virtual {v0, v2, v12, v3}, Lcom/google/android/gms/internal/ads/aj;->ar(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v5, p4

    move-object v3, v7

    :goto_6
    move-object v6, v9

    move v9, v11

    move v8, v12

    :goto_7
    move v7, v14

    move/from16 v17, v15

    :goto_8
    move/from16 v12, v26

    move/from16 v11, v27

    goto/16 :goto_0

    :cond_8
    move v12, v7

    const/16 v19, -0x1

    move-object/from16 v9, p2

    move-object/from16 v7, p6

    move/from16 v21, v14

    move/from16 v4, v20

    move-object v14, v1

    move/from16 v20, v15

    :cond_9
    :goto_9
    move-object v15, v2

    goto/16 :goto_18

    :pswitch_0
    move-object/from16 v9, p6

    move v12, v7

    move/from16 v4, v20

    const/16 v19, -0x1

    move-object/from16 v7, p2

    if-nez v8, :cond_a

    or-int v16, v16, v29

    invoke-static {v7, v4, v9}, Lg/egh;->bi([BILg/fse;)I

    move-result v8

    iget-wide v3, v9, Lg/fse;->d:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgxv;->zzF(J)J

    move-result-wide v5

    move-wide/from16 v3, v21

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move-object v3, v7

    move v4, v8

    goto :goto_6

    :cond_a
    move-object/from16 v20, v9

    move-object v9, v7

    move-object/from16 v7, v20

    move/from16 v21, v14

    move/from16 v20, v15

    :cond_b
    move-object v14, v1

    goto :goto_9

    :pswitch_1
    move-object/from16 v9, p6

    move-object v13, v2

    move v12, v7

    move/from16 v4, v20

    move-wide/from16 v5, v21

    const/16 v19, -0x1

    move-object/from16 v7, p2

    if-nez v8, :cond_c

    or-int v16, v16, v29

    invoke-static {v7, v4, v9}, Lg/egh;->v([BILg/fse;)I

    move-result v4

    iget v2, v9, Lg/fse;->c:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgxv;->zzD(I)I

    move-result v2

    invoke-virtual {v1, v13, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_a
    move/from16 v5, p4

    move-object v3, v7

    move-object v6, v9

    :goto_b
    move v9, v11

    move v8, v12

    move-object v2, v13

    goto :goto_7

    :cond_c
    move-object/from16 v20, v9

    move-object v9, v7

    move-object/from16 v7, v20

    move/from16 v21, v14

    move/from16 v20, v15

    :goto_c
    move-object v14, v1

    move-object v15, v13

    goto/16 :goto_18

    :pswitch_2
    move-object/from16 v9, p6

    move-object v13, v2

    move v12, v7

    move/from16 v4, v20

    move-wide/from16 v5, v21

    const/16 v19, -0x1

    move-object/from16 v7, p2

    if-nez v8, :cond_c

    invoke-static {v7, v4, v9}, Lg/egh;->v([BILg/fse;)I

    move-result v4

    iget v2, v9, Lg/fse;->c:I

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/aj;->ah(I)Lcom/google/android/gms/internal/ads/zzgzd;

    move-result-object v8

    const/high16 v17, -0x80000000

    and-int v3, v3, v17

    if-eqz v3, :cond_e

    if-eqz v8, :cond_e

    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/ads/zzgzd;->zza(I)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_d

    :cond_d
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/aj;->ac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v3

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/internal/ads/zzhbo;->h(ILjava/lang/Object;)V

    goto :goto_a

    :cond_e
    :goto_d
    or-int v16, v16, v29

    invoke-virtual {v1, v13, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_3
    move-object/from16 v9, p6

    move-object v13, v2

    move v12, v7

    move/from16 v4, v20

    move-wide/from16 v5, v21

    const/4 v2, 0x2

    const/16 v19, -0x1

    move-object/from16 v7, p2

    if-ne v8, v2, :cond_c

    or-int v16, v16, v29

    invoke-static {v7, v4, v9}, Lg/egh;->t([BILg/fse;)I

    move-result v4

    iget-object v2, v9, Lg/fse;->e:Ljava/lang/Object;

    invoke-virtual {v1, v13, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    :pswitch_4
    move-object/from16 v9, p6

    move-object v13, v2

    move v12, v7

    move/from16 v4, v20

    const/4 v2, 0x2

    const/16 v19, -0x1

    move-object/from16 v7, p2

    if-ne v8, v2, :cond_f

    or-int v16, v16, v29

    move-object v2, v1

    invoke-virtual {v0, v12, v13}, Lcom/google/android/gms/internal/ads/aj;->at(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v2

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v2

    move-object v5, v7

    move-object v7, v3

    move-object v3, v5

    move/from16 v5, p4

    move-object v6, v9

    invoke-static/range {v1 .. v6}, Lg/egh;->ap(Ljava/lang/Object;Lg/ah;[BIILg/fse;)I

    move-result v4

    move-object v2, v1

    move-object v9, v3

    move-object v1, v6

    invoke-virtual {v0, v13, v12, v2}, Lcom/google/android/gms/internal/ads/aj;->ar(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v1, v7

    goto/16 :goto_b

    :cond_f
    move-object/from16 v32, v7

    move-object v7, v1

    move-object v1, v9

    move-object/from16 v9, v32

    move/from16 v21, v14

    move/from16 v20, v15

    :cond_10
    move-object v14, v7

    move-object v15, v13

    move-object v7, v1

    goto/16 :goto_18

    :pswitch_5
    move-object/from16 v9, p2

    move-object v13, v2

    move v12, v7

    move/from16 v4, v20

    const/4 v2, 0x2

    const/16 v19, -0x1

    move-object v7, v1

    move/from16 v20, v15

    move-object/from16 v1, p6

    move-wide/from16 v32, v21

    move/from16 v21, v14

    move-wide/from16 v14, v32

    if-ne v8, v2, :cond_10

    and-int v2, v3, v25

    if-eqz v2, :cond_13

    invoke-static {v9, v4, v1}, Lg/egh;->v([BILg/fse;)I

    move-result v2

    iget v3, v1, Lg/fse;->c:I

    if-ltz v3, :cond_12

    or-int v4, v16, v29

    if-nez v3, :cond_11

    iput-object v6, v1, Lg/fse;->e:Ljava/lang/Object;

    :goto_e
    move/from16 v16, v4

    move v4, v2

    goto :goto_10

    :cond_11
    sget-object v5, Lg/bso;->a:Lg/bli;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v9, v3}, Lg/bli;->t(I[BI)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lg/fse;->e:Ljava/lang/Object;

    add-int/2addr v2, v3

    goto :goto_e

    :cond_12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    or-int v2, v16, v29

    invoke-static {v9, v4, v1}, Lg/egh;->v([BILg/fse;)I

    move-result v3

    iget v4, v1, Lg/fse;->c:I

    if-ltz v4, :cond_15

    if-nez v4, :cond_14

    iput-object v6, v1, Lg/fse;->e:Ljava/lang/Object;

    :goto_f
    move/from16 v16, v2

    move v4, v3

    goto :goto_10

    :cond_14
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v9, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v5, v1, Lg/fse;->e:Ljava/lang/Object;

    add-int/2addr v3, v4

    goto :goto_f

    :goto_10
    iget-object v2, v1, Lg/fse;->e:Ljava/lang/Object;

    invoke-virtual {v7, v13, v14, v15, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_11
    move/from16 v5, p4

    move-object v6, v1

    :goto_12
    move-object v1, v7

    move-object v3, v9

    move v9, v11

    move v8, v12

    move-object v2, v13

    :goto_13
    move/from16 v17, v20

    move/from16 v7, v21

    goto/16 :goto_8

    :cond_15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_6
    move-object/from16 v9, p2

    move-object v13, v2

    move v12, v7

    move/from16 v4, v20

    const/16 v19, -0x1

    move-object v7, v1

    move/from16 v20, v15

    move-object/from16 v1, p6

    move-wide/from16 v32, v21

    move/from16 v21, v14

    move-wide/from16 v14, v32

    if-nez v8, :cond_10

    or-int v16, v16, v29

    invoke-static {v9, v4, v1}, Lg/egh;->bi([BILg/fse;)I

    move-result v4

    iget-wide v2, v1, Lg/fse;->d:J

    cmp-long v5, v2, v23

    if-eqz v5, :cond_16

    const/4 v2, 0x1

    goto :goto_14

    :cond_16
    const/4 v2, 0x0

    :goto_14
    sget-object v3, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v3, v13, v14, v15, v2}, Lg/aul;->o(Ljava/lang/Object;JZ)V

    goto :goto_11

    :pswitch_7
    move-object/from16 v9, p2

    move-object v13, v2

    move v12, v7

    move/from16 v4, v20

    const/4 v2, 0x5

    const/16 v19, -0x1

    move-object v7, v1

    move/from16 v20, v15

    move-object/from16 v1, p6

    move-wide/from16 v32, v21

    move/from16 v21, v14

    move-wide/from16 v14, v32

    if-ne v8, v2, :cond_10

    add-int/lit8 v2, v4, 0x4

    or-int v16, v16, v29

    invoke-static {v9, v4}, Lg/egh;->ar([BI)I

    move-result v3

    invoke-virtual {v7, v13, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p4

    move-object v6, v1

    move v4, v2

    goto :goto_12

    :pswitch_8
    move-object/from16 v9, p2

    move-object v13, v2

    move v12, v7

    move/from16 v4, v20

    const/4 v2, 0x1

    const/16 v19, -0x1

    move-object v7, v1

    move/from16 v20, v15

    move-object/from16 v1, p6

    move-wide/from16 v32, v21

    move/from16 v21, v14

    move-wide/from16 v14, v32

    if-ne v8, v2, :cond_17

    add-int/lit8 v8, v4, 0x8

    or-int v16, v16, v29

    invoke-static {v4, v9}, Lg/egh;->ad(I[B)J

    move-result-wide v5

    move-object v2, v7

    move-object v7, v1

    move-object v1, v2

    move-object v2, v13

    move-wide v3, v14

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_15
    move/from16 v5, p4

    move-object v6, v7

    move v4, v8

    :goto_16
    move-object v3, v9

    move v9, v11

    move v8, v12

    goto/16 :goto_13

    :cond_17
    move-object/from16 v32, v7

    move-object v7, v1

    move-object/from16 v1, v32

    goto/16 :goto_c

    :pswitch_9
    move-object/from16 v9, p2

    move v12, v7

    move/from16 v4, v20

    const/16 v19, -0x1

    move-object/from16 v7, p6

    move/from16 v20, v15

    move-wide/from16 v32, v21

    move/from16 v21, v14

    move-wide/from16 v14, v32

    if-nez v8, :cond_b

    or-int v16, v16, v29

    invoke-static {v9, v4, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v4

    iget v3, v7, Lg/fse;->c:I

    invoke-virtual {v1, v2, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p4

    move-object v6, v7

    goto :goto_16

    :pswitch_a
    move-object/from16 v9, p2

    move v12, v7

    move/from16 v4, v20

    const/16 v19, -0x1

    move-object/from16 v7, p6

    move/from16 v20, v15

    move-wide/from16 v32, v21

    move/from16 v21, v14

    move-wide/from16 v14, v32

    if-nez v8, :cond_b

    or-int v16, v16, v29

    invoke-static {v9, v4, v7}, Lg/egh;->bi([BILg/fse;)I

    move-result v8

    iget-wide v5, v7, Lg/fse;->d:J

    move-wide v3, v14

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_15

    :pswitch_b
    move-object/from16 v9, p2

    move v12, v7

    move/from16 v4, v20

    move-wide/from16 v5, v21

    const/16 v19, -0x1

    move-object/from16 v7, p6

    move/from16 v21, v14

    move/from16 v20, v15

    move-object v14, v1

    const/4 v1, 0x5

    if-ne v8, v1, :cond_9

    add-int/lit8 v1, v4, 0x4

    or-int v16, v16, v29

    invoke-static {v9, v4}, Lg/egh;->ar([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    sget-object v4, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v4, v2, v5, v6, v3}, Lg/aul;->j(Ljava/lang/Object;JF)V

    move/from16 v5, p4

    move v4, v1

    move-object v6, v7

    :goto_17
    move-object v3, v9

    move v9, v11

    move v8, v12

    move-object v1, v14

    goto/16 :goto_13

    :pswitch_c
    move-object/from16 v9, p2

    move v12, v7

    move/from16 v4, v20

    move-wide/from16 v5, v21

    const/16 v19, -0x1

    move-object/from16 v7, p6

    move/from16 v21, v14

    move/from16 v20, v15

    move-object v14, v1

    const/4 v1, 0x1

    if-ne v8, v1, :cond_9

    add-int/lit8 v8, v4, 0x8

    or-int v16, v16, v29

    invoke-static {v4, v9}, Lg/egh;->ad(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sget-object v1, Lg/gbc;->g:Lg/aul;

    move-wide/from16 v32, v5

    move-wide v5, v3

    move-wide/from16 v3, v32

    invoke-virtual/range {v1 .. v6}, Lg/aul;->n(Ljava/lang/Object;JD)V

    move/from16 v5, p4

    move-object v6, v7

    move v4, v8

    goto :goto_17

    :goto_18
    move/from16 v0, p5

    move v3, v4

    move v8, v12

    move-object/from16 v30, v14

    move/from16 v10, v20

    move/from16 v13, v21

    move-object v14, v9

    move v9, v11

    move-object v11, v15

    move-object v15, v7

    goto/16 :goto_48

    :cond_18
    move/from16 v26, v12

    move/from16 v11, v16

    move/from16 v16, v20

    const/16 v19, -0x1

    move v12, v7

    move/from16 v20, v15

    move-object v15, v2

    move/from16 v32, v14

    move-object v14, v1

    move-wide/from16 v1, v21

    move/from16 v21, v32

    const/16 v7, 0x1b

    const/16 v22, 0xa

    if-ne v4, v7, :cond_1c

    const/4 v7, 0x2

    if-ne v8, v7, :cond_1b

    invoke-virtual {v14, v15, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgzj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzgzj;->zzc()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_19

    const/16 v4, 0xa

    goto :goto_19

    :cond_19
    add-int v22, v4, v4

    move/from16 v4, v22

    :goto_19
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzgzj;->zzf(I)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v14, v15, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1a
    move-object v6, v3

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v4, v16

    move/from16 v2, v20

    invoke-static/range {v1 .. v7}, Lg/egh;->bb(Lg/ah;I[BIILcom/google/android/gms/internal/ads/zzgzj;Lg/fse;)I

    move-result v4

    move-object/from16 v6, p6

    move/from16 v16, v11

    move v8, v12

    move-object v1, v14

    move-object v2, v15

    goto/16 :goto_13

    :cond_1b
    move-object/from16 v7, p2

    move/from16 v29, v9

    move/from16 v31, v11

    move-object/from16 v30, v14

    move-object v11, v15

    move/from16 v10, v20

    move/from16 v14, p4

    move-object/from16 v15, p6

    goto/16 :goto_3d

    :cond_1c
    const/16 v7, 0x31

    move/from16 v29, v9

    const-string v9, "Protocol message had invalid UTF-8."

    if-gt v4, v7, :cond_63

    move-object/from16 v30, v14

    int-to-long v13, v3

    sget-object v3, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    invoke-virtual {v3, v15, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzgzj;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzgzj;->zzc()Z

    move-result v25

    if-nez v25, :cond_1e

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_1d

    move/from16 v31, v11

    const/16 v11, 0xa

    goto :goto_1a

    :cond_1d
    add-int v22, v25, v25

    move/from16 v31, v11

    move/from16 v11, v22

    :goto_1a
    invoke-interface {v7, v11}, Lcom/google/android/gms/internal/ads/zzgzj;->zzf(I)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v7

    invoke-virtual {v3, v15, v1, v2, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_1b
    move-object v11, v7

    goto :goto_1c

    :cond_1e
    move/from16 v31, v11

    goto :goto_1b

    :goto_1c
    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    packed-switch v4, :pswitch_data_1

    const/4 v4, 0x3

    if-ne v8, v4, :cond_20

    and-int/lit8 v1, v20, -0x8

    or-int/lit8 v6, v1, 0x4

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v2

    invoke-interface {v2}, Lg/ah;->zze()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v4, v16

    move/from16 v9, v20

    invoke-static/range {v1 .. v7}, Lg/egh;->bc(Ljava/lang/Object;Lg/ah;[BIIILg/fse;)I

    move-result v8

    move v13, v4

    move-object v4, v1

    move v1, v6

    move-object v6, v7

    invoke-interface {v2, v4}, Lg/ah;->g(Ljava/lang/Object;)V

    iput-object v4, v6, Lg/fse;->e:Ljava/lang/Object;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1d
    if-ge v8, v5, :cond_1f

    invoke-static {v3, v8, v6}, Lg/egh;->v([BILg/fse;)I

    move-result v4

    iget v7, v6, Lg/fse;->c:I

    if-ne v9, v7, :cond_1f

    move v6, v1

    invoke-interface {v2}, Lg/ah;->zze()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lg/egh;->bc(Ljava/lang/Object;Lg/ah;[BIIILg/fse;)I

    move-result v8

    move-object v4, v1

    move v1, v6

    move-object v6, v7

    invoke-interface {v2, v4}, Lg/ah;->g(Ljava/lang/Object;)V

    iput-object v4, v6, Lg/fse;->e:Ljava/lang/Object;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_1f
    move-object v7, v3

    move v14, v5

    move v4, v8

    :goto_1e
    move v10, v9

    move v2, v13

    move-object v11, v15

    move-object v15, v6

    goto/16 :goto_39

    :cond_20
    move-object/from16 v7, p2

    move/from16 v14, p4

    move-object v11, v15

    move/from16 v2, v16

    move/from16 v10, v20

    move-object/from16 v15, p6

    goto/16 :goto_38

    :pswitch_d
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v13, v16

    move/from16 v9, v20

    const/4 v2, 0x2

    if-ne v8, v2, :cond_23

    check-cast v11, Lg/ayh;

    invoke-static {v3, v13, v6}, Lg/egh;->v([BILg/fse;)I

    move-result v2

    iget v4, v6, Lg/fse;->c:I

    add-int/2addr v4, v2

    :goto_1f
    if-ge v2, v4, :cond_21

    invoke-static {v3, v2, v6}, Lg/egh;->bi([BILg/fse;)I

    move-result v2

    iget-wide v7, v6, Lg/fse;->d:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgxv;->zzF(J)J

    move-result-wide v7

    invoke-virtual {v11, v7, v8}, Lg/ayh;->zzg(J)V

    goto :goto_1f

    :cond_21
    if-ne v2, v4, :cond_22

    :goto_20
    move v4, v2

    :goto_21
    move-object v7, v3

    move v14, v5

    goto :goto_1e

    :cond_22
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_23
    if-nez v8, :cond_25

    check-cast v11, Lg/ayh;

    invoke-static {v3, v13, v6}, Lg/egh;->bi([BILg/fse;)I

    move-result v1

    iget-wide v7, v6, Lg/fse;->d:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgxv;->zzF(J)J

    move-result-wide v7

    invoke-virtual {v11, v7, v8}, Lg/ayh;->zzg(J)V

    :goto_22
    if-ge v1, v5, :cond_24

    invoke-static {v3, v1, v6}, Lg/egh;->v([BILg/fse;)I

    move-result v2

    iget v4, v6, Lg/fse;->c:I

    if-ne v9, v4, :cond_24

    invoke-static {v3, v2, v6}, Lg/egh;->bi([BILg/fse;)I

    move-result v1

    iget-wide v7, v6, Lg/fse;->d:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgxv;->zzF(J)J

    move-result-wide v7

    invoke-virtual {v11, v7, v8}, Lg/ayh;->zzg(J)V

    goto :goto_22

    :cond_24
    move v4, v1

    goto :goto_21

    :cond_25
    move-object v7, v3

    move v14, v5

    move v10, v9

    move v2, v13

    move-object v11, v15

    move-object v15, v6

    goto/16 :goto_38

    :pswitch_e
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v13, v16

    move/from16 v9, v20

    const/4 v2, 0x2

    if-ne v8, v2, :cond_28

    check-cast v11, Lg/uo;

    invoke-static {v3, v13, v6}, Lg/egh;->v([BILg/fse;)I

    move-result v2

    iget v4, v6, Lg/fse;->c:I

    add-int/2addr v4, v2

    :goto_23
    if-ge v2, v4, :cond_26

    invoke-static {v3, v2, v6}, Lg/egh;->v([BILg/fse;)I

    move-result v2

    iget v7, v6, Lg/fse;->c:I

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgxv;->zzD(I)I

    move-result v7

    invoke-virtual {v11, v7}, Lg/uo;->zzi(I)V

    goto :goto_23

    :cond_26
    if-ne v2, v4, :cond_27

    goto :goto_20

    :cond_27
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_28
    if-nez v8, :cond_25

    check-cast v11, Lg/uo;

    invoke-static {v3, v13, v6}, Lg/egh;->v([BILg/fse;)I

    move-result v1

    iget v2, v6, Lg/fse;->c:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgxv;->zzD(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lg/uo;->zzi(I)V

    :goto_24
    if-ge v1, v5, :cond_24

    invoke-static {v3, v1, v6}, Lg/egh;->v([BILg/fse;)I

    move-result v2

    iget v4, v6, Lg/fse;->c:I

    if-ne v9, v4, :cond_24

    invoke-static {v3, v2, v6}, Lg/egh;->v([BILg/fse;)I

    move-result v1

    iget v2, v6, Lg/fse;->c:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgxv;->zzD(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lg/uo;->zzi(I)V

    goto :goto_24

    :pswitch_f
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v13, v16

    move/from16 v9, v20

    const/4 v2, 0x2

    if-ne v8, v2, :cond_29

    invoke-static {v3, v13, v11, v6}, Lg/egh;->au([BILcom/google/android/gms/internal/ads/zzgzj;Lg/fse;)I

    move-result v1

    move-object v7, v11

    move v11, v5

    move-object v5, v7

    move v14, v13

    move v13, v9

    move-object v9, v3

    move v8, v1

    move-object v7, v6

    goto :goto_25

    :cond_29
    if-nez v8, :cond_2a

    move-object v2, v3

    move v4, v5

    move v1, v9

    move-object v5, v11

    move v3, v13

    invoke-static/range {v1 .. v6}, Lg/egh;->ag(I[BIILcom/google/android/gms/internal/ads/zzgzj;Lg/fse;)I

    move-result v7

    move v13, v1

    move-object v9, v2

    move v14, v3

    move v11, v4

    move v1, v7

    move-object v7, v6

    move v8, v1

    :goto_25
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/aj;->ah(I)Lcom/google/android/gms/internal/ads/zzgzd;

    move-result-object v4

    move-object v3, v5

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/aj;->m:Lcom/google/android/gms/internal/ads/i;

    move-object v1, v15

    move/from16 v2, v21

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/e;->z(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgzj;Lcom/google/android/gms/internal/ads/zzgzd;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/i;)Ljava/lang/Object;

    move-object v15, v7

    move v4, v8

    move-object v7, v9

    move v10, v13

    move v2, v14

    :goto_26
    move v14, v11

    move-object/from16 v11, p1

    goto/16 :goto_39

    :cond_2a
    move v14, v13

    move v13, v9

    move-object/from16 v11, p1

    move-object v7, v3

    move-object v15, v6

    move v10, v13

    move v2, v14

    move v14, v5

    goto/16 :goto_38

    :pswitch_10
    move-object/from16 v9, p2

    move-object/from16 v7, p6

    move-object v3, v11

    move/from16 v14, v16

    move/from16 v13, v20

    move/from16 v15, v21

    const/4 v2, 0x2

    move/from16 v11, p4

    if-ne v8, v2, :cond_32

    invoke-static {v9, v14, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v2

    iget v4, v7, Lg/fse;->c:I

    if-ltz v4, :cond_31

    array-length v6, v9

    sub-int/2addr v6, v2

    if-gt v4, v6, :cond_30

    if-nez v4, :cond_2b

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_2b
    invoke-static {v9, v2, v4}, Lcom/google/android/gms/internal/ads/zzgxp;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    add-int/2addr v2, v4

    :goto_28
    if-ge v2, v11, :cond_2f

    invoke-static {v9, v2, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v4

    iget v6, v7, Lg/fse;->c:I

    if-ne v13, v6, :cond_2f

    invoke-static {v9, v4, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v2

    iget v4, v7, Lg/fse;->c:I

    if-ltz v4, :cond_2e

    array-length v6, v9

    sub-int/2addr v6, v2

    if-gt v4, v6, :cond_2d

    if-nez v4, :cond_2c

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_2c
    invoke-static {v9, v2, v4}, Lcom/google/android/gms/internal/ads/zzgxp;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_2d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    move v4, v2

    move v10, v13

    move v2, v14

    move/from16 v21, v15

    move-object v15, v7

    move-object v7, v9

    goto :goto_26

    :cond_30
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_31
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    move v10, v13

    move v2, v14

    move/from16 v21, v15

    move-object v15, v7

    move-object v7, v9

    move v14, v11

    move-object/from16 v11, p1

    goto/16 :goto_38

    :pswitch_11
    move-object/from16 v9, p2

    move-object/from16 v7, p6

    move-object v3, v11

    move/from16 v14, v16

    move/from16 v13, v20

    move/from16 v15, v21

    const/4 v2, 0x2

    move/from16 v11, p4

    if-ne v8, v2, :cond_33

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v1

    move-object v6, v3

    move-object v3, v9

    move v5, v11

    move v2, v13

    move v4, v14

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v7}, Lg/egh;->bb(Lg/ah;I[BIILcom/google/android/gms/internal/ads/zzgzj;Lg/fse;)I

    move-result v1

    move v10, v2

    move v2, v4

    move v14, v5

    move/from16 v21, v15

    move v4, v1

    move-object v15, v7

    :goto_29
    move-object v7, v3

    goto/16 :goto_39

    :cond_33
    move v4, v11

    move-object/from16 v11, p1

    move v10, v13

    move v2, v14

    move/from16 v21, v15

    move v14, v4

    move-object v15, v7

    move-object v7, v9

    goto/16 :goto_38

    :pswitch_12
    move-wide v1, v13

    move/from16 v13, v16

    move-wide/from16 v16, v1

    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object v14, v11

    move-object v11, v15

    move/from16 v1, v20

    move/from16 v15, v21

    const/4 v2, 0x2

    if-ne v8, v2, :cond_41

    const-wide/32 v20, 0x20000000

    and-long v16, v16, v20

    cmp-long v2, v16, v23

    if-nez v2, :cond_39

    invoke-static {v3, v13, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v2

    iget v8, v7, Lg/fse;->c:I

    if-ltz v8, :cond_38

    if-nez v8, :cond_34

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_34
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v2, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    add-int/2addr v2, v8

    :goto_2b
    if-ge v2, v4, :cond_37

    invoke-static {v3, v2, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v8

    iget v9, v7, Lg/fse;->c:I

    if-ne v1, v9, :cond_37

    invoke-static {v3, v8, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v2

    iget v8, v7, Lg/fse;->c:I

    if-ltz v8, :cond_36

    if-nez v8, :cond_35

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_35
    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v2, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_36
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    move v10, v1

    move v14, v4

    move/from16 v21, v15

    move v4, v2

    :goto_2c
    move-object v15, v7

    move v2, v13

    goto :goto_29

    :cond_38
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    invoke-static {v3, v13, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v2

    iget v8, v7, Lg/fse;->c:I

    if-ltz v8, :cond_40

    if-nez v8, :cond_3a

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v21, v15

    goto :goto_2d

    :cond_3a
    add-int v10, v2, v8

    sget-object v16, Lg/bso;->a:Lg/bli;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v21, v15

    const/4 v15, 0x0

    invoke-static {v15, v3, v2, v10}, Lg/bli;->r(I[BII)I

    move-result v16

    if-nez v16, :cond_3f

    new-instance v15, Ljava/lang/String;

    move/from16 v16, v10

    sget-object v10, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    invoke-direct {v15, v3, v2, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v16

    :goto_2d
    if-ge v2, v4, :cond_3e

    invoke-static {v3, v2, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v8

    iget v10, v7, Lg/fse;->c:I

    if-ne v1, v10, :cond_3e

    invoke-static {v3, v8, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v2

    iget v8, v7, Lg/fse;->c:I

    if-ltz v8, :cond_3d

    if-nez v8, :cond_3b

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_3b
    add-int v10, v2, v8

    sget-object v15, Lg/bso;->a:Lg/bli;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x0

    invoke-static {v15, v3, v2, v10}, Lg/bli;->r(I[BII)I

    move-result v16

    if-nez v16, :cond_3c

    new-instance v15, Ljava/lang/String;

    move/from16 v20, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    invoke-direct {v15, v3, v2, v8, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v10

    move/from16 v1, v20

    goto :goto_2d

    :cond_3c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3e
    move/from16 v20, v1

    move v14, v4

    move-object v15, v7

    move/from16 v10, v20

    move v4, v2

    move-object v7, v3

    move v2, v13

    goto/16 :goto_39

    :cond_3f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    move/from16 v21, v15

    move v10, v1

    :goto_2e
    move v14, v4

    move-object v15, v7

    move v2, v13

    move-object v7, v3

    goto/16 :goto_38

    :pswitch_13
    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object v14, v11

    move-object v11, v15

    move/from16 v13, v16

    move/from16 v2, v20

    const/4 v5, 0x2

    if-ne v8, v5, :cond_45

    if-nez v14, :cond_44

    invoke-static {v3, v13, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v5

    iget v6, v7, Lg/fse;->c:I

    add-int/2addr v6, v5

    if-lt v5, v6, :cond_43

    if-ne v5, v6, :cond_42

    move v10, v2

    move v14, v4

    move v4, v5

    goto/16 :goto_2c

    :cond_42
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_43
    invoke-static {v3, v5, v7}, Lg/egh;->bi([BILg/fse;)I

    throw p3

    :cond_44
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_45
    if-eqz v8, :cond_47

    :cond_46
    move v10, v2

    goto :goto_2e

    :cond_47
    if-nez v14, :cond_48

    invoke-static {v3, v13, v7}, Lg/egh;->bi([BILg/fse;)I

    throw p3

    :cond_48
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :pswitch_14
    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object v14, v11

    move-object v11, v15

    move/from16 v13, v16

    move/from16 v2, v20

    const/4 v5, 0x2

    if-ne v8, v5, :cond_4b

    move-object v5, v14

    check-cast v5, Lg/uo;

    invoke-static {v3, v13, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v6

    iget v8, v7, Lg/fse;->c:I

    add-int/2addr v8, v6

    :goto_2f
    if-ge v6, v8, :cond_49

    invoke-static {v3, v6}, Lg/egh;->ar([BI)I

    move-result v9

    invoke-virtual {v5, v9}, Lg/uo;->zzi(I)V

    add-int/lit8 v6, v6, 0x4

    goto :goto_2f

    :cond_49
    if-ne v6, v8, :cond_4a

    :goto_30
    move v10, v2

    move v14, v4

    move v4, v6

    goto/16 :goto_2c

    :cond_4a
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4b
    const/4 v1, 0x5

    if-ne v8, v1, :cond_46

    add-int/lit8 v1, v13, 0x4

    move-object v5, v14

    check-cast v5, Lg/uo;

    invoke-static {v3, v13}, Lg/egh;->ar([BI)I

    move-result v6

    invoke-virtual {v5, v6}, Lg/uo;->zzi(I)V

    :goto_31
    if-ge v1, v4, :cond_4c

    invoke-static {v3, v1, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v6

    iget v8, v7, Lg/fse;->c:I

    if-ne v2, v8, :cond_4c

    invoke-static {v3, v6}, Lg/egh;->ar([BI)I

    move-result v1

    invoke-virtual {v5, v1}, Lg/uo;->zzi(I)V

    add-int/lit8 v1, v6, 0x4

    goto :goto_31

    :cond_4c
    :goto_32
    move v10, v2

    move v14, v4

    move-object v15, v7

    move v2, v13

    move v4, v1

    goto/16 :goto_29

    :pswitch_15
    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object v14, v11

    move-object v11, v15

    move/from16 v13, v16

    move/from16 v2, v20

    const/4 v5, 0x2

    if-ne v8, v5, :cond_4f

    move-object v5, v14

    check-cast v5, Lg/ayh;

    invoke-static {v3, v13, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v6

    iget v8, v7, Lg/fse;->c:I

    add-int/2addr v8, v6

    :goto_33
    if-ge v6, v8, :cond_4d

    invoke-static {v6, v3}, Lg/egh;->ad(I[B)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lg/ayh;->zzg(J)V

    add-int/lit8 v6, v6, 0x8

    goto :goto_33

    :cond_4d
    if-ne v6, v8, :cond_4e

    goto :goto_30

    :cond_4e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4f
    const/4 v1, 0x1

    if-ne v8, v1, :cond_46

    add-int/lit8 v1, v13, 0x8

    move-object v5, v14

    check-cast v5, Lg/ayh;

    invoke-static {v13, v3}, Lg/egh;->ad(I[B)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lg/ayh;->zzg(J)V

    :goto_34
    if-ge v1, v4, :cond_4c

    invoke-static {v3, v1, v7}, Lg/egh;->v([BILg/fse;)I

    move-result v6

    iget v8, v7, Lg/fse;->c:I

    if-ne v2, v8, :cond_4c

    invoke-static {v6, v3}, Lg/egh;->ad(I[B)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lg/ayh;->zzg(J)V

    add-int/lit8 v1, v6, 0x8

    goto :goto_34

    :pswitch_16
    move-object/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v7, p6

    move-object v14, v11

    move-object v11, v15

    move/from16 v13, v16

    move/from16 v2, v20

    const/4 v5, 0x2

    if-ne v8, v5, :cond_50

    invoke-static {v3, v13, v14, v7}, Lg/egh;->au([BILcom/google/android/gms/internal/ads/zzgzj;Lg/fse;)I

    move-result v1

    goto :goto_32

    :cond_50
    if-nez v8, :cond_46

    move v1, v2

    move-object v2, v3

    move-object v6, v7

    move v3, v13

    move-object v5, v14

    invoke-static/range {v1 .. v6}, Lg/egh;->ag(I[BIILcom/google/android/gms/internal/ads/zzgzj;Lg/fse;)I

    move-result v5

    move v10, v1

    move-object v7, v2

    move v2, v3

    move v14, v4

    move-object v15, v6

    move v4, v5

    goto/16 :goto_39

    :pswitch_17
    move-object/from16 v7, p2

    move/from16 v14, p4

    move-object v3, v11

    move-object v11, v15

    move/from16 v2, v16

    move/from16 v10, v20

    const/4 v5, 0x2

    move-object/from16 v15, p6

    if-ne v8, v5, :cond_53

    check-cast v3, Lg/ayh;

    invoke-static {v7, v2, v15}, Lg/egh;->v([BILg/fse;)I

    move-result v4

    iget v5, v15, Lg/fse;->c:I

    add-int/2addr v5, v4

    :goto_35
    if-ge v4, v5, :cond_51

    invoke-static {v7, v4, v15}, Lg/egh;->bi([BILg/fse;)I

    move-result v4

    iget-wide v8, v15, Lg/fse;->d:J

    invoke-virtual {v3, v8, v9}, Lg/ayh;->zzg(J)V

    goto :goto_35

    :cond_51
    if-ne v4, v5, :cond_52

    goto/16 :goto_39

    :cond_52
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_53
    if-nez v8, :cond_5f

    move-object v1, v3

    check-cast v1, Lg/ayh;

    invoke-static {v7, v2, v15}, Lg/egh;->bi([BILg/fse;)I

    move-result v3

    iget-wide v4, v15, Lg/fse;->d:J

    invoke-virtual {v1, v4, v5}, Lg/ayh;->zzg(J)V

    :goto_36
    if-ge v3, v14, :cond_54

    invoke-static {v7, v3, v15}, Lg/egh;->v([BILg/fse;)I

    move-result v4

    iget v5, v15, Lg/fse;->c:I

    if-ne v10, v5, :cond_54

    invoke-static {v7, v4, v15}, Lg/egh;->bi([BILg/fse;)I

    move-result v3

    iget-wide v4, v15, Lg/fse;->d:J

    invoke-virtual {v1, v4, v5}, Lg/ayh;->zzg(J)V

    goto :goto_36

    :cond_54
    :goto_37
    move v4, v3

    goto/16 :goto_39

    :pswitch_18
    move-object/from16 v7, p2

    move/from16 v14, p4

    move-object v3, v11

    move-object v11, v15

    move/from16 v2, v16

    move/from16 v10, v20

    const/4 v5, 0x2

    move-object/from16 v15, p6

    if-ne v8, v5, :cond_58

    if-nez v3, :cond_57

    invoke-static {v7, v2, v15}, Lg/egh;->v([BILg/fse;)I

    move-result v3

    iget v4, v15, Lg/fse;->c:I

    add-int/2addr v4, v3

    if-lt v3, v4, :cond_56

    if-ne v3, v4, :cond_55

    goto :goto_37

    :cond_55
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_56
    invoke-static {v7, v3}, Lg/egh;->ar([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw p3

    :cond_57
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_58
    const/4 v1, 0x5

    if-eq v8, v1, :cond_59

    goto :goto_38

    :cond_59
    if-nez v3, :cond_5a

    invoke-static {v7, v2}, Lg/egh;->ar([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw p3

    :cond_5a
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :pswitch_19
    move-object/from16 v7, p2

    move/from16 v14, p4

    move-object v3, v11

    move-object v11, v15

    move/from16 v2, v16

    move/from16 v10, v20

    const/4 v5, 0x2

    move-object/from16 v15, p6

    if-ne v8, v5, :cond_5e

    if-nez v3, :cond_5d

    invoke-static {v7, v2, v15}, Lg/egh;->v([BILg/fse;)I

    move-result v3

    iget v4, v15, Lg/fse;->c:I

    add-int/2addr v4, v3

    if-lt v3, v4, :cond_5c

    if-ne v3, v4, :cond_5b

    goto :goto_37

    :cond_5b
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5c
    invoke-static {v3, v7}, Lg/egh;->ad(I[B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw p3

    :cond_5d
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_5e
    const/4 v1, 0x1

    if-eq v8, v1, :cond_61

    :cond_5f
    :goto_38
    move v4, v2

    :goto_39
    if-eq v4, v2, :cond_60

    move-object v3, v7

    move/from16 v17, v10

    move-object v2, v11

    move v8, v12

    move v5, v14

    move-object v6, v15

    move/from16 v7, v21

    :goto_3a
    move/from16 v12, v26

    move/from16 v11, v27

    move/from16 v9, v29

    move-object/from16 v1, v30

    move/from16 v16, v31

    goto/16 :goto_0

    :cond_60
    move/from16 v0, p5

    move v3, v4

    move-object v14, v7

    move v8, v12

    :goto_3b
    move/from16 v13, v21

    :goto_3c
    move/from16 v9, v29

    move/from16 v16, v31

    goto/16 :goto_48

    :cond_61
    if-nez v3, :cond_62

    invoke-static {v2, v7}, Lg/egh;->ad(I[B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw p3

    :cond_62
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_63
    move-object/from16 v7, p2

    move/from16 v31, v11

    move-object/from16 v30, v14

    move-object v11, v15

    move/from16 v10, v20

    move/from16 v14, p4

    move-object/from16 v15, p6

    const/16 v5, 0x32

    if-ne v4, v5, :cond_66

    const/4 v5, 0x2

    if-ne v8, v5, :cond_65

    sget-object v3, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/aj;->an(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v11, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/ads/zzhac;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhac;->zze()Z

    move-result v6

    if-nez v6, :cond_64

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhac;->zza()Lcom/google/android/gms/internal/ads/zzhac;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhac;->zzb()Lcom/google/android/gms/internal/ads/zzhac;

    move-result-object v6

    invoke-static {v6, v5}, Lg/fbc;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhac;

    invoke-virtual {v3, v11, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_64
    check-cast v4, Lcom/google/android/gms/internal/ads/zzhab;

    throw p3

    :cond_65
    :goto_3d
    move/from16 v0, p5

    move-object v14, v7

    move v8, v12

    move/from16 v3, v16

    goto :goto_3b

    :cond_66
    add-int/lit8 v5, v12, 0x2

    move/from16 v20, v3

    sget-object v3, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    aget v5, v13, v5

    const v18, 0xfffff

    and-int v5, v5, v18

    move v13, v4

    int-to-long v4, v5

    packed-switch v13, :pswitch_data_2

    move/from16 v13, v16

    move/from16 v16, v12

    move v12, v13

    move-object v14, v7

    move/from16 v13, v21

    goto/16 :goto_46

    :pswitch_1a
    const/4 v4, 0x3

    if-ne v8, v4, :cond_67

    and-int/lit8 v1, v10, -0x8

    or-int/lit8 v6, v1, 0x4

    move/from16 v13, v21

    invoke-virtual {v0, v13, v12, v11}, Lcom/google/android/gms/internal/ads/aj;->ag(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v2

    move-object v3, v7

    move v5, v14

    move-object v7, v15

    move/from16 v4, v16

    invoke-static/range {v1 .. v7}, Lg/egh;->bc(Ljava/lang/Object;Lg/ah;[BIIILg/fse;)I

    move-result v2

    move-object v9, v3

    move v14, v4

    move-object v6, v7

    invoke-virtual {v0, v11, v13, v1, v12}, Lcom/google/android/gms/internal/ads/aj;->av(Ljava/lang/Object;ILjava/lang/Object;I)V

    move v4, v2

    move-object v15, v6

    :goto_3e
    move/from16 v16, v12

    move v12, v14

    :goto_3f
    move-object v14, v9

    goto/16 :goto_47

    :cond_67
    move/from16 v13, v21

    move/from16 v14, v16

    move/from16 v16, v12

    move v12, v14

    move-object v14, v7

    goto/16 :goto_46

    :pswitch_1b
    move-object v9, v7

    move-object v6, v15

    move/from16 v14, v16

    move/from16 v13, v21

    if-nez v8, :cond_68

    invoke-static {v9, v14, v6}, Lg/egh;->bi([BILg/fse;)I

    move-result v7

    move v15, v7

    iget-wide v7, v6, Lg/fse;->d:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgxv;->zzF(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v11, v1, v2, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v3, v11, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v16, v12

    move v12, v14

    move v4, v15

    move-object v15, v6

    goto :goto_3f

    :cond_68
    move-object v15, v6

    move/from16 v16, v12

    move v12, v14

    move-object v14, v9

    goto/16 :goto_46

    :pswitch_1c
    move-object v9, v7

    move-object v6, v15

    move/from16 v14, v16

    move/from16 v13, v21

    if-nez v8, :cond_68

    invoke-static {v9, v14, v6}, Lg/egh;->v([BILg/fse;)I

    move-result v7

    iget v8, v6, Lg/fse;->c:I

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgxv;->zzD(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v11, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v3, v11, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_40
    move-object v15, v6

    move v4, v7

    goto :goto_3e

    :pswitch_1d
    move-object v9, v7

    move-object v6, v15

    move/from16 v14, v16

    move/from16 v13, v21

    if-nez v8, :cond_68

    invoke-static {v9, v14, v6}, Lg/egh;->v([BILg/fse;)I

    move-result v7

    iget v8, v6, Lg/fse;->c:I

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/aj;->ah(I)Lcom/google/android/gms/internal/ads/zzgzd;

    move-result-object v15

    if-eqz v15, :cond_6a

    invoke-interface {v15, v8}, Lcom/google/android/gms/internal/ads/zzgzd;->zza(I)Z

    move-result v15

    if-eqz v15, :cond_69

    goto :goto_41

    :cond_69
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/aj;->ac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v1

    int-to-long v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/internal/ads/zzhbo;->h(ILjava/lang/Object;)V

    goto :goto_40

    :cond_6a
    :goto_41
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v11, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v3, v11, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_40

    :pswitch_1e
    move-object v9, v7

    move-object v6, v15

    move/from16 v14, v16

    move/from16 v13, v21

    const/4 v7, 0x2

    if-ne v8, v7, :cond_68

    invoke-static {v9, v14, v6}, Lg/egh;->t([BILg/fse;)I

    move-result v7

    iget-object v8, v6, Lg/fse;->e:Ljava/lang/Object;

    invoke-virtual {v3, v11, v1, v2, v8}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v3, v11, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_40

    :pswitch_1f
    move-object v9, v7

    move-object v6, v15

    move/from16 v14, v16

    move/from16 v13, v21

    const/4 v7, 0x2

    if-ne v8, v7, :cond_6b

    invoke-virtual {v0, v13, v12, v11}, Lcom/google/android/gms/internal/ads/aj;->ag(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v2

    move/from16 v5, p4

    move-object v3, v9

    move v4, v14

    invoke-static/range {v1 .. v6}, Lg/egh;->ap(Ljava/lang/Object;Lg/ah;[BIILg/fse;)I

    move-result v2

    move-object v14, v3

    move-object v15, v6

    invoke-virtual {v0, v11, v13, v1, v12}, Lcom/google/android/gms/internal/ads/aj;->av(Ljava/lang/Object;ILjava/lang/Object;I)V

    move/from16 v16, v12

    move v12, v4

    move v4, v2

    goto/16 :goto_47

    :cond_6b
    move-object v15, v6

    move v4, v14

    move-object v14, v9

    move/from16 v16, v12

    move v12, v4

    goto/16 :goto_46

    :pswitch_20
    move/from16 v13, v16

    move/from16 v16, v12

    move v12, v13

    move-object v14, v7

    move/from16 v13, v21

    const/4 v7, 0x2

    if-ne v8, v7, :cond_70

    invoke-static {v14, v12, v15}, Lg/egh;->v([BILg/fse;)I

    move-result v7

    iget v8, v15, Lg/fse;->c:I

    if-nez v8, :cond_6c

    invoke-virtual {v3, v11, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_43

    :cond_6c
    add-int v6, v7, v8

    and-int v17, v20, v25

    if-eqz v17, :cond_6e

    sget-object v17, Lg/bso;->a:Lg/bli;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0, v14, v7, v6}, Lg/bli;->r(I[BII)I

    move-result v17

    if-nez v17, :cond_6d

    goto :goto_42

    :cond_6d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    const/4 v0, 0x0

    :goto_42
    new-instance v9, Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v14, v7, v8, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v3, v11, v1, v2, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v7, v6

    :goto_43
    invoke-virtual {v3, v11, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v4, v7

    goto/16 :goto_47

    :pswitch_21
    move/from16 v13, v16

    move/from16 v16, v12

    move v12, v13

    move-object v14, v7

    move/from16 v13, v21

    if-nez v8, :cond_70

    invoke-static {v14, v12, v15}, Lg/egh;->bi([BILg/fse;)I

    move-result v0

    iget-wide v6, v15, Lg/fse;->d:J

    cmp-long v8, v6, v23

    if-eqz v8, :cond_6f

    const/4 v7, 0x1

    goto :goto_44

    :cond_6f
    const/4 v7, 0x0

    :goto_44
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v11, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v3, v11, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_45
    move v4, v0

    goto/16 :goto_47

    :pswitch_22
    move/from16 v0, v16

    move/from16 v16, v12

    move v12, v0

    move-object v14, v7

    move/from16 v13, v21

    const/4 v0, 0x5

    if-ne v8, v0, :cond_70

    add-int/lit8 v0, v12, 0x4

    invoke-static {v14, v12}, Lg/egh;->ar([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v11, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v3, v11, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :pswitch_23
    move/from16 v0, v16

    move/from16 v16, v12

    move v12, v0

    move-object v14, v7

    move/from16 v13, v21

    const/4 v0, 0x1

    if-ne v8, v0, :cond_70

    add-int/lit8 v0, v12, 0x8

    invoke-static {v12, v14}, Lg/egh;->ad(I[B)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v11, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v3, v11, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :pswitch_24
    move/from16 v13, v16

    move/from16 v16, v12

    move v12, v13

    move-object v14, v7

    move/from16 v13, v21

    if-nez v8, :cond_70

    invoke-static {v14, v12, v15}, Lg/egh;->v([BILg/fse;)I

    move-result v0

    iget v6, v15, Lg/fse;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v11, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v3, v11, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :pswitch_25
    move/from16 v13, v16

    move/from16 v16, v12

    move v12, v13

    move-object v14, v7

    move/from16 v13, v21

    if-nez v8, :cond_70

    invoke-static {v14, v12, v15}, Lg/egh;->bi([BILg/fse;)I

    move-result v0

    iget-wide v6, v15, Lg/fse;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v11, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v3, v11, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_45

    :pswitch_26
    move/from16 v0, v16

    move/from16 v16, v12

    move v12, v0

    move-object v14, v7

    move/from16 v13, v21

    const/4 v0, 0x5

    if-ne v8, v0, :cond_70

    add-int/lit8 v0, v12, 0x4

    invoke-static {v14, v12}, Lg/egh;->ar([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v11, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v3, v11, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_45

    :pswitch_27
    move/from16 v0, v16

    move/from16 v16, v12

    move v12, v0

    move-object v14, v7

    move/from16 v13, v21

    const/4 v0, 0x1

    if-ne v8, v0, :cond_70

    add-int/lit8 v0, v12, 0x8

    invoke-static {v12, v14}, Lg/egh;->ad(I[B)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v3, v11, v1, v2, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v3, v11, v4, v5, v13}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_45

    :cond_70
    :goto_46
    move v4, v12

    :goto_47
    if-eq v4, v12, :cond_71

    move-object/from16 v0, p0

    move/from16 v5, p4

    move/from16 v17, v10

    move-object v2, v11

    move v7, v13

    move-object v3, v14

    move-object v6, v15

    move/from16 v8, v16

    goto/16 :goto_3a

    :cond_71
    move/from16 v0, p5

    move v3, v4

    move/from16 v8, v16

    goto/16 :goto_3c

    :goto_48
    if-ne v10, v0, :cond_72

    if-eqz v0, :cond_72

    move-object/from16 v7, p0

    move/from16 v5, p4

    move v4, v3

    move/from16 v1, v16

    :goto_49
    const v12, 0xfffff

    goto/16 :goto_4c

    :cond_72
    move-object/from16 v7, p0

    iget-boolean v1, v7, Lcom/google/android/gms/internal/ads/aj;->r:Z

    if-eqz v1, :cond_74

    iget-object v1, v15, Lg/fse;->a:Lcom/google/android/gms/internal/ads/zzgyh;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgyh;->a:Lcom/google/android/gms/internal/ads/zzgyh;

    sget-object v2, Lg/gxd;->a:Lg/gxd;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgyh;->b:Lcom/google/android/gms/internal/ads/zzgyh;

    if-eq v1, v2, :cond_74

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/aj;->p:Lcom/google/android/gms/internal/ads/zzhai;

    invoke-virtual {v1, v2, v13}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc(Lcom/google/android/gms/internal/ads/zzhai;I)Lcom/google/android/gms/internal/ads/zzgyv;

    move-result-object v1

    if-nez v1, :cond_73

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/aj;->ac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v5

    move/from16 v4, p4

    move v1, v10

    move-object v2, v14

    move-object v6, v15

    invoke-static/range {v1 .. v6}, Lg/egh;->z(I[BIILcom/google/android/gms/internal/ads/zzhbo;Lg/fse;)I

    move-result v3

    move/from16 v5, p4

    :goto_4a
    move v4, v3

    goto :goto_4b

    :cond_73
    move-object v0, v11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyt;

    throw p3

    :cond_74
    move v1, v10

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/aj;->ac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v5

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lg/egh;->z(I[BIILcom/google/android/gms/internal/ads/zzhbo;Lg/fse;)I

    move-result v3

    move v5, v4

    goto :goto_4a

    :goto_4b
    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move/from16 v17, v1

    move-object v0, v7

    move-object v2, v11

    move v7, v13

    move/from16 v12, v26

    move/from16 v11, v27

    move-object/from16 v1, v30

    goto/16 :goto_0

    :cond_75
    move-object v7, v0

    move-object/from16 v30, v1

    move-object v11, v2

    move/from16 v29, v9

    move/from16 v31, v16

    const/16 p3, 0x0

    move/from16 v0, p5

    move/from16 v10, v17

    move/from16 v1, v31

    goto :goto_49

    :goto_4c
    if-eq v9, v12, :cond_76

    int-to-long v2, v9

    move-object/from16 v14, v30

    invoke-virtual {v14, v11, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_76
    iget v1, v7, Lcom/google/android/gms/internal/ads/aj;->s:I

    :goto_4d
    iget v2, v7, Lcom/google/android/gms/internal/ads/aj;->u:I

    if-ge v1, v2, :cond_77

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/aj;->c:[I

    aget v2, v2, v1

    move-object/from16 v3, p3

    invoke-virtual {v7, v11, v2, v3}, Lcom/google/android/gms/internal/ads/aj;->aq(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_77
    const-string v1, "Failed to parse the message."

    if-nez v0, :cond_79

    if-ne v4, v5, :cond_78

    goto :goto_4e

    :cond_78
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    if-gt v4, v5, :cond_7a

    if-ne v10, v0, :cond_7a

    :goto_4e
    return v4

    :cond_7a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

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

.method public final ag(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lg/ah;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result p2

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aj;->ae(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lg/ah;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lg/ah;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final ah(I)Lcom/google/android/gms/internal/ads/zzgzd;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->t:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzd;

    return-object p1
.end method

.method public final ai(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    aget v1, v0, p2

    invoke-virtual {p0, v1, p2, p3}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v3, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    int-to-long v4, v2

    invoke-virtual {v3, p3, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object p3

    invoke-virtual {p0, v1, p2, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aj;->ae(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3, p1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lg/ah;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, v2}, Lg/ah;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1, p2, p1}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/aj;->ae(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p3}, Lg/ah;->zze()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lg/ah;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v0

    :cond_3
    invoke-interface {p3, p2, v2}, Lg/ah;->k(Ljava/lang/Object;Ljava/lang/Object;)V

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

.method public final aj(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    invoke-static {v0, v1, p3}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ak(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object p3

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aj;->ae(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lg/ah;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4, v0}, Lg/ah;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/aj;->ae(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p3}, Lg/ah;->zze()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4, p2}, Lg/ah;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v4

    :cond_3
    invoke-interface {p3, p2, v0}, Lg/ah;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

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

.method public final al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final am(II)I
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

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

.method public final an(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->t:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final ao(ILjava/lang/Object;)Z
    .locals 8

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result p1

    and-int v0, p1, v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aj;->ad(I)I

    move-result p1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {v0, v1, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v0, v1, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :pswitch_2
    invoke-static {v0, v1, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v0, v1, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v0, v1, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v0, v1, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_6
    invoke-static {v0, v1, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-static {v0, v1, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgxp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :pswitch_8
    invoke-static {v0, v1, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_9
    invoke-static {v0, v1, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzgxp;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgxp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    sget-object p1, Lg/gbc;->g:Lg/aul;

    invoke-virtual {p1, v0, v1, p2}, Lg/aul;->m(JLjava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {v0, v1, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_c
    invoke-static {v0, v1, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto :goto_0

    :pswitch_d
    invoke-static {v0, v1, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_e
    invoke-static {v0, v1, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto :goto_0

    :pswitch_f
    invoke-static {v0, v1, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p1, Lg/gbc;->g:Lg/aul;

    invoke-virtual {p1, v0, v1, p2}, Lg/aul;->k(JLjava/lang/Object;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p1, Lg/gbc;->g:Lg/aul;

    invoke-virtual {p1, v0, v1, p2}, Lg/aul;->p(JLjava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p1, v0, 0x14

    shl-int p1, v6, p1

    invoke-static {v2, v3, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

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

.method public final ap(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

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

.method public final aq(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    aget p3, p3, p2

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {v0, v1, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/aj;->ah(I)Lcom/google/android/gms/internal/ads/zzgzd;

    move-result-object p3

    if-nez p3, :cond_1

    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhac;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/aj;->an(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhab;

    const/4 p1, 0x0

    throw p1
.end method

.method public final ar(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    return-void
.end method

.method public final as(ILjava/lang/Object;Lg/hj;)V
    .locals 4

    iget-object v0, p3, Lg/hj;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxv;

    const/high16 v1, 0x20000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, 0xfffff

    and-int/2addr p1, v2

    int-to-long v2, p1

    const/4 p1, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p3, p1}, Lg/hj;->v(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzx()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p2, p1}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/aj;->w:Z

    if-eqz v1, :cond_2

    invoke-virtual {p3, p1}, Lg/hj;->v(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzw()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p2, p1}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {p3}, Lg/hj;->t()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object p1

    invoke-static {v2, v3, p2, p1}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final at(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lg/ah;->zze()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p1, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aj;->ae(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lg/ah;->zze()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lg/ah;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final au(ILjava/lang/Object;)V
    .locals 5

    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

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

    invoke-static {v0, v1, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    shl-int p1, v3, p1

    or-int/2addr p1, v2

    invoke-static {p2, v0, v1, p1}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final av(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    return-void
.end method

.method public final aw(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    aget p1, v0, p1

    return p1
.end method

.method public final ax(I)Lg/ah;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->t:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Lg/ah;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    sget-object v2, Lg/gxd;->a:Lg/gxd;

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v1
.end method

.method public final ay(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    invoke-static {p3, v0, v1, p1}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final d(Ljava/lang/Object;[BIILg/fse;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/aj;->af(Ljava/lang/Object;[BIIILg/fse;)I

    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzgyx;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/aj;->ad(I)I

    move-result v3

    aget v2, v2, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    move v1, v2

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/ads/aj;->x(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v2

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/ads/aj;->x(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v2

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v2

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v2

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgzk;->zza(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/ads/aj;->x(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/ads/aj;->x(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/ads/aj;->x(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_3
    add-int/2addr v1, v6

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    sget-object v2, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v2, v4, v5, p1}, Lg/aul;->m(JLjava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgzk;->zza(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    invoke-static {v4, v5, p1}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    sget-object v2, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v2, v4, v5, p1}, Lg/aul;->k(JLjava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    sget-object v2, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v2, v4, v5, p1}, Lg/aul;->p(JLjava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbo;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/aj;->r:Z

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x35

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    iget-object p1, p1, Lg/cxb;->b:Lg/eol;

    invoke-virtual {p1}, Lg/eol;->hashCode()I

    move-result p1

    add-int/2addr p1, v0

    return p1

    :cond_3
    return v0

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

.method public final f(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/aj;->ad(I)I

    move-result v3

    int-to-long v5, v5

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v2, v3, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    if-ne v4, v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/e;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {v5, v6, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/e;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {v5, v6, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/e;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/e;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v5, v6, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v5, v6, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v5, v6, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v5, v6, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v5, v6, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v5, v6, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/e;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/e;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v6, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/e;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v2, v5, v6, p1}, Lg/aul;->m(JLjava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v5, v6, p2}, Lg/aul;->m(JLjava/lang/Object;)Z

    move-result v2

    if-ne v3, v2, :cond_2

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v5, v6, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v5, v6, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v5, v6, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v5, v6, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v6, p1}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v5, v6, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v2, v5, v6, p1}, Lg/aul;->k(JLjava/lang/Object;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-virtual {v2, v5, v6, p2}, Lg/aul;->k(JLjava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v3, v2, :cond_2

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/aj;->al(Lcom/google/android/gms/internal/ads/zzgyx;Lcom/google/android/gms/internal/ads/zzgyx;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v2, v5, v6, p1}, Lg/aul;->p(JLjava/lang/Object;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {v2, v5, v6, p2}, Lg/aul;->p(JLjava/lang/Object;)D

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
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzhbo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_3
    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aj;->r:Z

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    invoke-virtual {p1, p2}, Lg/cxb;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
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

.method public final g(Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aj;->ae(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgyx;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyx;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgyx;->cj(I)V

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzgwy;->zzq:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->cn()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    array-length v2, v0

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aj;->ad(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhac;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhac;->zzc()V

    invoke-virtual {v0, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {v3, v4, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgzj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzj;->zzb()V

    goto :goto_1

    :cond_2
    aget v0, v0, v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lg/ah;->g(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lg/ah;->g(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->m:Lcom/google/android/gms/internal/ads/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhbo;->zzh()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aj;->r:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->o:Lcom/google/android/gms/internal/ads/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/i;->c(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    nop

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

.method public final h(Ljava/lang/Object;)Z
    .locals 14

    const/4 v6, 0x0

    const v7, 0xfffff

    const v2, 0xfffff

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/aj;->s:I

    const/4 v5, 0x1

    if-ge v8, v4, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aj;->c:[I

    aget v4, v4, v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    aget v10, v9, v4

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v11

    add-int/lit8 v12, v4, 0x2

    aget v9, v9, v12

    and-int v12, v9, v7

    ushr-int/lit8 v9, v9, 0x14

    shl-int/2addr v5, v9

    if-eq v12, v2, :cond_1

    if-eq v12, v7, :cond_0

    int-to-long v2, v12

    sget-object v9, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

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

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_2
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/aj;->ad(I)I

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

    goto/16 :goto_3

    :cond_3
    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {v9, v10, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhac;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/aj;->an(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhab;

    const/4 v1, 0x0

    throw v1

    :cond_5
    invoke-virtual {p0, v10, v2, p1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v2

    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {v9, v10, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lg/ah;->h(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    :cond_6
    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {v9, v10, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v2

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_9

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Lg/ah;->h(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v2

    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {v9, v10, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lg/ah;->h(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v2, v3

    move v3, v4

    goto/16 :goto_0

    :cond_a
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/aj;->r:Z

    if-eqz v2, :cond_c

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    invoke-virtual {v1}, Lg/cxb;->n()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    :goto_4
    return v6

    :cond_c
    return v5
.end method

.method public final i(Ljava/lang/Object;Lg/gli;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/aj;->r:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    iget-object v3, v2, Lg/cxb;->b:Lg/eol;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lg/cxb;->k()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v8, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_0
    sget-object v9, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    const v4, 0xfffff

    const/4 v5, 0x0

    :goto_1
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    array-length v13, v12

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/aj;->o:Lcom/google/android/gms/internal/ads/i;

    if-ge v2, v13, :cond_b

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/aj;->ad(I)I

    move-result v15

    const/16 v16, 0x0

    aget v7, v12, v2

    const/16 v11, 0x11

    const v17, 0xfffff

    if-gt v15, v11, :cond_3

    add-int/lit8 v11, v2, 0x2

    aget v11, v12, v11

    const/16 v18, 0x1

    and-int v10, v11, v17

    move-object/from16 v19, v3

    if-eq v10, v4, :cond_2

    const v3, 0xfffff

    if-ne v10, v3, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    int-to-long v3, v10

    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v5, v3

    :goto_2
    move v4, v10

    :cond_2
    ushr-int/lit8 v3, v11, 0x14

    shl-int v3, v18, v3

    move v10, v5

    move v5, v3

    move v3, v4

    move v4, v10

    move-object/from16 v10, v19

    goto :goto_3

    :cond_3
    move-object/from16 v19, v3

    const/16 v18, 0x1

    move v3, v4

    move v4, v5

    move-object/from16 v10, v19

    const/4 v5, 0x0

    :goto_3
    if-eqz v10, :cond_5

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg/dmd;

    iget v11, v11, Lg/dmd;->c:I

    if-gt v11, v7, :cond_5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v10}, Lcom/google/android/gms/internal/ads/i;->d(Lg/gli;Ljava/util/Map$Entry;)V

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_4
    move-object/from16 v10, v16

    goto :goto_3

    :cond_5
    const v17, 0xfffff

    and-int v11, v13, v17

    int-to-long v13, v11

    const/16 v11, 0x3f

    packed-switch v15, :pswitch_data_0

    :cond_6
    :goto_4
    const/4 v15, 0x0

    goto/16 :goto_7

    :pswitch_0
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v11

    move-object v12, v6

    check-cast v12, Lg/eub;

    invoke-virtual {v12, v7, v5, v11}, Lg/eub;->b(ILjava/lang/Object;Lg/ah;)V

    goto :goto_4

    :pswitch_1
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/ads/aj;->x(JLjava/lang/Object;)J

    move-result-wide v12

    move-object v5, v6

    check-cast v5, Lg/eub;

    add-long v14, v12, v12

    shr-long v11, v12, v11

    xor-long/2addr v11, v14

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzgyc;->zzv(IJ)V

    goto :goto_4

    :pswitch_2
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v5

    move-object v11, v6

    check-cast v11, Lg/eub;

    add-int v12, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v12

    iget-object v11, v11, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzt(II)V

    goto :goto_4

    :pswitch_3
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/ads/aj;->x(JLjava/lang/Object;)J

    move-result-wide v11

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzgyc;->zzj(IJ)V

    goto :goto_4

    :pswitch_4
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v5

    move-object v11, v6

    check-cast v11, Lg/eub;

    iget-object v11, v11, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzh(II)V

    goto :goto_4

    :pswitch_5
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v5

    move-object v11, v6

    check-cast v11, Lg/eub;

    iget-object v11, v11, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzl(II)V

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v5

    move-object v11, v6

    check-cast v11, Lg/eub;

    iget-object v11, v11, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzt(II)V

    goto/16 :goto_4

    :pswitch_7
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgxp;

    move-object v11, v6

    check-cast v11, Lg/eub;

    iget-object v11, v11, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzN(ILcom/google/android/gms/internal/ads/zzgxp;)V

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v11

    move-object v12, v6

    check-cast v12, Lg/eub;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhai;

    iget-object v12, v12, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v12, v7, v5, v11}, Lcom/google/android/gms/internal/ads/zzgyc;->e(ILcom/google/android/gms/internal/ads/zzhai;Lg/ah;)V

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v11, v5, Ljava/lang/String;

    if-eqz v11, :cond_7

    check-cast v5, Ljava/lang/String;

    move-object v11, v6

    check-cast v11, Lg/eub;

    iget-object v11, v11, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzq(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    check-cast v5, Lcom/google/android/gms/internal/ads/zzgxp;

    move-object v11, v6

    check-cast v11, Lg/eub;

    iget-object v11, v11, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzN(ILcom/google/android/gms/internal/ads/zzgxp;)V

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v11, v6

    check-cast v11, Lg/eub;

    iget-object v11, v11, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzM(IZ)V

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v5

    move-object v11, v6

    check-cast v11, Lg/eub;

    iget-object v11, v11, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzh(II)V

    goto/16 :goto_4

    :pswitch_c
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/ads/aj;->x(JLjava/lang/Object;)J

    move-result-wide v11

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzgyc;->zzj(IJ)V

    goto/16 :goto_4

    :pswitch_d
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v5

    move-object v11, v6

    check-cast v11, Lg/eub;

    iget-object v11, v11, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzl(II)V

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/ads/aj;->x(JLjava/lang/Object;)J

    move-result-wide v11

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzgyc;->zzv(IJ)V

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/ads/aj;->x(JLjava/lang/Object;)J

    move-result-wide v11

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzgyc;->zzv(IJ)V

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v11, v6

    check-cast v11, Lg/eub;

    iget-object v11, v11, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    invoke-virtual {v11, v7, v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzh(II)V

    goto/16 :goto_4

    :pswitch_11
    invoke-virtual {v0, v7, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v13, v14, v1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v11

    invoke-virtual {v5, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzgyc;->zzj(IJ)V

    goto/16 :goto_4

    :pswitch_12
    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->an(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhab;

    throw v16

    :pswitch_13
    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x0

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v6

    check-cast v14, Lg/eub;

    invoke-virtual {v14, v5, v13, v11}, Lg/eub;->b(ILjava/lang/Object;Lg/ah;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :pswitch_14
    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v11, 0x1

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->k(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_15
    const/4 v11, 0x1

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->h(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_16
    const/4 v11, 0x1

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->aa(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_17
    const/4 v11, 0x1

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->v(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_18
    const/4 v11, 0x1

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->f(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_19
    const/4 v11, 0x1

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->ac(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_1a
    const/4 v11, 0x1

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->o(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_1b
    const/4 v11, 0x1

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->b(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_1c
    const/4 v11, 0x1

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->y(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_1d
    const/4 v11, 0x1

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->n(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_1e
    const/4 v11, 0x1

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->c(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_1f
    const/4 v11, 0x1

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->l(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_20
    const/4 v11, 0x1

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->i(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_21
    const/4 v11, 0x1

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->ab(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_22
    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v11, 0x0

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->k(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_23
    const/4 v11, 0x0

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->h(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_24
    const/4 v11, 0x0

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->aa(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_25
    const/4 v11, 0x0

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->v(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_26
    const/4 v11, 0x0

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->f(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_27
    const/4 v11, 0x0

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v11}, Lcom/google/android/gms/internal/ads/e;->ac(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_4

    :pswitch_28
    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/e;->p(ILjava/util/List;Lg/gli;)V

    goto/16 :goto_4

    :pswitch_29
    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x0

    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v6

    check-cast v14, Lg/eub;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v13, Lcom/google/android/gms/internal/ads/zzhai;

    iget-object v14, v14, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v14, v5, v13, v11}, Lcom/google/android/gms/internal/ads/zzgyc;->e(ILcom/google/android/gms/internal/ads/zzhai;Lg/ah;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :pswitch_2a
    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/e;->q(ILjava/util/List;Lg/gli;)V

    goto/16 :goto_4

    :pswitch_2b
    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v5, v7, v6, v15}, Lcom/google/android/gms/internal/ads/e;->o(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_7

    :pswitch_2c
    const/4 v15, 0x0

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v15}, Lcom/google/android/gms/internal/ads/e;->b(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_7

    :pswitch_2d
    const/4 v15, 0x0

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v15}, Lcom/google/android/gms/internal/ads/e;->y(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_7

    :pswitch_2e
    const/4 v15, 0x0

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v15}, Lcom/google/android/gms/internal/ads/e;->n(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_7

    :pswitch_2f
    const/4 v15, 0x0

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v15}, Lcom/google/android/gms/internal/ads/e;->c(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_7

    :pswitch_30
    const/4 v15, 0x0

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v15}, Lcom/google/android/gms/internal/ads/e;->l(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_7

    :pswitch_31
    const/4 v15, 0x0

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v15}, Lcom/google/android/gms/internal/ads/e;->i(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_7

    :pswitch_32
    const/4 v15, 0x0

    aget v5, v12, v2

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v5, v7, v6, v15}, Lcom/google/android/gms/internal/ads/e;->ab(ILjava/util/List;Lg/gli;Z)V

    goto/16 :goto_7

    :pswitch_33
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v11

    move-object v12, v6

    check-cast v12, Lg/eub;

    invoke-virtual {v12, v7, v5, v11}, Lg/eub;->b(ILjava/lang/Object;Lg/ah;)V

    goto/16 :goto_7

    :pswitch_34
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    move-object v0, v6

    check-cast v0, Lg/eub;

    add-long v18, v12, v12

    shr-long v11, v12, v11

    xor-long v11, v18, v11

    iget-object v0, v0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v0, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzgyc;->zzv(IJ)V

    goto/16 :goto_7

    :pswitch_35
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Lg/eub;

    add-int v11, v0, v0

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v11

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzt(II)V

    goto/16 :goto_7

    :pswitch_36
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    move-object v0, v6

    check-cast v0, Lg/eub;

    iget-object v0, v0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v0, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzgyc;->zzj(IJ)V

    goto/16 :goto_7

    :pswitch_37
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzh(II)V

    goto/16 :goto_7

    :pswitch_38
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzl(II)V

    goto/16 :goto_7

    :pswitch_39
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzt(II)V

    goto/16 :goto_7

    :pswitch_3a
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxp;

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzN(ILcom/google/android/gms/internal/ads/zzgxp;)V

    goto/16 :goto_7

    :pswitch_3b
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v11

    move-object v12, v6

    check-cast v12, Lg/eub;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhai;

    iget-object v12, v12, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v12, v7, v5, v11}, Lcom/google/android/gms/internal/ads/zzgyc;->e(ILcom/google/android/gms/internal/ads/zzhai;Lg/ah;)V

    goto/16 :goto_7

    :pswitch_3c
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_9

    check-cast v0, Ljava/lang/String;

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzq(ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgxp;

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzN(ILcom/google/android/gms/internal/ads/zzgxp;)V

    goto/16 :goto_7

    :pswitch_3d
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v0, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v0, v13, v14, v1}, Lg/aul;->m(JLjava/lang/Object;)Z

    move-result v0

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzM(IZ)V

    goto/16 :goto_7

    :pswitch_3e
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzh(II)V

    goto/16 :goto_7

    :pswitch_3f
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    move-object v0, v6

    check-cast v0, Lg/eub;

    iget-object v0, v0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v0, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzgyc;->zzj(IJ)V

    goto :goto_7

    :pswitch_40
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzl(II)V

    goto :goto_7

    :pswitch_41
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    move-object v0, v6

    check-cast v0, Lg/eub;

    iget-object v0, v0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v0, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzgyc;->zzv(IJ)V

    goto :goto_7

    :pswitch_42
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v9, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    move-object v0, v6

    check-cast v0, Lg/eub;

    iget-object v0, v0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-virtual {v0, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzgyc;->zzv(IJ)V

    goto :goto_7

    :pswitch_43
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v0, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v0, v13, v14, v1}, Lg/aul;->k(JLjava/lang/Object;)F

    move-result v0

    move-object v5, v6

    check-cast v5, Lg/eub;

    iget-object v5, v5, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {v5, v7, v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzh(II)V

    goto :goto_7

    :pswitch_44
    const/4 v15, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v0, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v0, v13, v14, v1}, Lg/aul;->p(JLjava/lang/Object;)D

    move-result-wide v11

    move-object v0, v6

    check-cast v0, Lg/eub;

    iget-object v0, v0, Lg/eub;->a:Lcom/google/android/gms/internal/ads/zzgyc;

    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v11

    invoke-virtual {v0, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzgyc;->zzj(IJ)V

    :cond_a
    :goto_7
    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    move v5, v4

    move v4, v3

    move-object v3, v10

    goto/16 :goto_1

    :cond_b
    move-object/from16 v19, v3

    const/16 v16, 0x0

    :goto_8
    if-eqz v3, :cond_d

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/i;->d(Lg/gli;Ljava/util/Map$Entry;)V

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_8

    :cond_c
    move-object/from16 v3, v16

    goto :goto_8

    :cond_d
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzhbo;->zzl(Lg/gli;)V

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

.method public final j(Lcom/google/android/gms/internal/ads/zzgyx;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v6, Lcom/google/android/gms/internal/ads/aj;->a:Lsun/misc/Unsafe;

    const v8, 0xfffff

    const/4 v2, 0x0

    const v3, 0xfffff

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    array-length v10, v5

    if-ge v2, v10, :cond_1d

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/aj;->ad(I)I

    move-result v11

    add-int/lit8 v12, v2, 0x2

    aget v13, v5, v2

    aget v5, v5, v12

    and-int v12, v5, v8

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v11, v14, :cond_2

    if-eq v12, v3, :cond_1

    if-ne v12, v8, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v12

    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v12

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v15, v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v10, v8

    sget-object v12, Lcom/google/android/gms/internal/ads/zzgyn;->zzJ:Lcom/google/android/gms/internal/ads/zzgyn;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzgyn;->zza()I

    move-result v12

    if-lt v11, v12, :cond_3

    sget-object v12, Lcom/google/android/gms/internal/ads/zzgyn;->zzW:Lcom/google/android/gms/internal/ads/zzgyn;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzgyn;->zza()I

    :cond_3
    int-to-long v7, v10

    const/16 v16, 0x3f

    const/4 v10, 0x4

    const/16 v12, 0x8

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_1a

    :pswitch_0
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhai;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v7

    shl-int/lit8 v8, v13, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    add-int/2addr v8, v8

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgwy;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzgwy;->bl(Lg/ah;)I

    move-result v5

    :goto_3
    add-int/2addr v5, v8

    :goto_4
    add-int/2addr v9, v5

    goto/16 :goto_1a

    :pswitch_1
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/ads/aj;->x(JLjava/lang/Object;)J

    move-result-wide v7

    add-long v10, v7, v7

    shr-long v7, v7, v16

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v5

    xor-long/2addr v7, v10

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result v7

    :goto_5
    add-int/2addr v7, v5

    add-int/2addr v9, v7

    goto/16 :goto_1a

    :pswitch_2
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v7

    add-int v8, v7, v7

    shr-int/lit8 v7, v7, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v5

    xor-int/2addr v7, v8

    invoke-static {v7, v5, v9}, Lg/dub;->f(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_3
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v12, v9}, Lg/dub;->f(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_4
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v10, v9}, Lg/dub;->f(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_5
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result v7

    goto :goto_5

    :pswitch_6
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v5

    invoke-static {v7, v5, v9}, Lg/dub;->f(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_7
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    :goto_6
    add-int/2addr v8, v7

    add-int/2addr v8, v5

    add-int/2addr v9, v8

    goto/16 :goto_1a

    :pswitch_8
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v7

    invoke-static {v13, v5, v7}, Lcom/google/android/gms/internal/ads/e;->e(ILjava/lang/Object;Lg/ah;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/google/android/gms/internal/ads/zzgxp;

    if-eqz v8, :cond_4

    check-cast v7, Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto :goto_6

    :cond_4
    check-cast v7, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzC(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :pswitch_a
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v15, v9}, Lg/dub;->f(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_b
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v10, v9}, Lg/dub;->f(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_c
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v12, v9}, Lg/dub;->f(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_d
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/ads/aj;->aa(JLjava/lang/Object;)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result v7

    goto/16 :goto_5

    :pswitch_e
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/ads/aj;->x(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result v7

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v7, v8, v1}, Lcom/google/android/gms/internal/ads/aj;->x(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result v7

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v10, v9}, Lg/dub;->f(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_11
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v12, v9}, Lg/dub;->f(III)I

    move-result v9

    goto/16 :goto_1a

    :pswitch_12
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->an(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhac;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzhab;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhac;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_1a

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 v1, 0x0

    throw v1

    :pswitch_13
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_6

    const/4 v11, 0x0

    goto :goto_8

    :cond_6
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_7
    if-ge v10, v8, :cond_7

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzhai;

    shl-int/lit8 v15, v13, 0x3

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v15

    add-int/2addr v15, v15

    check-cast v12, Lcom/google/android/gms/internal/ads/zzgwy;

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzgwy;->bl(Lg/ah;)I

    move-result v12

    add-int/2addr v12, v15

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_7
    :goto_8
    add-int/2addr v9, v11

    goto/16 :goto_1a

    :pswitch_14
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->x(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_15
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->s(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_16
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_17
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_18
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->w(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_19
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->ad(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_1a
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_1b
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_1c
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_1d
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->t(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_1e
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->r(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_1f
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->g(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_20
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_21
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_1c

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_6

    :pswitch_22
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_8

    :goto_9
    const/4 v8, 0x0

    goto :goto_b

    :cond_8
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->x(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    :goto_a
    mul-int v8, v8, v7

    add-int/2addr v8, v5

    :cond_9
    :goto_b
    add-int/2addr v9, v8

    goto/16 :goto_1a

    :pswitch_23
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_a

    goto :goto_9

    :cond_a
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->s(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto :goto_a

    :pswitch_24
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/ads/e;->j(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_25
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/ads/e;->d(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_26
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_b

    goto :goto_9

    :cond_b
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->w(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto :goto_a

    :pswitch_27
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_c

    goto :goto_9

    :cond_c
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->ad(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto :goto_a

    :pswitch_28
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_9

    :cond_d
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    mul-int v8, v8, v7

    const/4 v7, 0x0

    :goto_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_9

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v10

    invoke-static {v10, v10, v8}, Lg/dub;->f(III)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :pswitch_29
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_e

    const/4 v10, 0x0

    goto :goto_f

    :cond_e
    shl-int/lit8 v10, v13, 0x3

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v10

    mul-int v10, v10, v8

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v8, :cond_10

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Lcom/google/android/gms/internal/ads/zzgzt;

    if-eqz v13, :cond_f

    check-cast v12, Lcom/google/android/gms/internal/ads/zzgzt;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzgzt;->zza()I

    move-result v12

    invoke-static {v12, v12, v10}, Lg/dub;->f(III)I

    move-result v10

    goto :goto_e

    :cond_f
    check-cast v12, Lcom/google/android/gms/internal/ads/zzhai;

    check-cast v12, Lcom/google/android/gms/internal/ads/zzgwy;

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzgwy;->bl(Lg/ah;)I

    move-result v12

    invoke-static {v12, v12, v10}, Lg/dub;->f(III)I

    move-result v10

    :goto_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_10
    :goto_f
    add-int/2addr v9, v10

    goto/16 :goto_1a

    :pswitch_2a
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_11

    goto/16 :goto_9

    :cond_11
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    mul-int v8, v8, v7

    instance-of v10, v5, Lcom/google/android/gms/internal/ads/zzgzu;

    if-eqz v10, :cond_13

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgzu;

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v7, :cond_9

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzgzu;->zzc()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/ads/zzgxp;

    if-eqz v12, :cond_12

    check-cast v11, Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v11

    invoke-static {v11, v11, v8}, Lg/dub;->f(III)I

    move-result v8

    goto :goto_11

    :cond_12
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgyc;->zzC(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v8

    move v8, v11

    :goto_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_13
    const/4 v10, 0x0

    :goto_12
    if-ge v10, v7, :cond_9

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/ads/zzgxp;

    if-eqz v12, :cond_14

    check-cast v11, Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v11

    invoke-static {v11, v11, v8}, Lg/dub;->f(III)I

    move-result v8

    goto :goto_13

    :cond_14
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgyc;->zzC(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v8

    move v8, v11

    :goto_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :pswitch_2b
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_15

    :goto_14
    const/4 v7, 0x0

    goto :goto_15

    :cond_15
    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    add-int/2addr v7, v15

    mul-int v7, v7, v5

    :goto_15
    add-int/2addr v9, v7

    goto/16 :goto_1a

    :pswitch_2c
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/ads/e;->d(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2d
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/ads/e;->j(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2e
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_16

    goto/16 :goto_9

    :cond_16
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->t(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_a

    :pswitch_2f
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_17

    goto/16 :goto_9

    :cond_17
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->r(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    goto/16 :goto_a

    :pswitch_30
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_18

    goto :goto_14

    :cond_18
    shl-int/lit8 v7, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/e;->g(Ljava/util/List;)I

    move-result v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    mul-int v7, v7, v5

    add-int/2addr v7, v8

    goto :goto_15

    :pswitch_31
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/ads/e;->d(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_32
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/ads/e;->j(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhai;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v7

    shl-int/lit8 v8, v13, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v8

    add-int/2addr v8, v8

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgwy;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzgwy;->bl(Lg/ah;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    add-long v10, v7, v7

    shr-long v7, v7, v16

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0

    xor-long/2addr v7, v10

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result v5

    :goto_16
    add-int/2addr v5, v0

    add-int/2addr v9, v5

    :cond_19
    :goto_17
    move-object/from16 v0, p0

    goto/16 :goto_1a

    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v7, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0

    xor-int/2addr v5, v7

    invoke-static {v5, v0, v9}, Lg/dub;->f(III)I

    move-result v9

    goto :goto_17

    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0, v12, v9}, Lg/dub;->f(III)I

    move-result v9

    :cond_1a
    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1a

    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0, v10, v9}, Lg/dub;->f(III)I

    move-result v9

    goto :goto_18

    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v7, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result v5

    goto :goto_16

    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0

    invoke-static {v5, v0, v9}, Lg/dub;->f(III)I

    move-result v9

    goto :goto_17

    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    :goto_19
    add-int/2addr v7, v5

    add-int/2addr v7, v0

    add-int/2addr v9, v7

    goto/16 :goto_17

    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v7

    invoke-static {v13, v5, v7}, Lcom/google/android/gms/internal/ads/e;->e(ILjava/lang/Object;Lg/ah;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Lcom/google/android/gms/internal/ads/zzgxp;

    if-eqz v7, :cond_1b

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgxp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v7

    goto :goto_19

    :cond_1b
    check-cast v5, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgyc;->zzC(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_16

    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0, v15, v9}, Lg/dub;->f(III)I

    move-result v9

    goto/16 :goto_18

    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0, v10, v9}, Lg/dub;->f(III)I

    move-result v9

    goto/16 :goto_18

    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0, v12, v9}, Lg/dub;->f(III)I

    move-result v9

    goto/16 :goto_18

    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v7, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result v5

    goto/16 :goto_16

    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result v5

    goto/16 :goto_16

    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result v5

    goto/16 :goto_16

    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1a

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0, v10, v9}, Lg/dub;->f(III)I

    move-result v9

    goto/16 :goto_18

    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aj;->ap(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_1c

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v12, v9}, Lg/dub;->f(III)I

    move-result v9

    :cond_1c
    :goto_1a
    add-int/lit8 v2, v2, 0x3

    const v8, 0xfffff

    goto/16 :goto_0

    :cond_1d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbo;->zza()I

    move-result v2

    add-int/2addr v2, v9

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/aj;->r:Z

    if-eqz v3, :cond_20

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    iget-object v1, v1, Lg/cxb;->b:Lg/eol;

    iget v3, v1, Lg/eol;->f:I

    const/4 v7, 0x0

    const/16 v17, 0x0

    :goto_1b
    if-ge v7, v3, :cond_1e

    invoke-virtual {v1, v7}, Lg/eol;->m(I)Lg/asf;

    move-result-object v4

    iget-object v5, v4, Lg/asf;->b:Ljava/lang/Comparable;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgyl;

    iget-object v4, v4, Lg/asf;->c:Ljava/lang/Object;

    invoke-static {v5, v4}, Lg/cxb;->j(Lcom/google/android/gms/internal/ads/zzgyl;Ljava/lang/Object;)I

    move-result v4

    add-int v17, v4, v17

    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    :cond_1e
    invoke-virtual {v1}, Lg/eol;->j()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgyl;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lg/cxb;->j(Lcom/google/android/gms/internal/ads/zzgyl;Ljava/lang/Object;)I

    move-result v3

    add-int v17, v3, v17

    goto :goto_1c

    :cond_1f
    add-int v2, v2, v17

    :cond_20
    return v2

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

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aj;->ab(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aj;->q:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aj;->ad(I)I

    move-result v2

    aget v1, v1, v0

    int-to-long v6, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ai(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ai(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->aj(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    invoke-static {v6, v7, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lg/fbc;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhac;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {v6, v7, p1}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgzj;

    invoke-static {v6, v7, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgzj;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v3, :cond_2

    if-lez v4, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgzj;->zzc()Z

    move-result v5

    if-nez v5, :cond_1

    add-int/2addr v4, v3

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzgzj;->zzf(I)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v1

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-gtz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-static {v6, v7, p1, v2}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ak(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lg/gbc;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lg/gbc;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ak(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v1, v6, v7, p2}, Lg/aul;->m(JLjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lg/aul;->o(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lg/gbc;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->q(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lg/gbc;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v6, v7, p2}, Lg/gbc;->i(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Lg/gbc;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v1, v6, v7, p2}, Lg/aul;->k(JLjava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lg/aul;->j(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/aj;->ao(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v4, v6, v7, p2}, Lg/aul;->p(JLjava/lang/Object;)D

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lg/aul;->n(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_4
    move-object v5, p1

    invoke-static {v5, p2}, Lcom/google/android/gms/internal/ads/e;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/aj;->r:Z

    if-eqz p1, :cond_6

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgyt;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzgyt;->zza:Lg/cxb;

    iget-object p1, p1, Lg/cxb;->b:Lg/eol;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object p1, v5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgyt;

    const/4 p1, 0x0

    throw p1

    :cond_6
    :goto_4
    return-void

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

.method public final l(Ljava/lang/Object;Lg/hj;Lcom/google/android/gms/internal/ads/zzgyh;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    iget-object v3, v0, Lg/hj;->b:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Lcom/google/android/gms/internal/ads/zzgxv;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/aj;->c:[I

    iget v11, v1, Lcom/google/android/gms/internal/ads/aj;->u:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/aj;->s:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/aj;->ab(Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/aj;->m:Lcom/google/android/gms/internal/ads/i;

    const/4 v13, 0x0

    move-object v6, v13

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lg/hj;->s()I

    move-result v3

    iget v4, v1, Lcom/google/android/gms/internal/ads/aj;->v:I

    const/4 v14, 0x0

    if-lt v3, v4, :cond_1

    iget v4, v1, Lcom/google/android/gms/internal/ads/aj;->n:I

    if-gt v3, v4, :cond_1

    invoke-virtual {v1, v3, v14}, Lcom/google/android/gms/internal/ads/aj;->am(II)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v15, v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    const/4 v15, -0x1

    :goto_1
    if-gez v15, :cond_7

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_3

    :goto_2
    if-ge v12, v11, :cond_2

    aget v0, v10, v12

    invoke-virtual {v1, v2, v0, v6}, Lcom/google/android/gms/internal/ads/aj;->aq(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    move-object v15, v7

    goto/16 :goto_1c

    :cond_3
    :try_start_1
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/aj;->r:Z

    if-nez v4, :cond_4

    move-object v3, v13

    goto :goto_3

    :cond_4
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/aj;->p:Lcom/google/android/gms/internal/ads/zzhai;

    invoke-virtual {v8, v4, v3}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc(Lcom/google/android/gms/internal/ads/zzhai;I)Lcom/google/android/gms/internal/ads/zzgyv;

    move-result-object v3

    :goto_3
    if-nez v3, :cond_6

    if-nez v6, :cond_5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/i;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v3

    goto :goto_5

    :goto_4
    move-object/from16 v20, v6

    move-object v15, v7

    goto/16 :goto_1d

    :cond_5
    :goto_5
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v6, v0}, Lcom/google/android/gms/internal/ads/i;->a(ILjava/lang/Object;Lg/hj;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_0

    :goto_6
    if-ge v12, v11, :cond_2

    aget v0, v10, v12

    invoke-virtual {v1, v2, v0, v6}, Lcom/google/android/gms/internal/ads/aj;->aq(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v15, v7

    goto/16 :goto_1e

    :cond_6
    :try_start_3
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyt;

    throw v13

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/aj;->ad(I)I

    move-result v5
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v16, v13

    const/4 v13, 0x1

    const v19, 0xfffff

    packed-switch v5, :pswitch_data_0

    if-nez v6, :cond_8

    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/i;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v3
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v6, v3

    goto :goto_8

    :goto_7
    move-object/from16 v20, v6

    move-object v15, v7

    goto/16 :goto_18

    :cond_8
    :goto_8
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v6, v0}, Lcom/google/android/gms/internal/ads/i;->a(ILjava/lang/Object;Lg/hj;)Z

    move-result v3
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v3, :cond_9

    :goto_9
    if-ge v12, v11, :cond_2

    aget v0, v10, v12

    invoke-virtual {v1, v2, v0, v6}, Lcom/google/android/gms/internal/ads/aj;->aq(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_9
    :goto_a
    move-object/from16 v13, v16

    goto/16 :goto_0

    :catch_0
    nop

    move-object v15, v7

    goto/16 :goto_19

    :pswitch_0
    :try_start_7
    invoke-virtual {v1, v3, v15, v2}, Lcom/google/android/gms/internal/ads/aj;->ag(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzhai;

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v5

    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Lg/hj;->v(I)V

    invoke-virtual {v0, v4, v5, v8}, Lg/hj;->w(Ljava/lang/Object;Lg/ah;Lcom/google/android/gms/internal/ads/zzgyh;)V

    invoke-virtual {v1, v2, v3, v4, v15}, Lcom/google/android/gms/internal/ads/aj;->av(Ljava/lang/Object;ILjava/lang/Object;I)V

    :goto_b
    move-object/from16 v20, v6

    move-object v15, v7

    goto/16 :goto_17

    :catch_1
    nop

    goto :goto_7

    :pswitch_1
    and-int v4, v4, v19

    invoke-virtual {v0, v14}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzt()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v20, v15

    int-to-long v14, v4

    invoke-static {v14, v15, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    move/from16 v14, v20

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_b

    :pswitch_2
    move v14, v15

    and-int v4, v4, v19

    const/4 v5, 0x0

    :try_start_8
    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzk()I

    move-result v5
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v18, v6

    move-object v15, v7

    int-to-long v6, v4

    :try_start_a
    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    :goto_c
    move-object/from16 v20, v18

    goto/16 :goto_17

    :catchall_2
    move-exception v0

    :goto_d
    move-object/from16 v20, v18

    goto/16 :goto_1d

    :catch_2
    :goto_e
    nop

    move-object/from16 v20, v18

    goto/16 :goto_18

    :catchall_3
    move-exception v0

    move-object/from16 v18, v6

    move-object v15, v7

    goto :goto_d

    :catch_3
    move-object/from16 v18, v6

    move-object v15, v7

    goto :goto_e

    :catch_4
    move-object/from16 v18, v6

    move-object v15, v7

    goto :goto_e

    :pswitch_3
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v4, v4, v19

    invoke-virtual {v0, v13}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzs()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto :goto_c

    :pswitch_4
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v4, v4, v19

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzj()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto :goto_c

    :pswitch_5
    move-object/from16 v18, v6

    move v14, v15

    const/4 v5, 0x0

    move-object v15, v7

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zze()I

    move-result v5

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/aj;->ah(I)Lcom/google/android/gms/internal/ads/zzgzd;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/ads/zzgzd;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_11

    :cond_a
    sget-object v4, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    if-nez v18, :cond_b

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/i;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v4

    move-object v6, v4

    goto :goto_f

    :cond_b
    move-object/from16 v6, v18

    :goto_f
    int-to-long v4, v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/internal/ads/zzhbo;

    shl-int/lit8 v3, v3, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzhbo;->h(ILjava/lang/Object;)V

    :cond_c
    :goto_10
    move-object v7, v15

    goto/16 :goto_a

    :cond_d
    :goto_11
    and-int v4, v4, v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_6
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v4, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_7
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v4, v4, v19

    invoke-virtual {v0}, Lg/hj;->t()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_8
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ag(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzhai;

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lg/hj;->v(I)V

    invoke-virtual {v0, v4, v5, v8}, Lg/hj;->aa(Ljava/lang/Object;Lg/ah;Lcom/google/android/gms/internal/ads/zzgyh;)V

    invoke-virtual {v1, v2, v3, v4, v14}, Lcom/google/android/gms/internal/ads/aj;->av(Ljava/lang/Object;ILjava/lang/Object;I)V

    goto/16 :goto_c

    :pswitch_9
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    invoke-virtual {v1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/aj;->as(ILjava/lang/Object;Lg/hj;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_a
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v4, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzB()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_b
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v4, v4, v19

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzf()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_c
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v4, v4, v19

    invoke-virtual {v0, v13}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzn()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_d
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v4, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzg()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_e
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v4, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzu()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_f
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v4, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzo()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_10
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v4, v4, v19

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzb()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_11
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v4, v4, v19

    invoke-virtual {v0, v13}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zza()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v5}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->ay(IILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_12
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/aj;->an(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/aj;->aw(I)I

    move-result v4

    and-int v4, v4, v19

    int-to-long v4, v4

    invoke-static {v4, v5, v2}, Lg/gbc;->v(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_e

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/internal/ads/zzhac;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzhac;->zze()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhac;->zza()Lcom/google/android/gms/internal/ads/zzhac;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzhac;->zzb()Lcom/google/android/gms/internal/ads/zzhac;

    move-result-object v7

    invoke-static {v7, v6}, Lg/fbc;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhac;

    invoke-static {v4, v5, v2, v7}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v7

    goto :goto_12

    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhac;->zza()Lcom/google/android/gms/internal/ads/zzhac;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhac;->zzb()Lcom/google/android/gms/internal/ads/zzhac;

    move-result-object v6

    invoke-static {v4, v5, v2, v6}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    :goto_12
    check-cast v6, Lcom/google/android/gms/internal/ads/zzhac;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhab;

    throw v16

    :pswitch_13
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v4

    int-to-long v5, v3

    invoke-static {v5, v6, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v8}, Lg/hj;->q(Lcom/google/android/gms/internal/ads/zzgzj;Lg/ah;Lcom/google/android/gms/internal/ads/zzgyh;)V

    goto/16 :goto_c

    :pswitch_14
    move-object/from16 v18, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->p(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_c

    :pswitch_15
    move-object/from16 v18, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->j(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_c

    :pswitch_16
    move-object/from16 v18, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->z(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_c

    :pswitch_17
    move-object/from16 v18, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->y(Lcom/google/android/gms/internal/ads/zzgzj;)V
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_c

    :pswitch_18
    move-object/from16 v18, v6

    move v14, v15

    move-object v15, v7

    and-int v4, v4, v19

    int-to-long v4, v4

    :try_start_b
    invoke-static {v4, v5, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v4

    invoke-virtual {v0, v4}, Lg/hj;->ab(Lcom/google/android/gms/internal/ads/zzgzj;)V

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/aj;->ah(I)Lcom/google/android/gms/internal/ads/zzgzd;

    move-result-object v5
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object v7, v15

    move-object/from16 v6, v18

    :try_start_c
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/e;->z(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgzj;Lcom/google/android/gms/internal/ads/zzgzd;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/i;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    move-object v7, v15

    move-object/from16 v6, v18

    move-object/from16 v20, v6

    goto/16 :goto_1d

    :catch_5
    move-object v7, v15

    move-object/from16 v6, v18

    nop

    move-object/from16 v20, v6

    goto/16 :goto_18

    :pswitch_19
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->m(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_b

    :pswitch_1a
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->ad(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_b

    :pswitch_1b
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->o(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_b

    :pswitch_1c
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->ac(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_b

    :pswitch_1d
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->u(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_b

    :pswitch_1e
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->k(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_b

    :pswitch_1f
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->ae(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_b

    :pswitch_20
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->n(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_b

    :pswitch_21
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->h(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_b

    :pswitch_22
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->p(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_b

    :pswitch_23
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->j(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_b

    :pswitch_24
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->z(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_b

    :pswitch_25
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->y(Lcom/google/android/gms/internal/ads/zzgzj;)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_b

    :pswitch_26
    move v14, v15

    and-int v4, v4, v19

    int-to-long v4, v4

    :try_start_d
    invoke-static {v4, v5, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v4

    invoke-virtual {v0, v4}, Lg/hj;->ab(Lcom/google/android/gms/internal/ads/zzgzj;)V

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/aj;->ah(I)Lcom/google/android/gms/internal/ads/zzgzd;

    move-result-object v5

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/e;->z(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgzj;Lcom/google/android/gms/internal/ads/zzgzd;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/i;)Ljava/lang/Object;

    move-result-object v6
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-object v15, v7

    goto/16 :goto_10

    :catch_6
    move-object/from16 v20, v6

    move-object v15, v7

    :catch_7
    :goto_13
    nop

    goto/16 :goto_18

    :pswitch_27
    move-object/from16 v20, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    :try_start_e
    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->m(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_17

    :catchall_5
    move-exception v0

    goto/16 :goto_1d

    :pswitch_28
    move-object/from16 v20, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->l(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_17

    :pswitch_29
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v3

    and-int v4, v4, v19

    int-to-long v4, v4

    invoke-static {v4, v5, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v8}, Lg/hj;->i(Lcom/google/android/gms/internal/ads/zzgzj;Lg/ah;Lcom/google/android/gms/internal/ads/zzgyh;)V

    goto/16 :goto_17

    :pswitch_2a
    move-object/from16 v20, v6

    move-object v15, v7

    const/high16 v3, 0x20000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_14

    :cond_10
    const/4 v3, 0x0

    :goto_14
    if-eqz v3, :cond_11

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3, v13}, Lg/hj;->x(Lcom/google/android/gms/internal/ads/zzgzj;Z)V

    goto/16 :goto_17

    :cond_11
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lg/hj;->x(Lcom/google/android/gms/internal/ads/zzgzj;Z)V

    goto/16 :goto_17

    :pswitch_2b
    move-object/from16 v20, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->ad(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_17

    :pswitch_2c
    move-object/from16 v20, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->o(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_17

    :pswitch_2d
    move-object/from16 v20, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->ac(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_17

    :pswitch_2e
    move-object/from16 v20, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->u(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_17

    :pswitch_2f
    move-object/from16 v20, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->k(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_17

    :pswitch_30
    move-object/from16 v20, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->ae(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_17

    :pswitch_31
    move-object/from16 v20, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->n(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_17

    :pswitch_32
    move-object/from16 v20, v6

    move-object v15, v7

    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v3, v4, v2}, Lg/cuf;->f(JLjava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lg/hj;->h(Lcom/google/android/gms/internal/ads/zzgzj;)V

    goto/16 :goto_17

    :pswitch_33
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->at(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhai;

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v4

    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Lg/hj;->v(I)V

    invoke-virtual {v0, v3, v4, v8}, Lg/hj;->w(Ljava/lang/Object;Lg/ah;Lcom/google/android/gms/internal/ads/zzgyh;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/ads/aj;->ar(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_34
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzt()J

    move-result-wide v4

    int-to-long v6, v3

    invoke-static {v2, v6, v7, v4, v5}, Lg/gbc;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_35
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzk()I

    move-result v4

    int-to-long v5, v3

    invoke-static {v2, v5, v6, v4}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_36
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    invoke-virtual {v0, v13}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzs()J

    move-result-wide v4

    int-to-long v6, v3

    invoke-static {v2, v6, v7, v4, v5}, Lg/gbc;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_37
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzj()I

    move-result v4

    int-to-long v5, v3

    invoke-static {v2, v5, v6, v4}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_38
    move-object/from16 v20, v6

    move v14, v15

    const/4 v5, 0x0

    move-object v15, v7

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zze()I

    move-result v5

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/aj;->ah(I)Lcom/google/android/gms/internal/ads/zzgzd;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/ads/zzgzd;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_16

    :cond_12
    sget-object v4, Lcom/google/android/gms/internal/ads/e;->a:Lcom/google/android/gms/internal/ads/i;

    if-nez v20, :cond_13

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/i;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v4

    move-object v6, v4

    goto :goto_15

    :cond_13
    move-object/from16 v6, v20

    :goto_15
    int-to-long v4, v5

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/internal/ads/zzhbo;

    shl-int/lit8 v3, v3, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzhbo;->h(ILjava/lang/Object;)V

    goto/16 :goto_10

    :cond_14
    :goto_16
    and-int v3, v4, v19

    int-to-long v3, v3

    invoke-static {v2, v3, v4, v5}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_39
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzm()I

    move-result v4

    int-to-long v5, v3

    invoke-static {v2, v5, v6, v4}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_3a
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    invoke-virtual {v0}, Lg/hj;->t()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v4

    int-to-long v5, v3

    invoke-static {v5, v6, v2, v4}, Lg/gbc;->k(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_3b
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->at(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhai;

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/aj;->ax(I)Lg/ah;

    move-result-object v4

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lg/hj;->v(I)V

    invoke-virtual {v0, v3, v4, v8}, Lg/hj;->aa(Ljava/lang/Object;Lg/ah;Lcom/google/android/gms/internal/ads/zzgyh;)V

    invoke-virtual {v1, v2, v14, v3}, Lcom/google/android/gms/internal/ads/aj;->ar(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_3c
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    invoke-virtual {v1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/aj;->as(ILjava/lang/Object;Lg/hj;)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_3d
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzB()Z

    move-result v4

    int-to-long v5, v3

    sget-object v3, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v3, v2, v5, v6, v4}, Lg/aul;->o(Ljava/lang/Object;JZ)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_3e
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzf()I

    move-result v4

    int-to-long v5, v3

    invoke-static {v2, v5, v6, v4}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_3f
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    invoke-virtual {v0, v13}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzn()J

    move-result-wide v4

    int-to-long v6, v3

    invoke-static {v2, v6, v7, v4, v5}, Lg/gbc;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_40
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzg()I

    move-result v4

    int-to-long v5, v3

    invoke-static {v2, v5, v6, v4}, Lg/gbc;->s(Ljava/lang/Object;JI)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto :goto_17

    :pswitch_41
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzu()J

    move-result-wide v4

    int-to-long v6, v3

    invoke-static {v2, v6, v7, v4, v5}, Lg/gbc;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto :goto_17

    :pswitch_42
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzo()J

    move-result-wide v4

    int-to-long v6, v3

    invoke-static {v2, v6, v7, v4, v5}, Lg/gbc;->l(Ljava/lang/Object;JJ)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto :goto_17

    :pswitch_43
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zzb()F

    move-result v4

    int-to-long v5, v3

    sget-object v3, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v3, v2, v5, v6, v4}, Lg/aul;->j(Ljava/lang/Object;JF)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V

    goto :goto_17

    :pswitch_44
    move-object/from16 v20, v6

    move v14, v15

    move-object v15, v7

    and-int v3, v4, v19

    invoke-virtual {v0, v13}, Lg/hj;->v(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgxv;->zza()D

    move-result-wide v6
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    int-to-long v4, v3

    :try_start_f
    sget-object v2, Lg/gbc;->g:Lg/aul;
    :try_end_f
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move-object/from16 v3, p1

    :try_start_10
    invoke-virtual/range {v2 .. v7}, Lg/aul;->n(Ljava/lang/Object;JD)V
    :try_end_10
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move-object v2, v3

    :try_start_11
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/ads/aj;->au(ILjava/lang/Object;)V
    :try_end_11
    .catch Lcom/google/android/gms/internal/ads/zzgzl; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :goto_17
    move-object v7, v15

    move-object/from16 v13, v16

    move-object/from16 v6, v20

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    move-object v2, v3

    goto :goto_1d

    :catch_8
    move-object v2, v3

    goto/16 :goto_13

    :catchall_7
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_1d

    :catch_9
    move-object/from16 v2, p1

    goto/16 :goto_13

    :catch_a
    move-object/from16 v20, v6

    move-object v15, v7

    move-object/from16 v16, v13

    goto/16 :goto_13

    :goto_18
    move-object/from16 v6, v20

    :goto_19
    if-nez v6, :cond_15

    :try_start_12
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/i;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhbo;

    move-result-object v3

    move-object v6, v3

    goto :goto_1a

    :catchall_8
    move-exception v0

    goto :goto_1e

    :cond_15
    :goto_1a
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v5, v6, v0}, Lcom/google/android/gms/internal/ads/i;->a(ILjava/lang/Object;Lg/hj;)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-nez v3, :cond_c

    :goto_1b
    if-ge v12, v11, :cond_16

    aget v0, v10, v12

    invoke-virtual {v1, v2, v0, v6}, Lcom/google/android/gms/internal/ads/aj;->aq(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    :cond_16
    :goto_1c
    if-eqz v6, :cond_17

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzhbo;

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyx;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    :cond_17
    return-void

    :goto_1d
    move-object/from16 v6, v20

    :goto_1e
    if-ge v12, v11, :cond_18

    aget v3, v10, v12

    invoke-virtual {v1, v2, v3, v6}, Lcom/google/android/gms/internal/ads/aj;->aq(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1e

    :cond_18
    if-eqz v6, :cond_19

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzhbo;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgyx;

    iput-object v6, v2, Lcom/google/android/gms/internal/ads/zzgyx;->zzt:Lcom/google/android/gms/internal/ads/zzhbo;

    :cond_19
    throw v0

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

.method public final zze()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aj;->p:Lcom/google/android/gms/internal/ads/zzhai;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->cm()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    return-object v0
.end method

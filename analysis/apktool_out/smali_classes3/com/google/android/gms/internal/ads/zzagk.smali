.class public final Lcom/google/android/gms/internal/ads/zzagk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzagi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzagi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzagi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzagk;->zza:Lcom/google/android/gms/internal/ads/zzagi;

    return-void
.end method

.method public static a(I)Ljava/nio/charset/Charset;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object p0

    :cond_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object p0

    :cond_1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    return-object p0

    :cond_2
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public static b(ILcom/google/android/gms/internal/ads/zzed;)I
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result p1

    move v1, p1

    :goto_0
    add-int/lit8 v2, v1, 0x1

    add-int v3, p1, p0

    if-ge v2, v3, :cond_1

    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    sub-int v3, v1, p1

    add-int/lit8 v1, v1, 0x2

    sub-int v3, p0, v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p0, p0, -0x1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static c(I[BI)Lcom/google/android/gms/internal/ads/zzfzo;
    .locals 6

    array-length v0, p1

    const-string v1, ""

    if-lt p2, v0, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>()V

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzagk;->g(I[BI)I

    move-result v2

    :goto_0
    if-ge p2, v2, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzagk;->a(I)Ljava/nio/charset/Charset;

    move-result-object v4

    sub-int v5, v2, p2

    invoke-direct {v3, p1, p2, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzagk;->d(I)I

    move-result p2

    add-int/2addr p2, v2

    invoke-static {p2, p1, p0}, Lcom/google/android/gms/internal/ads/zzagk;->g(I[BI)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static d(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static e([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-le p2, p1, :cond_1

    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static f(Lcom/google/android/gms/internal/ads/zzed;IIZ)Z
    .locals 21

    move-object/from16 v1, p0

    move/from16 v0, p1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v2

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v3, v5, :cond_c

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v10

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzo()I

    move-result v7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzo()I

    move-result v8

    int-to-long v8, v8

    const/4 v10, 0x0

    :goto_1
    const-wide/16 v11, 0x0

    if-nez v7, :cond_1

    cmp-long v7, v8, v11

    if-nez v7, :cond_1

    if-nez v10, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_3

    if-nez p3, :cond_3

    const-wide/32 v13, 0x808080

    and-long/2addr v13, v8

    cmp-long v15, v13, v11

    if-eqz v15, :cond_2

    :goto_2
    const/4 v4, 0x0

    goto :goto_7

    :cond_2
    const-wide/16 v11, 0xff

    and-long v13, v8, v11

    const/16 v15, 0x8

    shr-long v15, v8, v15

    const/16 v17, 0x10

    shr-long v17, v8, v17

    const/16 v19, 0x18

    shr-long v8, v8, v19

    and-long/2addr v15, v11

    and-long v11, v17, v11

    const/16 v17, 0x7

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0xe

    shl-long/2addr v11, v15

    or-long/2addr v11, v13

    const/16 v13, 0x15

    shl-long/2addr v8, v13

    or-long/2addr v8, v11

    :cond_3
    if-ne v0, v7, :cond_5

    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    and-int/lit8 v3, v10, 0x1

    move/from16 v20, v4

    move v4, v3

    move/from16 v3, v20

    goto :goto_6

    :cond_5
    if-ne v0, v3, :cond_8

    and-int/lit8 v3, v10, 0x20

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    goto :goto_5

    :goto_6
    if-eqz v4, :cond_9

    add-int/lit8 v3, v3, 0x4

    :cond_9
    int-to-long v3, v3

    cmp-long v7, v8, v3

    if-gez v7, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v3

    int-to-long v3, v3

    cmp-long v7, v3, v8

    if-gez v7, :cond_b

    goto :goto_2

    :cond_b
    long-to-int v3, v8

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    :goto_7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    return v4

    :goto_8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    throw v0
.end method

.method public static g(I[BI)I
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzagk;->i(I[B)I

    move-result v0

    if-eqz p2, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    :goto_0
    array-length p2, p1

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_2

    add-int/lit8 p2, v0, 0x1

    sub-int v1, v0, p0

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    aget-byte v1, p1, p2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    :goto_1
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzagk;->i(I[B)I

    move-result v0

    goto :goto_0

    :cond_2
    return p2

    :cond_3
    return v0
.end method

.method public static h(ILcom/google/android/gms/internal/ads/zzed;ZLcom/google/android/gms/internal/ads/zzagi;)Lcom/google/android/gms/internal/ads/zzagl;
    .locals 33

    move/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-lt v1, v7, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x4

    if-ne v1, v9, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v10

    if-nez v0, :cond_3

    and-int/lit16 v11, v10, 0xff

    shr-int/lit8 v12, v10, 0x8

    and-int/lit16 v12, v12, 0xff

    shr-int/lit8 v13, v10, 0x10

    and-int/lit16 v13, v13, 0xff

    shr-int/lit8 v10, v10, 0x18

    shl-int/lit8 v12, v12, 0x7

    or-int/2addr v11, v12

    shl-int/lit8 v12, v13, 0xe

    or-int/2addr v11, v12

    shl-int/lit8 v10, v10, 0x15

    or-int/2addr v10, v11

    goto :goto_1

    :cond_1
    if-ne v1, v7, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v10

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzo()I

    move-result v10

    :cond_3
    :goto_1
    if-lt v1, v7, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v11

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    const/4 v12, 0x0

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    if-nez v8, :cond_6

    if-nez v10, :cond_6

    if-eqz v11, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    return-object v12

    :cond_6
    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v14

    const-string v15, "Id3Decoder"

    if-le v13, v14, :cond_7

    const-string v0, "Frame size exceeds remaining tag data"

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    return-object v12

    :cond_7
    if-nez p3, :cond_3e

    const/4 v14, 0x1

    if-ne v1, v7, :cond_b

    and-int/lit8 v16, v11, 0x40

    and-int/lit16 v7, v11, 0x80

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    if-eqz v16, :cond_9

    const/16 v16, 0x1

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    :goto_5
    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    goto :goto_6

    :cond_a
    const/4 v11, 0x0

    :goto_6
    move/from16 v18, v16

    const/16 v19, 0x0

    move/from16 v16, v11

    move v11, v7

    goto :goto_b

    :cond_b
    if-ne v1, v9, :cond_10

    and-int/lit8 v7, v11, 0x40

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    goto :goto_7

    :cond_c
    const/4 v7, 0x0

    :goto_7
    and-int/lit8 v16, v11, 0x8

    if-eqz v16, :cond_d

    const/16 v16, 0x1

    goto :goto_8

    :cond_d
    const/16 v16, 0x0

    :goto_8
    and-int/lit8 v18, v11, 0x4

    if-eqz v18, :cond_e

    const/16 v18, 0x1

    goto :goto_9

    :cond_e
    const/16 v18, 0x0

    :goto_9
    and-int/lit8 v19, v11, 0x2

    if-eqz v19, :cond_f

    const/16 v19, 0x1

    goto :goto_a

    :cond_f
    const/16 v19, 0x0

    :goto_a
    and-int/2addr v11, v14

    move/from16 v32, v16

    move/from16 v16, v7

    move/from16 v7, v32

    goto :goto_b

    :cond_10
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_b
    if-nez v7, :cond_11

    if-eqz v18, :cond_12

    :cond_11
    move-object v3, v15

    goto/16 :goto_2a

    :cond_12
    if-eqz v16, :cond_13

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    add-int/lit8 v10, v10, -0x1

    :cond_13
    if-eqz v11, :cond_14

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    add-int/lit8 v10, v10, -0x4

    :cond_14
    if-eqz v19, :cond_15

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/ads/zzagk;->b(ILcom/google/android/gms/internal/ads/zzed;)I

    move-result v10

    :cond_15
    const/16 v7, 0x54

    const/16 v11, 0x58

    const/16 p3, 0x1

    const/4 v14, 0x2

    if-ne v3, v7, :cond_18

    if-ne v4, v11, :cond_18

    if-ne v5, v11, :cond_18

    if-eq v1, v14, :cond_16

    if-ne v8, v11, :cond_18

    :cond_16
    if-gtz v10, :cond_17

    :goto_c
    move/from16 v22, v3

    move-object v6, v12

    :goto_d
    move-object/from16 v21, v15

    goto/16 :goto_26

    :cond_17
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    add-int/lit8 v7, v10, -0x1

    new-array v9, v7, [B

    invoke-virtual {v2, v9, v6, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v6, v9, v0}, Lcom/google/android/gms/internal/ads/zzagk;->g(I[BI)I

    move-result v7

    new-instance v11, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->a(I)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v11, v9, v6, v7, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->d(I)I

    move-result v6

    add-int/2addr v7, v6

    invoke-static {v0, v9, v7}, Lcom/google/android/gms/internal/ads/zzagk;->c(I[BI)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzagu;

    const-string v7, "TXXX"

    invoke-direct {v6, v7, v11, v0}, Lcom/google/android/gms/internal/ads/zzagu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_e
    move/from16 v22, v3

    goto :goto_d

    :catchall_0
    move-exception v0

    goto/16 :goto_27

    :catch_0
    move-exception v0

    :goto_f
    move/from16 v22, v3

    move-object/from16 v21, v15

    goto/16 :goto_28

    :catch_1
    move-exception v0

    goto :goto_f

    :cond_18
    if-ne v3, v7, :cond_1a

    invoke-static {v1, v7, v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzagk;->j(IIIII)Ljava/lang/String;

    move-result-object v0

    if-gtz v10, :cond_19

    goto :goto_c

    :cond_19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v7

    add-int/lit8 v9, v10, -0x1

    new-array v11, v9, [B

    invoke-virtual {v2, v11, v6, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v7, v11, v6}, Lcom/google/android/gms/internal/ads/zzagk;->c(I[BI)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzagu;

    invoke-direct {v7, v0, v12, v6}, Lcom/google/android/gms/internal/ads/zzagu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move/from16 v22, v3

    move-object v6, v7

    goto :goto_d

    :cond_1a
    const/16 v7, 0x57

    if-ne v3, v7, :cond_1e

    if-ne v4, v11, :cond_1b

    if-ne v5, v11, :cond_1b

    if-eq v1, v14, :cond_1c

    if-ne v8, v11, :cond_1b

    goto :goto_10

    :cond_1b
    const/16 v11, 0x57

    goto :goto_11

    :cond_1c
    :goto_10
    if-gtz v10, :cond_1d

    goto :goto_c

    :cond_1d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    add-int/lit8 v7, v10, -0x1

    new-array v9, v7, [B

    invoke-virtual {v2, v9, v6, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v6, v9, v0}, Lcom/google/android/gms/internal/ads/zzagk;->g(I[BI)I

    move-result v7

    new-instance v11, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->a(I)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v11, v9, v6, v7, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->d(I)I

    move-result v0

    add-int/2addr v7, v0

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/ads/zzagk;->i(I[B)I

    move-result v0

    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v9, v7, v0, v6}, Lcom/google/android/gms/internal/ads/zzagk;->e([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzagw;

    const-string v7, "WXXX"

    invoke-direct {v6, v7, v11, v0}, Lcom/google/android/gms/internal/ads/zzagw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_1e
    move v11, v3

    :goto_11
    if-ne v11, v7, :cond_1f

    invoke-static {v1, v7, v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzagk;->j(IIIII)Ljava/lang/String;

    move-result-object v0

    new-array v7, v10, [B

    invoke-virtual {v2, v7, v6, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzagk;->i(I[B)I

    move-result v9

    new-instance v11, Ljava/lang/String;

    sget-object v14, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v11, v7, v6, v9, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzagw;

    invoke-direct {v6, v0, v12, v11}, Lcom/google/android/gms/internal/ads/zzagw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1f
    const/16 v7, 0x49

    const/16 v12, 0x50

    if-ne v11, v12, :cond_22

    const/16 v11, 0x52

    if-ne v4, v11, :cond_21

    if-ne v5, v7, :cond_21

    const/16 v11, 0x56

    if-ne v8, v11, :cond_21

    new-array v0, v10, [B

    invoke-virtual {v2, v0, v6, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzagk;->i(I[B)I

    move-result v7

    new-instance v9, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v9, v0, v6, v7, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v7, v7, 0x1

    if-gt v10, v7, :cond_20

    sget-object v0, Lcom/google/android/gms/internal/ads/zzen;->zzf:[B

    goto :goto_12

    :cond_20
    invoke-static {v0, v7, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_12
    new-instance v6, Lcom/google/android/gms/internal/ads/zzags;

    invoke-direct {v6, v9, v0}, Lcom/google/android/gms/internal/ads/zzags;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_e

    :cond_21
    const/16 v11, 0x50

    :cond_22
    const/16 v9, 0x4f

    const/16 v7, 0x47

    if-ne v11, v7, :cond_26

    const/16 v11, 0x45

    if-ne v4, v11, :cond_23

    if-ne v5, v9, :cond_23

    const/16 v11, 0x42

    if-eq v8, v11, :cond_24

    if-ne v1, v14, :cond_23

    goto :goto_13

    :cond_23
    move-object/from16 v21, v15

    const/16 v11, 0x47

    goto :goto_17

    :cond_24
    :goto_13
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->a(I)Ljava/nio/charset/Charset;

    move-result-object v7

    add-int/lit8 v9, v10, -0x1

    new-array v11, v9, [B

    invoke-virtual {v2, v11, v6, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v6, v11}, Lcom/google/android/gms/internal/ads/zzagk;->i(I[B)I

    move-result v12

    new-instance v14, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v21, v15

    :try_start_2
    sget-object v15, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v14, v11, v6, v12, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzbg;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12, v11, v0}, Lcom/google/android/gms/internal/ads/zzagk;->g(I[BI)I

    move-result v14

    invoke-static {v11, v12, v14, v7}, Lcom/google/android/gms/internal/ads/zzagk;->e([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->d(I)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v14, v11, v0}, Lcom/google/android/gms/internal/ads/zzagk;->g(I[BI)I

    move-result v15

    invoke-static {v11, v14, v15, v7}, Lcom/google/android/gms/internal/ads/zzagk;->e([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->d(I)I

    move-result v0

    add-int/2addr v15, v0

    if-gt v9, v15, :cond_25

    sget-object v0, Lcom/google/android/gms/internal/ads/zzen;->zzf:[B

    goto :goto_14

    :cond_25
    invoke-static {v11, v15, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_14
    new-instance v9, Lcom/google/android/gms/internal/ads/zzagh;

    invoke-direct {v9, v6, v12, v7, v0}, Lcom/google/android/gms/internal/ads/zzagh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    move/from16 v22, v3

    move-object v6, v9

    goto/16 :goto_26

    :catch_2
    move-exception v0

    :goto_15
    move/from16 v22, v3

    goto/16 :goto_28

    :catch_3
    move-exception v0

    goto :goto_15

    :catch_4
    move-exception v0

    :goto_16
    move-object/from16 v21, v15

    goto :goto_15

    :catch_5
    move-exception v0

    goto :goto_16

    :cond_26
    move-object/from16 v21, v15

    :goto_17
    const/16 v7, 0x41

    const/16 v15, 0x43

    if-ne v1, v14, :cond_28

    if-ne v11, v12, :cond_27

    const/16 v9, 0x49

    if-ne v4, v9, :cond_27

    if-ne v5, v15, :cond_27

    goto :goto_18

    :cond_27
    move/from16 v22, v3

    const/16 v20, 0x2

    goto/16 :goto_1b

    :cond_28
    const/16 v9, 0x49

    if-ne v11, v7, :cond_27

    if-ne v4, v12, :cond_27

    if-ne v5, v9, :cond_27

    if-ne v8, v15, :cond_27

    :goto_18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->a(I)Ljava/nio/charset/Charset;

    move-result-object v7

    add-int/lit8 v9, v10, -0x1

    new-array v11, v9, [B

    invoke-virtual {v2, v11, v6, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v12, "image/"

    if-ne v1, v14, :cond_2a

    :try_start_3
    new-instance v15, Ljava/lang/String;

    const/16 v20, 0x2

    sget-object v14, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v22, v3

    const/4 v3, 0x3

    :try_start_4
    invoke-direct {v15, v11, v6, v3, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzfwa;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "image/jpg"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    const-string v3, "image/jpeg"

    :cond_29
    move-object v6, v3

    const/4 v3, 0x2

    goto :goto_19

    :catch_6
    move-exception v0

    goto/16 :goto_28

    :catch_7
    move-exception v0

    goto/16 :goto_28

    :cond_2a
    move/from16 v22, v3

    const/16 v20, 0x2

    invoke-static {v6, v11}, Lcom/google/android/gms/internal/ads/zzagk;->i(I[B)I

    move-result v3

    new-instance v14, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v14, v11, v6, v3, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfwa;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v14, 0x2f

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2b

    invoke-virtual {v12, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2b
    :goto_19
    add-int/lit8 v12, v3, 0x1

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3, v11, v0}, Lcom/google/android/gms/internal/ads/zzagk;->g(I[BI)I

    move-result v14

    new-instance v15, Ljava/lang/String;

    move/from16 p2, v14

    sub-int v14, p2, v3

    invoke-direct {v15, v11, v3, v14, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->d(I)I

    move-result v0

    add-int v14, p2, v0

    if-gt v9, v14, :cond_2c

    sget-object v0, Lcom/google/android/gms/internal/ads/zzen;->zzf:[B

    goto :goto_1a

    :cond_2c
    invoke-static {v11, v14, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_1a
    new-instance v3, Lcom/google/android/gms/internal/ads/zzafx;

    invoke-direct {v3, v6, v15, v12, v0}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    move-object v6, v3

    goto/16 :goto_26

    :goto_1b
    const/16 v3, 0x4d

    if-ne v11, v15, :cond_2f

    const/16 v9, 0x4f

    if-ne v4, v9, :cond_2f

    if-ne v5, v3, :cond_2f

    if-eq v8, v3, :cond_2d

    const/4 v9, 0x2

    if-ne v1, v9, :cond_2f

    :cond_2d
    const/4 v0, 0x4

    if-ge v10, v0, :cond_2e

    const/4 v6, 0x0

    goto/16 :goto_26

    :cond_2e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->a(I)Ljava/nio/charset/Charset;

    move-result-object v3

    const/4 v7, 0x3

    new-array v9, v7, [B

    invoke-virtual {v2, v9, v6, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9, v6, v7}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v7, v10, -0x4

    new-array v9, v7, [B

    invoke-virtual {v2, v9, v6, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v6, v9, v0}, Lcom/google/android/gms/internal/ads/zzagk;->g(I[BI)I

    move-result v7

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v9, v6, v7, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagk;->d(I)I

    move-result v6

    add-int/2addr v7, v6

    invoke-static {v7, v9, v0}, Lcom/google/android/gms/internal/ads/zzagk;->g(I[BI)I

    move-result v0

    invoke-static {v9, v7, v0, v3}, Lcom/google/android/gms/internal/ads/zzagk;->e([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzagf;

    invoke-direct {v6, v11, v12, v0}, Lcom/google/android/gms/internal/ads/zzagf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26

    :cond_2f
    if-ne v11, v15, :cond_34

    const/16 v9, 0x48

    if-ne v4, v9, :cond_34

    if-ne v5, v7, :cond_34

    if-ne v8, v12, :cond_34

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzagk;->i(I[B)I

    move-result v7

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v11

    sub-int v12, v7, v3

    sget-object v14, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v9, v11, v3, v12, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v25

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v26

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v11

    const-wide/16 v14, -0x1

    const-wide v16, 0xffffffffL

    cmp-long v7, v11, v16

    if-nez v7, :cond_30

    move-wide/from16 v27, v14

    goto :goto_1c

    :cond_30
    move-wide/from16 v27, v11

    :goto_1c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v11

    cmp-long v7, v11, v16

    if-nez v7, :cond_31

    move-wide/from16 v29, v14

    goto :goto_1d

    :cond_31
    move-wide/from16 v29, v11

    :goto_1d
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v3, v10

    :cond_32
    :goto_1e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v11

    if-ge v11, v3, :cond_33

    const/4 v11, 0x0

    invoke-static {v1, v2, v0, v11}, Lcom/google/android/gms/internal/ads/zzagk;->h(ILcom/google/android/gms/internal/ads/zzed;ZLcom/google/android/gms/internal/ads/zzagi;)Lcom/google/android/gms/internal/ads/zzagl;

    move-result-object v12

    if-eqz v12, :cond_32

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_33
    new-array v0, v6, [Lcom/google/android/gms/internal/ads/zzagl;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, [Lcom/google/android/gms/internal/ads/zzagl;

    new-instance v23, Lcom/google/android/gms/internal/ads/zzagb;

    move-object/from16 v24, v9

    invoke-direct/range {v23 .. v31}, Lcom/google/android/gms/internal/ads/zzagb;-><init>(Ljava/lang/String;IIJJ[Lcom/google/android/gms/internal/ads/zzagl;)V

    :goto_1f
    move-object/from16 v6, v23

    goto/16 :goto_26

    :cond_34
    if-ne v11, v15, :cond_3a

    const/16 v7, 0x54

    if-ne v4, v7, :cond_3a

    const/16 v9, 0x4f

    if-ne v5, v9, :cond_3a

    if-ne v8, v15, :cond_3a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzagk;->i(I[B)I

    move-result v7

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v11

    sub-int v12, v7, v3

    sget-object v14, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v9, v11, v3, v12, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v7

    and-int/lit8 v11, v7, 0x2

    if-eqz v11, :cond_35

    const/16 v25, 0x1

    goto :goto_20

    :cond_35
    const/16 v25, 0x0

    :goto_20
    and-int/lit8 v7, v7, 0x1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v11

    new-array v12, v11, [Ljava/lang/String;

    const/4 v14, 0x0

    :goto_21
    if-ge v14, v11, :cond_36

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v15

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/ads/zzagk;->i(I[B)I

    move-result v6

    move/from16 v16, v3

    new-instance v3, Ljava/lang/String;

    move/from16 v19, v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    move-object/from16 v24, v9

    sub-int v9, v19, v15

    move/from16 v20, v11

    sget-object v11, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v6, v15, v9, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    aput-object v3, v12, v14

    add-int/lit8 v6, v19, 0x1

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    move/from16 v11, v20

    move-object/from16 v9, v24

    const/4 v6, 0x0

    goto :goto_21

    :cond_36
    move/from16 v16, v3

    move-object/from16 v24, v9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    add-int v6, v16, v10

    :cond_37
    :goto_22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v9

    if-ge v9, v6, :cond_38

    const/4 v11, 0x0

    invoke-static {v1, v2, v0, v11}, Lcom/google/android/gms/internal/ads/zzagk;->h(ILcom/google/android/gms/internal/ads/zzed;ZLcom/google/android/gms/internal/ads/zzagi;)Lcom/google/android/gms/internal/ads/zzagl;

    move-result-object v9

    if-eqz v9, :cond_37

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_38
    const/4 v0, 0x0

    new-array v6, v0, [Lcom/google/android/gms/internal/ads/zzagl;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, [Lcom/google/android/gms/internal/ads/zzagl;

    new-instance v23, Lcom/google/android/gms/internal/ads/zzagd;

    const/4 v0, 0x1

    if-eq v0, v7, :cond_39

    const/16 v26, 0x0

    :goto_23
    move-object/from16 v27, v12

    goto :goto_24

    :cond_39
    const/16 v26, 0x1

    goto :goto_23

    :goto_24
    invoke-direct/range {v23 .. v28}, Lcom/google/android/gms/internal/ads/zzagd;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzagl;)V

    goto/16 :goto_1f

    :cond_3a
    if-ne v11, v3, :cond_3c

    const/16 v0, 0x4c

    if-ne v4, v0, :cond_3c

    if-ne v5, v0, :cond_3c

    const/16 v7, 0x54

    if-ne v8, v7, :cond_3c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v24

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzo()I

    move-result v25

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzo()I

    move-result v26

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v3

    new-instance v6, Lcom/google/android/gms/internal/ads/zzec;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzec;-><init>()V

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzec;->zzj(Lcom/google/android/gms/internal/ads/zzed;)V

    add-int/lit8 v7, v10, -0xa

    mul-int/lit8 v7, v7, 0x8

    add-int v9, v0, v3

    div-int/2addr v7, v9

    new-array v9, v7, [I

    new-array v11, v7, [I

    const/4 v12, 0x0

    :goto_25
    if-ge v12, v7, :cond_3b

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v14

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v15

    aput v14, v9, v12

    aput v15, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_25

    :cond_3b
    new-instance v23, Lcom/google/android/gms/internal/ads/zzagq;

    move-object/from16 v27, v9

    move-object/from16 v28, v11

    invoke-direct/range {v23 .. v28}, Lcom/google/android/gms/internal/ads/zzagq;-><init>(III[I[I)V

    goto/16 :goto_1f

    :cond_3c
    invoke-static {v1, v11, v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzagk;->j(IIIII)Ljava/lang/String;

    move-result-object v0

    new-array v3, v10, [B

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzafz;

    invoke-direct {v6, v0, v3}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(Ljava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_26
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    move-object v12, v6

    const/4 v0, 0x0

    goto :goto_29

    :goto_27
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    throw v0

    :goto_28
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/4 v12, 0x0

    :goto_29
    if-nez v12, :cond_3d

    move/from16 v2, v22

    invoke-static {v1, v2, v4, v5, v8}, Lcom/google/android/gms/internal/ads/zzagk;->j(IIIII)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to decode frame: id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", frameSize="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v21

    invoke-static {v3, v1, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3d
    return-object v12

    :goto_2a
    const-string v0, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/16 v18, 0x0

    return-object v18

    :cond_3e
    move-object/from16 v18, v12

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    return-object v18
.end method

.method public static i(I[B)I
    .locals 1

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v0, p1, p0

    if-nez v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static j(IIIII)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p1, p4, v1

    aput-object p2, p4, v0

    aput-object p3, p4, v3

    const-string p1, "%c%c%c"

    invoke-static {p0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    aput-object p3, v4, v3

    aput-object p4, v4, v2

    const-string p1, "%c%c%c%c"

    invoke-static {p0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final zza([BILcom/google/android/gms/internal/ads/zzagi;Lcom/google/android/gms/internal/ads/zzafm;)Lcom/google/android/gms/internal/ads/zzbd;
    .locals 11

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzed;-><init>([BI)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-string v4, "Id3Decoder"

    const/4 v5, 0x0

    const/16 v6, 0xa

    if-ge p0, v6, :cond_0

    const-string p0, "Data too short to be an ID3 tag"

    invoke-static {v4, p0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v9, v5

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzo()I

    move-result p0

    const v7, 0x494433

    if-eq p0, v7, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p0, v7, v1

    const-string p0, "%06X"

    invoke-static {p0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v7, "Unexpected first three bytes of ID3 tag header: 0x"

    invoke-virtual {v7, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzl()I

    move-result v8

    if-ne p0, p1, :cond_2

    and-int/lit8 v9, v7, 0x40

    if-eqz v9, :cond_5

    const-string p0, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    invoke-static {v4, p0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v9, 0x3

    if-ne p0, v9, :cond_3

    and-int/lit8 v9, v7, 0x40

    if-eqz v9, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    add-int/2addr v9, v3

    sub-int/2addr v8, v9

    goto :goto_1

    :cond_3
    if-ne p0, v3, :cond_7

    and-int/lit8 v9, v7, 0x40

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzl()I

    move-result v9

    add-int/lit8 v10, v9, -0x4

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    sub-int/2addr v8, v9

    :cond_4
    and-int/lit8 v9, v7, 0x10

    if-eqz v9, :cond_5

    add-int/lit8 v8, v8, -0xa

    :cond_5
    :goto_1
    if-ge p0, v3, :cond_6

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    new-instance v9, Lg/fhr;

    invoke-direct {v9, p0, v8, v7}, Lg/fhr;-><init>(IIZ)V

    goto :goto_3

    :cond_7
    const-string v7, "Skipped ID3 tag with unsupported majorVersion="

    invoke-static {p0, v7, v4}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_3
    if-nez v9, :cond_8

    return-object v5

    :cond_8
    iget p0, v9, Lg/fhr;->a:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v7

    if-ne p0, p1, :cond_9

    const/4 v6, 0x6

    :cond_9
    iget p1, v9, Lg/fhr;->c:I

    iget-boolean v8, v9, Lg/fhr;->b:Z

    if-eqz v8, :cond_a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzagk;->b(ILcom/google/android/gms/internal/ads/zzed;)I

    move-result p1

    :cond_a
    add-int/2addr v7, p1

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    invoke-static {v0, p0, v6, v1}, Lcom/google/android/gms/internal/ads/zzagk;->f(Lcom/google/android/gms/internal/ads/zzed;IIZ)Z

    move-result p1

    if-nez p1, :cond_c

    if-ne p0, v3, :cond_b

    invoke-static {v0, v3, v6, v2}, Lcom/google/android/gms/internal/ads/zzagk;->f(Lcom/google/android/gms/internal/ads/zzed;IIZ)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 v1, 0x1

    goto :goto_4

    :cond_b
    const-string p1, "Failed to validate ID3 tag with majorVersion="

    invoke-static {p0, p1, v4}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_c
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result p1

    if-lt p1, v6, :cond_d

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzagk;->h(ILcom/google/android/gms/internal/ads/zzed;ZLcom/google/android/gms/internal/ads/zzagi;)Lcom/google/android/gms/internal/ads/zzagl;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.class public final Lcom/google/android/gms/internal/ads/zzfp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:[I

.field public static final zza:[B

.field public static final zzb:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zza:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zzb:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfp;->a:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfp;->b:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static c(Lcom/google/android/gms/internal/ads/zzfq;)Lcom/google/android/gms/internal/ads/zzfd;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfd;

    invoke-direct {v2, v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(III)V

    return-object v2
.end method

.method public static d(Lcom/google/android/gms/internal/ads/zzfq;ZILcom/google/android/gms/internal/ads/zzfe;)Lcom/google/android/gms/internal/ads/zzfe;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x6

    new-array v4, v3, [I

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x20

    if-ge v9, v11, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    shl-int/2addr v11, v9

    or-int/2addr v10, v11

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v3, :cond_2

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v11

    aput v11, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v12, v2

    :goto_2
    move-object/from16 v16, v4

    move v13, v7

    move v14, v8

    move v15, v10

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zza:I

    iget-boolean v7, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Z

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzc:I

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzd:I

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfe;->zze:[I

    move v12, v3

    goto :goto_2

    :cond_4
    move-object/from16 v16, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v17

    const/4 v2, 0x0

    :goto_4
    if-ge v6, v1, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x58

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v2, v2, 0x8

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    if-lez v1, :cond_8

    sub-int/2addr v5, v1

    add-int/2addr v5, v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    :cond_8
    new-instance v11, Lcom/google/android/gms/internal/ads/zzfe;

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzfe;-><init>(IZII[II)V

    return-object v11
.end method

.method public static e(Lcom/google/android/gms/internal/ads/zzfq;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    return-void
.end method

.method public static zza([BII[Z)I
    .locals 8

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    if-nez v0, :cond_1

    return p2

    :cond_1
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_2

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfp;->zzh([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_2
    if-le v0, v2, :cond_4

    aget-boolean v3, p3, v2

    if-eqz v3, :cond_4

    aget-byte v3, p0, p1

    if-eq v3, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfp;->zzh([Z)V

    add-int/lit8 p1, p1, -0x2

    return p1

    :cond_4
    :goto_1
    const/4 v3, 0x2

    if-le v0, v3, :cond_6

    aget-boolean v4, p3, v3

    if-eqz v4, :cond_6

    aget-byte v4, p0, p1

    if-nez v4, :cond_6

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-eq v4, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfp;->zzh([Z)V

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_6
    :goto_2
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_3
    if-ge p1, v4, :cond_a

    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xfe

    if-nez v6, :cond_9

    add-int/lit8 v6, p1, -0x2

    aget-byte v7, p0, v6

    if-nez v7, :cond_8

    add-int/lit8 p1, p1, -0x1

    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    if-eq v5, v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfp;->zzh([Z)V

    return v6

    :cond_8
    :goto_4
    move p1, v6

    :cond_9
    add-int/lit8 p1, p1, 0x3

    goto :goto_3

    :cond_a
    if-le v0, v3, :cond_c

    add-int/lit8 p1, p2, -0x3

    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_b

    :goto_5
    const/4 p1, 0x1

    goto :goto_6

    :cond_b
    const/4 p1, 0x0

    goto :goto_6

    :cond_c
    if-ne v0, v3, :cond_d

    aget-boolean p1, p3, v3

    if-eqz p1, :cond_b

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_b

    goto :goto_5

    :cond_d
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_b

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_b

    goto :goto_5

    :goto_6
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_f

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_e

    aget-byte p1, p0, v4

    if-nez p1, :cond_e

    :goto_7
    const/4 p1, 0x1

    goto :goto_8

    :cond_e
    const/4 p1, 0x0

    goto :goto_8

    :cond_f
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_e

    aget-byte p1, p0, v4

    if-nez p1, :cond_e

    goto :goto_7

    :goto_8
    aput-boolean p1, p3, v2

    aget-byte p0, p0, v4

    if-nez p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    aput-boolean v1, p3, v3

    return p2
.end method

.method public static zzb([BI)I
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfp;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-lt v2, p1, :cond_2

    sub-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/ads/zzfp;->b:[I

    aget v6, v6, v2

    sub-int/2addr v6, v4

    invoke-static {p0, v4, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    add-int/lit8 v7, v5, 0x1

    aput-byte v1, p0, v5

    add-int/lit8 v5, v5, 0x2

    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    sub-int v1, p1, v5

    invoke-static {p0, v4, p0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return p1

    :cond_2
    :goto_2
    add-int/lit8 v4, p1, -0x2

    if-ge v2, v4, :cond_4

    aget-byte v4, p0, v2

    add-int/lit8 v5, v2, 0x1

    if-nez v4, :cond_3

    aget-byte v4, p0, v5

    if-nez v4, :cond_3

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    goto :goto_3

    :cond_3
    move v2, v5

    goto :goto_2

    :cond_4
    move v2, p1

    :goto_3
    if-ge v2, p1, :cond_0

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfp;->b:[I

    array-length v5, v4

    if-gt v5, v3, :cond_5

    add-int/2addr v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/ads/zzfp;->b:[I

    :cond_5
    sget-object v4, Lcom/google/android/gms/internal/ads/zzfp;->b:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_0

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static zzc([BIILcom/google/android/gms/internal/ads/zzfm;)Lcom/google/android/gms/internal/ads/zzfj;
    .locals 33

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfq;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfq;-><init>([BII)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfp;->c(Lcom/google/android/gms/internal/ads/zzfq;)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v6

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfq;

    const/4 v5, 0x2

    add-int/2addr v1, v5

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfq;-><init>([BII)V

    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v2

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzfd;->zzb:I

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    const/4 v7, 0x7

    if-ne v2, v7, :cond_0

    const/4 v2, 0x7

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v10, -0x1

    if-eqz v3, :cond_1

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    iget v11, v6, Lcom/google/android/gms/internal/ads/zzfd;->zzb:I

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v12}, Ljava/util/AbstractCollection;->size()I

    move-result v12

    add-int/2addr v12, v10

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzfc;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzfc;->zza:I

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    const/4 v12, 0x0

    if-nez v7, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    invoke-static {v4, v8, v2, v12}, Lcom/google/android/gms/internal/ads/zzfp;->d(Lcom/google/android/gms/internal/ads/zzfq;ZILcom/google/android/gms/internal/ads/zzfe;)Lcom/google/android/gms/internal/ads/zzfe;

    move-result-object v12

    :cond_2
    :goto_2
    move v13, v11

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_2

    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzfm;->zzb:Lcom/google/android/gms/internal/ads/zzff;

    iget-object v14, v13, Lcom/google/android/gms/internal/ads/zzff;->zzb:[I

    aget v14, v14, v11

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzff;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    move-result v13

    if-le v13, v14, :cond_2

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzfm;->zzb:Lcom/google/android/gms/internal/ads/zzff;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzff;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzfe;

    goto :goto_2

    :goto_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v11

    const/16 v14, 0x8

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v15

    goto :goto_4

    :cond_4
    const/4 v15, -0x1

    :goto_4
    if-eqz v3, :cond_6

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzfm;->zzc:Lcom/google/android/gms/internal/ads/zzfh;

    if-eqz v9, :cond_6

    if-ne v15, v10, :cond_5

    iget-object v15, v9, Lcom/google/android/gms/internal/ads/zzfh;->zzb:[I

    aget v15, v15, v13

    :cond_5
    if-eq v15, v10, :cond_6

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzfh;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-le v9, v15, :cond_6

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzfm;->zzc:Lcom/google/android/gms/internal/ads/zzfh;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzfh;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzfg;

    iget v15, v9, Lcom/google/android/gms/internal/ads/zzfg;->zza:I

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzfg;->zzd:I

    iget v14, v9, Lcom/google/android/gms/internal/ads/zzfg;->zze:I

    iget v0, v9, Lcom/google/android/gms/internal/ads/zzfg;->zzb:I

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzfg;->zzc:I

    :goto_5
    move/from16 v32, v9

    move v9, v0

    move v0, v7

    move-object v7, v12

    move v12, v10

    move/from16 v10, v32

    goto :goto_9

    :cond_6
    move v0, v7

    move-object v7, v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_9

    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v15

    if-ne v15, v1, :cond_8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    const/4 v0, 0x3

    goto :goto_6

    :cond_8
    move v0, v15

    :goto_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v9

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v10

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v14

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v17

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v18

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v19

    if-eq v0, v8, :cond_9

    if-ne v0, v5, :cond_a

    :cond_9
    const/16 v20, 0x2

    goto :goto_7

    :cond_a
    const/16 v20, 0x1

    :goto_7
    add-int v14, v14, v17

    mul-int v14, v14, v20

    sub-int/2addr v9, v14

    if-ne v0, v8, :cond_b

    const/4 v0, 0x2

    goto :goto_8

    :cond_b
    const/4 v0, 0x1

    :goto_8
    add-int v18, v18, v19

    mul-int v18, v18, v0

    sub-int v10, v10, v18

    :cond_c
    move v14, v10

    move v10, v9

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v9

    goto :goto_5

    :goto_9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v17

    if-nez v0, :cond_f

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v5

    if-eq v8, v5, :cond_d

    move v5, v2

    goto :goto_a

    :cond_d
    const/4 v5, 0x0

    :goto_a
    const/4 v1, -0x1

    :goto_b
    if-gt v5, v2, :cond_e

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    const/16 v20, 0x1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v8

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    goto :goto_b

    :cond_e
    :goto_c
    const/16 v20, 0x1

    goto :goto_d

    :cond_f
    const/4 v1, -0x1

    goto :goto_c

    :goto_d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x6

    if-eqz v0, :cond_11

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    :cond_10
    const/4 v0, 0x2

    goto :goto_13

    :cond_11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_e
    const/4 v5, 0x4

    if-ge v0, v5, :cond_10

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v2, :cond_16

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v16

    if-nez v16, :cond_13

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    :cond_12
    const/4 v2, 0x3

    goto :goto_11

    :cond_13
    add-int v16, v0, v0

    add-int/lit8 v16, v16, 0x4

    shl-int v2, v20, v16

    const/16 v5, 0x40

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x1

    if-le v0, v5, :cond_14

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzb()I

    :cond_14
    const/4 v5, 0x0

    :goto_10
    if-ge v5, v2, :cond_12

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzb()I

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :goto_11
    if-ne v0, v2, :cond_15

    const/4 v2, 0x3

    goto :goto_12

    :cond_15
    const/4 v2, 0x1

    :goto_12
    add-int/2addr v8, v2

    const/4 v2, 0x6

    const/4 v5, 0x4

    const/16 v20, 0x1

    goto :goto_f

    :cond_16
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x6

    const/16 v20, 0x1

    goto :goto_e

    :goto_13
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    :cond_17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v0

    const/4 v2, 0x0

    new-array v5, v2, [I

    new-array v8, v2, [I

    move/from16 v16, v1

    move-object/from16 v21, v5

    const/4 v1, -0x1

    const/4 v5, -0x1

    :goto_14
    if-ge v2, v0, :cond_29

    if-eqz v2, :cond_24

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v22

    if-eqz v22, :cond_24

    move/from16 v22, v0

    add-int v0, v1, v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v23

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v24

    const/16 v20, 0x1

    add-int/lit8 v24, v24, 0x1

    add-int v23, v23, v23

    rsub-int/lit8 v23, v23, 0x1

    move/from16 v25, v2

    add-int/lit8 v2, v0, 0x1

    move-object/from16 v26, v6

    new-array v6, v2, [Z

    move-object/from16 v27, v6

    const/4 v6, 0x0

    :goto_15
    if-gt v6, v0, :cond_19

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v28

    if-nez v28, :cond_18

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v28

    aput-boolean v28, v27, v6

    goto :goto_16

    :cond_18
    aput-boolean v20, v27, v6

    :goto_16
    add-int/lit8 v6, v6, 0x1

    const/16 v20, 0x1

    goto :goto_15

    :cond_19
    add-int/lit8 v6, v5, -0x1

    move/from16 v28, v0

    new-array v0, v2, [I

    new-array v2, v2, [I

    const/16 v29, 0x0

    :goto_17
    mul-int v30, v23, v24

    if-ltz v6, :cond_1b

    aget v31, v8, v6

    add-int v31, v31, v30

    if-gez v31, :cond_1a

    add-int v30, v1, v6

    aget-boolean v30, v27, v30

    if-eqz v30, :cond_1a

    add-int/lit8 v30, v29, 0x1

    aput v31, v0, v29

    move/from16 v29, v30

    :cond_1a
    add-int/lit8 v6, v6, -0x1

    goto :goto_17

    :cond_1b
    if-gez v30, :cond_1c

    aget-boolean v6, v27, v28

    if-eqz v6, :cond_1c

    add-int/lit8 v6, v29, 0x1

    aput v30, v0, v29

    move/from16 v29, v6

    :cond_1c
    move-object/from16 v23, v7

    move/from16 v6, v29

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v1, :cond_1e

    aget v24, v21, v7

    add-int v24, v24, v30

    if-gez v24, :cond_1d

    aget-boolean v29, v27, v7

    if-eqz v29, :cond_1d

    add-int/lit8 v29, v6, 0x1

    aput v24, v0, v6

    move/from16 v6, v29

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_1e
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    add-int/lit8 v7, v1, -0x1

    const/16 v24, 0x0

    :goto_19
    if-ltz v7, :cond_20

    aget v29, v21, v7

    add-int v29, v29, v30

    if-lez v29, :cond_1f

    aget-boolean v31, v27, v7

    if-eqz v31, :cond_1f

    add-int/lit8 v31, v24, 0x1

    aput v29, v2, v24

    move/from16 v24, v31

    :cond_1f
    add-int/lit8 v7, v7, -0x1

    goto :goto_19

    :cond_20
    if-lez v30, :cond_21

    aget-boolean v7, v27, v28

    if-eqz v7, :cond_21

    add-int/lit8 v7, v24, 0x1

    aput v30, v2, v24

    move/from16 v24, v7

    :cond_21
    move-object/from16 v21, v0

    move/from16 v7, v24

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v5, :cond_23

    aget v24, v8, v0

    add-int v24, v24, v30

    if-lez v24, :cond_22

    add-int v28, v1, v0

    aget-boolean v28, v27, v28

    if-eqz v28, :cond_22

    add-int/lit8 v28, v7, 0x1

    aput v24, v2, v7

    move/from16 v7, v28

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_23
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    move-object v8, v0

    move v1, v6

    move v5, v7

    goto :goto_1f

    :cond_24
    move/from16 v22, v0

    move/from16 v25, v2

    move-object/from16 v26, v6

    move-object/from16 v23, v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v1

    new-array v2, v0, [I

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v0, :cond_26

    if-lez v5, :cond_25

    add-int/lit8 v6, v5, -0x1

    aget v6, v2, v6

    goto :goto_1c

    :cond_25
    const/4 v6, 0x0

    :goto_1c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v7

    const/16 v20, 0x1

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    aput v6, v2, v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_26
    new-array v5, v1, [I

    const/4 v6, 0x0

    :goto_1d
    if-ge v6, v1, :cond_28

    if-lez v6, :cond_27

    add-int/lit8 v7, v6, -0x1

    aget v7, v5, v7

    goto :goto_1e

    :cond_27
    const/4 v7, 0x0

    :goto_1e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v8

    const/16 v20, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v8, v7

    aput v8, v5, v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_28
    move-object/from16 v21, v2

    move-object v8, v5

    move v5, v1

    move v1, v0

    :goto_1f
    add-int/lit8 v2, v25, 0x1

    move/from16 v0, v22

    move-object/from16 v7, v23

    move-object/from16 v6, v26

    goto/16 :goto_14

    :cond_29
    move-object/from16 v26, v6

    move-object/from16 v23, v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v0

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v0, :cond_2a

    add-int/lit8 v2, v17, 0x5

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2a
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_35

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v5

    const/16 v1, 0xff

    if-ne v5, v1, :cond_2b

    const/16 v1, 0x10

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v5

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v1

    if-eqz v5, :cond_2d

    if-eqz v1, :cond_2d

    int-to-float v2, v5

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_21

    :cond_2b
    const/16 v1, 0x11

    if-ge v5, v1, :cond_2c

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfp;->zzb:[F

    aget v2, v1, v5

    goto :goto_21

    :cond_2c
    const-string v1, "Unexpected aspect_ratio_idc value: "

    const-string v6, "NalUnitUtil"

    invoke-static {v5, v1, v6}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2d
    :goto_21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    :cond_2e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v1

    if-eqz v1, :cond_31

    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v1

    const/4 v5, 0x1

    if-eq v5, v1, :cond_2f

    const/4 v5, 0x2

    :cond_2f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v1

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v3

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzm;->zza(I)I

    move-result v0

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzm;->zzb(I)I

    move-result v1

    goto :goto_22

    :cond_30
    const/4 v0, -0x1

    const/4 v1, -0x1

    goto :goto_22

    :cond_31
    if-eqz v3, :cond_32

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzfm;->zzd:Lcom/google/android/gms/internal/ads/zzfl;

    if-eqz v0, :cond_32

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfl;->zzb:[I

    aget v1, v1, v13

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfl;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-le v0, v1, :cond_32

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzfm;->zzd:Lcom/google/android/gms/internal/ads/zzfl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfl;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfk;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfk;->zza:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzfk;->zzb:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfk;->zzc:I

    move v5, v1

    move v1, v0

    move v0, v5

    move v5, v3

    goto :goto_22

    :cond_32
    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v5, -0x1

    :goto_22
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    :cond_33
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v3

    if-eqz v3, :cond_34

    add-int/2addr v14, v14

    :cond_34
    move/from16 v18, v1

    move/from16 v17, v5

    move v13, v14

    move v8, v15

    move/from16 v15, v16

    move/from16 v16, v0

    move v14, v2

    goto :goto_23

    :cond_35
    move v13, v14

    move v8, v15

    move/from16 v15, v16

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    :goto_23
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfj;

    move-object/from16 v7, v23

    move-object/from16 v6, v26

    invoke-direct/range {v5 .. v18}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Lcom/google/android/gms/internal/ads/zzfe;IIIIIIFIIII)V

    return-object v5
.end method

.method public static zzd([BII)Lcom/google/android/gms/internal/ads/zzfm;
    .locals 36

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfq;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfq;-><init>([BII)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfp;->c(Lcom/google/android/gms/internal/ads/zzfq;)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v9

    const/16 v10, 0x11

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v0, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzfp;->d(Lcom/google/android/gms/internal/ads/zzfq;ZILcom/google/android/gms/internal/ads/zzfe;)Lcom/google/android/gms/internal/ads/zzfe;

    move-result-object v12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v13

    const/4 v14, 0x0

    if-eq v10, v13, :cond_0

    move v13, v9

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-gt v13, v9, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v15

    add-int/2addr v15, v10

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v11

    move/from16 v16, v4

    new-instance v4, Lcom/google/android/gms/internal/ads/zzff;

    const/16 p1, 0x6

    new-array v5, v10, [I

    invoke-direct {v4, v11, v5}, Lcom/google/android/gms/internal/ads/zzff;-><init>(Ljava/util/List;[I)V

    const/4 v5, 0x2

    if-lt v7, v5, :cond_2

    if-lt v15, v5, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v16, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    const/16 p2, 0x1

    add-int/lit8 v10, v13, 0x1

    if-eqz v11, :cond_83

    if-eqz v3, :cond_83

    if-ge v10, v7, :cond_4

    goto/16 :goto_60

    :cond_4
    new-array v3, v5, [I

    aput v10, v3, p2

    aput v15, v3, v14

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    new-array v5, v15, [I

    new-array v8, v15, [I

    aget-object v17, v3, v14

    aput v14, v17, v14

    aput p2, v5, v14

    aput v14, v8, v14

    const/4 v14, 0x1

    :goto_3
    if-ge v14, v15, :cond_7

    const/4 v1, 0x0

    const/16 v18, 0x0

    :goto_4
    if-gt v1, v13, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v19

    if-eqz v19, :cond_5

    aget-object v19, v3, v14

    add-int/lit8 v20, v18, 0x1

    aput v1, v19, v18

    aput v1, v8, v14

    move/from16 v18, v20

    :cond_5
    aput v18, v5, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x4

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v1

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v1, :cond_16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    if-eqz v14, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v19

    if-eqz v19, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v22, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_6
    const/16 v21, 0x0

    goto :goto_9

    :cond_a
    :goto_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v19

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v20

    if-nez v19, :cond_c

    if-eqz v20, :cond_b

    goto :goto_8

    :cond_b
    move/from16 v22, v1

    goto :goto_6

    :cond_c
    :goto_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v21

    move/from16 v22, v1

    if-eqz v21, :cond_d

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    :cond_d
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    if-eqz v21, :cond_e

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    :cond_e
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    :goto_9
    const/4 v1, 0x0

    :goto_a
    if-gt v1, v9, :cond_15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v23

    if-nez v23, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v23

    if-eqz v23, :cond_f

    goto :goto_c

    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v23

    if-eqz v23, :cond_11

    move/from16 v24, v1

    const/4 v1, 0x0

    :goto_b
    move-object/from16 v23, v2

    goto :goto_d

    :cond_10
    :goto_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    :cond_11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v23

    move/from16 v24, v1

    move/from16 v1, v23

    goto :goto_b

    :goto_d
    add-int v2, v19, v20

    move-object/from16 v25, v3

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_14

    move/from16 v26, v2

    const/4 v2, 0x0

    :goto_f
    if-gt v2, v1, :cond_13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    if-eqz v21, :cond_12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    :cond_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_13
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v26

    goto :goto_e

    :cond_14
    add-int/lit8 v1, v24, 0x1

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    goto :goto_a

    :cond_15
    move-object/from16 v23, v2

    move-object/from16 v25, v3

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v22

    goto/16 :goto_5

    :cond_16
    move-object/from16 v23, v2

    move-object/from16 v25, v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v1

    if-nez v1, :cond_17

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v2, v23

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzfl;)V

    return-object v1

    :cond_17
    move-object/from16 v2, v23

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzd()V

    const/4 v1, 0x0

    invoke-static {v0, v1, v9, v12}, Lcom/google/android/gms/internal/ads/zzfp;->d(Lcom/google/android/gms/internal/ads/zzfq;ZILcom/google/android/gms/internal/ads/zzfe;)Lcom/google/android/gms/internal/ads/zzfe;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v1

    const/16 v14, 0x10

    move/from16 v19, v1

    new-array v1, v14, [Z

    move-object/from16 v20, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v1, v14, :cond_19

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v21

    aput-boolean v21, v20, v1

    if-eqz v21, :cond_18

    add-int/lit8 v2, v2, 0x1

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_19
    if-eqz v2, :cond_1a

    aget-boolean v1, v20, p2

    if-nez v1, :cond_1b

    :cond_1a
    move-object/from16 v2, v23

    goto/16 :goto_5f

    :cond_1b
    add-int/lit8 v1, v2, 0x1

    new-array v14, v2, [I

    move-object/from16 v22, v4

    move-object/from16 v24, v5

    const/4 v4, 0x0

    :goto_11
    sub-int v5, v2, v19

    if-ge v4, v5, :cond_1c

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v26

    aput v26, v14, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1c
    new-array v1, v1, [I

    if-eqz v19, :cond_1f

    const/4 v4, 0x1

    :goto_12
    if-ge v4, v2, :cond_1e

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v4, :cond_1d

    aget v26, v1, v4

    aget v27, v14, v5

    add-int/lit8 v27, v27, 0x1

    add-int v27, v27, v26

    aput v27, v1, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_1e
    aput p1, v1, v2

    :cond_1f
    const/4 v4, 0x2

    new-array v5, v4, [I

    aput v2, v5, p2

    const/16 v17, 0x0

    aput v7, v5, v17

    invoke-static {v11, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    new-array v5, v7, [I

    aput v17, v5, v17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v11

    move-object/from16 v26, v1

    move-object/from16 v27, v4

    const/4 v1, 0x1

    :goto_14
    if-ge v1, v7, :cond_24

    if-eqz v11, :cond_20

    const/4 v4, 0x6

    const/16 v28, -0x1

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v29

    aput v29, v5, v1

    goto :goto_15

    :cond_20
    const/4 v4, 0x6

    const/16 v28, -0x1

    aput v1, v5, v1

    :goto_15
    if-nez v19, :cond_22

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v2, :cond_21

    aget-object v28, v27, v1

    aget v29, v14, v4

    move/from16 v30, v1

    add-int/lit8 v1, v29, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v1

    aput v1, v28, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v30

    goto :goto_16

    :cond_21
    move/from16 v30, v1

    goto :goto_18

    :cond_22
    move/from16 v30, v1

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v2, :cond_23

    aget-object v4, v27, v30

    aget v29, v5, v30

    add-int/lit8 v31, v1, 0x1

    aget v32, v26, v31

    shl-int v32, p2, v32

    add-int/lit8 v32, v32, -0x1

    and-int v29, v29, v32

    aget v32, v26, v1

    shr-int v29, v29, v32

    aput v29, v4, v1

    move/from16 v1, v31

    goto :goto_17

    :cond_23
    :goto_18
    add-int/lit8 v1, v30, 0x1

    const/16 p1, 0x6

    goto :goto_14

    :cond_24
    const/16 v28, -0x1

    new-array v1, v10, [I

    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v7, :cond_2b

    aget v11, v5, v4

    aput v28, v1, v11

    move-object/from16 v19, v1

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_1a
    const/16 v1, 0x10

    if-ge v11, v1, :cond_27

    aget-boolean v1, v20, v11

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    if-ne v11, v1, :cond_25

    aget v11, v5, v4

    aget-object v26, v27, v4

    aget v26, v26, v14

    aput v26, v19, v11

    const/4 v11, 0x1

    :cond_25
    add-int/lit8 v14, v14, 0x1

    goto :goto_1b

    :cond_26
    const/4 v1, 0x1

    :goto_1b
    add-int/2addr v11, v1

    const/16 p2, 0x1

    goto :goto_1a

    :cond_27
    if-lez v4, :cond_2a

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v4, :cond_29

    aget v11, v5, v4

    aget v11, v19, v11

    aget v14, v5, v1

    aget v14, v19, v14

    if-ne v11, v14, :cond_28

    goto :goto_1d

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_29
    add-int/lit8 v2, v2, 0x1

    :cond_2a
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v19

    const/16 p2, 0x1

    goto :goto_19

    :cond_2b
    move-object/from16 v19, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v4

    const/4 v1, 0x2

    if-lt v2, v1, :cond_2c

    if-nez v4, :cond_2d

    :cond_2c
    move-object/from16 v4, v22

    move-object/from16 v2, v23

    goto/16 :goto_5e

    :cond_2d
    new-array v1, v2, [I

    const/4 v11, 0x0

    :goto_1e
    if-ge v11, v2, :cond_2e

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v14

    aput v14, v1, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    :cond_2e
    new-array v4, v10, [I

    const/4 v11, 0x0

    :goto_1f
    if-ge v11, v7, :cond_2f

    aget v14, v5, v11

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    aput v11, v4, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    :cond_2f
    new-instance v11, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>()V

    const/4 v14, 0x0

    :goto_20
    if-gt v14, v13, :cond_31

    move-object/from16 v20, v1

    aget v1, v19, v14

    move/from16 p1, v2

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_30

    aget v1, v20, v1

    goto :goto_21

    :cond_30
    const/4 v1, -0x1

    :goto_21
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfc;

    move-object/from16 v26, v4

    aget v4, v26, v14

    invoke-direct {v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(II)V

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, p1

    move-object/from16 v1, v20

    move-object/from16 v4, v26

    goto :goto_20

    :cond_31
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfc;

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzfc;->zzb:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_32

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, v22

    move-object/from16 v2, v23

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzfl;)V

    return-object v1

    :cond_32
    move-object/from16 v4, v22

    const/4 v11, 0x1

    :goto_22
    move-object/from16 v2, v23

    if-gt v11, v13, :cond_34

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzfc;

    iget v14, v14, Lcom/google/android/gms/internal/ads/zzfc;->zzb:I

    move-object/from16 v23, v2

    const/4 v2, -0x1

    if-eq v14, v2, :cond_33

    goto :goto_23

    :cond_33
    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    :cond_34
    move-object/from16 v23, v2

    const/4 v2, -0x1

    const/4 v11, -0x1

    :goto_23
    if-ne v11, v2, :cond_35

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v2, v23

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzfl;)V

    return-object v1

    :cond_35
    move-object/from16 v2, v23

    const/4 v13, 0x2

    new-array v14, v13, [I

    const/16 v19, 0x1

    aput v7, v14, v19

    const/16 v17, 0x0

    aput v7, v14, v17

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[Z

    move-object/from16 v22, v4

    const/4 v2, 0x2

    new-array v4, v2, [I

    aput v7, v4, v19

    aput v7, v4, v17

    invoke-static {v13, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    const/4 v4, 0x1

    :goto_24
    if-ge v4, v7, :cond_37

    move-object/from16 p1, v2

    const/4 v2, 0x0

    :goto_25
    if-ge v2, v4, :cond_36

    aget-object v19, v14, v4

    aget-object v20, p1, v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v26

    aput-boolean v26, v20, v2

    aput-boolean v26, v19, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_36
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p1

    goto :goto_24

    :cond_37
    move-object/from16 p1, v2

    const/4 v2, 0x1

    :goto_26
    if-ge v2, v7, :cond_3b

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v6, :cond_3a

    move/from16 v19, v4

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v2, :cond_39

    aget-object v20, p1, v2

    aget-boolean v26, v20, v4

    if-eqz v26, :cond_38

    aget-object v26, p1, v4

    aget-boolean v26, v26, v19

    if-eqz v26, :cond_38

    const/16 v26, 0x1

    aput-boolean v26, v20, v19

    goto :goto_29

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_39
    :goto_29
    add-int/lit8 v4, v19, 0x1

    goto :goto_27

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3b
    new-array v2, v10, [I

    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v7, :cond_3d

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/16 v20, 0x0

    :goto_2b
    if-ge v2, v4, :cond_3c

    aget-object v26, v14, v4

    aget-boolean v26, v26, v2

    add-int v20, v20, v26

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_3c
    aget v2, v5, v4

    aput v20, v19, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v19

    goto :goto_2a

    :cond_3d
    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_2c
    if-ge v2, v7, :cond_3f

    aget v20, v5, v2

    aget v20, v19, v20

    if-nez v20, :cond_3e

    add-int/lit8 v4, v4, 0x1

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3f
    const/4 v2, 0x1

    if-le v4, v2, :cond_40

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, v22

    move-object/from16 v2, v23

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzfl;)V

    return-object v1

    :cond_40
    move-object/from16 v4, v22

    new-array v2, v7, [I

    new-array v4, v15, [I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v20

    if-eqz v20, :cond_42

    move-object/from16 v20, v4

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v7, :cond_41

    move/from16 v26, v4

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v27

    aput v27, v2, v26

    add-int/lit8 v4, v26, 0x1

    goto :goto_2d

    :cond_41
    :goto_2e
    const/4 v4, 0x0

    goto :goto_2f

    :cond_42
    move-object/from16 v20, v4

    const/4 v4, 0x0

    invoke-static {v2, v4, v7, v9}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_2e

    :goto_2f
    if-ge v4, v15, :cond_44

    move-object/from16 v26, v2

    move/from16 v27, v4

    move-object/from16 v28, v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_30
    aget v5, v24, v27

    if-ge v2, v5, :cond_43

    aget-object v5, v25, v27

    aget v5, v5, v2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfc;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzfc;->zza:I

    aget v5, v26, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_43
    add-int/lit8 v4, v4, 0x1

    aput v4, v20, v27

    add-int/lit8 v4, v27, 0x1

    move-object/from16 v2, v26

    move-object/from16 v5, v28

    goto :goto_2f

    :cond_44
    move-object/from16 v28, v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v6, :cond_47

    add-int/lit8 v4, v2, 0x1

    move v5, v4

    :goto_32
    if-ge v5, v7, :cond_46

    aget-object v26, v14, v5

    aget-boolean v26, v26, v2

    if-eqz v26, :cond_45

    move/from16 v26, v2

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    goto :goto_33

    :cond_45
    move/from16 v26, v2

    :goto_33
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v26

    goto :goto_32

    :cond_46
    move v2, v4

    goto :goto_31

    :cond_47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>()V

    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    if-le v2, v4, :cond_48

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    const/4 v4, 0x2

    :goto_34
    if-ge v4, v2, :cond_48

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v6

    invoke-static {v0, v6, v9, v3}, Lcom/google/android/gms/internal/ads/zzfp;->d(Lcom/google/android/gms/internal/ads/zzfq;ZILcom/google/android/gms/internal/ads/zzfe;)Lcom/google/android/gms/internal/ads/zzfe;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_48
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v4

    add-int/2addr v4, v15

    if-le v4, v15, :cond_49

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, v22

    move-object/from16 v2, v23

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzfl;)V

    return-object v1

    :cond_49
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v6

    new-array v9, v5, [I

    const/16 v26, 0x1

    aput v10, v9, v26

    const/4 v5, 0x0

    aput v4, v9, v5

    invoke-static {v13, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Z

    new-array v12, v4, [I

    const/16 v17, 0x0

    new-array v5, v4, [I

    move-object/from16 v26, v5

    const/4 v5, 0x0

    :goto_35
    if-ge v5, v15, :cond_4e

    aput v17, v12, v5

    move/from16 v27, v5

    aget v5, v8, v27

    aput v5, v26, v27

    if-nez v6, :cond_4a

    aget-object v5, v9, v27

    move-object/from16 v29, v8

    aget v8, v24, v27

    move-object/from16 v30, v9

    move-object/from16 v31, v12

    const/4 v9, 0x0

    const/4 v12, 0x1

    invoke-static {v5, v9, v8, v12}, Ljava/util/Arrays;->fill([ZIIZ)V

    aget v5, v24, v27

    aput v5, v31, v27

    :goto_36
    const/16 v17, 0x0

    goto :goto_39

    :cond_4a
    move-object/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v31, v12

    const/4 v12, 0x1

    if-ne v6, v12, :cond_4d

    const/4 v8, 0x0

    :goto_37
    aget v9, v24, v27

    if-ge v8, v9, :cond_4c

    aget-object v9, v30, v27

    aget-object v12, v25, v27

    aget v12, v12, v8

    if-ne v12, v5, :cond_4b

    const/4 v12, 0x1

    goto :goto_38

    :cond_4b
    const/4 v12, 0x0

    :goto_38
    aput-boolean v12, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_4c
    const/4 v12, 0x1

    aput v12, v31, v27

    goto :goto_36

    :cond_4d
    const/16 v17, 0x0

    aget-object v5, v30, v17

    aput-boolean v12, v5, v17

    aput v12, v31, v17

    :goto_39
    add-int/lit8 v5, v27, 0x1

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v12, v31

    goto :goto_35

    :cond_4e
    move-object/from16 v30, v9

    move-object/from16 v31, v12

    const/4 v12, 0x1

    new-array v5, v10, [I

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v10, v9, v12

    aput v4, v9, v17

    invoke-static {v13, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Z

    const/4 v10, 0x1

    const/4 v12, 0x0

    :goto_3a
    if-ge v10, v4, :cond_5c

    if-ne v6, v8, :cond_50

    const/4 v8, 0x0

    :goto_3b
    aget v13, v24, v10

    if-ge v8, v13, :cond_50

    aget-object v13, v30, v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v27

    aput-boolean v27, v13, v8

    aget v13, v31, v10

    aget-object v27, v30, v10

    aget-boolean v27, v27, v8

    add-int v13, v13, v27

    aput v13, v31, v10

    if-eqz v27, :cond_4f

    aget-object v13, v25, v10

    aget v13, v13, v8

    aput v13, v26, v10

    :cond_4f
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    :cond_50
    if-nez v12, :cond_53

    aget-object v8, v25, v10

    const/16 v17, 0x0

    aget v8, v8, v17

    if-nez v8, :cond_52

    aget-object v8, v30, v10

    aget-boolean v8, v8, v17

    if-eqz v8, :cond_52

    const/4 v8, 0x1

    const/4 v12, 0x0

    :goto_3c
    aget v13, v24, v10

    if-ge v8, v13, :cond_54

    aget-object v13, v25, v10

    aget v13, v13, v8

    if-ne v13, v11, :cond_51

    aget-object v13, v30, v10

    aget-boolean v13, v13, v11

    if-eqz v13, :cond_51

    move v12, v10

    :cond_51
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    :cond_52
    const/4 v12, 0x0

    goto :goto_3d

    :cond_53
    const/16 v17, 0x0

    :cond_54
    :goto_3d
    const/4 v8, 0x0

    :goto_3e
    aget v13, v24, v10

    if-ge v8, v13, :cond_5a

    const/4 v13, 0x1

    if-le v2, v13, :cond_58

    aget-object v13, v9, v10

    aget-object v27, v30, v10

    aget-boolean v27, v27, v8

    aput-boolean v27, v13, v8

    move-object/from16 v27, v14

    int-to-double v13, v2

    move/from16 v29, v2

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v13, v14, v2}, Lcom/google/android/gms/internal/ads/zzgch;->zza(DLjava/math/RoundingMode;)I

    move-result v2

    aget-object v13, v9, v10

    aget-boolean v13, v13, v8

    if-nez v13, :cond_56

    aget-object v13, v25, v10

    aget v13, v13, v8

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzfc;

    iget v13, v13, Lcom/google/android/gms/internal/ads/zzfc;->zza:I

    const/4 v14, 0x0

    :goto_3f
    if-ge v14, v8, :cond_56

    aget-object v32, v25, v10

    move/from16 v33, v6

    aget v6, v32, v14

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfc;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzfc;->zza:I

    aget-object v32, p1, v13

    aget-boolean v6, v32, v6

    if-eqz v6, :cond_55

    aget-object v6, v9, v10

    const/4 v13, 0x1

    aput-boolean v13, v6, v8

    goto :goto_40

    :cond_55
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v33

    goto :goto_3f

    :cond_56
    move/from16 v33, v6

    :goto_40
    aget-object v6, v9, v10

    aget-boolean v6, v6, v8

    if-eqz v6, :cond_59

    if-lez v12, :cond_57

    if-ne v10, v12, :cond_57

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v2

    aput v2, v5, v8

    goto :goto_41

    :cond_57
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    goto :goto_41

    :cond_58
    move/from16 v29, v2

    move/from16 v33, v6

    move-object/from16 v27, v14

    :cond_59
    :goto_41
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v14, v27

    move/from16 v2, v29

    move/from16 v6, v33

    goto :goto_3e

    :cond_5a
    move/from16 v29, v2

    move/from16 v33, v6

    move-object/from16 v27, v14

    aget v2, v31, v10

    const/4 v13, 0x1

    if-ne v2, v13, :cond_5b

    aget v2, v26, v10

    aget v2, v19, v2

    if-lez v2, :cond_5b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    :cond_5b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, v27

    move/from16 v2, v29

    move/from16 v6, v33

    const/4 v8, 0x2

    goto/16 :goto_3a

    :cond_5c
    move-object/from16 v27, v14

    const/16 v17, 0x0

    if-nez v12, :cond_5d

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, v22

    move-object/from16 v2, v23

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzfl;)V

    return-object v1

    :cond_5d
    move-object/from16 v2, v23

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v6

    add-int/lit8 v8, v6, 0x1

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfzo;->zzi(I)Lcom/google/android/gms/internal/ads/zzfzl;

    move-result-object v10

    new-array v11, v7, [I

    const/4 v12, 0x0

    :goto_42
    if-ge v12, v8, :cond_64

    const/16 v13, 0x10

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v14

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v21

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v22

    if-eqz v22, :cond_5f

    move-object/from16 p1, v1

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v1

    const/4 v13, 0x3

    if-ne v1, v13, :cond_5e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    :cond_5e
    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v23

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v25

    move/from16 v31, v23

    move/from16 v32, v25

    goto :goto_43

    :cond_5f
    move-object/from16 p1, v1

    const/4 v1, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v13

    if-eqz v13, :cond_63

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v23

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v25

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v26

    move-object/from16 v35, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_60

    const/4 v2, 0x2

    if-ne v1, v2, :cond_61

    :cond_60
    const/4 v2, 0x2

    goto :goto_44

    :cond_61
    const/4 v2, 0x1

    :goto_44
    add-int v13, v13, v23

    mul-int v13, v13, v2

    sub-int/2addr v14, v13

    const/4 v13, 0x1

    if-ne v1, v13, :cond_62

    const/4 v2, 0x2

    goto :goto_45

    :cond_62
    const/4 v2, 0x1

    :goto_45
    add-int v25, v25, v26

    mul-int v25, v25, v2

    sub-int v21, v21, v25

    :goto_46
    move/from16 v33, v14

    move/from16 v34, v21

    goto :goto_47

    :cond_63
    move-object/from16 v35, v2

    goto :goto_46

    :goto_47
    new-instance v29, Lcom/google/android/gms/internal/ads/zzfg;

    move/from16 v30, v1

    invoke-direct/range {v29 .. v34}, Lcom/google/android/gms/internal/ads/zzfg;-><init>(IIIII)V

    move-object/from16 v1, v29

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    goto/16 :goto_42

    :cond_64
    move-object/from16 p1, v1

    move-object/from16 v35, v2

    const/4 v13, 0x1

    if-le v8, v13, :cond_65

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v1

    if-eqz v1, :cond_65

    int-to-double v1, v8

    sget-object v6, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzgch;->zza(DLjava/math/RoundingMode;)I

    move-result v1

    const/4 v2, 0x1

    :goto_48
    if-ge v2, v7, :cond_66

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v6

    aput v6, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_65
    const/4 v1, 0x1

    :goto_49
    if-ge v1, v7, :cond_66

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_66
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfh;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(Ljava/util/List;[I)V

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    const/4 v2, 0x1

    :goto_4a
    if-ge v2, v7, :cond_68

    aget v6, v28, v2

    aget v6, v19, v6

    if-nez v6, :cond_67

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_68
    const/4 v2, 0x1

    :goto_4b
    if-ge v2, v4, :cond_6f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v6

    const/4 v8, 0x0

    :goto_4c
    aget v10, v20, v2

    if-ge v8, v10, :cond_6e

    if-lez v8, :cond_69

    if-eqz v6, :cond_69

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v10

    goto :goto_4d

    :cond_69
    if-nez v8, :cond_6a

    const/4 v10, 0x1

    goto :goto_4d

    :cond_6a
    const/4 v10, 0x0

    :goto_4d
    if-eqz v10, :cond_6d

    const/4 v10, 0x0

    :goto_4e
    aget v11, v24, v2

    if-ge v10, v11, :cond_6c

    aget-object v11, v9, v2

    aget-boolean v11, v11, v10

    if-eqz v11, :cond_6b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    :cond_6b
    add-int/lit8 v10, v10, 0x1

    goto :goto_4e

    :cond_6c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    :cond_6d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_6f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v2

    const/16 v16, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    goto :goto_51

    :cond_70
    const/4 v4, 0x1

    :goto_4f
    if-ge v4, v7, :cond_73

    const/4 v6, 0x0

    :goto_50
    if-ge v6, v4, :cond_72

    aget-object v8, v27, v4

    aget-boolean v8, v8, v6

    if-eqz v8, :cond_71

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    :cond_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_50

    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_73
    :goto_51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v2

    const/4 v4, 0x1

    :goto_52
    if-gt v4, v2, :cond_74

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_74
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzd()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v2

    if-nez v2, :cond_75

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v2

    if-eqz v2, :cond_76

    :cond_75
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    :cond_76
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v4

    if-nez v2, :cond_77

    if-eqz v4, :cond_7d

    :cond_77
    const/4 v6, 0x0

    :goto_53
    if-ge v6, v15, :cond_7d

    const/4 v8, 0x0

    :goto_54
    aget v9, v20, v6

    if-ge v8, v9, :cond_7c

    if-eqz v2, :cond_78

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v9

    goto :goto_55

    :cond_78
    const/4 v9, 0x0

    :goto_55
    if-eqz v4, :cond_79

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v10

    goto :goto_56

    :cond_79
    const/4 v10, 0x0

    :goto_56
    if-eqz v9, :cond_7a

    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    :cond_7a
    if-eqz v10, :cond_7b

    const/16 v9, 0x12

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    :cond_7b
    add-int/lit8 v8, v8, 0x1

    goto :goto_54

    :cond_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    :cond_7d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v2

    if-eqz v2, :cond_7e

    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v4

    const/4 v13, 0x1

    add-int/2addr v4, v13

    goto :goto_57

    :cond_7e
    const/4 v13, 0x1

    move v4, v7

    :goto_57
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfzo;->zzi(I)Lcom/google/android/gms/internal/ads/zzfzl;

    move-result-object v6

    new-array v8, v7, [I

    const/4 v9, 0x0

    :goto_58
    if-ge v9, v4, :cond_80

    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v11

    if-eq v13, v11, :cond_7f

    const/4 v11, 0x2

    :goto_59
    const/16 v12, 0x8

    goto :goto_5a

    :cond_7f
    const/4 v11, 0x1

    goto :goto_59

    :goto_5a
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzm;->zza(I)I

    move-result v13

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzm;->zzb(I)I

    move-result v14

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    new-instance v15, Lcom/google/android/gms/internal/ads/zzfk;

    invoke-direct {v15, v13, v11, v14}, Lcom/google/android/gms/internal/ads/zzfk;-><init>(III)V

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x1

    goto :goto_58

    :cond_80
    if-eqz v2, :cond_81

    const/4 v13, 0x1

    if-le v4, v13, :cond_81

    const/4 v14, 0x0

    :goto_5b
    if-ge v14, v7, :cond_81

    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v2

    aput v2, v8, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5b

    :cond_81
    new-instance v11, Lcom/google/android/gms/internal/ads/zzfl;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    invoke-direct {v11, v0, v8}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Ljava/util/List;[I)V

    move-object v6, v11

    :goto_5c
    move-object v0, v1

    goto :goto_5d

    :cond_82
    const/4 v6, 0x0

    goto :goto_5c

    :goto_5d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfm;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzff;

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzff;-><init>(Ljava/util/List;[I)V

    move-object/from16 v3, p1

    move-object v5, v0

    move-object/from16 v2, v35

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzfl;)V

    return-object v1

    :goto_5e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzfl;)V

    return-object v1

    :goto_5f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzfl;)V

    return-object v1

    :cond_83
    :goto_60
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfm;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzff;Lcom/google/android/gms/internal/ads/zzfh;Lcom/google/android/gms/internal/ads/zzfl;)V

    return-object v1
.end method

.method public static zze([BII)Lcom/google/android/gms/internal/ads/zzfn;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfq;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzfq;-><init>([BII)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfn;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzfn;-><init>(IIZ)V

    return-object v0
.end method

.method public static zzf([BII)Lcom/google/android/gms/internal/ads/zzfo;
    .locals 32

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfq;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfq;-><init>([BII)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v7

    const/16 v3, 0x56

    const/16 v4, 0x2c

    const/16 v8, 0x7a

    const/16 v9, 0x6e

    const/16 v10, 0xf4

    const/4 v11, 0x3

    const/4 v14, 0x1

    const/16 v15, 0x64

    if-eq v2, v15, :cond_1

    if-eq v2, v9, :cond_1

    if-eq v2, v8, :cond_1

    if-eq v2, v10, :cond_1

    if-eq v2, v4, :cond_1

    const/16 v13, 0x53

    if-eq v2, v13, :cond_1

    if-eq v2, v3, :cond_1

    const/16 v13, 0x76

    if-eq v2, v13, :cond_1

    const/16 v13, 0x80

    if-eq v2, v13, :cond_1

    const/16 v13, 0x8a

    if-ne v2, v13, :cond_0

    const/16 v2, 0x8a

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v18, 0x0

    goto/16 :goto_7

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v13

    if-ne v13, v11, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v16

    const/4 v12, 0x3

    :goto_1
    const/16 p1, 0x10

    goto :goto_2

    :cond_2
    move v12, v13

    const/16 v16, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v18

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v19

    if-eqz v19, :cond_8

    if-eq v12, v11, :cond_3

    const/16 v12, 0x8

    goto :goto_3

    :cond_3
    const/16 v12, 0xc

    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v12, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v19

    if-eqz v19, :cond_7

    const/4 v10, 0x6

    if-ge v1, v10, :cond_4

    const/16 v10, 0x10

    goto :goto_5

    :cond_4
    const/16 v10, 0x40

    :goto_5
    const/4 v8, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x8

    :goto_6
    if-ge v8, v10, :cond_7

    if-eqz v20, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzb()I

    move-result v20

    add-int v9, v20, v21

    add-int/lit16 v9, v9, 0x100

    rem-int/lit16 v9, v9, 0x100

    move/from16 v20, v9

    :cond_5
    if-eqz v20, :cond_6

    move/from16 v21, v20

    :cond_6
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x6e

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    const/16 v8, 0x7a

    const/16 v9, 0x6e

    const/16 v10, 0xf4

    goto :goto_4

    :cond_8
    move/from16 v12, v17

    :goto_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    const/16 v3, 0xf4

    :goto_8
    const/16 v19, 0x0

    goto :goto_a

    :cond_9
    if-ne v8, v14, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzb()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzb()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v9

    int-to-long v9, v9

    const/4 v15, 0x0

    :goto_9
    int-to-long v3, v15

    cmp-long v24, v3, v9

    if-gez v24, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_a
    move/from16 v19, v8

    const/16 v3, 0xf4

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_a

    :cond_b
    const/16 v3, 0xf4

    const/4 v9, 0x0

    goto :goto_8

    :goto_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v10

    add-int/2addr v10, v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v15

    add-int/2addr v15, v14

    move/from16 v24, v15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v15

    rsub-int/lit8 v25, v15, 0x2

    if-nez v15, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    :cond_c
    mul-int v24, v24, v25

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    mul-int/lit8 v10, v10, 0x10

    mul-int/lit8 v24, v24, 0x10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v26

    const/16 v27, 0x2

    if-eqz v26, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v26

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v28

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v29

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v30

    if-nez v13, :cond_d

    const/16 v31, 0x1

    goto :goto_d

    :cond_d
    if-ne v13, v11, :cond_e

    const/16 v31, 0x1

    goto :goto_b

    :cond_e
    const/16 v31, 0x2

    :goto_b
    if-ne v13, v14, :cond_f

    const/4 v13, 0x2

    goto :goto_c

    :cond_f
    const/4 v13, 0x1

    :goto_c
    mul-int v25, v25, v13

    :goto_d
    add-int v26, v26, v28

    mul-int v26, v26, v31

    sub-int v10, v10, v26

    add-int v29, v29, v30

    mul-int v29, v29, v25

    sub-int v24, v24, v29

    :cond_10
    const/16 v13, 0x2c

    if-eq v2, v13, :cond_12

    const/16 v13, 0x56

    if-eq v2, v13, :cond_12

    const/16 v13, 0x64

    if-eq v2, v13, :cond_12

    const/16 v13, 0x6e

    if-eq v2, v13, :cond_12

    const/16 v13, 0x7a

    if-eq v2, v13, :cond_12

    if-ne v2, v3, :cond_11

    const/16 v2, 0xf4

    goto :goto_e

    :cond_11
    const/16 v13, 0x10

    goto :goto_f

    :cond_12
    :goto_e
    and-int/lit8 v3, v5, 0x10

    if-eqz v3, :cond_11

    const/4 v13, 0x0

    :goto_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v3

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v20, -0x1

    if-eqz v3, :cond_21

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v14

    const/16 v3, 0xff

    if-ne v14, v3, :cond_13

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v14

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v3

    if-eqz v14, :cond_15

    if-eqz v3, :cond_15

    int-to-float v14, v14

    int-to-float v3, v3

    div-float v17, v14, v3

    goto :goto_10

    :cond_13
    const/16 v3, 0x11

    if-ge v14, v3, :cond_14

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfp;->zzb:[F

    aget v17, v3, v14

    goto :goto_10

    :cond_14
    const-string v3, "Unexpected aspect_ratio_idc value: "

    const-string v11, "NalUnitUtil"

    invoke-static {v14, v3, v11}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    :cond_15
    :goto_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v3

    const/4 v11, 0x1

    if-eq v11, v3, :cond_17

    const/4 v14, 0x2

    goto :goto_11

    :cond_17
    const/4 v14, 0x1

    :goto_11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v11

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v20

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzm;->zza(I)I

    move-result v3

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzm;->zzb(I)I

    move-result v20

    move/from16 v11, v20

    move/from16 v20, v14

    goto :goto_12

    :cond_18
    move/from16 v20, v14

    :cond_19
    const/4 v3, -0x1

    const/4 v11, -0x1

    :goto_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v14

    if-eqz v14, :cond_1b

    const/16 v14, 0x41

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    :cond_1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfp;->e(Lcom/google/android/gms/internal/ads/zzfq;)V

    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v21

    if-eqz v21, :cond_1d

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfp;->e(Lcom/google/android/gms/internal/ads/zzfq;)V

    :cond_1d
    if-nez v14, :cond_1e

    if-eqz v21, :cond_1f

    :cond_1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v14

    if-eqz v14, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    :cond_20
    move/from16 v22, v11

    move/from16 v23, v13

    move/from16 v11, v17

    move/from16 v21, v20

    move/from16 v20, v3

    goto :goto_13

    :cond_21
    move/from16 v23, v13

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v21, -0x1

    const/16 v22, -0x1

    :goto_13
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfo;

    move/from16 v17, v8

    move/from16 v14, v16

    move/from16 v13, v18

    move/from16 v16, v1

    move v8, v4

    move/from16 v18, v9

    move v9, v10

    move/from16 v10, v24

    move v4, v2

    invoke-direct/range {v3 .. v23}, Lcom/google/android/gms/internal/ads/zzfo;-><init>(IIIIIIIFIIZZIIIZIIII)V

    return-object v3
.end method

.method public static zzg(Ljava/util/List;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v4, v2

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    new-array v6, v5, [Z

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>()V

    const/4 v8, 0x0

    :goto_1
    array-length v9, v2

    if-ge v8, v9, :cond_1

    invoke-static {v2, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zzfp;->zza([BII[Z)I

    move-result v8

    if-eq v8, v9, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    :cond_0
    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v5

    if-ge v8, v4, :cond_3

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfq;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v5

    invoke-direct {v8, v2, v9, v4}, Lcom/google/android/gms/internal/ads/zzfq;-><init>([BII)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfp;->c(Lcom/google/android/gms/internal/ads/zzfq;)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v9

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzfd;->zza:I

    const/16 v11, 0x21

    if-ne v10, v11, :cond_3

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzfd;->zzb:I

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    const/4 p0, 0x4

    invoke-virtual {v8, p0}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result p0

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfq;->zze()V

    const/4 v0, 0x1

    invoke-static {v8, v0, p0, v3}, Lcom/google/android/gms/internal/ads/zzfp;->d(Lcom/google/android/gms/internal/ads/zzfq;ZILcom/google/android/gms/internal/ads/zzfe;)Lcom/google/android/gms/internal/ads/zzfe;

    move-result-object p0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->zza:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzc:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzd:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfe;->zze:[I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzf:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(IZII[II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v3
.end method

.method public static zzh([Z)V
    .locals 2

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    return-void
.end method

.method public static zzi(B)Z
    .locals 3

    and-int/lit8 v0, p0, 0x60

    shr-int/lit8 v0, v0, 0x5

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x0

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/16 v2, 0x9

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    const/16 v2, 0xe

    if-ne p0, v2, :cond_3

    return v0

    :cond_3
    return v1
.end method

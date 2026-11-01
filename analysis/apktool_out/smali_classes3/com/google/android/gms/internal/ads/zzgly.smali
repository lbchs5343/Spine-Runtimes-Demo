.class public final Lcom/google/android/gms/internal/ads/zzgly;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I[B)J
    .locals 3

    aget-byte v0, p1, p0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static b(J[BI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, p2, v1

    const/16 v1, 0x8

    shr-long/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zza([B[B)[B
    .locals 76

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v3

    const-wide/32 v5, 0x3ffffff

    and-long/2addr v3, v5

    const/4 v7, 0x3

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v8

    const/4 v10, 0x2

    shr-long/2addr v8, v10

    const-wide/32 v11, 0x3ffff03

    and-long/2addr v8, v11

    const/4 v11, 0x6

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v12

    const/4 v14, 0x4

    shr-long/2addr v12, v14

    const-wide/32 v15, 0x3ffc0ff

    and-long/2addr v12, v15

    const/16 v15, 0x9

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v16

    shr-long v16, v16, v11

    const-wide/32 v18, 0x3f03fff

    and-long v16, v16, v18

    move-wide/from16 v18, v5

    const/16 v5, 0xc

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v20

    const/16 v6, 0x8

    shr-long v20, v20, v6

    const-wide/32 v22, 0xfffff

    and-long v20, v20, v22

    const/16 v22, 0x2

    const/16 v10, 0x11

    const/16 v23, 0x8

    new-array v6, v10, [B

    const-wide/16 v24, 0x0

    move-wide/from16 v26, v24

    move-wide/from16 v28, v26

    move-wide/from16 v30, v28

    move-wide/from16 v32, v30

    const/4 v14, 0x0

    const/16 v34, 0x4

    :goto_0
    array-length v5, v1

    const/16 v36, 0x18

    const/16 v15, 0x10

    const-wide/16 v37, 0x5

    const/16 v39, 0x1a

    if-ge v14, v5, :cond_1

    sub-int/2addr v5, v14

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v14, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v40, 0x1

    aput-byte v40, v6, v5

    if-eq v5, v15, :cond_0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6, v5, v10, v2}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_0
    mul-long v40, v20, v37

    mul-long v42, v16, v37

    mul-long v44, v12, v37

    mul-long v46, v8, v37

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v48

    and-long v48, v48, v18

    add-long v32, v32, v48

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v48

    shr-long v48, v48, v22

    and-long v48, v48, v18

    add-long v26, v26, v48

    invoke-static {v11, v6}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v48

    shr-long v48, v48, v34

    and-long v48, v48, v18

    add-long v24, v24, v48

    const/16 v5, 0x9

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v48

    shr-long v48, v48, v11

    and-long v48, v48, v18

    add-long v28, v28, v48

    const/16 v5, 0xc

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v48

    shr-long v48, v48, v23

    and-long v48, v48, v18

    aget-byte v5, v6, v15

    shl-int/lit8 v5, v5, 0x18

    move-wide/from16 v50, v8

    int-to-long v7, v5

    or-long v7, v48, v7

    add-long v30, v30, v7

    mul-long v7, v32, v3

    mul-long v48, v32, v50

    mul-long v52, v26, v3

    mul-long v54, v32, v12

    mul-long v56, v26, v50

    mul-long v58, v24, v3

    mul-long v60, v32, v16

    mul-long v62, v26, v12

    mul-long v64, v24, v50

    mul-long v66, v28, v3

    mul-long v32, v32, v20

    mul-long v68, v26, v16

    mul-long v70, v24, v12

    mul-long v72, v28, v50

    mul-long v74, v30, v3

    mul-long v26, v26, v40

    add-long v26, v26, v7

    mul-long v7, v24, v42

    add-long v7, v7, v26

    mul-long v26, v28, v44

    add-long v26, v26, v7

    mul-long v46, v46, v30

    add-long v46, v46, v26

    shr-long v7, v46, v39

    and-long v26, v46, v18

    add-long v48, v48, v52

    mul-long v24, v24, v40

    add-long v24, v24, v48

    mul-long v46, v28, v42

    add-long v46, v46, v24

    mul-long v44, v44, v30

    add-long v44, v44, v46

    add-long v44, v44, v7

    shr-long v7, v44, v39

    and-long v24, v44, v18

    add-long v54, v54, v56

    add-long v54, v54, v58

    mul-long v28, v28, v40

    add-long v28, v28, v54

    mul-long v42, v42, v30

    add-long v42, v42, v28

    add-long v42, v42, v7

    shr-long v7, v42, v39

    and-long v28, v42, v18

    add-long v60, v60, v62

    add-long v60, v60, v64

    add-long v60, v60, v66

    mul-long v30, v30, v40

    add-long v30, v30, v60

    add-long v30, v30, v7

    shr-long v7, v30, v39

    and-long v30, v30, v18

    add-long v32, v32, v68

    add-long v32, v32, v70

    add-long v32, v32, v72

    add-long v32, v32, v74

    add-long v32, v32, v7

    shr-long v7, v32, v39

    and-long v32, v32, v18

    mul-long v7, v7, v37

    add-long v7, v7, v26

    shr-long v26, v7, v39

    and-long v7, v7, v18

    add-long v26, v24, v26

    add-int/lit8 v14, v14, 0x10

    move-wide/from16 v24, v28

    move-wide/from16 v28, v30

    move-wide/from16 v30, v32

    const/16 v15, 0x9

    move-wide/from16 v32, v7

    move-wide/from16 v8, v50

    const/4 v7, 0x3

    goto/16 :goto_0

    :cond_1
    shr-long v3, v26, v39

    and-long v5, v26, v18

    add-long v24, v24, v3

    shr-long v3, v24, v39

    and-long v7, v24, v18

    add-long v28, v28, v3

    shr-long v3, v28, v39

    and-long v9, v28, v18

    add-long v30, v30, v3

    shr-long v3, v30, v39

    and-long v12, v30, v18

    mul-long v3, v3, v37

    add-long v3, v3, v32

    shr-long v16, v3, v39

    and-long v3, v3, v18

    add-long v37, v3, v37

    shr-long v20, v37, v39

    and-long v24, v37, v18

    add-long v5, v5, v16

    add-long v20, v5, v20

    shr-long v16, v20, v39

    and-long v20, v20, v18

    add-long v16, v7, v16

    shr-long v26, v16, v39

    and-long v16, v16, v18

    add-long v26, v9, v26

    shr-long v28, v26, v39

    and-long v18, v26, v18

    add-long v28, v12, v28

    const-wide/32 v26, -0x4000000

    add-long v28, v28, v26

    const/16 v1, 0x3f

    move-wide/from16 v26, v12

    const/4 v14, 0x6

    shr-long v11, v28, v1

    and-long/2addr v5, v11

    move-wide/from16 v30, v3

    not-long v2, v11

    and-long v20, v20, v2

    or-long v5, v5, v20

    shl-long v20, v5, v39

    shr-long v4, v5, v14

    and-long/2addr v7, v11

    and-long v13, v16, v2

    or-long/2addr v7, v13

    const/16 v35, 0xc

    shr-long v13, v7, v35

    and-long/2addr v9, v11

    and-long v16, v18, v2

    or-long v9, v9, v16

    and-long v16, v26, v11

    and-long v18, v28, v2

    or-long v16, v16, v18

    const/16 v6, 0x12

    shr-long v18, v9, v6

    shl-long v16, v16, v23

    and-long v11, v30, v11

    and-long v2, v24, v2

    or-long/2addr v2, v11

    or-long v2, v2, v20

    const-wide v11, 0xffffffffL

    and-long/2addr v2, v11

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v20

    add-long v20, v20, v2

    const/16 v2, 0x14

    shl-long v6, v7, v2

    or-long/2addr v4, v6

    and-long/2addr v4, v11

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v2

    add-long/2addr v2, v4

    const/16 v4, 0xe

    shl-long v4, v9, v4

    or-long/2addr v4, v13

    and-long/2addr v4, v11

    const/16 v6, 0x18

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v6

    add-long/2addr v6, v4

    or-long v4, v18, v16

    and-long/2addr v4, v11

    const/16 v8, 0x1c

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/ads/zzgly;->a(I[B)J

    move-result-wide v8

    add-long/2addr v8, v4

    new-array v0, v15, [B

    and-long v4, v20, v11

    const/4 v1, 0x0

    invoke-static {v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzgly;->b(J[BI)V

    const/16 v1, 0x20

    shr-long v4, v20, v1

    add-long/2addr v2, v4

    and-long v4, v2, v11

    const/4 v10, 0x4

    invoke-static {v4, v5, v0, v10}, Lcom/google/android/gms/internal/ads/zzgly;->b(J[BI)V

    shr-long/2addr v2, v1

    add-long/2addr v6, v2

    and-long v2, v6, v11

    const/16 v4, 0x8

    invoke-static {v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzgly;->b(J[BI)V

    shr-long v1, v6, v1

    add-long/2addr v8, v1

    and-long v1, v8, v11

    const/16 v5, 0xc

    invoke-static {v1, v2, v0, v5}, Lcom/google/android/gms/internal/ads/zzgly;->b(J[BI)V

    return-object v0
.end method

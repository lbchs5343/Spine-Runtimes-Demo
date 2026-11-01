.class public final Lcom/google/android/gms/internal/ads/zzadg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:F

.field public final zzj:I

.field public final zzk:Ljava/lang/String;

.field public final zzl:Lcom/google/android/gms/internal/ads/zzfm;


# direct methods
.method public constructor <init>(Ljava/util/List;IIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadg;->zza:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzadg;->zze:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzf:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzg:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzh:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzi:F

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzj:I

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzk:Ljava/lang/String;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzadg;->zzl:Lcom/google/android/gms/internal/ads/zzfm;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzed;ZLcom/google/android/gms/internal/ads/zzfm;)Lcom/google/android/gms/internal/ads/zzadg;
    .locals 40

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    const/4 v2, 0x1

    goto/16 :goto_15

    :cond_0
    const/16 v4, 0x15

    :try_start_1
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v5, :cond_2

    :try_start_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v12

    add-int/lit8 v13, v12, 0x4

    add-int/2addr v9, v13

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    :try_start_3
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    new-array v6, v9, [B

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v24, p2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, -0x1

    const/16 v23, 0x0

    :goto_4
    if-ge v11, v5, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v13

    const/16 v14, 0x3f

    and-int/2addr v13, v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v8
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v10, v24

    const/4 v3, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x1

    :goto_5
    if-ge v3, v8, :cond_19

    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v14

    move/from16 v24, v3

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfp;->zza:[B

    invoke-static {v3, v7, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v12, 0x4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v7

    invoke-static {v2, v7, v6, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x20

    if-ne v13, v2, :cond_3

    if-nez v24, :cond_4

    add-int v2, v3, v14

    invoke-static {v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzd([BII)Lcom/google/android/gms/internal/ads/zzfm;

    move-result-object v10

    move/from16 v28, v3

    move/from16 v27, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_3
    move v2, v13

    :cond_4
    const/16 v7, 0x21

    move/from16 v27, v4

    const/16 v4, 0x8

    if-ne v2, v7, :cond_8

    if-nez v24, :cond_6

    add-int v2, v3, v14

    invoke-static {v6, v3, v2, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzc([BIILcom/google/android/gms/internal/ads/zzfm;)Lcom/google/android/gms/internal/ads/zzfj;

    move-result-object v2

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfj;->zzd:I

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfj;->zzb:I

    add-int/2addr v7, v4

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzfj;->zzc:I

    add-int/2addr v12, v4

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzfj;->zzh:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzfj;->zzi:I

    move/from16 v28, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfj;->zzj:I

    move/from16 v16, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfj;->zzf:F

    move/from16 v17, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfj;->zzg:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Lcom/google/android/gms/internal/ads/zzfe;

    if-eqz v2, :cond_5

    move/from16 v18, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zza:I

    move/from16 v29, v3

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Z

    move/from16 v30, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzc:I

    move/from16 v31, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzd:I

    move/from16 v32, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zze:[I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzf:I

    move/from16 v34, v2

    move-object/from16 v33, v3

    invoke-static/range {v29 .. v34}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(IZII[II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    :goto_6
    move/from16 v19, v16

    move/from16 v21, v17

    move/from16 v22, v18

    move/from16 v3, v24

    move/from16 v17, v4

    move/from16 v16, v12

    move/from16 v18, v15

    const/4 v4, 0x0

    move v15, v7

    goto/16 :goto_12

    :cond_5
    move/from16 v18, v3

    goto :goto_6

    :cond_6
    move/from16 v28, v3

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_11

    :cond_8
    move/from16 v28, v3

    const/16 v3, 0x27

    if-ne v2, v3, :cond_7

    if-nez v24, :cond_7

    add-int v3, v28, v14

    add-int/lit8 v12, v12, 0x6

    add-int/lit8 v3, v3, -0x1

    :goto_7
    aget-byte v2, v6, v3

    if-nez v2, :cond_a

    if-le v3, v12, :cond_9

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_9
    :goto_8
    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_a
    if-eqz v2, :cond_9

    if-gt v3, v12, :cond_b

    goto :goto_8

    :cond_b
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfq;

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v6, v12, v3}, Lcom/google/android/gms/internal/ads/zzfq;-><init>([BII)V

    :goto_9
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zzg(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v3

    const/4 v7, 0x0

    :goto_a
    const/16 v12, 0xff

    if-ne v3, v12, :cond_c

    add-int/lit16 v7, v7, 0xff

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v3

    goto :goto_a

    :cond_c
    add-int/2addr v7, v3

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_b
    if-ne v3, v12, :cond_d

    add-int/lit16 v4, v4, 0xff

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v29

    move/from16 v3, v29

    goto :goto_b

    :cond_d
    const/16 v29, 0x8

    add-int/2addr v4, v3

    if-eqz v4, :cond_9

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfq;->zzg(I)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_8

    :cond_e
    const/16 v3, 0xb0

    if-ne v7, v3, :cond_17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v31

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v4

    move/from16 v32, v4

    goto :goto_c

    :cond_f
    const/16 v32, 0x0

    :goto_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v4

    const/4 v7, 0x0

    const/16 v34, -0x1

    const/16 v35, -0x1

    const/16 v36, -0x1

    const/16 v37, -0x1

    const/16 v38, -0x1

    const/16 v39, -0x1

    :goto_d
    if-gt v7, v4, :cond_16

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v34

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzc()I

    move-result v35

    const/4 v12, 0x6

    move/from16 v29, v3

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v3

    const/16 v12, 0x3f

    if-ne v3, v12, :cond_10

    goto/16 :goto_8

    :cond_10
    if-nez v3, :cond_11

    add-int/lit8 v12, v31, -0x1e

    move/from16 v33, v3

    const/4 v3, 0x0

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_e

    :cond_11
    move/from16 v33, v3

    const/4 v3, 0x0

    add-int v12, v33, v31

    add-int/lit8 v12, v12, -0x1f

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_e
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v37

    if-eqz v29, :cond_14

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v3

    const/16 v12, 0x3f

    if-ne v3, v12, :cond_12

    goto/16 :goto_8

    :cond_12
    if-nez v3, :cond_13

    add-int/lit8 v12, v32, -0x1e

    move/from16 v30, v3

    const/4 v3, 0x0

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_f

    :cond_13
    move/from16 v30, v3

    const/4 v3, 0x0

    add-int v12, v30, v32

    add-int/lit8 v12, v12, -0x1f

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_f
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzfq;->zza(I)I

    move-result v39

    move/from16 v38, v30

    :cond_14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfq;->zzh()Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zzf(I)V

    :cond_15
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v29

    move/from16 v36, v33

    goto :goto_d

    :cond_16
    new-instance v30, Lcom/google/android/gms/internal/ads/zzfi;

    add-int/lit8 v33, v4, 0x1

    invoke-direct/range {v30 .. v39}, Lcom/google/android/gms/internal/ads/zzfi;-><init>(IIIIIIIII)V

    move-object/from16 v2, v30

    goto :goto_10

    :cond_17
    const/16 v4, 0x8

    goto/16 :goto_9

    :goto_10
    if-eqz v2, :cond_7

    if-eqz v10, :cond_7

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfi;->zza:I

    iget-object v3, v10, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfc;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzfc;->zzb:I

    if-ne v2, v3, :cond_18

    move/from16 v3, v24

    const/16 v20, 0x4

    goto :goto_12

    :cond_18
    const/4 v2, 0x5

    move/from16 v3, v24

    const/16 v20, 0x5

    goto :goto_12

    :goto_11
    move/from16 v3, v24

    :goto_12
    add-int v12, v28, v14

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v27

    const/4 v2, 0x4

    const/4 v7, 0x0

    const/16 v14, 0x3f

    goto/16 :goto_5

    :cond_19
    move/from16 v27, v4

    const/4 v4, 0x0

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v24, v10

    move/from16 v4, v27

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    const/16 v26, 0x1

    goto/16 :goto_0

    :cond_1a
    move/from16 v27, v4

    const/16 v26, 0x1

    if-nez v9, :cond_1b

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_13
    move-object v13, v0

    goto :goto_14

    :cond_1b
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_13

    :goto_14
    new-instance v12, Lcom/google/android/gms/internal/ads/zzadg;

    add-int/lit8 v14, v27, 0x1

    invoke-direct/range {v12 .. v24}, Lcom/google/android/gms/internal/ads/zzadg;-><init>(Ljava/util/List;IIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfm;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v12

    :goto_15
    if-eq v2, v1, :cond_1c

    const-string v1, "HEVC config"

    goto :goto_16

    :cond_1c
    const-string v1, "L-HEVC config"

    :goto_16
    const-string v2, "Error parsing"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v0

    throw v0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzadg;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbh;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzadg;->a(Lcom/google/android/gms/internal/ads/zzed;ZLcom/google/android/gms/internal/ads/zzfm;)Lcom/google/android/gms/internal/ads/zzadg;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzed;Lcom/google/android/gms/internal/ads/zzfm;)Lcom/google/android/gms/internal/ads/zzadg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbh;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzadg;->a(Lcom/google/android/gms/internal/ads/zzed;ZLcom/google/android/gms/internal/ads/zzfm;)Lcom/google/android/gms/internal/ads/zzadg;

    move-result-object p0

    return-object p0
.end method

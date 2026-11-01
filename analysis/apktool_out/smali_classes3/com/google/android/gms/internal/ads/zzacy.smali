.class public final Lcom/google/android/gms/internal/ads/zzacy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzed;I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    add-int/lit8 p1, p1, -0x8

    const/16 p0, 0x100

    shl-int/2addr p0, p1

    return p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_3
    add-int/lit8 p1, p1, -0x2

    const/16 p0, 0x240

    shl-int/2addr p0, p1

    return p0

    :pswitch_4
    const/16 p0, 0xc0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
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
    .end packed-switch
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadc;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzg(I)V

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    aget-byte v1, v1, v2

    and-int/2addr v1, v0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x2

    invoke-interface {p0, v4}, Lcom/google/android/gms/internal/ads/zzacs;->zzg(I)V

    if-eq v0, v1, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    invoke-static {p0, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzacv;->zza(Lcom/google/android/gms/internal/ads/zzacs;[BII)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzacx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacx;-><init>()V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzx()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzadc;->zzb:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    :goto_2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacx;->zza:J

    return-wide v0

    :catch_0
    const/4 p0, 0x0

    invoke-static {p0, p0}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p0

    throw p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzed;Lcom/google/android/gms/internal/ads/zzadc;ILcom/google/android/gms/internal/ads/zzacx;)Z
    .locals 22

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v2

    const/16 v4, 0x10

    ushr-long v4, v2, v4

    move/from16 v6, p2

    int-to-long v6, v6

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-eqz v9, :cond_0

    goto/16 :goto_6

    :cond_0
    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    const/4 v9, 0x1

    cmp-long v10, v4, v6

    if-nez v10, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0xc

    shr-long v10, v2, v5

    const/16 v12, 0x8

    shr-long v12, v2, v12

    const/4 v14, 0x4

    shr-long v14, v2, v14

    shr-long v16, v2, v9

    and-long/2addr v2, v6

    const-wide/16 v18, 0xf

    and-long v14, v14, v18

    long-to-int v15, v14

    const/4 v14, 0x7

    move-wide/from16 v20, v6

    const/4 v6, -0x1

    if-gt v15, v14, :cond_2

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzadc;->zzg:I

    add-int/2addr v7, v6

    if-ne v15, v7, :cond_a

    goto :goto_1

    :cond_2
    const/16 v7, 0xa

    if-gt v15, v7, :cond_a

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzadc;->zzg:I

    const/4 v14, 0x2

    if-ne v7, v14, :cond_a

    :goto_1
    const-wide/16 v14, 0x7

    and-long v14, v16, v14

    long-to-int v7, v14

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzadc;->zzi:I

    if-ne v7, v14, :cond_a

    :goto_2
    cmp-long v7, v2, v20

    if-eqz v7, :cond_a

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzed;->zzx()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_4

    :goto_3
    move-object/from16 v4, p3

    goto :goto_4

    :cond_4
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzadc;->zzb:I

    int-to-long v14, v4

    mul-long v2, v2, v14

    goto :goto_3

    :goto_4
    iput-wide v2, v4, Lcom/google/android/gms/internal/ads/zzacx;->zza:J

    and-long v2, v10, v18

    long-to-int v3, v2

    move-object/from16 v2, p0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzacy;->zza(Lcom/google/android/gms/internal/ads/zzed;I)I

    move-result v3

    if-eq v3, v6, :cond_a

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzadc;->zzb:I

    if-gt v3, v4, :cond_a

    and-long v3, v12, v18

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzadc;->zze:I

    long-to-int v4, v3

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    const/16 v3, 0xb

    if-gt v4, v3, :cond_6

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzadc;->zzf:I

    if-eq v4, v0, :cond_9

    goto :goto_6

    :cond_6
    if-ne v4, v5, :cond_7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    if-ne v0, v7, :cond_a

    goto :goto_5

    :cond_7
    const/16 v0, 0xe

    if-gt v4, v0, :cond_a

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v3

    if-ne v4, v0, :cond_8

    mul-int/lit8 v3, v3, 0xa

    :cond_8
    if-ne v3, v7, :cond_a

    :cond_9
    :goto_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    add-int/2addr v3, v6

    invoke-static {v2, v1, v3, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzg([BIII)I

    move-result v1

    if-ne v0, v1, :cond_a

    return v9

    :catch_0
    :cond_a
    :goto_6
    return v8
.end method

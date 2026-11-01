.class public final Lcom/google/android/gms/internal/ads/zzain;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final synthetic zza:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const-string v0, "OpusHead"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzain;->a:[B

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzed;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzw;Lg/pd;I)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x10

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/4 v7, 0x6

    const/16 v8, 0x8

    if-eqz p6, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v10

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    const/4 v10, 0x0

    :goto_0
    const/16 v13, 0x20

    const/4 v14, 0x4

    const/4 v11, 0x2

    const/16 v17, 0x3

    const/4 v12, 0x1

    const/16 v18, 0x0

    const/16 v9, 0x10

    if-eqz v10, :cond_1

    if-ne v10, v12, :cond_2

    :cond_1
    const/16 v21, 0x2

    goto :goto_2

    :cond_2
    if-ne v10, v11, :cond_48

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzt()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v19

    const/16 v21, 0x2

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v7, v11

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v10

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v11

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v12

    and-int/lit8 v19, v12, 0x1

    and-int/lit8 v12, v12, 0x2

    if-nez v19, :cond_a

    if-ne v11, v8, :cond_3

    const/4 v9, 0x3

    goto :goto_1

    :cond_3
    if-ne v11, v9, :cond_5

    if-eqz v12, :cond_4

    const/high16 v9, 0x10000000

    goto :goto_1

    :cond_4
    const/4 v9, 0x2

    goto :goto_1

    :cond_5
    const/16 v9, 0x18

    if-ne v11, v9, :cond_7

    if-eqz v12, :cond_6

    const/high16 v9, 0x50000000

    goto :goto_1

    :cond_6
    const/16 v9, 0x15

    goto :goto_1

    :cond_7
    if-ne v11, v13, :cond_9

    if-eqz v12, :cond_8

    const/high16 v9, 0x60000000

    goto :goto_1

    :cond_8
    const/16 v9, 0x16

    goto :goto_1

    :cond_9
    const/4 v9, -0x1

    goto :goto_1

    :cond_a
    if-ne v11, v13, :cond_9

    const/4 v9, 0x4

    :goto_1
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    const/4 v11, 0x0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v8

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzn()I

    move-result v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v11

    const/4 v12, 0x1

    if-ne v10, v12, :cond_b

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_b
    move v10, v8

    const/4 v9, -0x1

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v8

    const v12, 0x656e6361

    const/16 v19, 0x20

    move/from16 v14, p1

    if-ne v14, v12, :cond_e

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzain;->d(Lcom/google/android/gms/internal/ads/zzed;II)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_d

    iget-object v12, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v5, :cond_c

    const/4 v13, 0x0

    goto :goto_4

    :cond_c
    iget-object v13, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/ads/zzajf;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzajf;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzw;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzw;

    move-result-object v5

    move-object v13, v5

    :goto_4
    iget-object v5, v6, Lg/pd;->d:Ljava/lang/Cloneable;

    check-cast v5, [Lcom/google/android/gms/internal/ads/zzajf;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/gms/internal/ads/zzajf;

    aput-object v14, v5, p9

    goto :goto_5

    :cond_d
    move-object v13, v5

    :goto_5
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto :goto_6

    :cond_e
    move-object v13, v5

    move v12, v14

    :goto_6
    const v5, 0x61632d33

    const-string v14, "audio/mhm1"

    const-string v15, "audio/ac4"

    if-ne v12, v5, :cond_f

    const-string v5, "audio/ac3"

    goto/16 :goto_a

    :cond_f
    const v5, 0x65632d33

    if-ne v12, v5, :cond_10

    const-string v5, "audio/eac3"

    goto/16 :goto_a

    :cond_10
    const v5, 0x61632d34

    if-ne v12, v5, :cond_11

    move-object v5, v15

    goto/16 :goto_a

    :cond_11
    const v5, 0x64747363

    if-ne v12, v5, :cond_12

    const-string v5, "audio/vnd.dts"

    goto/16 :goto_a

    :cond_12
    const v5, 0x64747368

    if-eq v12, v5, :cond_27

    const v5, 0x6474736c

    if-ne v12, v5, :cond_13

    goto/16 :goto_9

    :cond_13
    const v5, 0x64747365

    if-ne v12, v5, :cond_14

    const-string v5, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_a

    :cond_14
    const v5, 0x64747378

    if-ne v12, v5, :cond_15

    const-string v5, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_a

    :cond_15
    const v5, 0x73616d72

    if-ne v12, v5, :cond_16

    const-string v5, "audio/3gpp"

    goto/16 :goto_a

    :cond_16
    const v5, 0x73617762

    if-ne v12, v5, :cond_17

    const-string v5, "audio/amr-wb"

    goto/16 :goto_a

    :cond_17
    const v5, 0x736f7774

    const-string v23, "audio/raw"

    if-ne v12, v5, :cond_18

    :goto_7
    move-object/from16 v5, v23

    const/4 v9, 0x2

    goto/16 :goto_a

    :cond_18
    const v5, 0x74776f73

    if-ne v12, v5, :cond_19

    move-object/from16 v5, v23

    const/high16 v9, 0x10000000

    goto/16 :goto_a

    :cond_19
    const v5, 0x6c70636d

    if-ne v12, v5, :cond_1b

    const/4 v5, -0x1

    if-ne v9, v5, :cond_1a

    goto :goto_7

    :cond_1a
    move-object/from16 v5, v23

    goto/16 :goto_a

    :cond_1b
    const v5, 0x2e6d7032

    if-eq v12, v5, :cond_26

    const v5, 0x2e6d7033

    if-ne v12, v5, :cond_1c

    goto :goto_8

    :cond_1c
    const v5, 0x6d686131

    if-ne v12, v5, :cond_1d

    const-string v5, "audio/mha1"

    goto :goto_a

    :cond_1d
    const v5, 0x6d686d31

    if-ne v12, v5, :cond_1e

    move-object v5, v14

    goto :goto_a

    :cond_1e
    const v5, 0x616c6163

    if-ne v12, v5, :cond_1f

    const-string v5, "audio/alac"

    goto :goto_a

    :cond_1f
    const v5, 0x616c6177

    if-ne v12, v5, :cond_20

    const-string v5, "audio/g711-alaw"

    goto :goto_a

    :cond_20
    const v5, 0x756c6177

    if-ne v12, v5, :cond_21

    const-string v5, "audio/g711-mlaw"

    goto :goto_a

    :cond_21
    const v5, 0x4f707573

    if-ne v12, v5, :cond_22

    const-string v5, "audio/opus"

    goto :goto_a

    :cond_22
    const v5, 0x664c6143

    if-ne v12, v5, :cond_23

    const-string v5, "audio/flac"

    goto :goto_a

    :cond_23
    const v5, 0x6d6c7061

    if-ne v12, v5, :cond_24

    const-string v5, "audio/true-hd"

    goto :goto_a

    :cond_24
    const v5, 0x69616d66

    if-ne v12, v5, :cond_25

    const-string v5, "audio/iamf"

    goto :goto_a

    :cond_25
    const/4 v5, 0x0

    goto :goto_a

    :cond_26
    :goto_8
    const-string v5, "audio/mpeg"

    goto :goto_a

    :cond_27
    :goto_9
    const-string v5, "audio/vnd.dts.hd"

    :goto_a
    move/from16 v16, v9

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/16 v24, 0x0

    :goto_b
    sub-int v9, v8, p2

    if-ge v9, v2, :cond_46

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v9

    if-lez v9, :cond_28

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v23, v12

    goto :goto_d

    :cond_28
    const/4 v2, 0x0

    goto :goto_c

    :goto_d
    const-string v12, "childAtomSize must be positive"

    invoke-static {v2, v12}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v2

    move/from16 p7, v7

    const v7, 0x6d686143

    if-ne v2, v7, :cond_2b

    add-int/lit8 v2, v8, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v2

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-static {v5, v14}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v2, v7, v18

    const-string v2, "mhm1.%02X"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_e
    move-object v12, v2

    goto :goto_f

    :cond_29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v2, v7, v18

    const-string v2, "mha1.%02X"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :goto_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v2

    new-array v7, v2, [B

    move-object/from16 p9, v12

    const/4 v12, 0x0

    invoke-virtual {v0, v7, v12, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    if-nez v1, :cond_2a

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    :goto_10
    move/from16 v7, p7

    move-object/from16 v12, p9

    move/from16 p9, v8

    move/from16 v18, v9

    :goto_11
    const/4 v8, 0x0

    goto/16 :goto_22

    :cond_2a
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    goto :goto_10

    :cond_2b
    const v7, 0x6d686150

    if-ne v2, v7, :cond_2f

    add-int/lit8 v2, v8, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v2

    if-lez v2, :cond_2d

    new-array v7, v2, [B

    const/4 v12, 0x0

    invoke-virtual {v0, v7, v12, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    if-nez v1, :cond_2c

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    :goto_12
    move/from16 v7, p7

    move/from16 p9, v8

    move/from16 v18, v9

    move-object/from16 v12, v23

    goto :goto_11

    :cond_2c
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzfzo;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    goto :goto_12

    :cond_2d
    :goto_13
    move/from16 v7, p7

    :cond_2e
    :goto_14
    move/from16 p9, v8

    move/from16 v18, v9

    const/4 v8, 0x0

    goto/16 :goto_21

    :cond_2f
    const v7, 0x65736473

    if-eq v2, v7, :cond_40

    if-eqz p6, :cond_34

    const v7, 0x77617665

    if-ne v2, v7, :cond_34

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v2

    if-lt v2, v8, :cond_30

    const/4 v7, 0x1

    :goto_15
    move/from16 v25, v2

    const/4 v2, 0x0

    goto :goto_16

    :cond_30
    const/4 v7, 0x0

    goto :goto_15

    :goto_16
    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    move/from16 v2, v25

    :goto_17
    sub-int v7, v2, v8

    if-ge v7, v9, :cond_33

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v7

    if-lez v7, :cond_31

    move/from16 v25, v2

    const/4 v2, 0x1

    goto :goto_18

    :cond_31
    move/from16 v25, v2

    const/4 v2, 0x0

    :goto_18
    invoke-static {v2, v12}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v2

    move/from16 v26, v7

    const v7, 0x65736473

    if-eq v2, v7, :cond_32

    add-int v2, v25, v26

    goto :goto_17

    :cond_32
    move/from16 v7, p7

    move/from16 v2, v25

    :goto_19
    const/4 v12, -0x1

    goto/16 :goto_1d

    :cond_33
    move/from16 v7, p7

    const/4 v2, -0x1

    goto :goto_19

    :cond_34
    const v7, 0x64616333

    if-ne v2, v7, :cond_35

    add-int/lit8 v2, v8, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4, v13}, Lcom/google/android/gms/internal/ads/zzabr;->zzc(Lcom/google/android/gms/internal/ads/zzed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzw;)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    iput-object v2, v6, Lg/pd;->a:Ljava/lang/Object;

    goto :goto_13

    :cond_35
    const v7, 0x64656333

    if-ne v2, v7, :cond_36

    add-int/lit8 v2, v8, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4, v13}, Lcom/google/android/gms/internal/ads/zzabr;->zzd(Lcom/google/android/gms/internal/ads/zzed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzw;)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    iput-object v2, v6, Lg/pd;->a:Ljava/lang/Object;

    goto/16 :goto_13

    :cond_36
    const v7, 0x64616334

    if-ne v2, v7, :cond_38

    add-int/lit8 v2, v8, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    new-instance v12, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    shr-int/lit8 v2, v7, 0x5

    const/4 v7, 0x1

    if-eq v7, v2, :cond_37

    const v2, 0xac44

    goto :goto_1a

    :cond_37
    const v2, 0xbb80

    :goto_1a
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/zzab;->zzF(Lcom/google/android/gms/internal/ads/zzw;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    iput-object v2, v6, Lg/pd;->a:Ljava/lang/Object;

    move/from16 v7, p7

    move/from16 p9, v8

    move/from16 v18, v9

    const/4 v8, 0x0

    const/16 v21, 0x2

    goto/16 :goto_21

    :cond_38
    const v7, 0x646d6c70

    if-ne v2, v7, :cond_3a

    if-lez v11, :cond_39

    move/from16 p9, v8

    move/from16 v18, v9

    move v7, v11

    move-object/from16 v12, v23

    const/4 v8, 0x0

    const/4 v10, 0x2

    :goto_1b
    const/16 v21, 0x2

    goto/16 :goto_22

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v0

    throw v0

    :cond_3a
    const/4 v7, 0x0

    const v12, 0x64647473

    if-eq v2, v12, :cond_3b

    const v12, 0x75647473

    if-ne v2, v12, :cond_3c

    :cond_3b
    const/4 v12, 0x4

    const/16 v21, 0x2

    goto/16 :goto_1c

    :cond_3c
    const v12, 0x644f7073

    if-ne v2, v12, :cond_3d

    add-int/lit8 v1, v8, 0x8

    add-int/lit8 v2, v9, -0x8

    sget-object v12, Lcom/google/android/gms/internal/ads/zzain;->a:[B

    array-length v7, v12

    add-int/2addr v7, v2

    invoke-static {v12, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    array-length v1, v12

    invoke-virtual {v0, v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzadm;->zze([B)Ljava/util/List;

    move-result-object v1

    move/from16 v7, p7

    move/from16 p9, v8

    move/from16 v18, v9

    move-object/from16 v12, v23

    const/4 v8, 0x0

    goto :goto_1b

    :cond_3d
    const v7, 0x64664c61

    if-ne v2, v7, :cond_3e

    add-int/lit8 v1, v8, 0xc

    add-int/lit8 v2, v9, -0xc

    add-int/lit8 v7, v9, -0x8

    new-array v7, v7, [B

    const/16 v12, 0x66

    const/16 v18, 0x0

    aput-byte v12, v7, v18

    const/16 v12, 0x4c

    const/16 v22, 0x1

    aput-byte v12, v7, v22

    const/16 v12, 0x61

    const/16 v21, 0x2

    aput-byte v12, v7, v21

    const/16 v12, 0x43

    aput-byte v12, v7, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/4 v12, 0x4

    invoke-virtual {v0, v7, v12, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    goto/16 :goto_12

    :cond_3e
    const v7, 0x616c6163

    const/4 v12, 0x4

    const/16 v21, 0x2

    if-ne v2, v7, :cond_3f

    add-int/lit8 v1, v8, 0xc

    add-int/lit8 v2, v9, -0xc

    new-array v10, v2, [B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdd;->a:[B

    new-instance v1, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v2

    const/16 v7, 0x14

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v7

    move v10, v1

    move-object v1, v7

    move/from16 p9, v8

    move/from16 v18, v9

    move-object/from16 v12, v23

    const/4 v8, 0x0

    move v7, v2

    goto/16 :goto_22

    :cond_3f
    const v7, 0x69616362

    if-ne v2, v7, :cond_2d

    add-int/lit8 v1, v8, 0x9

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzv()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgcr;->zzb(J)I

    move-result v1

    new-array v2, v1, [B

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    goto/16 :goto_12

    :goto_1c
    new-instance v2, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzK(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    move/from16 v7, p7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzab;->zzF(Lcom/google/android/gms/internal/ads/zzw;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    iput-object v2, v6, Lg/pd;->a:Ljava/lang/Object;

    goto/16 :goto_14

    :cond_40
    move/from16 v7, p7

    move v2, v8

    goto/16 :goto_19

    :goto_1d
    if-eq v2, v12, :cond_2e

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzain;->e(ILcom/google/android/gms/internal/ads/zzed;)Lg/fcw;

    move-result-object v2

    iget-object v5, v2, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v12, v2, Lg/fcw;->b:Ljava/lang/Object;

    check-cast v12, [B

    if-eqz v12, :cond_45

    const-string v1, "audio/vorbis"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    new-instance v1, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v1, v12}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    const/16 v27, 0x0

    :goto_1e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v22

    const/16 v0, 0xff

    move-object/from16 p7, v2

    if-lez v22, :cond_41

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzf()I

    move-result v2

    if-ne v2, v0, :cond_41

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    move/from16 v2, v27

    add-int/lit16 v0, v2, 0xff

    move-object/from16 v2, p7

    move/from16 v27, v0

    const/4 v0, 0x1

    goto :goto_1e

    :cond_41
    move/from16 v2, v27

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v24

    add-int v2, v24, v2

    const/16 v28, 0x0

    :goto_1f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v24

    move/from16 p9, v8

    if-lez v24, :cond_42

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzf()I

    move-result v8

    if-ne v8, v0, :cond_42

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    move/from16 v0, v28

    add-int/lit16 v0, v0, 0xff

    move/from16 v8, p9

    move/from16 v28, v0

    const/16 v0, 0xff

    goto :goto_1f

    :cond_42
    move/from16 v0, v28

    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v22

    add-int v22, v22, v0

    new-array v0, v2, [B

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    const/4 v8, 0x0

    invoke-static {v12, v1, v0, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    array-length v2, v12

    add-int v1, v1, v22

    sub-int/2addr v2, v1

    move/from16 v18, v9

    new-array v9, v2, [B

    invoke-static {v12, v1, v9, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzfzo;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    :goto_20
    move-object/from16 v24, p7

    :goto_21
    move-object/from16 v12, v23

    goto :goto_22

    :cond_43
    move-object/from16 p7, v2

    move/from16 p9, v8

    move/from16 v18, v9

    const/4 v8, 0x0

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzabo;->zza([B)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v0

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzabm;->zza:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzabm;->zzb:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzabm;->zzc:Ljava/lang/String;

    move-object/from16 v23, v0

    :cond_44
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    goto :goto_20

    :cond_45
    move-object/from16 p7, v2

    move/from16 p9, v8

    move/from16 v18, v9

    const/4 v8, 0x0

    goto :goto_20

    :goto_22
    add-int v0, p9, v18

    move/from16 v2, p3

    move v8, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_b

    :cond_46
    move-object/from16 v23, v12

    iget-object v0, v6, Lg/pd;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzad;

    if-nez v0, :cond_48

    if-eqz v5, :cond_48

    new-instance v0, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzK(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    move-object/from16 v12, v23

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzab;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    move/from16 v9, v16

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzab;->zzT(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzab;->zzF(Lcom/google/android/gms/internal/ads/zzw;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    move-object/from16 v1, v24

    if-eqz v1, :cond_47

    iget-wide v2, v1, Lg/fcw;->d:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgcr;->zze(J)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzy(I)Lcom/google/android/gms/internal/ads/zzab;

    iget-wide v1, v1, Lg/fcw;->e:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgcr;->zze(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzU(I)Lcom/google/android/gms/internal/ads/zzab;

    :cond_47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v0

    iput-object v0, v6, Lg/pd;->a:Ljava/lang/Object;

    :cond_48
    return-void
.end method

.method public static c(Lcom/google/android/gms/internal/ads/zzed;)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static d(Lcom/google/android/gms/internal/ads/zzed;II)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_11

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    const-string v8, "childAtomSize must be positive"

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_10

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    sub-int v13, v7, v1

    const/4 v14, 0x4

    if-ge v13, v2, :cond_4

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v15

    const/16 v16, 0x0

    const v3, 0x66726d61

    if-ne v15, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v15, v3, :cond_2

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v14, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v15, v3, :cond_3

    move v9, v7

    move v12, v13

    :cond_3
    :goto_3
    add-int/2addr v7, v13

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    const-string v3, "cenc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v3, v16

    goto/16 :goto_c

    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    const-string v7, "frma atom is mandatory"

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    const-string v7, "schi atom is mandatory"

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v12, :cond_d

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    const v13, 0x74656e63

    if-ne v8, v13, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzain;->zza(I)I

    move-result v3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    if-nez v3, :cond_9

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v14

    and-int/lit8 v3, v3, 0xf

    move v15, v3

    move v14, v7

    :goto_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v3

    if-ne v3, v5, :cond_a

    move-object v3, v10

    const/4 v10, 0x1

    goto :goto_9

    :cond_a
    move-object v3, v10

    const/4 v10, 0x0

    :goto_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    move-object/from16 v16, v8

    :cond_b
    new-instance v9, Lcom/google/android/gms/internal/ads/zzajf;

    move-object v8, v3

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzajf;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v9

    goto :goto_a

    :cond_c
    move-object v8, v10

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v10

    move-object/from16 v3, v16

    :goto_a
    if-eqz v3, :cond_e

    goto :goto_b

    :cond_e
    const/4 v5, 0x0

    :goto_b
    const-string v6, "tenc atom is mandatory"

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    sget v5, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_c
    if-nez v3, :cond_f

    goto :goto_d

    :cond_f
    return-object v3

    :cond_10
    :goto_d
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_11
    const/16 v16, 0x0

    return-object v16
.end method

.method public static e(ILcom/google/android/gms/internal/ads/zzed;)Lg/fcw;
    .locals 9

    add-int/lit8 p0, p0, 0xc

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzain;->c(Lcom/google/android/gms/internal/ads/zzed;)I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzain;->c(Lcom/google/android/gms/internal/ads/zzed;)I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbg;->zzd(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v3

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzain;->c(Lcom/google/android/gms/internal/ads/zzed;)I

    move-result p0

    move-wide v4, v3

    new-array v3, p0, [B

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6, p0}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    const-wide/16 p0, -0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_4

    move-wide v4, p0

    :cond_4
    cmp-long v8, v0, v6

    if-lez v8, :cond_5

    move-wide v6, v0

    goto :goto_0

    :cond_5
    move-wide v6, p0

    :goto_0
    new-instance v1, Lg/fcw;

    invoke-direct/range {v1 .. v7}, Lg/fcw;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1

    :cond_6
    :goto_1
    new-instance v1, Lg/fcw;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lg/fcw;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1
.end method

.method public static zza(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzbd;
    .locals 12

    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v0

    const v1, 0x6b657973

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v1

    const v2, 0x696c7374

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz p0, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    add-int/lit8 v6, v6, -0x8

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v6

    if-le v6, v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_4

    if-ge v6, v1, :cond_4

    aget-object v6, v3, v6

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v8

    if-ge v8, v7, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v10

    const v11, 0x64617461

    if-ne v10, v11, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v10

    add-int/lit8 v9, v9, -0x10

    new-array v11, v9, [B

    invoke-virtual {p0, v11, v4, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v9, v6, v11, v10, v8}, Lcom/google/android/gms/internal/ads/zzer;-><init>(Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_2
    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto :goto_2

    :cond_3
    move-object v9, v2

    :goto_3
    if-eqz v9, :cond_5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const-string v8, "Skipped metadata with unknown key index: "

    const-string v9, "BoxParsers"

    invoke-static {v6, v8, v9}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_4
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_7
    :goto_5
    return-object v2
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzet;)Lcom/google/android/gms/internal/ads/zzbd;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbd;

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzbc;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v2, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(J[Lcom/google/android/gms/internal/ads/zzbc;)V

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v4

    if-lt v4, v0, :cond_41

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    const v9, 0x6d657461

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-ne v8, v9, :cond_31

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzain;->zzg(Lcom/google/android/gms/internal/ads/zzed;)V

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v4

    if-ge v4, v7, :cond_30

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v9

    const v5, 0x696c7374

    if-ne v9, v5, :cond_2f

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v5

    if-ge v5, v8, :cond_2d

    const-string v5, "Skipped unknown metadata entry: "

    const-string v6, "Unrecognized cover art flags: "

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v16

    add-int v9, v16, v9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v0

    shr-int/lit8 v10, v0, 0x18

    and-int/lit16 v10, v10, 0xff

    const/16 v17, -0x1

    const/16 v13, 0xa9

    const v18, 0xffffff

    const-string v12, "TCON"

    const-string v11, "MetadataUtil"

    if-eq v10, v13, :cond_0

    const/16 v13, 0xfd

    if-ne v10, v13, :cond_1

    :cond_0
    const/16 v19, 0x0

    goto/16 :goto_a

    :cond_1
    const v10, 0x676e7265

    if-ne v0, v10, :cond_3

    :try_start_0
    invoke-static {v1}, Lg/awt;->aj(Lcom/google/android/gms/internal/ads/zzed;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzagm;->zza(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/ads/zzagu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    invoke-direct {v5, v12, v15, v0}, Lcom/google/android/gms/internal/ads/zzagu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :goto_3
    const/16 v19, 0x0

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_2
    const-string v0, "Failed to parse standard genre code"

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object v5, v15

    goto :goto_3

    :cond_3
    const v10, 0x6469736b

    if-ne v0, v10, :cond_4

    const-string v0, "TPOS"

    invoke-static {v10, v0, v1}, Lg/awt;->al(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto :goto_3

    :cond_4
    const v10, 0x74726b6e

    if-ne v0, v10, :cond_5

    const-string v0, "TRCK"

    invoke-static {v10, v0, v1}, Lg/awt;->al(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto :goto_3

    :cond_5
    const v10, 0x746d706f

    if-ne v0, v10, :cond_6

    const-string v0, "TBPM"

    invoke-static {v10, v0, v1, v14, v3}, Lg/awt;->k(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;ZZ)Lcom/google/android/gms/internal/ads/zzagl;

    move-result-object v5

    goto :goto_3

    :cond_6
    const v10, 0x6370696c

    if-ne v0, v10, :cond_7

    const-string v0, "TCMP"

    invoke-static {v10, v0, v1, v14, v14}, Lg/awt;->k(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;ZZ)Lcom/google/android/gms/internal/ads/zzagl;

    move-result-object v5

    goto :goto_3

    :cond_7
    const v10, 0x636f7672

    if-ne v0, v10, :cond_c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v5

    const v10, 0x64617461

    if-ne v5, v10, :cond_b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v5

    and-int v5, v5, v18

    const/16 v10, 0xd

    if-ne v5, v10, :cond_8

    const-string v10, "image/jpeg"

    goto :goto_5

    :cond_8
    const/16 v10, 0xe

    if-ne v5, v10, :cond_9

    const-string v5, "image/png"

    move-object v10, v5

    const/16 v5, 0xe

    goto :goto_5

    :cond_9
    move-object v10, v15

    :goto_5
    if-nez v10, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    add-int/lit8 v0, v0, -0x10

    new-array v5, v0, [B

    invoke-virtual {v1, v5, v3, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzafx;

    const/4 v6, 0x3

    invoke-direct {v0, v10, v15, v6, v5}, Lcom/google/android/gms/internal/ads/zzafx;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    move-object v5, v0

    goto/16 :goto_3

    :cond_b
    const-string v0, "Failed to parse cover art attribute"

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const v6, 0x61415254

    if-ne v0, v6, :cond_d

    const-string v0, "TPE2"

    invoke-static {v6, v0, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto/16 :goto_3

    :cond_d
    const v6, 0x736f6e6d

    if-ne v0, v6, :cond_e

    const-string v0, "TSOT"

    invoke-static {v6, v0, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto/16 :goto_3

    :cond_e
    const v6, 0x736f616c

    if-ne v0, v6, :cond_f

    const-string v0, "TSOA"

    invoke-static {v6, v0, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto/16 :goto_3

    :cond_f
    const v6, 0x736f6172

    if-ne v0, v6, :cond_10

    const-string v0, "TSOP"

    invoke-static {v6, v0, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto/16 :goto_3

    :cond_10
    const v6, 0x736f6161

    if-ne v0, v6, :cond_11

    const-string v0, "TSO2"

    invoke-static {v6, v0, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto/16 :goto_3

    :cond_11
    const v6, 0x736f636f

    if-ne v0, v6, :cond_12

    const-string v0, "TSOC"

    invoke-static {v6, v0, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto/16 :goto_3

    :cond_12
    const v6, 0x72746e67

    if-ne v0, v6, :cond_13

    const-string v0, "ITUNESADVISORY"

    invoke-static {v6, v0, v1, v3, v3}, Lg/awt;->k(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;ZZ)Lcom/google/android/gms/internal/ads/zzagl;

    move-result-object v5

    goto/16 :goto_3

    :cond_13
    const v6, 0x70676170

    if-ne v0, v6, :cond_14

    const-string v0, "ITUNESGAPLESS"

    invoke-static {v6, v0, v1, v3, v14}, Lg/awt;->k(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;ZZ)Lcom/google/android/gms/internal/ads/zzagl;

    move-result-object v5

    goto/16 :goto_3

    :cond_14
    const v6, 0x736f736e

    if-ne v0, v6, :cond_15

    const-string v0, "TVSHOWSORT"

    invoke-static {v6, v0, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto/16 :goto_3

    :cond_15
    const v6, 0x74767368

    if-ne v0, v6, :cond_16

    const-string v0, "TVSHOW"

    invoke-static {v6, v0, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto/16 :goto_3

    :cond_16
    const v6, 0x2d2d2d2d

    if-ne v0, v6, :cond_1e

    move-object v0, v15

    move-object v5, v0

    const/4 v6, -0x1

    const/4 v10, -0x1

    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v11

    if-ge v11, v9, :cond_1b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v11

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v12

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v13

    const/4 v15, 0x4

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    const v15, 0x6d65616e

    if-ne v13, v15, :cond_17

    add-int/lit8 v12, v12, -0xc

    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzA(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    const/4 v15, 0x0

    goto :goto_6

    :cond_17
    add-int/lit8 v15, v12, -0xc

    const/16 v19, 0x0

    const v3, 0x6e616d65

    if-ne v13, v3, :cond_18

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzed;->zzA(I)Ljava/lang/String;

    move-result-object v5

    :goto_8
    const/4 v3, 0x0

    goto :goto_7

    :cond_18
    const v3, 0x64617461

    if-ne v13, v3, :cond_19

    move v10, v12

    :cond_19
    if-ne v13, v3, :cond_1a

    move v6, v11

    :cond_1a
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    goto :goto_8

    :cond_1b
    const/16 v19, 0x0

    if-eqz v0, :cond_1c

    if-eqz v5, :cond_1c

    const/4 v3, -0x1

    if-ne v6, v3, :cond_1d

    :cond_1c
    :goto_9
    const/4 v5, 0x0

    goto/16 :goto_e

    :cond_1d
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    add-int/lit8 v10, v10, -0x10

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzA(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/google/android/gms/internal/ads/zzago;

    invoke-direct {v6, v0, v5, v3}, Lcom/google/android/gms/internal/ads/zzago;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    goto/16 :goto_e

    :cond_1e
    const/16 v19, 0x0

    goto/16 :goto_b

    :goto_a
    and-int v3, v0, v18

    const v6, 0x636d74

    if-ne v3, v6, :cond_20

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v5

    const v10, 0x64617461

    if-ne v5, v10, :cond_1f

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    add-int/lit8 v3, v3, -0x10

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzA(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/ads/zzagf;

    const-string v3, "und"

    invoke-direct {v5, v3, v0, v0}, Lcom/google/android/gms/internal/ads/zzagf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzev;->zze(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to parse comment attribute: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_20
    const v6, 0x6e616d

    if-eq v3, v6, :cond_2b

    const v6, 0x74726b

    if-ne v3, v6, :cond_21

    goto/16 :goto_d

    :cond_21
    const v6, 0x636f6d

    if-eq v3, v6, :cond_2a

    const v6, 0x777274

    if-ne v3, v6, :cond_22

    goto/16 :goto_c

    :cond_22
    const v6, 0x646179

    if-ne v3, v6, :cond_23

    const-string v3, "TDRC"

    invoke-static {v0, v3, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto/16 :goto_e

    :cond_23
    const v6, 0x415254

    if-ne v3, v6, :cond_24

    const-string v3, "TPE1"

    invoke-static {v0, v3, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto :goto_e

    :cond_24
    const v6, 0x746f6f

    if-ne v3, v6, :cond_25

    const-string v3, "TSSE"

    invoke-static {v0, v3, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto :goto_e

    :cond_25
    const v6, 0x616c62

    if-ne v3, v6, :cond_26

    const-string v3, "TALB"

    invoke-static {v0, v3, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto :goto_e

    :cond_26
    const v6, 0x6c7972

    if-ne v3, v6, :cond_27

    const-string v3, "USLT"

    invoke-static {v0, v3, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto :goto_e

    :cond_27
    const v6, 0x67656e

    if-ne v3, v6, :cond_28

    invoke-static {v0, v12, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto :goto_e

    :cond_28
    const v6, 0x677270

    if-ne v3, v6, :cond_29

    const-string v3, "TIT1"

    invoke-static {v0, v3, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto :goto_e

    :cond_29
    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzev;->zze(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2a
    :goto_c
    const-string v3, "TCOM"

    invoke-static {v0, v3, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5

    goto :goto_e

    :cond_2b
    :goto_d
    const-string v3, "TIT2"

    invoke-static {v0, v3, v1}, Lg/awt;->z(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_e
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    if-eqz v5, :cond_2c

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    const/16 v0, 0x8

    const/4 v3, 0x0

    const/4 v15, 0x0

    goto/16 :goto_2

    :goto_f
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    throw v0

    :cond_2d
    const/16 v19, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    :goto_10
    const/4 v15, 0x0

    goto :goto_11

    :cond_2e
    new-instance v15, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(Ljava/util/List;)V

    goto :goto_11

    :cond_2f
    const/16 v19, 0x0

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/16 v0, 0x8

    const/4 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_30
    const/16 v19, 0x0

    goto :goto_10

    :goto_11
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzbd;->zzd(Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v0

    move-object v2, v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v9, 0x8

    goto/16 :goto_1d

    :cond_31
    const/16 v19, 0x0

    const v0, 0x736d7461

    const/4 v3, 0x2

    if-ne v8, v0, :cond_40

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :goto_12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v4

    if-ge v4, v7, :cond_32

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v6

    const v8, 0x73617574

    if-ne v6, v8, :cond_3e

    const/16 v6, 0x10

    if-ge v5, v6, :cond_33

    :cond_32
    const/16 v9, 0x8

    :goto_13
    const/4 v15, 0x0

    goto/16 :goto_19

    :cond_33
    const/4 v15, 0x4

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, -0x1

    :goto_14
    if-ge v4, v3, :cond_36

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v8

    if-nez v6, :cond_34

    move v13, v8

    goto :goto_15

    :cond_34
    if-ne v6, v14, :cond_35

    move v5, v8

    :cond_35
    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_36
    const v3, -0x7fffffff

    if-ne v13, v0, :cond_37

    const/16 v0, 0xf0

    :goto_16
    const/16 v9, 0x8

    goto :goto_18

    :cond_37
    const/16 v10, 0xd

    if-ne v13, v10, :cond_38

    const/16 v0, 0x78

    goto :goto_16

    :cond_38
    const/16 v4, 0x15

    if-eq v13, v4, :cond_39

    const v0, -0x7fffffff

    goto :goto_16

    :cond_39
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v4

    const/16 v9, 0x8

    if-lt v4, v9, :cond_3a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v4

    add-int/2addr v4, v9

    if-le v4, v7, :cond_3b

    :cond_3a
    :goto_17
    const v0, -0x7fffffff

    goto :goto_18

    :cond_3b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v6

    if-lt v4, v0, :cond_3a

    const v0, 0x73726672

    if-eq v6, v0, :cond_3c

    goto :goto_17

    :cond_3c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzn()I

    move-result v0

    :goto_18
    if-ne v0, v3, :cond_3d

    goto :goto_13

    :cond_3d
    new-instance v15, Lcom/google/android/gms/internal/ads/zzbd;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahg;

    int-to-float v0, v0

    invoke-direct {v3, v0, v5}, Lcom/google/android/gms/internal/ads/zzahg;-><init>(FI)V

    new-array v0, v14, [Lcom/google/android/gms/internal/ads/zzbc;

    aput-object v3, v0, v19

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v15, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(J[Lcom/google/android/gms/internal/ads/zzbc;)V

    goto :goto_19

    :cond_3e
    const/16 v6, 0x10

    const/16 v9, 0x8

    const/16 v10, 0xd

    const/4 v15, 0x4

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto/16 :goto_12

    :goto_19
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzbd;->zzd(Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v0

    move-object v2, v0

    :cond_3f
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1d

    :cond_40
    const/16 v9, 0x8

    const v0, -0x56878686

    if-ne v8, v0, :cond_3f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzE()S

    move-result v0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v17, -0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbd;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzey;

    invoke-direct {v5, v4, v0}, Lcom/google/android/gms/internal/ads/zzey;-><init>(FF)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-array v0, v14, [Lcom/google/android/gms/internal/ads/zzbc;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v19, 0x0

    :try_start_3
    aput-object v5, v0, v19
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :try_start_4
    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(J[Lcom/google/android/gms/internal/ads/zzbc;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v15, v3

    goto :goto_1c

    :catch_0
    :goto_1a
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1b

    :catch_1
    const/16 v19, 0x0

    goto :goto_1a

    :catch_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    :catch_3
    :goto_1b
    const/4 v15, 0x0

    :goto_1c
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzbd;->zzd(Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v0

    move-object v2, v0

    :goto_1d
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    move-wide v5, v4

    const/16 v0, 0x8

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_41
    return-object v2
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzfb;
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzain;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v2

    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzt()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzt()J

    move-result-wide v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v9

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfb;

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzfb;-><init>(JJJ)V

    return-object v4
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzaje;Lcom/google/android/gms/internal/ads/zzes;Lcom/google/android/gms/internal/ads/zzadf;)Lcom/google/android/gms/internal/ads/zzajh;
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbh;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const v3, 0x7374737a

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    new-instance v6, Lg/gvg;

    invoke-direct {v6, v3, v5}, Lg/gvg;-><init>(Lcom/google/android/gms/internal/ads/zzet;Lcom/google/android/gms/internal/ads/zzad;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v3

    if-eqz v3, :cond_3b

    new-instance v6, Lg/gme;

    invoke-direct {v6, v3}, Lg/gme;-><init>(Lcom/google/android/gms/internal/ads/zzet;)V

    :goto_0
    invoke-interface {v6}, Lg/xl;->zzb()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajh;

    new-array v2, v5, [J

    new-array v3, v5, [I

    new-array v4, v5, [J

    new-array v6, v5, [I

    const-wide/16 v7, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzaje;[J[II[J[IJ)V

    return-object v0

    :cond_1
    const v7, 0x7374636f

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v7

    if-nez v7, :cond_2

    const v7, 0x636f3634

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const v10, 0x73747363

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const v11, 0x73747473

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const v12, 0x73747373

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    goto :goto_2

    :cond_3
    move-object v12, v4

    :goto_2
    const v13, 0x63747473

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    goto :goto_3

    :cond_4
    move-object v0, v4

    :goto_3
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    new-instance v13, Lg/et;

    invoke-direct {v13, v10, v7, v9}, Lg/et;-><init>(Lcom/google/android/gms/internal/ads/zzed;Lcom/google/android/gms/internal/ads/zzed;Z)V

    const/16 v7, 0xc

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v9

    const/4 v10, -0x1

    add-int/2addr v9, v10

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v14

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v15

    if-eqz v0, :cond_5

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v16

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    :goto_4
    if-eqz v12, :cond_7

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v4

    add-int/2addr v4, v10

    :goto_5
    const/16 v17, 0x0

    goto :goto_6

    :cond_6
    move-object v12, v4

    const/4 v4, -0x1

    goto :goto_5

    :cond_7
    const/4 v4, -0x1

    const/4 v7, 0x0

    goto :goto_5

    :goto_6
    invoke-interface {v6}, Lg/xl;->zza()I

    move-result v5

    const/16 v18, 0x1

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    move-object/from16 v19, v6

    move/from16 p1, v7

    const/16 v20, -0x1

    if-eq v5, v10, :cond_8

    const-string v10, "audio/raw"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "audio/g711-mlaw"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "audio/g711-alaw"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_7

    :cond_8
    const-wide/16 v21, 0x0

    goto/16 :goto_d

    :cond_9
    :goto_7
    if-nez v9, :cond_8

    if-nez v16, :cond_e

    if-nez p1, :cond_e

    iget v0, v13, Lg/et;->d:I

    new-array v4, v0, [J

    new-array v8, v0, [I

    :goto_8
    invoke-virtual {v13}, Lg/et;->j()Z

    move-result v9

    if-eqz v9, :cond_a

    iget v9, v13, Lg/et;->g:I

    iget-wide v10, v13, Lg/et;->b:J

    aput-wide v10, v4, v9

    iget v10, v13, Lg/et;->h:I

    aput v10, v8, v9

    goto :goto_8

    :cond_a
    int-to-long v9, v15

    const/16 v11, 0x2000

    div-int/2addr v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_9
    if-ge v12, v0, :cond_b

    aget v14, v8, v12

    sget v15, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    add-int/2addr v14, v11

    add-int/lit8 v14, v14, -0x1

    div-int/2addr v14, v11

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_b
    new-array v12, v13, [J

    new-array v14, v13, [I

    new-array v15, v13, [J

    new-array v13, v13, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const-wide/16 v21, 0x0

    :goto_a
    if-ge v6, v0, :cond_d

    aget v20, v8, v6

    aget-wide v23, v4, v6

    move/from16 v25, v19

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v16, v25

    move-wide/from16 v24, v23

    move-object/from16 v23, v4

    move/from16 v4, v20

    :goto_b
    if-lez v4, :cond_c

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v20

    aput-wide v24, v12, v16

    move/from16 p1, v4

    mul-int v4, v5, v20

    aput v4, v14, v16

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v26, v5

    int-to-long v4, v7

    mul-long v4, v4, v9

    aput-wide v4, v15, v16

    aput v18, v13, v16

    aget v4, v14, v16

    int-to-long v4, v4

    add-long v24, v24, v4

    add-int v7, v7, v20

    sub-int v4, p1, v20

    add-int/lit8 v16, v16, 0x1

    move/from16 v5, v26

    goto :goto_b

    :cond_c
    move/from16 v26, v5

    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v16

    move/from16 v16, v0

    move/from16 v0, v19

    move/from16 v19, v4

    move-object/from16 v4, v23

    goto :goto_a

    :cond_d
    int-to-long v4, v7

    mul-long v9, v9, v4

    move-wide v4, v9

    :goto_c
    move-object v2, v12

    goto/16 :goto_1d

    :cond_e
    const-wide/16 v21, 0x0

    const/4 v9, 0x0

    :goto_d
    new-array v5, v3, [J

    new-array v6, v3, [I

    new-array v7, v3, [J

    new-array v8, v3, [I

    move/from16 v25, p1

    move-object/from16 p1, v0

    move/from16 v24, v9

    move-object/from16 v31, v11

    move-wide/from16 v27, v21

    move-wide/from16 v29, v27

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    :goto_e
    const-string v11, "BoxParsers"

    if-ge v10, v3, :cond_1a

    move-wide/from16 v32, v27

    const/16 v27, 0x1

    :goto_f
    if-nez v23, :cond_10

    invoke-virtual {v13}, Lg/et;->j()Z

    move-result v27

    if-eqz v27, :cond_f

    move/from16 v28, v3

    iget-wide v2, v13, Lg/et;->b:J

    move-wide/from16 v32, v2

    iget v2, v13, Lg/et;->h:I

    move/from16 v23, v2

    move/from16 v3, v28

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_10
    move/from16 v28, v3

    goto :goto_11

    :cond_10
    move/from16 v2, v23

    goto :goto_10

    :goto_11
    if-nez v27, :cond_11

    const-string v2, "Unexpected end of chunk data"

    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    invoke-static {v6, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move-object v12, v2

    move-object v6, v3

    move-object v15, v4

    move-object v13, v5

    move v3, v10

    goto/16 :goto_16

    :cond_11
    if-nez p1, :cond_12

    goto :goto_13

    :cond_12
    :goto_12
    if-nez v26, :cond_14

    if-lez v16, :cond_13

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v26

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v0

    goto :goto_12

    :cond_13
    const/16 v26, 0x0

    :cond_14
    add-int/lit8 v26, v26, -0x1

    :goto_13
    aput-wide v32, v5, v10

    invoke-interface/range {v19 .. v19}, Lg/xl;->zzc()I

    move-result v3

    aput v3, v6, v10

    if-le v3, v9, :cond_15

    move v9, v3

    :cond_15
    move/from16 v23, v2

    int-to-long v2, v0

    add-long v2, v29, v2

    aput-wide v2, v7, v10

    if-nez v12, :cond_16

    const/4 v2, 0x1

    goto :goto_14

    :cond_16
    const/4 v2, 0x0

    :goto_14
    aput v2, v8, v10

    if-ne v10, v4, :cond_17

    aput v18, v8, v10

    add-int/lit8 v25, v25, -0x1

    if-lez v25, :cond_17

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :cond_17
    int-to-long v2, v15

    add-long v29, v29, v2

    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_19

    if-lez v24, :cond_18

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v2

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v3

    add-int/lit8 v24, v24, -0x1

    move v14, v2

    move v15, v3

    goto :goto_15

    :cond_18
    const/4 v14, 0x0

    :cond_19
    :goto_15
    aget v2, v6, v10

    int-to-long v2, v2

    add-long v2, v32, v2

    add-int/lit8 v23, v23, -0x1

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v34, v2

    move/from16 v3, v28

    move-wide/from16 v27, v34

    goto/16 :goto_e

    :cond_1a
    move/from16 v28, v3

    move-object v12, v5

    move-object v15, v7

    move-object v13, v8

    :goto_16
    int-to-long v4, v0

    add-long v4, v29, v4

    if-eqz p1, :cond_1c

    :goto_17
    if-lez v16, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    goto :goto_18

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_17

    :cond_1c
    const/4 v0, 0x1

    :goto_18
    if-nez v25, :cond_22

    if-nez v14, :cond_21

    if-nez v23, :cond_20

    if-nez v24, :cond_1f

    if-nez v26, :cond_1e

    if-nez v0, :cond_1d

    move/from16 p1, v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_19
    const/4 v14, 0x0

    goto :goto_1a

    :cond_1d
    move/from16 p1, v3

    move-wide/from16 v19, v4

    move-object/from16 v16, v6

    goto/16 :goto_1c

    :cond_1e
    move v10, v0

    move/from16 p1, v3

    move/from16 v8, v26

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    goto :goto_19

    :cond_1f
    move v10, v0

    move/from16 p1, v3

    move/from16 v7, v24

    move/from16 v8, v26

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_19

    :cond_20
    move v10, v0

    move/from16 p1, v3

    move/from16 v2, v23

    move/from16 v7, v24

    move/from16 v8, v26

    const/4 v0, 0x0

    goto :goto_19

    :cond_21
    move v10, v0

    move/from16 p1, v3

    move/from16 v2, v23

    move/from16 v7, v24

    move/from16 v8, v26

    const/4 v0, 0x0

    goto :goto_1a

    :cond_22
    move v10, v0

    move/from16 p1, v3

    move/from16 v2, v23

    move/from16 v7, v24

    move/from16 v0, v25

    move/from16 v8, v26

    :goto_1a
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaje;->zza:I

    move-wide/from16 v19, v4

    const-string v4, ": remainingSynchronizationSamples "

    const-string v5, ", remainingSamplesAtTimestampDelta "

    move-object/from16 v16, v6

    const-string v6, "Inconsistent stbl box for track "

    invoke-static {v3, v0, v6, v4, v5}, Lg/awf;->z(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingSamplesInChunk "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-eq v2, v10, :cond_23

    const-string v2, ", ctts invalid"

    goto :goto_1b

    :cond_23
    const-string v2, ""

    :goto_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    move/from16 v3, p1

    move-object/from16 v14, v16

    move-wide/from16 v4, v19

    move/from16 v16, v9

    goto/16 :goto_c

    :goto_1d
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    sget-object v29, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const-wide/32 v6, 0xf4240

    move-object/from16 v10, v29

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzh:[J

    const-wide/32 v9, 0xf4240

    if-nez v0, :cond_24

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    invoke-static {v15, v9, v10, v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzF([JJJ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajh;

    move-object v6, v13

    move-object v3, v14

    move-object v5, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzaje;[J[II[J[IJ)V

    return-object v0

    :cond_24
    move v7, v3

    move-wide/from16 v19, v4

    move-object v6, v13

    move-object v3, v14

    move-object v5, v15

    move/from16 v4, v16

    array-length v8, v0

    const/4 v11, 0x1

    if-ne v8, v11, :cond_28

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    if-ne v8, v11, :cond_28

    array-length v8, v5

    const/4 v11, 0x2

    if-lt v8, v11, :cond_28

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzi:[J

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-wide v12, v11, v17

    aget-wide v23, v0, v17

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzd:J

    move-wide/from16 v27, v9

    move-wide/from16 v25, v14

    invoke-static/range {v23 .. v29}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    add-long/2addr v9, v12

    add-int/lit8 v0, v8, -0x1

    const/4 v11, 0x4

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v14, 0x0

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v8, v8, -0x4

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget-wide v15, v5, v14

    cmp-long v8, v15, v12

    if-gtz v8, :cond_28

    aget-wide v23, v5, v11

    cmp-long v8, v12, v23

    if-gez v8, :cond_28

    aget-wide v23, v5, v0

    cmp-long v0, v23, v9

    if-gez v0, :cond_28

    cmp-long v0, v9, v19

    if-gtz v0, :cond_28

    sub-long v23, v12, v15

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    int-to-long v11, v0

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    move-wide/from16 v25, v11

    move-wide/from16 v27, v13

    invoke-static/range {v23 .. v29}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v11

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    int-to-long v13, v0

    move-object/from16 p1, v2

    move-object v0, v3

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    sub-long v23, v19, v9

    move-wide/from16 v27, v2

    move-wide/from16 v25, v13

    invoke-static/range {v23 .. v29}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    cmp-long v8, v11, v21

    if-nez v8, :cond_26

    cmp-long v8, v2, v21

    if-eqz v8, :cond_25

    move-wide/from16 v11, v21

    goto :goto_1f

    :cond_25
    :goto_1e
    move-object/from16 v2, p1

    move-object v3, v0

    goto :goto_20

    :cond_26
    :goto_1f
    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v11, v8

    if-gtz v10, :cond_25

    cmp-long v10, v2, v8

    if-lez v10, :cond_27

    goto :goto_1e

    :cond_27
    long-to-int v7, v11

    move-object/from16 v8, p2

    iput v7, v8, Lcom/google/android/gms/internal/ads/zzadf;->zza:I

    long-to-int v3, v2

    iput v3, v8, Lcom/google/android/gms/internal/ads/zzadf;->zzb:I

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    const-wide/32 v7, 0xf4240

    invoke-static {v5, v7, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzF([JJJ)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzh:[J

    const/16 v17, 0x0

    aget-wide v23, v2, v17

    const-wide/32 v25, 0xf4240

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzd:J

    move-wide/from16 v27, v2

    invoke-static/range {v23 .. v29}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    move-object v3, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajh;

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzaje;[J[II[J[IJ)V

    return-object v0

    :cond_28
    :goto_20
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzh:[J

    array-length v8, v0

    const/4 v11, 0x1

    if-ne v8, v11, :cond_2b

    const/16 v17, 0x0

    aget-wide v8, v0, v17

    cmp-long v0, v8, v21

    if-nez v0, :cond_2a

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzi:[J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-wide v7, v0, v17

    const/4 v0, 0x0

    :goto_21
    array-length v9, v5

    if-ge v0, v9, :cond_29

    aget-wide v9, v5, v0

    sub-long v11, v9, v7

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    sget-object v17, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const-wide/32 v13, 0xf4240

    move-wide v15, v9

    invoke-static/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    aput-wide v9, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_29
    sub-long v9, v19, v7

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    sget-object v15, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajh;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzaje;[J[II[J[IJ)V

    return-object v0

    :cond_2a
    const/4 v8, 0x1

    :cond_2b
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_2c

    const/4 v0, 0x1

    goto :goto_22

    :cond_2c
    const/4 v0, 0x0

    :goto_22
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzi:[J

    new-array v10, v8, [I

    new-array v8, v8, [I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_23
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzh:[J

    move/from16 p1, v4

    array-length v4, v15

    if-ge v14, v4, :cond_30

    move-object/from16 v16, v8

    move-object v4, v9

    aget-wide v8, v4, v14

    const-wide/16 v19, -0x1

    cmp-long v23, v8, v19

    if-eqz v23, :cond_2f

    aget-wide v24, v15, v14

    move/from16 v19, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    move-wide/from16 v26, v14

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzd:J

    sget-object v30, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v28, v14

    invoke-static/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v14

    move-object/from16 p2, v4

    const/4 v4, 0x1

    invoke-static {v5, v8, v9, v4, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzd([JJZZ)I

    move-result v18

    aput v18, v10, v19

    add-long/2addr v8, v14

    const/4 v14, 0x0

    invoke-static {v5, v8, v9, v0, v14}, Lcom/google/android/gms/internal/ads/zzen;->zza([JJZZ)I

    move-result v8

    aput v8, v16, v19

    :goto_24
    aget v8, v10, v19

    aget v9, v16, v19

    if-ge v8, v9, :cond_2d

    aget v15, v6, v8

    and-int/2addr v15, v4

    if-nez v15, :cond_2d

    add-int/lit8 v8, v8, 0x1

    aput v8, v10, v19

    const/4 v4, 0x1

    goto :goto_24

    :cond_2d
    sub-int v4, v9, v8

    add-int/2addr v4, v11

    if-eq v13, v8, :cond_2e

    const/4 v8, 0x1

    goto :goto_25

    :cond_2e
    const/4 v8, 0x0

    :goto_25
    or-int/2addr v8, v12

    move v11, v4

    move v12, v8

    move v13, v9

    goto :goto_26

    :cond_2f
    move-object/from16 p2, v4

    move/from16 v19, v14

    const/4 v14, 0x0

    :goto_26
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v9, p2

    move v14, v4

    move-object/from16 v8, v16

    move/from16 v4, p1

    goto :goto_23

    :cond_30
    move-object/from16 v16, v8

    const/4 v14, 0x0

    if-eq v11, v7, :cond_31

    const/4 v0, 0x1

    goto :goto_27

    :cond_31
    const/4 v0, 0x0

    :goto_27
    or-int/2addr v0, v12

    if-eqz v0, :cond_32

    new-array v4, v11, [J

    goto :goto_28

    :cond_32
    move-object v4, v2

    :goto_28
    if-eqz v0, :cond_33

    new-array v7, v11, [I

    :goto_29
    const/4 v8, 0x1

    goto :goto_2a

    :cond_33
    move-object v7, v3

    goto :goto_29

    :goto_2a
    if-ne v8, v0, :cond_34

    const/4 v8, 0x0

    goto :goto_2b

    :cond_34
    move/from16 v8, p1

    :goto_2b
    if-eqz v0, :cond_35

    new-array v13, v11, [I

    goto :goto_2c

    :cond_35
    move-object v13, v6

    :goto_2c
    new-array v9, v11, [J

    move v11, v8

    move-wide/from16 v23, v21

    const/4 v8, 0x0

    :goto_2d
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzh:[J

    array-length v12, v12

    if-ge v14, v12, :cond_3a

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzi:[J

    aget-wide v19, v12, v14

    aget v12, v10, v14

    aget v15, v16, v14

    move/from16 p1, v0

    if-eqz v0, :cond_36

    sub-int v0, v15, v12

    invoke-static {v2, v12, v4, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v12, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v12, v13, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    :goto_2e
    if-ge v12, v15, :cond_39

    move-object v0, v2

    move-object/from16 v17, v3

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzd:J

    sget-object v29, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const-wide/32 v25, 0xf4240

    move-wide/from16 v27, v2

    invoke-static/range {v23 .. v29}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    aget-wide v25, v5, v12

    sub-long v25, v25, v19

    const-wide/32 v27, 0xf4240

    move-wide/from16 v32, v2

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    move-object/from16 v31, v29

    move-wide/from16 v29, v2

    invoke-static/range {v25 .. v31}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    move-object/from16 p2, v0

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    move-object/from16 v30, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_37

    move-object v0, v5

    move-wide/from16 v4, v21

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_2f

    :cond_37
    move-object v0, v5

    move-wide/from16 v4, v21

    :goto_2f
    add-long v2, v32, v2

    aput-wide v2, v9, v8

    if-eqz p1, :cond_38

    aget v2, v7, v8

    if-le v2, v11, :cond_38

    aget v11, v17, v12

    :cond_38
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p2

    move-wide/from16 v21, v4

    move-object/from16 v3, v17

    move-object/from16 v4, v30

    move-object v5, v0

    goto :goto_2e

    :cond_39
    move-object/from16 p2, v2

    move-object/from16 v17, v3

    move-object/from16 v30, v4

    move-object v0, v5

    move-wide/from16 v4, v21

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzh:[J

    aget-wide v19, v2, v14

    add-long v23, v23, v19

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, v30

    move-object v5, v0

    move/from16 v0, p1

    goto/16 :goto_2d

    :cond_3a
    move-object/from16 v30, v4

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzd:J

    sget-object v29, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const-wide/32 v25, 0xf4240

    move-wide/from16 v27, v2

    invoke-static/range {v23 .. v29}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajh;

    move-wide v4, v2

    move-object v3, v7

    move-wide v7, v4

    move-object v5, v9

    move v4, v11

    move-object v6, v13

    move-object/from16 v2, v30

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzajh;-><init>(Lcom/google/android/gms/internal/ads/zzaje;[J[II[J[IJ)V

    return-object v0

    :cond_3b
    const-string v0, "Track has no sample table size information"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v0

    throw v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzes;Lcom/google/android/gms/internal/ads/zzadf;JLcom/google/android/gms/internal/ads/zzw;ZZLcom/google/android/gms/internal/ads/zzfwh;)Ljava/util/List;
    .locals 70
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbh;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzes;->zzc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_a0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzes;->zzc:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/google/android/gms/internal/ads/zzes;

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzev;->zzd:I

    const v2, 0x7472616b

    if-eq v1, v2, :cond_0

    move-object/from16 v3, p1

    move-object/from16 v0, p7

    move-object v2, v11

    move/from16 v33, v13

    goto/16 :goto_6f

    :cond_0
    const v1, 0x6d766864

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v15, 0x6d646961

    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x68646c72    # 4.3148E24f

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v3

    const v5, 0x736f756e

    const/4 v9, -0x1

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const v5, 0x76696465

    if-ne v3, v5, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const v5, 0x74657874

    if-eq v3, v5, :cond_3

    const v5, 0x7362746c

    if-eq v3, v5, :cond_3

    const v5, 0x73756274

    if-eq v3, v5, :cond_3

    const v5, 0x636c6370

    if-ne v3, v5, :cond_4

    :cond_3
    const/4 v3, 0x3

    goto :goto_1

    :cond_4
    const v5, 0x6d657461

    if-ne v3, v5, :cond_5

    const/4 v3, 0x5

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    :goto_1
    const v5, 0x7374626c

    const v15, 0x6d696e66

    if-ne v3, v9, :cond_6

    move-object/from16 v0, p7

    move-object/from16 v35, v11

    move/from16 v33, v13

    move-object v1, v14

    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_6e

    :cond_6
    const v6, 0x746b6864

    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzain;->zza(I)I

    move-result v18

    if-nez v18, :cond_7

    const/16 v7, 0x8

    goto :goto_3

    :cond_7
    const/16 v7, 0x10

    :goto_3
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v7

    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v21

    const/4 v8, 0x0

    :goto_4
    if-nez v18, :cond_8

    const/4 v10, 0x4

    goto :goto_5

    :cond_8
    const/16 v10, 0x8

    :goto_5
    const-wide/16 v24, 0x0

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v8, v10, :cond_b

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v10

    add-int v28, v21, v8

    aget-byte v10, v10, v28

    if-eq v10, v9, :cond_a

    if-nez v18, :cond_9

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v28

    goto :goto_6

    :cond_9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzw()J

    move-result-wide v28

    :goto_6
    cmp-long v8, v28, v24

    if-nez v8, :cond_c

    :goto_7
    move-wide/from16 v28, v26

    goto :goto_8

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    goto :goto_7

    :cond_c
    :goto_8
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v10

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v4

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v6

    const/high16 v9, 0x10000

    const/high16 v12, -0x10000

    if-nez v8, :cond_10

    if-ne v10, v9, :cond_f

    if-ne v4, v12, :cond_e

    if-nez v6, :cond_d

    const/16 v4, 0x5a

    const/16 v12, 0x5a

    goto :goto_c

    :cond_d
    const/high16 v4, -0x10000

    :cond_e
    const/4 v8, 0x0

    const/high16 v10, 0x10000

    goto :goto_9

    :cond_f
    const/4 v8, 0x0

    :cond_10
    :goto_9
    if-nez v8, :cond_14

    if-ne v10, v12, :cond_13

    if-ne v4, v9, :cond_12

    if-nez v6, :cond_11

    const/16 v4, 0x10e

    const/16 v12, 0x10e

    goto :goto_c

    :cond_11
    :goto_a
    const/4 v8, 0x0

    const/high16 v10, -0x10000

    goto :goto_b

    :cond_12
    move v9, v4

    goto :goto_a

    :cond_13
    move v9, v4

    const/4 v8, 0x0

    goto :goto_b

    :cond_14
    move v9, v4

    :goto_b
    if-ne v8, v12, :cond_15

    if-nez v10, :cond_15

    if-nez v9, :cond_15

    if-ne v6, v12, :cond_15

    const/16 v4, 0xb4

    const/16 v12, 0xb4

    goto :goto_c

    :cond_15
    const/4 v12, 0x0

    :goto_c
    cmp-long v4, p2, v26

    if-nez v4, :cond_16

    move-wide/from16 v32, v28

    goto :goto_d

    :cond_16
    move-wide/from16 v32, p2

    :goto_d
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzain;->zzd(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzfb;

    move-result-object v1

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzfb;->zzc:J

    cmp-long v1, v32, v26

    if-nez v1, :cond_17

    move-wide/from16 v36, v8

    goto :goto_e

    :cond_17
    const-wide/32 v34, 0xf4240

    sget-object v38, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v36, v8

    invoke-static/range {v32 .. v38}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v26

    :goto_e
    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x6d646864

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzain;->zza(I)I

    move-result v4

    if-nez v4, :cond_18

    const/16 v6, 0x8

    goto :goto_f

    :cond_18
    const/16 v6, 0x10

    :goto_f
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    if-nez v4, :cond_19

    const/4 v4, 0x4

    goto :goto_10

    :cond_19
    const/16 v4, 0x8

    :goto_10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v8

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v2

    shr-int/lit8 v4, v2, 0xa

    shr-int/lit8 v6, v2, 0x5

    and-int/lit8 v2, v2, 0x1f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v4, v4, 0x1f

    add-int/lit8 v4, v4, 0x60

    int-to-char v4, v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v6, 0x1f

    add-int/lit8 v4, v4, 0x60

    int-to-char v4, v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v4, 0x73747364

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v1

    if-eqz v1, :cond_9f

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    new-instance v9, Lg/pd;

    invoke-direct {v9, v8}, Lg/pd;-><init>(I)V

    iget-object v10, v9, Lg/pd;->d:Ljava/lang/Cloneable;

    move-object/from16 v28, v10

    check-cast v28, [Lcom/google/android/gms/internal/ads/zzajf;

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v8, :cond_95

    move/from16 v29, v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v3

    const/16 v32, 0xc

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v4

    if-lez v4, :cond_1a

    const/4 v5, 0x1

    goto :goto_12

    :cond_1a
    const/4 v5, 0x0

    :goto_12
    const-string v15, "childAtomSize must be positive"

    invoke-static {v5, v15}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v2

    const v0, 0x61766331

    if-eq v2, v0, :cond_1b

    const v0, 0x61766333

    if-eq v2, v0, :cond_1b

    const v0, 0x656e6376

    if-eq v2, v0, :cond_1b

    const v0, 0x6d317620

    if-eq v2, v0, :cond_1b

    const v0, 0x6d703476

    if-eq v2, v0, :cond_1b

    const v0, 0x68766331

    if-eq v2, v0, :cond_1b

    const v0, 0x68657631

    if-eq v2, v0, :cond_1b

    const v0, 0x73323633

    if-eq v2, v0, :cond_1b

    const v0, 0x48323633

    if-eq v2, v0, :cond_1b

    const v0, 0x76703038

    if-eq v2, v0, :cond_1b

    const v0, 0x76703039

    if-eq v2, v0, :cond_1b

    const v0, 0x61763031

    if-eq v2, v0, :cond_1b

    const v0, 0x64766176

    if-eq v2, v0, :cond_1b

    const v0, 0x64766131

    if-eq v2, v0, :cond_1b

    const v0, 0x64766865

    if-eq v2, v0, :cond_1b

    const v0, 0x64766831

    if-ne v2, v0, :cond_1c

    :cond_1b
    move v0, v7

    move-object v7, v5

    move v5, v0

    move/from16 v18, v8

    const/16 v0, 0x10

    move-object/from16 v8, p4

    goto/16 :goto_1b

    :cond_1c
    const v0, 0x6d703461

    if-eq v2, v0, :cond_1d

    const v0, 0x656e6361

    if-eq v2, v0, :cond_1d

    const v0, 0x61632d33

    if-eq v2, v0, :cond_1d

    const v0, 0x65632d33

    if-eq v2, v0, :cond_1d

    const v0, 0x61632d34

    if-eq v2, v0, :cond_1d

    const v0, 0x6d6c7061

    if-eq v2, v0, :cond_1d

    const v0, 0x64747363

    if-eq v2, v0, :cond_1d

    const v0, 0x64747365

    if-eq v2, v0, :cond_1d

    const v0, 0x64747368

    if-eq v2, v0, :cond_1d

    const v0, 0x6474736c

    if-eq v2, v0, :cond_1d

    const v0, 0x64747378

    if-eq v2, v0, :cond_1d

    const v0, 0x73616d72

    if-eq v2, v0, :cond_1d

    const v0, 0x73617762

    if-eq v2, v0, :cond_1d

    const v0, 0x6c70636d

    if-eq v2, v0, :cond_1d

    const v0, 0x736f7774

    if-eq v2, v0, :cond_1d

    const v0, 0x74776f73

    if-eq v2, v0, :cond_1d

    const v0, 0x2e6d7032

    if-eq v2, v0, :cond_1d

    const v0, 0x2e6d7033

    if-eq v2, v0, :cond_1d

    const v0, 0x6d686131

    if-eq v2, v0, :cond_1d

    const v0, 0x6d686d31

    if-eq v2, v0, :cond_1d

    const v0, 0x616c6163

    if-eq v2, v0, :cond_1d

    const v0, 0x616c6177

    if-eq v2, v0, :cond_1d

    const v0, 0x756c6177

    if-eq v2, v0, :cond_1d

    const v0, 0x4f707573

    if-eq v2, v0, :cond_1d

    const v0, 0x664c6143

    if-eq v2, v0, :cond_1d

    const v0, 0x69616d66

    if-ne v2, v0, :cond_1e

    :cond_1d
    move-object v15, v5

    move v5, v7

    move/from16 v18, v8

    const/16 v0, 0x10

    const/16 v16, 0x1

    const/16 v17, 0x5

    const/16 v21, -0x1

    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object/from16 v8, p4

    move/from16 v7, p6

    goto/16 :goto_1a

    :cond_1e
    const v0, 0x74783367

    const v15, 0x54544d4c

    if-eq v2, v15, :cond_22

    if-eq v2, v0, :cond_22

    const v0, 0x77767474

    if-eq v2, v0, :cond_22

    const v0, 0x73747070

    if-eq v2, v0, :cond_22

    const v0, 0x63363038

    if-ne v2, v0, :cond_1f

    goto :goto_15

    :cond_1f
    const v0, 0x6d657474

    if-ne v2, v0, :cond_21

    add-int/lit8 v0, v3, 0x10

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzy(C)Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzy(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzab;->zzK(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v0

    iput-object v0, v9, Lg/pd;->a:Ljava/lang/Object;

    :cond_20
    :goto_13
    move/from16 v42, v3

    move/from16 v55, v4

    move-object/from16 v22, v5

    move-object/from16 v16, v6

    move v5, v7

    move/from16 v18, v8

    move/from16 v19, v10

    move-object/from16 v35, v11

    move v3, v12

    move/from16 v33, v13

    move-object/from16 v39, v14

    const/4 v2, 0x3

    const/4 v4, -0x1

    const/16 v30, 0x4

    :goto_14
    const/16 v59, 0x5

    goto/16 :goto_67

    :cond_21
    const v0, 0x63616d6d

    if-ne v2, v0, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzab;->zzK(I)Lcom/google/android/gms/internal/ads/zzab;

    const-string v2, "application/x-camera-motion"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v0

    iput-object v0, v9, Lg/pd;->a:Ljava/lang/Object;

    goto :goto_13

    :cond_22
    :goto_15
    add-int/lit8 v0, v3, 0x10

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const-string v0, "application/ttml+xml"

    const-wide v40, 0x7fffffffffffffffL

    if-ne v2, v15, :cond_23

    :goto_16
    move-object v2, v0

    :goto_17
    move-object/from16 v16, v1

    move/from16 v42, v3

    move-wide/from16 v0, v40

    :goto_18
    const/4 v15, 0x0

    goto :goto_19

    :cond_23
    const v15, 0x74783367

    if-ne v2, v15, :cond_24

    add-int/lit8 v0, v4, -0x10

    new-array v2, v0, [B

    const/4 v15, 0x0

    invoke-virtual {v1, v2, v15, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    const-string v2, "application/x-quicktime-tx3g"

    move-object v15, v0

    move-object/from16 v16, v1

    move/from16 v42, v3

    move-wide/from16 v0, v40

    goto :goto_19

    :cond_24
    const v15, 0x77767474

    if-ne v2, v15, :cond_25

    const-string v0, "application/x-mp4-vtt"

    goto :goto_16

    :cond_25
    const v15, 0x73747070

    if-ne v2, v15, :cond_26

    move-object v2, v0

    move-object/from16 v16, v1

    move/from16 v42, v3

    move-wide/from16 v0, v24

    goto :goto_18

    :cond_26
    const/4 v0, 0x1

    iput v0, v9, Lg/pd;->c:I

    const-string v2, "application/x-mp4-cea-608"

    goto :goto_17

    :goto_19
    new-instance v3, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzab;->zzK(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzad(J)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v0

    iput-object v0, v9, Lg/pd;->a:Ljava/lang/Object;

    move/from16 v55, v4

    move-object/from16 v22, v5

    move v5, v7

    move/from16 v18, v8

    move/from16 v19, v10

    move-object/from16 v35, v11

    move v3, v12

    move/from16 v33, v13

    move-object/from16 v39, v14

    move-object/from16 v1, v16

    const/4 v2, 0x3

    const/4 v4, -0x1

    const/16 v30, 0x4

    const/16 v59, 0x5

    move-object/from16 v16, v6

    goto/16 :goto_67

    :goto_1a
    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzain;->b(Lcom/google/android/gms/internal/ads/zzed;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzw;Lg/pd;I)V

    move/from16 v42, v3

    move/from16 v55, v4

    move-object/from16 v16, v6

    move/from16 v19, v10

    move-object/from16 v35, v11

    move v3, v12

    move/from16 v33, v13

    move-object/from16 v39, v14

    move-object/from16 v22, v15

    const/4 v2, 0x3

    const/4 v4, -0x1

    const/16 v30, 0x4

    const/16 v32, 0xc

    goto/16 :goto_14

    :goto_1b
    move-object/from16 v16, v6

    add-int/lit8 v6, v3, 0x10

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v0

    move/from16 v19, v10

    const/16 v10, 0x32

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v10

    move/from16 v33, v13

    const v13, 0x656e6376

    if-ne v2, v13, :cond_29

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzain;->d(Lcom/google/android/gms/internal/ads/zzed;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v13, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v8, :cond_27

    move/from16 v42, v3

    const/4 v3, 0x0

    goto :goto_1c

    :cond_27
    move/from16 v42, v3

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzajf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzajf;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzw;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzw;

    move-result-object v3

    :goto_1c
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzajf;

    aput-object v2, v28, v19

    move v2, v13

    goto :goto_1d

    :cond_28
    move/from16 v42, v3

    move-object v3, v8

    const v2, 0x656e6376

    :goto_1d
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto :goto_1e

    :cond_29
    move/from16 v42, v3

    move-object v3, v8

    :goto_1e
    const-string v13, "video/3gpp"

    const v8, 0x6d317620

    if-ne v2, v8, :cond_2a

    const-string v8, "video/mpeg"

    goto :goto_1f

    :cond_2a
    const v8, 0x48323633

    if-ne v2, v8, :cond_2b

    move-object v8, v13

    const v2, 0x48323633

    goto :goto_1f

    :cond_2b
    const/4 v8, 0x0

    :goto_1f
    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v47, v0

    move-object/from16 v23, v3

    move/from16 v54, v5

    move/from16 v48, v6

    move-object/from16 v22, v7

    move-object/from16 v35, v11

    move/from16 v41, v12

    move-object/from16 v21, v13

    move-object/from16 v39, v14

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/16 v40, -0x1

    const/16 v46, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/high16 v53, 0x3f800000    # 1.0f

    move-object v11, v8

    move v12, v10

    const/16 v8, 0x8

    const/16 v10, 0x8

    :goto_20
    sub-int v5, v12, v42

    if-ge v5, v4, :cond_2c

    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v55

    if-nez v55, :cond_2e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v55

    move/from16 v56, v12

    sub-int v12, v55, v42

    if-ne v12, v4, :cond_2d

    :cond_2c
    move-object/from16 v69, v0

    move/from16 v64, v3

    move/from16 v55, v4

    move/from16 v63, v8

    move-object/from16 v60, v9

    move/from16 v61, v10

    const/4 v2, 0x3

    const/4 v4, -0x1

    const/16 v30, 0x4

    const/16 v32, 0xc

    const/16 v59, 0x5

    goto/16 :goto_65

    :cond_2d
    const/4 v12, 0x0

    goto :goto_21

    :cond_2e
    move/from16 v56, v12

    move/from16 v12, v55

    :goto_21
    if-lez v12, :cond_2f

    move/from16 v55, v4

    const/4 v4, 0x1

    goto :goto_22

    :cond_2f
    move/from16 v55, v4

    const/4 v4, 0x0

    :goto_22
    invoke-static {v4, v15}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v4

    move/from16 v57, v5

    const v5, 0x61766343

    if-ne v4, v5, :cond_32

    add-int/lit8 v5, v57, 0x8

    if-nez v11, :cond_30

    const/4 v10, 0x1

    :goto_23
    const/4 v0, 0x0

    goto :goto_24

    :cond_30
    const/4 v10, 0x0

    goto :goto_23

    :goto_24
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabv;->zza(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzabv;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzabv;->zza:Ljava/util/List;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzabv;->zzb:I

    iput v5, v9, Lg/pd;->b:I

    if-nez v52, :cond_31

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzabv;->zzk:F

    move/from16 v53, v5

    const/4 v10, 0x0

    goto :goto_25

    :cond_31
    const/4 v10, 0x1

    :goto_25
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzabv;->zzl:Ljava/lang/String;

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzabv;->zzj:I

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzabv;->zzg:I

    iget v11, v3, Lcom/google/android/gms/internal/ads/zzabv;->zzh:I

    iget v14, v3, Lcom/google/android/gms/internal/ads/zzabv;->zzi:I

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzabv;->zze:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzabv;->zzf:I

    const-string v40, "video/avc"

    move/from16 v58, v2

    move-object/from16 v51, v5

    move-object/from16 v60, v9

    move/from16 v52, v10

    move-object/from16 v62, v15

    const/4 v2, 0x3

    const/16 v30, 0x4

    const/16 v32, 0xc

    const/16 v59, 0x5

    move v10, v3

    move v3, v11

    move-object/from16 v11, v40

    move/from16 v40, v7

    move v7, v14

    move v14, v8

    move v8, v0

    move-object v0, v4

    :goto_26
    const/4 v4, -0x1

    goto/16 :goto_64

    :cond_32
    const v5, 0x68766343

    move/from16 v58, v2

    const-string v2, "video/hevc"

    if-ne v4, v5, :cond_36

    add-int/lit8 v5, v57, 0x8

    if-nez v11, :cond_33

    const/4 v10, 0x1

    :goto_27
    const/4 v0, 0x0

    goto :goto_28

    :cond_33
    const/4 v10, 0x0

    goto :goto_27

    :goto_28
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzadg;->zza(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzadg;

    move-result-object v0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzadg;->zza:Ljava/util/List;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzadg;->zzb:I

    iput v4, v9, Lg/pd;->b:I

    if-nez v52, :cond_34

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzadg;->zzi:F

    move/from16 v53, v4

    const/4 v10, 0x0

    goto :goto_29

    :cond_34
    const/4 v10, 0x1

    :goto_29
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzadg;->zzj:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzadg;->zzk:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzadg;->zzh:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_35

    goto :goto_2a

    :cond_35
    move v6, v13

    :goto_2a
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzadg;->zze:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzadg;->zzf:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzadg;->zzg:I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzadg;->zzc:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzadg;->zzd:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzadg;->zzl:Lcom/google/android/gms/internal/ads/zzfm;

    move/from16 v30, v14

    move v14, v8

    move/from16 v8, v30

    move/from16 v40, v4

    move-object/from16 v51, v5

    move-object/from16 v60, v9

    move/from16 v52, v10

    move-object/from16 v62, v15

    const/4 v4, -0x1

    const/16 v30, 0x4

    const/16 v32, 0xc

    const/16 v59, 0x5

    move v10, v7

    move v7, v13

    move v13, v6

    move-object v6, v0

    move-object v0, v3

    move v3, v11

    move-object v11, v2

    const/4 v2, 0x3

    goto/16 :goto_64

    :cond_36
    const v5, 0x6c687643

    if-ne v4, v5, :cond_43

    add-int/lit8 v5, v57, 0x8

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "lhvC must follow hvcC atom"

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    if-eqz v6, :cond_38

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_37

    const/4 v2, 0x1

    goto :goto_2b

    :cond_37
    const/4 v2, 0x0

    goto :goto_2b

    :cond_38
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_2b
    const-string v11, "must have at least two layers"

    invoke-static {v2, v11}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzadg;->zzb(Lcom/google/android/gms/internal/ads/zzed;Lcom/google/android/gms/internal/ads/zzfm;)Lcom/google/android/gms/internal/ads/zzadg;

    move-result-object v2

    iget v5, v9, Lg/pd;->b:I

    iget v11, v2, Lcom/google/android/gms/internal/ads/zzadg;->zzb:I

    if-ne v5, v11, :cond_39

    const/4 v5, 0x1

    goto :goto_2c

    :cond_39
    const/4 v5, 0x0

    :goto_2c
    const-string v11, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v5, v11}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzadg;->zze:I

    const/4 v11, -0x1

    if-eq v5, v11, :cond_3b

    if-ne v14, v5, :cond_3a

    const/4 v5, 0x1

    goto :goto_2d

    :cond_3a
    const/4 v5, 0x0

    :goto_2d
    const-string v4, "colorSpace must be the same for both views"

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    :cond_3b
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzadg;->zzf:I

    if-eq v4, v11, :cond_3d

    if-ne v3, v4, :cond_3c

    const/4 v4, 0x1

    goto :goto_2e

    :cond_3c
    const/4 v4, 0x0

    :goto_2e
    const-string v5, "colorRange must be the same for both views"

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    :cond_3d
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzadg;->zzg:I

    if-eq v4, v11, :cond_3f

    if-ne v7, v4, :cond_3e

    const/4 v4, 0x1

    goto :goto_2f

    :cond_3e
    const/4 v4, 0x0

    :goto_2f
    const-string v5, "colorTransfer must be the same for both views"

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    :cond_3f
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzadg;->zzc:I

    if-ne v8, v4, :cond_40

    const/4 v4, 0x1

    goto :goto_30

    :cond_40
    const/4 v4, 0x0

    :goto_30
    const-string v5, "bitdepthLuma must be the same for both views"

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzadg;->zzd:I

    if-ne v10, v4, :cond_41

    const/4 v4, 0x1

    goto :goto_31

    :cond_41
    const/4 v4, 0x0

    :goto_31
    const-string v5, "bitdepthChroma must be the same for both views"

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    if-eqz v0, :cond_42

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfzl;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfzl;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzadg;->zza:Ljava/util/List;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfzl;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    goto :goto_32

    :cond_42
    const-string v4, "initializationData must be already set from hvcC atom"

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    :goto_32
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzadg;->zzk:Ljava/lang/String;

    const-string v4, "video/mv-hevc"

    move-object/from16 v51, v2

    move-object v11, v4

    move-object/from16 v60, v9

    move-object/from16 v62, v15

    const/4 v2, 0x3

    const/4 v4, -0x1

    :goto_33
    const/16 v30, 0x4

    const/16 v32, 0xc

    const/16 v59, 0x5

    goto/16 :goto_64

    :cond_43
    const/4 v2, 0x2

    const v5, 0x76657875

    if-ne v4, v5, :cond_54

    add-int/lit8 v5, v57, 0x8

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v4

    const/4 v5, 0x0

    :goto_34
    sub-int v2, v4, v57

    if-ge v2, v12, :cond_4c

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v2

    if-lez v2, :cond_44

    move/from16 v59, v4

    const/4 v4, 0x1

    goto :goto_35

    :cond_44
    move/from16 v59, v4

    const/4 v4, 0x0

    :goto_35
    invoke-static {v4, v15}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v4

    move-object/from16 v60, v9

    const v9, 0x65796573

    if-ne v4, v9, :cond_4b

    add-int/lit8 v4, v59, 0x8

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v4

    :goto_36
    sub-int v5, v4, v59

    if-ge v5, v2, :cond_4a

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v5

    if-lez v5, :cond_45

    const/4 v9, 0x1

    goto :goto_37

    :cond_45
    const/4 v9, 0x0

    :goto_37
    invoke-static {v9, v15}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v9

    move/from16 v61, v2

    const v2, 0x73747269

    if-ne v9, v2, :cond_49

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v2

    and-int/lit8 v4, v2, 0x1

    and-int/lit8 v5, v2, 0x2

    const/4 v9, 0x2

    if-ne v5, v9, :cond_46

    const/4 v5, 0x1

    goto :goto_38

    :cond_46
    const/4 v5, 0x0

    :goto_38
    and-int/lit8 v2, v2, 0x8

    const/16 v9, 0x8

    if-ne v2, v9, :cond_47

    const/4 v2, 0x1

    :goto_39
    const/4 v9, 0x1

    goto :goto_3a

    :cond_47
    const/4 v2, 0x0

    goto :goto_39

    :goto_3a
    if-eq v9, v4, :cond_48

    const/4 v4, 0x0

    :goto_3b
    const/16 v45, 0x1

    goto :goto_3c

    :cond_48
    const/4 v4, 0x1

    goto :goto_3b

    :goto_3c
    new-instance v9, Lg/evf;

    move-object/from16 v62, v15

    new-instance v15, Lg/bag;

    invoke-direct {v15, v4, v5, v2}, Lg/bag;-><init>(ZZZ)V

    const/16 v2, 0x17

    invoke-direct {v9, v2, v15}, Lg/evf;-><init>(ILjava/lang/Object;)V

    move-object v5, v9

    goto :goto_3d

    :cond_49
    move-object/from16 v62, v15

    const/16 v45, 0x1

    add-int/2addr v4, v5

    move/from16 v2, v61

    goto :goto_36

    :cond_4a
    move/from16 v61, v2

    move-object/from16 v62, v15

    const/16 v45, 0x1

    const/4 v5, 0x0

    goto :goto_3d

    :cond_4b
    move/from16 v61, v2

    move-object/from16 v62, v15

    const/16 v45, 0x1

    :goto_3d
    add-int v4, v59, v61

    move-object/from16 v9, v60

    move-object/from16 v15, v62

    goto/16 :goto_34

    :cond_4c
    move-object/from16 v60, v9

    move-object/from16 v62, v15

    const/16 v45, 0x1

    if-nez v5, :cond_4d

    const/4 v2, 0x0

    goto :goto_3e

    :cond_4d
    new-instance v2, Lg/eie;

    const/16 v4, 0x18

    invoke-direct {v2, v4, v5}, Lg/eie;-><init>(ILjava/lang/Object;)V

    :goto_3e
    if-eqz v2, :cond_4f

    iget-object v2, v2, Lg/eie;->g:Ljava/lang/Object;

    check-cast v2, Lg/evf;

    if-eqz v6, :cond_51

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzfm;->zza:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    const/4 v9, 0x2

    if-lt v4, v9, :cond_50

    iget-object v4, v2, Lg/evf;->f:Ljava/lang/Object;

    check-cast v4, Lg/bag;

    iget-boolean v5, v4, Lg/bag;->a:Z

    if-eqz v5, :cond_4e

    iget-boolean v4, v4, Lg/bag;->b:Z

    if-eqz v4, :cond_4e

    const/4 v4, 0x1

    goto :goto_3f

    :cond_4e
    const/4 v4, 0x0

    :goto_3f
    const-string v5, "both eye views must be marked as available"

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    iget-object v2, v2, Lg/evf;->f:Ljava/lang/Object;

    check-cast v2, Lg/bag;

    iget-boolean v2, v2, Lg/bag;->c:Z

    xor-int/lit8 v2, v2, 0x1

    const-string v4, "for MV-HEVC, eye_views_reversed must be set to false"

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    :cond_4f
    move-object/from16 v69, v0

    move/from16 v64, v3

    move-object/from16 v38, v6

    move/from16 v63, v8

    move/from16 v61, v10

    const/4 v2, 0x3

    const/4 v4, -0x1

    const/16 v30, 0x4

    const/16 v32, 0xc

    const/16 v59, 0x5

    goto/16 :goto_63

    :cond_50
    :goto_40
    const/4 v4, -0x1

    goto :goto_41

    :cond_51
    const/4 v6, 0x0

    goto :goto_40

    :goto_41
    if-ne v13, v4, :cond_53

    iget-object v2, v2, Lg/evf;->f:Ljava/lang/Object;

    check-cast v2, Lg/bag;

    iget-boolean v2, v2, Lg/bag;->c:Z

    const/4 v9, 0x1

    if-eq v9, v2, :cond_52

    const/4 v2, 0x3

    const/4 v4, -0x1

    const/4 v13, 0x4

    goto/16 :goto_33

    :cond_52
    const/4 v2, 0x3

    const/4 v4, -0x1

    const/4 v13, 0x5

    goto/16 :goto_33

    :cond_53
    const/4 v2, 0x3

    goto/16 :goto_33

    :cond_54
    move-object/from16 v60, v9

    move-object/from16 v62, v15

    const v2, 0x64766343

    if-eq v4, v2, :cond_55

    const v2, 0x64767643

    if-ne v4, v2, :cond_56

    :cond_55
    move-object/from16 v69, v0

    move/from16 v64, v3

    move-object/from16 v38, v6

    move/from16 v63, v8

    move/from16 v61, v10

    const/4 v2, 0x3

    const/4 v4, -0x1

    const/16 v30, 0x4

    const/16 v32, 0xc

    const/16 v59, 0x5

    goto/16 :goto_62

    :cond_56
    const v2, 0x76706343

    const/4 v5, 0x6

    const/4 v15, 0x7

    if-ne v4, v2, :cond_5b

    if-nez v11, :cond_57

    const/4 v10, 0x1

    :goto_42
    const/4 v2, 0x0

    goto :goto_43

    :cond_57
    const/4 v10, 0x0

    goto :goto_42

    :goto_43
    invoke-static {v10, v2}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    add-int/lit8 v2, v57, 0xc

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v4

    shr-int/lit8 v7, v4, 0x4

    shr-int/lit8 v8, v4, 0x1

    and-int/2addr v8, v15

    const-string v10, "video/x-vnd.on2.vp9"

    move/from16 v11, v58

    const v14, 0x76703038

    if-ne v11, v14, :cond_58

    const-string v38, "video/x-vnd.on2.vp8"

    move-object/from16 v9, v38

    :goto_44
    const/16 v38, 0xa

    goto :goto_45

    :cond_58
    move-object v9, v10

    goto :goto_44

    :goto_45
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    int-to-byte v0, v7

    int-to-byte v8, v8

    sget-object v10, Lcom/google/android/gms/internal/ads/zzdd;->a:[B

    const/16 v10, 0xc

    new-array v14, v10, [B

    const/4 v10, 0x1

    const/16 v31, 0x0

    aput-byte v10, v14, v31

    aput-byte v10, v14, v10

    const/16 v44, 0x2

    aput-byte v2, v14, v44

    const/4 v2, 0x3

    aput-byte v44, v14, v2

    const/16 v30, 0x4

    aput-byte v10, v14, v30

    const/4 v15, 0x5

    const/16 v43, 0x7

    aput-byte v3, v14, v15

    aput-byte v2, v14, v5

    aput-byte v10, v14, v43

    const/16 v20, 0x8

    aput-byte v0, v14, v20

    const/16 v0, 0x9

    aput-byte v30, v14, v0

    aput-byte v10, v14, v38

    const/16 v0, 0xb

    aput-byte v8, v14, v0

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    goto :goto_46

    :cond_59
    const/4 v2, 0x3

    const/4 v10, 0x1

    const/4 v15, 0x5

    :goto_46
    and-int/lit8 v3, v4, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzm;->zza(I)I

    move-result v4

    if-eq v10, v3, :cond_5a

    const/4 v8, 0x2

    goto :goto_47

    :cond_5a
    const/4 v8, 0x1

    :goto_47
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzm;->zzb(I)I

    move-result v3

    move v14, v4

    move v10, v7

    move/from16 v58, v11

    const/4 v4, -0x1

    const/16 v30, 0x4

    const/16 v32, 0xc

    const/16 v59, 0x5

    move v7, v3

    move v3, v8

    move-object v11, v9

    move v8, v10

    goto/16 :goto_64

    :cond_5b
    const/4 v2, 0x3

    const/4 v15, 0x5

    const/16 v38, 0xa

    const/16 v43, 0x7

    const v9, 0x61763143

    const-string v15, "BoxParsers"

    if-ne v4, v9, :cond_77

    add-int/lit8 v0, v57, 0x8

    add-int/lit8 v3, v12, -0x8

    new-array v4, v3, [B

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v9, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzk;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzec;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    array-length v8, v7

    invoke-direct {v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v7

    const/16 v20, 0x8

    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzec;->zzo(I)V

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v8

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v7

    const/4 v11, 0x2

    if-ne v8, v11, :cond_5e

    if-eqz v5, :cond_5d

    if-eq v10, v7, :cond_5c

    const/16 v5, 0xa

    goto :goto_48

    :cond_5c
    const/16 v5, 0xc

    :goto_48
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzk;->zzf(I)Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)Lcom/google/android/gms/internal/ads/zzk;

    goto :goto_4a

    :cond_5d
    const/4 v5, 0x0

    const/4 v8, 0x2

    :cond_5e
    if-gt v8, v11, :cond_60

    if-eq v10, v5, :cond_5f

    const/16 v5, 0x8

    goto :goto_49

    :cond_5f
    const/16 v5, 0xa

    :goto_49
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzk;->zzf(I)Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)Lcom/google/android/gms/internal/ads/zzk;

    :cond_60
    :goto_4a
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v8

    if-eq v8, v10, :cond_61

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported obu_type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdt;->zze(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzk;->zzg()Lcom/google/android/gms/internal/ads/zzm;

    move-result-object v0

    :goto_4b
    const/4 v8, 0x4

    const/16 v14, 0xc

    goto/16 :goto_55

    :cond_61
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v7

    if-eqz v7, :cond_62

    const-string v4, "Unsupported obu_extension_flag"

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdt;->zze(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzk;->zzg()Lcom/google/android/gms/internal/ads/zzm;

    move-result-object v0

    goto :goto_4b

    :cond_62
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    if-eqz v7, :cond_63

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v8

    const/16 v7, 0x7f

    if-le v8, v7, :cond_63

    const-string v4, "Excessive obu_size"

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdt;->zze(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzk;->zzg()Lcom/google/android/gms/internal/ads/zzm;

    move-result-object v0

    goto :goto_4b

    :cond_63
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v8

    if-eqz v8, :cond_64

    const-string v4, "Unsupported reduced_still_picture_header"

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdt;->zze(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzk;->zzg()Lcom/google/android/gms/internal/ads/zzm;

    move-result-object v0

    goto :goto_4b

    :cond_64
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v8

    if-eqz v8, :cond_65

    const-string v4, "Unsupported timing_info_present_flag"

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdt;->zze(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzk;->zzg()Lcom/google/android/gms/internal/ads/zzm;

    move-result-object v0

    goto :goto_4b

    :cond_65
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v8

    if-eqz v8, :cond_66

    const-string v4, "Unsupported initial_display_delay_present_flag"

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdt;->zze(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzk;->zzg()Lcom/google/android/gms/internal/ads/zzm;

    move-result-object v0

    goto :goto_4b

    :cond_66
    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v10

    const/4 v11, 0x0

    :goto_4c
    if-gt v11, v10, :cond_68

    const/16 v14, 0xc

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v15

    const/4 v8, 0x7

    if-le v15, v8, :cond_67

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    :cond_67
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x5

    const/16 v43, 0x7

    goto :goto_4c

    :cond_68
    const/4 v8, 0x4

    const/16 v14, 0xc

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v10

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v11

    const/16 v45, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v10

    if-eqz v10, :cond_69

    const/4 v10, 0x7

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    goto :goto_4d

    :cond_69
    const/4 v10, 0x7

    :goto_4d
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v10

    if-eqz v10, :cond_6a

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_6a
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v11

    if-eqz v11, :cond_6b

    const/4 v11, 0x1

    goto :goto_4e

    :cond_6b
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v15

    if-lez v15, :cond_6c

    :goto_4e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v15

    if-nez v15, :cond_6c

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_6c
    if-eqz v10, :cond_6d

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_6d
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v10

    const/4 v11, 0x2

    if-ne v7, v11, :cond_6e

    if-eqz v10, :cond_70

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzm()V

    goto :goto_4f

    :cond_6e
    const/4 v10, 0x1

    if-ne v7, v10, :cond_70

    :cond_6f
    const/4 v10, 0x0

    goto :goto_50

    :cond_70
    :goto_4f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v7

    if-eqz v7, :cond_6f

    const/4 v10, 0x1

    :goto_50
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v7

    if-eqz v7, :cond_76

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v11

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v15

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v30

    if-nez v10, :cond_73

    const/4 v10, 0x1

    if-ne v11, v10, :cond_74

    if-ne v15, v5, :cond_72

    if-nez v30, :cond_71

    const/4 v4, 0x1

    const/4 v11, 0x1

    goto :goto_53

    :cond_71
    :goto_51
    const/4 v11, 0x1

    goto :goto_52

    :cond_72
    move v5, v15

    goto :goto_51

    :cond_73
    const/4 v10, 0x1

    :cond_74
    move v5, v15

    :goto_52
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v4

    :goto_53
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzm;->zza(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzk;->zzc(I)Lcom/google/android/gms/internal/ads/zzk;

    if-ne v4, v10, :cond_75

    const/4 v4, 0x1

    goto :goto_54

    :cond_75
    const/4 v4, 0x2

    :goto_54
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)Lcom/google/android/gms/internal/ads/zzk;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzm;->zzb(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzk;->zzd(I)Lcom/google/android/gms/internal/ads/zzk;

    :cond_76
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzk;->zzg()Lcom/google/android/gms/internal/ads/zzm;

    move-result-object v0

    :goto_55
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzm;->zzf:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzm;->zzg:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzm;->zzb:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzm;->zzc:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzm;->zzd:I

    const-string v11, "video/av01"

    move v8, v4

    move v14, v7

    const/4 v4, -0x1

    const/16 v30, 0x4

    const/16 v32, 0xc

    const/16 v59, 0x5

    move v7, v0

    move-object v0, v3

    move v3, v10

    move v10, v5

    goto/16 :goto_64

    :cond_77
    const/4 v9, 0x0

    const/16 v30, 0x4

    const/16 v32, 0xc

    const/16 v59, 0x5

    const v5, 0x636c6c69

    const/16 v31, 0x19

    if-ne v4, v5, :cond_79

    if-nez v46, :cond_78

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v46

    :cond_78
    move-object/from16 v4, v46

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzE()S

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzE()S

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v46, v4

    goto/16 :goto_26

    :cond_79
    const v5, 0x6d646376

    if-ne v4, v5, :cond_7b

    if-nez v46, :cond_7a

    invoke-static/range {v31 .. v31}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v46

    :cond_7a
    move-object/from16 v4, v46

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzE()S

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzE()S

    move-result v15

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzE()S

    move-result v9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzE()S

    move-result v2

    move-object/from16 v38, v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzE()S

    move-result v6

    move/from16 v61, v10

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzE()S

    move-result v10

    move/from16 v63, v8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzE()S

    move-result v8

    move/from16 v64, v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzE()S

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v65

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v67

    move-object/from16 v69, v0

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    div-long v5, v65, v2

    long-to-int v0, v5

    int-to-short v0, v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    div-long v2, v67, v2

    long-to-int v0, v2

    int-to-short v0, v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v46, v4

    :goto_56
    move-object/from16 v6, v38

    move/from16 v10, v61

    move/from16 v8, v63

    move/from16 v3, v64

    move-object/from16 v0, v69

    :goto_57
    const/4 v2, 0x3

    goto/16 :goto_26

    :cond_7b
    move-object/from16 v69, v0

    move/from16 v64, v3

    move-object/from16 v38, v6

    move/from16 v63, v8

    move/from16 v61, v10

    const v0, 0x64323633

    if-ne v4, v0, :cond_7d

    if-nez v11, :cond_7c

    const/4 v10, 0x1

    :goto_58
    const/4 v0, 0x0

    goto :goto_59

    :cond_7c
    const/4 v10, 0x0

    goto :goto_58

    :goto_59
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    move-object/from16 v11, v21

    goto :goto_56

    :cond_7d
    const/4 v0, 0x0

    const v2, 0x65736473

    if-ne v4, v2, :cond_80

    if-nez v11, :cond_7e

    const/4 v10, 0x1

    goto :goto_5a

    :cond_7e
    const/4 v10, 0x0

    :goto_5a
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/zzacv;->zzb(ZLjava/lang/String;)V

    move/from16 v0, v57

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzain;->e(ILcom/google/android/gms/internal/ads/zzed;)Lg/fcw;

    move-result-object v0

    iget-object v2, v0, Lg/fcw;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lg/fcw;->b:Ljava/lang/Object;

    check-cast v3, [B

    if-eqz v3, :cond_7f

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v3

    move-object/from16 v50, v0

    move-object v11, v2

    move-object v0, v3

    move-object/from16 v6, v38

    move/from16 v10, v61

    move/from16 v8, v63

    move/from16 v3, v64

    goto :goto_57

    :cond_7f
    move-object/from16 v50, v0

    move-object v11, v2

    goto :goto_56

    :cond_80
    move/from16 v0, v57

    const v2, 0x70617370

    if-ne v4, v2, :cond_81

    add-int/lit8 v5, v0, 0x8

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v2

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    move/from16 v53, v0

    move-object/from16 v6, v38

    move/from16 v10, v61

    move/from16 v8, v63

    move/from16 v3, v64

    move-object/from16 v0, v69

    const/4 v2, 0x3

    const/4 v4, -0x1

    const/16 v52, 0x1

    goto/16 :goto_64

    :cond_81
    const v2, 0x73763364

    if-ne v4, v2, :cond_84

    add-int/lit8 v5, v0, 0x8

    :goto_5b
    sub-int v2, v5, v0

    if-ge v2, v12, :cond_83

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v3

    const v4, 0x70726f6a

    if-ne v3, v4, :cond_82

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    invoke-static {v0, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object/from16 v49, v0

    goto/16 :goto_56

    :cond_82
    move v5, v2

    goto :goto_5b

    :cond_83
    move-object/from16 v6, v38

    move/from16 v10, v61

    move/from16 v8, v63

    move/from16 v3, v64

    move-object/from16 v0, v69

    const/4 v2, 0x3

    const/4 v4, -0x1

    const/16 v49, 0x0

    goto/16 :goto_64

    :cond_84
    const v0, 0x73743364

    if-ne v4, v0, :cond_8a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    if-nez v0, :cond_85

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v0

    if-eqz v0, :cond_89

    const/4 v10, 0x1

    if-eq v0, v10, :cond_88

    const/4 v9, 0x2

    if-eq v0, v9, :cond_87

    if-eq v0, v2, :cond_86

    :cond_85
    const/4 v4, -0x1

    goto/16 :goto_63

    :cond_86
    move-object/from16 v6, v38

    move/from16 v10, v61

    move/from16 v8, v63

    move/from16 v3, v64

    move-object/from16 v0, v69

    const/4 v4, -0x1

    const/4 v13, 0x3

    goto/16 :goto_64

    :cond_87
    move-object/from16 v6, v38

    move/from16 v10, v61

    move/from16 v8, v63

    move/from16 v3, v64

    move-object/from16 v0, v69

    const/4 v4, -0x1

    const/4 v13, 0x2

    goto/16 :goto_64

    :cond_88
    move-object/from16 v6, v38

    move/from16 v10, v61

    move/from16 v8, v63

    move/from16 v3, v64

    move-object/from16 v0, v69

    const/4 v4, -0x1

    const/4 v13, 0x1

    goto/16 :goto_64

    :cond_89
    move-object/from16 v6, v38

    move/from16 v10, v61

    move/from16 v8, v63

    move/from16 v3, v64

    move-object/from16 v0, v69

    const/4 v4, -0x1

    const/4 v13, 0x0

    goto/16 :goto_64

    :cond_8a
    const/4 v2, 0x3

    const v0, 0x636f6c72

    if-ne v4, v0, :cond_85

    const/4 v4, -0x1

    if-ne v14, v4, :cond_91

    if-ne v7, v4, :cond_90

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v0

    const v3, 0x6e636c78

    if-eq v0, v3, :cond_8c

    const v3, 0x6e636c63

    if-ne v0, v3, :cond_8b

    goto :goto_5d

    :cond_8b
    const-string v3, "Unsupported color type: "

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzev;->zze(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v38

    move/from16 v10, v61

    move/from16 v8, v63

    move/from16 v3, v64

    move-object/from16 v0, v69

    const/4 v7, -0x1

    :goto_5c
    const/4 v14, -0x1

    goto/16 :goto_64

    :cond_8c
    :goto_5d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v3

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    const/16 v5, 0x13

    if-ne v12, v5, :cond_8e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_8d

    const/4 v10, 0x1

    :goto_5e
    const/16 v12, 0x13

    goto :goto_5f

    :cond_8d
    const/4 v10, 0x0

    goto :goto_5e

    :cond_8e
    const/4 v10, 0x0

    :goto_5f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzm;->zza(I)I

    move-result v0

    const/4 v9, 0x1

    if-eq v9, v10, :cond_8f

    const/4 v8, 0x2

    goto :goto_60

    :cond_8f
    const/4 v8, 0x1

    :goto_60
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzm;->zzb(I)I

    move-result v3

    move v14, v0

    move v7, v3

    move v3, v8

    move-object/from16 v6, v38

    move/from16 v10, v61

    move/from16 v8, v63

    :goto_61
    move-object/from16 v0, v69

    goto :goto_64

    :cond_90
    move-object/from16 v6, v38

    move/from16 v10, v61

    move/from16 v8, v63

    move/from16 v3, v64

    move-object/from16 v0, v69

    goto :goto_5c

    :goto_62
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzacn;->zza(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    if-eqz v0, :cond_91

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzacn;->zza:Ljava/lang/String;

    const-string v3, "video/dolby-vision"

    move-object/from16 v51, v0

    move-object v11, v3

    :cond_91
    :goto_63
    move-object/from16 v6, v38

    move/from16 v10, v61

    move/from16 v8, v63

    move/from16 v3, v64

    goto :goto_61

    :goto_64
    add-int v12, v56, v12

    move/from16 v4, v55

    move/from16 v2, v58

    move-object/from16 v9, v60

    move-object/from16 v15, v62

    goto/16 :goto_20

    :goto_65
    if-nez v11, :cond_92

    move/from16 v3, v41

    move/from16 v5, v54

    move-object/from16 v9, v60

    goto/16 :goto_67

    :cond_92
    new-instance v0, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    move/from16 v5, v54

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzK(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    move-object/from16 v3, v51

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    move/from16 v3, v48

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzae(I)Lcom/google/android/gms/internal/ads/zzab;

    move/from16 v3, v47

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzJ(I)Lcom/google/android/gms/internal/ads/zzab;

    move/from16 v3, v53

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzV(F)Lcom/google/android/gms/internal/ads/zzab;

    move/from16 v3, v41

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzY(I)Lcom/google/android/gms/internal/ads/zzab;

    move-object/from16 v6, v49

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzW([B)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzab;->zzac(I)Lcom/google/android/gms/internal/ads/zzab;

    move-object/from16 v6, v69

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    move/from16 v6, v40

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzR(I)Lcom/google/android/gms/internal/ads/zzab;

    move-object/from16 v8, v23

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzab;->zzF(Lcom/google/android/gms/internal/ads/zzw;)Lcom/google/android/gms/internal/ads/zzab;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzk;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzk;-><init>()V

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/zzk;->zzc(I)Lcom/google/android/gms/internal/ads/zzk;

    move/from16 v8, v64

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzk;->zzd(I)Lcom/google/android/gms/internal/ads/zzk;

    if-eqz v46, :cond_93

    invoke-virtual/range {v46 .. v46}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    goto :goto_66

    :cond_93
    const/4 v10, 0x0

    :goto_66
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzk;->zze([B)Lcom/google/android/gms/internal/ads/zzk;

    move/from16 v8, v63

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzk;->zzf(I)Lcom/google/android/gms/internal/ads/zzk;

    move/from16 v10, v61

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzk;->zzg()Lcom/google/android/gms/internal/ads/zzm;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzB(Lcom/google/android/gms/internal/ads/zzm;)Lcom/google/android/gms/internal/ads/zzab;

    move-object/from16 v6, v50

    if-eqz v6, :cond_94

    iget-wide v7, v6, Lg/fcw;->d:J

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgcr;->zze(J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzab;->zzy(I)Lcom/google/android/gms/internal/ads/zzab;

    iget-wide v6, v6, Lg/fcw;->e:J

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgcr;->zze(J)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzU(I)Lcom/google/android/gms/internal/ads/zzab;

    :cond_94
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v0

    move-object/from16 v9, v60

    iput-object v0, v9, Lg/pd;->a:Ljava/lang/Object;

    :goto_67
    add-int v0, v42, v55

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    add-int/lit8 v10, v19, 0x1

    move-object/from16 v0, p0

    move v12, v3

    move v7, v5

    move-object/from16 v6, v16

    move/from16 v8, v18

    move-object/from16 v2, v22

    move/from16 v3, v29

    move/from16 v13, v33

    move-object/from16 v11, v35

    move-object/from16 v14, v39

    const/16 v4, 0xc

    const v5, 0x7374626c

    const v15, 0x6d696e66

    goto/16 :goto_11

    :cond_95
    move-object/from16 v22, v2

    move/from16 v29, v3

    move v5, v7

    move-object/from16 v35, v11

    move/from16 v33, v13

    move-object/from16 v39, v14

    if-nez p5, :cond_9c

    const v0, 0x65647473

    move-object/from16 v1, v39

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v0

    if-eqz v0, :cond_9b

    const v2, 0x656c7374

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v0

    if-nez v0, :cond_96

    const/4 v10, 0x0

    goto :goto_6b

    :cond_96
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzain;->zza(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v3

    new-array v4, v3, [J

    new-array v6, v3, [J

    const/4 v7, 0x0

    :goto_68
    if-ge v7, v3, :cond_9a

    const/4 v10, 0x1

    if-ne v2, v10, :cond_97

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzw()J

    move-result-wide v11

    goto :goto_69

    :cond_97
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v11

    :goto_69
    aput-wide v11, v4, v7

    if-ne v2, v10, :cond_98

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzt()J

    move-result-wide v11

    goto :goto_6a

    :cond_98
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    int-to-long v11, v8

    :goto_6a
    aput-wide v11, v6, v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzE()S

    move-result v8

    if-ne v8, v10, :cond_99

    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    :cond_99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    :goto_6b
    if-eqz v10, :cond_9b

    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v2, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, [J

    move-object/from16 v30, v10

    move-object v10, v0

    goto :goto_6d

    :cond_9b
    :goto_6c
    const/4 v10, 0x0

    const/16 v30, 0x0

    goto :goto_6d

    :cond_9c
    move-object/from16 v1, v39

    goto :goto_6c

    :goto_6d
    iget-object v0, v9, Lg/pd;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzad;

    if-nez v0, :cond_9d

    move-object/from16 v0, p7

    goto/16 :goto_2

    :cond_9d
    new-instance v16, Lcom/google/android/gms/internal/ads/zzaje;

    move-object/from16 v15, v22

    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget-object v0, v9, Lg/pd;->a:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/google/android/gms/internal/ads/zzad;

    iget v0, v9, Lg/pd;->c:I

    iget v2, v9, Lg/pd;->b:I

    move/from16 v17, v5

    move-wide/from16 v23, v26

    move-object/from16 v27, v28

    move/from16 v18, v29

    move-wide/from16 v21, v36

    move/from16 v26, v0

    move/from16 v28, v2

    move-object/from16 v29, v10

    invoke-direct/range {v16 .. v30}, Lcom/google/android/gms/internal/ads/zzaje;-><init>(IIJJJLcom/google/android/gms/internal/ads/zzad;I[Lcom/google/android/gms/internal/ads/zzajf;I[J[J)V

    move-object/from16 v0, p7

    move-object/from16 v10, v16

    :goto_6e
    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/ads/zzfwh;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaje;

    if-eqz v2, :cond_9e

    const v3, 0x6d646961

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x6d696e66

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7374626c

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, p1

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzain;->zze(Lcom/google/android/gms/internal/ads/zzaje;Lcom/google/android/gms/internal/ads/zzes;Lcom/google/android/gms/internal/ads/zzadf;)Lcom/google/android/gms/internal/ads/zzajh;

    move-result-object v1

    move-object/from16 v2, v35

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    :cond_9e
    move-object/from16 v3, p1

    move-object/from16 v2, v35

    :goto_6f
    add-int/lit8 v13, v33, 0x1

    move-object/from16 v0, p0

    move-object v11, v2

    goto/16 :goto_0

    :cond_9f
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v0

    throw v0

    :cond_a0
    move-object v2, v11

    return-object v2
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    return-void
.end method

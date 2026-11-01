.class public final Lg/hes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/alv;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzfzo;

.field public final b:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzfzo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/hes;->b:I

    iput-object p2, p0, Lg/hes;->a:Lcom/google/android/gms/internal/ads/zzfzo;

    return-void
.end method

.method public static c(ILcom/google/android/gms/internal/ads/zzed;)Lg/hes;
    .locals 16

    move-object/from16 v0, p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    const/4 v3, -0x2

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    const v6, 0x5453494c

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v4, v6, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v4

    invoke-static {v4, v0}, Lg/hes;->c(ILcom/google/android/gms/internal/ads/zzed;)Lg/hes;

    move-result-object v4

    goto/16 :goto_5

    :cond_0
    const/16 v6, 0xc

    const/4 v10, 0x4

    const/4 v11, 0x0

    sparse-switch v4, :sswitch_data_0

    :goto_1
    move-object v4, v11

    goto/16 :goto_5

    :sswitch_0
    new-instance v4, Lg/gcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lg/gcf;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v11

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v13

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v15

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    new-instance v10, Lg/cyw;

    invoke-direct/range {v10 .. v15}, Lg/cyw;-><init>(IIIII)V

    move-object v4, v10

    goto/16 :goto_5

    :sswitch_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v4

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v11

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    new-instance v6, Lg/ddl;

    invoke-direct {v6, v4, v5, v11}, Lg/ddl;-><init>(III)V

    move-object v4, v6

    goto/16 :goto_5

    :sswitch_3
    const-string v4, "StreamFormatChunk"

    if-ne v3, v8, :cond_2

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v6

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    move-object v12, v11

    goto :goto_2

    :sswitch_4
    const-string v12, "video/mjpeg"

    goto :goto_2

    :sswitch_5
    const-string v12, "video/mp43"

    goto :goto_2

    :sswitch_6
    const-string v12, "video/mp42"

    goto :goto_2

    :sswitch_7
    const-string v12, "video/avc"

    goto :goto_2

    :sswitch_8
    const-string v12, "video/mp4v-es"

    :goto_2
    if-nez v12, :cond_1

    const-string v5, "Ignoring track with unsupported compression "

    invoke-static {v10, v5, v4}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzae(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzJ(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    new-instance v5, Lg/bb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v4

    invoke-direct {v5, v4}, Lg/bb;-><init>(Lcom/google/android/gms/internal/ads/zzad;)V

    move-object v4, v5

    goto/16 :goto_5

    :cond_2
    if-ne v3, v9, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzk()I

    move-result v5

    const-string v6, "audio/raw"

    const-string v10, "audio/mp4a-latm"

    if-eq v5, v9, :cond_7

    const/16 v12, 0x55

    if-eq v5, v12, :cond_6

    const/16 v12, 0xff

    if-eq v5, v12, :cond_5

    const/16 v12, 0x2000

    if-eq v5, v12, :cond_4

    const/16 v12, 0x2001

    if-eq v5, v12, :cond_3

    move-object v12, v11

    goto :goto_3

    :cond_3
    const-string v12, "audio/vnd.dts"

    goto :goto_3

    :cond_4
    const-string v12, "audio/ac3"

    goto :goto_3

    :cond_5
    move-object v12, v10

    goto :goto_3

    :cond_6
    const-string v12, "audio/mpeg"

    goto :goto_3

    :cond_7
    move-object v12, v6

    :goto_3
    if-nez v12, :cond_8

    const-string v6, "Ignoring track with unsupported format tag "

    invoke-static {v5, v6, v4}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzk()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v5

    const/4 v11, 0x6

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzk()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzn(I)I

    move-result v11

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v13

    const/4 v14, 0x0

    if-lez v13, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzk()I

    move-result v13

    goto :goto_4

    :cond_9
    const/4 v13, 0x0

    :goto_4
    new-array v15, v13, [B

    invoke-virtual {v0, v15, v14, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    new-instance v14, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v11, :cond_a

    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzab;->zzT(I)Lcom/google/android/gms/internal/ads/zzab;

    :cond_a
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-lez v13, :cond_b

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    :cond_b
    new-instance v4, Lg/bb;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v5

    invoke-direct {v4, v5}, Lg/bb;-><init>(Lcom/google/android/gms/internal/ads/zzad;)V

    goto :goto_5

    :cond_c
    const-string v5, "Ignoring strf box for unsupported track type: "

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzD(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_5
    if-eqz v4, :cond_11

    invoke-interface {v4}, Lg/alv;->zza()I

    move-result v5

    const v6, 0x68727473

    if-ne v5, v6, :cond_10

    move-object v3, v4

    check-cast v3, Lg/cyw;

    iget v3, v3, Lg/cyw;->c:I

    const v5, 0x73646976

    if-eq v3, v5, :cond_f

    const v5, 0x73647561

    if-eq v3, v5, :cond_e

    const v5, 0x73747874

    if-eq v3, v5, :cond_d

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "AviStreamHeaderChunk"

    const-string v6, "Found unsupported streamType fourCC: "

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_6

    :cond_d
    const/4 v3, 0x3

    goto :goto_6

    :cond_e
    const/4 v3, 0x1

    goto :goto_6

    :cond_f
    const/4 v3, 0x2

    :cond_10
    :goto_6
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    :cond_11
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    goto/16 :goto_0

    :cond_12
    new-instance v0, Lg/hes;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    move/from16 v2, p0

    invoke-direct {v0, v2, v1}, Lg/hes;-><init>(ILcom/google/android/gms/internal/ads/zzfzo;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30355844 -> :sswitch_8
        0x31435641 -> :sswitch_7
        0x31637661 -> :sswitch_7
        0x3234504d -> :sswitch_6
        0x3334504d -> :sswitch_5
        0x34363248 -> :sswitch_7
        0x34504d46 -> :sswitch_8
        0x44495633 -> :sswitch_8
        0x44495658 -> :sswitch_8
        0x47504a4d -> :sswitch_4
        0x58564944 -> :sswitch_8
        0x64697678 -> :sswitch_8
        0x67706a6d -> :sswitch_4
        0x78766964 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final d(Ljava/lang/Class;)Lg/alv;
    .locals 5

    iget-object v0, p0, Lg/hes;->a:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/alv;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lg/hes;->b:I

    return v0
.end method

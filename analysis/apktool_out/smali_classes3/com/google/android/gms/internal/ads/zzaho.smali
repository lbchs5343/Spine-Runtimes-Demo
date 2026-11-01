.class public final Lcom/google/android/gms/internal/ads/zzaho;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public zzA:I

.field public zzB:I

.field public zzC:I

.field public zzD:F

.field public zzE:F

.field public zzF:F

.field public zzG:F

.field public zzH:F

.field public zzI:F

.field public zzJ:F

.field public zzK:F

.field public zzL:F

.field public zzM:F

.field public zzN:[B

.field public zzO:I

.field public zzP:I

.field public zzQ:I

.field public zzR:J

.field public zzS:J

.field public zzT:Lcom/google/android/gms/internal/ads/zzady;

.field public zzU:Z

.field public zzV:Z

.field public zzW:Lcom/google/android/gms/internal/ads/zzadx;

.field public zzX:I

.field public zza:Ljava/lang/String;

.field public zzb:Ljava/lang/String;

.field public zzc:I

.field public zzd:I

.field public zze:I

.field public zzf:I

.field public zzg:Z

.field public zzh:[B

.field public zzi:Lcom/google/android/gms/internal/ads/zzadw;

.field public zzj:[B

.field public zzk:Lcom/google/android/gms/internal/ads/zzw;

.field public zzl:I

.field public zzm:I

.field public zzn:I

.field public zzo:I

.field public zzp:I

.field public zzq:I

.field public zzr:I

.field public zzs:F

.field public zzt:F

.field public zzu:F

.field public zzv:[B

.field public zzw:I

.field public zzx:Z

.field public zzy:I

.field public zzz:I


# virtual methods
.method public final c(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaho;->zzj:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Missing CodecPrivate for codec "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacu;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbh;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, 0x5

    const/16 v7, 0x20

    const/16 v8, 0x10

    const/16 v9, 0x18

    const/4 v10, 0x4

    const/16 v11, 0x8

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x14

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "A_OPUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "A_PCM/INT/BIG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "V_AV1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "S_VOBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "S_DVBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto :goto_1

    :sswitch_19
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_1a
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto :goto_1

    :sswitch_1b
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto :goto_1

    :sswitch_1c
    const-string v2, "A_VORBIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_1d
    const-string v2, "A_TRUEHD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto :goto_1

    :sswitch_1e
    const-string v2, "A_MS/ACM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_1

    :sswitch_1f
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_20
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v17, "audio/raw"

    const-string v18, "audio/x-unknown"

    const-string v6, "MatroskaExtractor"

    const/4 v5, 0x0

    const-string v3, ". Setting mimeType to audio/x-unknown"

    packed-switch v2, :pswitch_data_0

    const-string v1, "Unrecognized codec identifier."

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :pswitch_0
    new-array v2, v10, [B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaho;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v14, v2, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    const-string v17, "application/dvbsubs"

    :goto_2
    move-object v3, v5

    :goto_3
    const/4 v2, -0x1

    :goto_4
    const/4 v10, -0x1

    goto/16 :goto_11

    :pswitch_1
    const-string v17, "application/pgs"

    :goto_5
    move-object v1, v5

    move-object v3, v1

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaho;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    const-string v17, "application/vobsub"

    goto :goto_2

    :pswitch_3
    const-string v17, "text/vtt"

    goto :goto_5

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzahq;->f:[B

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaho;->c(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfzo;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v1

    const-string v17, "text/x-ssa"

    goto :goto_2

    :pswitch_5
    const-string v17, "application/x-subrip"

    goto :goto_5

    :pswitch_6
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzP:I

    if-ne v1, v7, :cond_2

    :cond_1
    :goto_6
    move-object v1, v5

    move-object v3, v1

    const/4 v2, -0x1

    goto/16 :goto_11

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported floating point PCM bit depth: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    move-object v1, v5

    move-object v3, v1

    move-object/from16 v17, v18

    goto :goto_3

    :pswitch_7
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzP:I

    if-ne v1, v11, :cond_3

    move-object v1, v5

    move-object v3, v1

    const/4 v2, -0x1

    const/4 v10, 0x3

    goto/16 :goto_11

    :cond_3
    if-ne v1, v8, :cond_4

    const/high16 v10, 0x10000000

    goto :goto_6

    :cond_4
    if-ne v1, v9, :cond_5

    const/high16 v10, 0x50000000

    goto :goto_6

    :cond_5
    if-ne v1, v7, :cond_6

    const/high16 v10, 0x60000000

    goto :goto_6

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported big endian PCM bit depth: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_8
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzP:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzn(I)I

    move-result v10

    if-nez v10, :cond_1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzP:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported little endian PCM bit depth: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzed;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaho;->c(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzk()I

    move-result v2

    if-ne v2, v13, :cond_7

    goto :goto_8

    :cond_7
    const v4, 0xfffe

    if-ne v2, v4, :cond_8

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzt()J

    move-result-wide v7

    sget-object v2, Lcom/google/android/gms/internal/ads/zzahq;->a:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-nez v4, :cond_8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzt()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v7, v1

    if-nez v4, :cond_8

    :goto_8
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzP:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzn(I)I

    move-result v10

    if-nez v10, :cond_1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzP:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported PCM bit depth: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    const-string v1, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown"

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_0
    const-string v1, "Error parsing MS/ACM codec private"

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :pswitch_a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaho;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v17, "audio/flac"

    goto/16 :goto_2

    :pswitch_b
    const-string v17, "audio/vnd.dts.hd"

    goto/16 :goto_5

    :pswitch_c
    const-string v17, "audio/vnd.dts"

    goto/16 :goto_5

    :pswitch_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzady;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzady;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzT:Lcom/google/android/gms/internal/ads/zzady;

    const-string v17, "audio/true-hd"

    goto/16 :goto_5

    :pswitch_e
    const-string v17, "audio/eac3"

    goto/16 :goto_5

    :pswitch_f
    const-string v17, "audio/ac3"

    goto/16 :goto_5

    :pswitch_10
    const/16 v1, 0x1000

    const-string v17, "audio/mpeg"

    :goto_9
    move-object v1, v5

    move-object v3, v1

    const/16 v2, 0x1000

    goto/16 :goto_4

    :pswitch_11
    const/16 v1, 0x1000

    const-string v17, "audio/mpeg-L2"

    goto :goto_9

    :pswitch_12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaho;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzj:[B

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzabo;->zza([B)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzabm;->zza:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzQ:I

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzabm;->zzb:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzO:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzabm;->zzc:Ljava/lang/String;

    const-string v17, "audio/mp4a-latm"

    move-object v3, v2

    goto/16 :goto_3

    :pswitch_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v15}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaho;->c(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzR:J

    invoke-virtual {v2, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzS:J

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x1680

    const-string v17, "audio/opus"

    :goto_a
    move-object v3, v5

    goto/16 :goto_4

    :pswitch_14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaho;->c(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "Error parsing vorbis codec private"

    :try_start_1
    aget-byte v3, v1, v14

    if-ne v3, v12, :cond_e

    const/4 v3, 0x1

    const/4 v6, 0x0

    :goto_b
    aget-byte v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_9

    add-int/lit16 v6, v6, 0xff

    goto :goto_b

    :cond_9
    add-int/2addr v6, v7

    const/4 v7, 0x0

    :goto_c
    aget-byte v9, v1, v3

    add-int/lit8 v3, v3, 0x1

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_a

    add-int/lit16 v7, v7, 0xff

    goto :goto_c

    :cond_a
    add-int/2addr v7, v9

    aget-byte v8, v1, v3

    if-ne v8, v13, :cond_d

    new-array v8, v6, [B

    invoke-static {v1, v3, v8, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v6

    aget-byte v6, v1, v3

    if-ne v6, v15, :cond_c

    add-int/2addr v3, v7

    aget-byte v6, v1, v3

    if-ne v6, v4, :cond_b

    array-length v4, v1

    sub-int/2addr v4, v3

    new-array v6, v4, [B

    invoke-static {v1, v3, v6, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v2, 0x2000

    const-string v17, "audio/vorbis"

    goto :goto_a

    :cond_b
    :try_start_2
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_c
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_d
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_e
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :pswitch_15
    const-string v17, "video/x-unknown"

    goto/16 :goto_5

    :pswitch_16
    new-instance v1, Lcom/google/android/gms/internal/ads/zzed;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaho;->c(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    :try_start_3
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzs()J

    move-result-wide v2

    const-wide/32 v7, 0x58564944

    cmp-long v4, v2, v7

    if-nez v4, :cond_f

    new-instance v1, Landroid/util/Pair;

    const-string v2, "video/divx"

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_f
    const-wide/32 v7, 0x33363248

    cmp-long v4, v2, v7

    if-nez v4, :cond_10

    new-instance v1, Landroid/util/Pair;

    const-string v2, "video/3gpp"

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_10
    const-wide/32 v7, 0x31435657

    cmp-long v4, v2, v7

    if-nez v4, :cond_14

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    :goto_d
    array-length v3, v1

    add-int/lit8 v4, v3, -0x4

    if-ge v2, v4, :cond_13

    aget-byte v4, v1, v2

    add-int/lit8 v6, v2, 0x1

    if-nez v4, :cond_11

    aget-byte v4, v1, v6

    if-nez v4, :cond_11

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    if-ne v4, v13, :cond_11

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v1, v4

    const/16 v7, 0xf

    if-ne v4, v7, :cond_12

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    const-string v3, "video/wvc1"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_e

    :cond_11
    const/16 v7, 0xf

    :cond_12
    move v2, v6

    goto :goto_d

    :cond_13
    const-string v1, "Failed to find FourCC VC1 initialization data"

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_14
    const-string v1, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "video/x-unknown"

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_e
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    goto/16 :goto_2

    :catch_2
    const-string v1, "Error parsing FourCC private data"

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :pswitch_17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzed;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaho;->c(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzadg;->zza(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzadg;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzadg;->zza:Ljava/util/List;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzadg;->zzb:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzX:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzadg;->zzk:Ljava/lang/String;

    const-string v17, "video/hevc"

    :goto_f
    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_3

    :pswitch_18
    new-instance v1, Lcom/google/android/gms/internal/ads/zzed;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaho;->c(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzabv;->zza(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzabv;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzabv;->zza:Ljava/util/List;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzabv;->zzb:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzX:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzabv;->zzl:Ljava/lang/String;

    const-string v17, "video/avc"

    goto :goto_f

    :pswitch_19
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzj:[B

    if-nez v1, :cond_15

    move-object v1, v5

    goto :goto_10

    :cond_15
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_10
    const-string v17, "video/mp4v-es"

    goto/16 :goto_2

    :pswitch_1a
    const-string v17, "video/mpeg2"

    goto/16 :goto_5

    :pswitch_1b
    const-string v17, "video/av01"

    goto/16 :goto_5

    :pswitch_1c
    const-string v17, "video/x-vnd.on2.vp9"

    goto/16 :goto_5

    :pswitch_1d
    const-string v17, "video/x-vnd.on2.vp8"

    goto/16 :goto_5

    :goto_11
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzN:[B

    if-eqz v4, :cond_16

    new-instance v4, Lcom/google/android/gms/internal/ads/zzed;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzN:[B

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzacn;->zza(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v4

    if-eqz v4, :cond_16

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzacn;->zza:Ljava/lang/String;

    const-string v17, "video/dolby-vision"

    :cond_16
    move-object/from16 v4, v17

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzV:Z

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzU:Z

    if-eq v13, v7, :cond_17

    const/4 v7, 0x0

    goto :goto_12

    :cond_17
    const/4 v7, 0x2

    :goto_12
    or-int/2addr v6, v7

    new-instance v7, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbg;->zzg(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzO:I

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzQ:I

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzab;->zzT(I)Lcom/google/android/gms/internal/ads/zzab;

    const/4 v12, 0x1

    goto/16 :goto_17

    :cond_18
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbg;->zzi(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_26

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzq:I

    if-nez v8, :cond_1b

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzo:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_19

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzl:I

    :cond_19
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzo:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzp:I

    if-ne v8, v9, :cond_1a

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzm:I

    :cond_1a
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzp:I

    goto :goto_13

    :cond_1b
    const/4 v9, -0x1

    :goto_13
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzo:I

    const/high16 v10, -0x40800000    # -1.0f

    if-eq v8, v9, :cond_1c

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzp:I

    if-eq v11, v9, :cond_1c

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzm:I

    mul-int v13, v13, v8

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzl:I

    mul-int v8, v8, v11

    int-to-float v11, v13

    int-to-float v8, v8

    div-float/2addr v11, v8

    goto :goto_14

    :cond_1c
    const/high16 v11, -0x40800000    # -1.0f

    :goto_14
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzx:Z

    if-eqz v8, :cond_1f

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzD:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzE:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzF:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzG:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzH:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzI:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzJ:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzK:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzL:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_1e

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzM:F

    cmpl-float v8, v8, v10

    if-nez v8, :cond_1d

    goto/16 :goto_15

    :cond_1d
    const/16 v5, 0x19

    new-array v5, v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzD:F

    const v13, 0x47435000    # 50000.0f

    mul-float v10, v10, v13

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v10, v15

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzE:F

    mul-float v10, v10, v13

    add-float/2addr v10, v15

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzF:F

    mul-float v10, v10, v13

    add-float/2addr v10, v15

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzG:F

    mul-float v10, v10, v13

    add-float/2addr v10, v15

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzH:F

    mul-float v10, v10, v13

    add-float/2addr v10, v15

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzI:F

    mul-float v10, v10, v13

    add-float/2addr v10, v15

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzJ:F

    mul-float v10, v10, v13

    add-float/2addr v10, v15

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzK:F

    mul-float v10, v10, v13

    add-float/2addr v10, v15

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzL:F

    add-float/2addr v10, v15

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzM:F

    add-float/2addr v10, v15

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzB:I

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzC:I

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_1e
    :goto_15
    new-instance v8, Lcom/google/android/gms/internal/ads/zzk;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzk;-><init>()V

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzy:I

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzk;->zzc(I)Lcom/google/android/gms/internal/ads/zzk;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzA:I

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)Lcom/google/android/gms/internal/ads/zzk;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzz:I

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzk;->zzd(I)Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzk;->zze([B)Lcom/google/android/gms/internal/ads/zzk;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzn:I

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzk;->zzf(I)Lcom/google/android/gms/internal/ads/zzk;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzn:I

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzk;->zzg()Lcom/google/android/gms/internal/ads/zzm;

    move-result-object v5

    :cond_1f
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Ljava/lang/String;

    if-eqz v8, :cond_20

    sget-object v10, Lcom/google/android/gms/internal/ads/zzahq;->e:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Ljava/lang/String;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v9, v8

    :cond_20
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzr:I

    if-nez v8, :cond_25

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzs:F

    const/4 v10, 0x0

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_25

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzt:F

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_25

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzu:F

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_21

    goto :goto_16

    :cond_21
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzu:F

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_22

    const/16 v14, 0x5a

    goto :goto_16

    :cond_22
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzu:F

    const/high16 v10, -0x3ccc0000    # -180.0f

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_23

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzu:F

    const/high16 v10, 0x43340000    # 180.0f

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_24

    :cond_23
    const/16 v14, 0xb4

    goto :goto_16

    :cond_24
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzu:F

    const/high16 v10, -0x3d4c0000    # -90.0f

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_25

    const/16 v14, 0x10e

    goto :goto_16

    :cond_25
    move v14, v9

    :goto_16
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzl:I

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzab;->zzae(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzm:I

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzab;->zzJ(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzab;->zzV(F)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzab;->zzY(I)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzv:[B

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzab;->zzW([B)Lcom/google/android/gms/internal/ads/zzab;

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzw:I

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzab;->zzac(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzB(Lcom/google/android/gms/internal/ads/zzm;)Lcom/google/android/gms/internal/ads/zzab;

    goto :goto_17

    :cond_26
    const-string v8, "application/x-subrip"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    const-string v8, "text/x-ssa"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    const-string v8, "text/vtt"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    const-string v8, "application/vobsub"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    const-string v8, "application/pgs"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    const-string v8, "application/dvbsubs"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    :cond_27
    const/4 v12, 0x3

    goto :goto_17

    :cond_28
    const-string v1, "Unexpected MIME type."

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :goto_17
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Ljava/lang/String;

    if-eqz v5, :cond_29

    sget-object v8, Lcom/google/android/gms/internal/ads/zzahq;->e:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaho;->zza:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    :cond_29
    move/from16 v5, p2

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzK(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzQ(I)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaho;->b:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzab(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzk:Lcom/google/android/gms/internal/ads/zzw;

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzF(Lcom/google/android/gms/internal/ads/zzw;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzc:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v12}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaho;->zzW:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_19
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

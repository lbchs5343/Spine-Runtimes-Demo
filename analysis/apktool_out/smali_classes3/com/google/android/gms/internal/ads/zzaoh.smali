.class public final Lcom/google/android/gms/internal/ads/zzaoh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacr;


# instance fields
.field public a:J

.field public b:Lg/ew;

.field public c:Lcom/google/android/gms/internal/ads/zzacu;

.field public d:I

.field public e:Lcom/google/android/gms/internal/ads/zzadx;

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaoh;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoh;->a:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaoh;->d:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaoh;->g:J

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaoh;->e:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaoh;->f:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_11

    const/4 v7, 0x2

    const-wide/16 v8, -0x1

    const/16 v10, 0x8

    if-eq v2, v5, :cond_f

    const/4 v11, 0x3

    if-eq v2, v7, :cond_5

    if-eq v2, v11, :cond_2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaoh;->g:J

    cmp-long v2, v10, v8

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaoh;->g:J

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v7

    sub-long/2addr v4, v7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaoh;->b:Lg/ew;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v1, v4, v5}, Lg/ew;->a(Lcom/google/android/gms/internal/ads/zzacs;J)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    return v6

    :cond_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v2, v10}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    const v3, 0x64617461

    invoke-static {v3, v1, v2}, Lg/aky;->u(ILcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzed;)Lg/cgn;

    move-result-object v2

    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v10, v2, Lg/cgn;->b:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaoh;->d:I

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaoh;->a:J

    cmp-long v5, v10, v8

    if-eqz v5, :cond_3

    const-wide v12, 0xffffffffL

    cmp-long v5, v2, v12

    if-nez v5, :cond_3

    move-wide v2, v10

    :cond_3
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaoh;->d:I

    int-to-long v10, v5

    add-long/2addr v10, v2

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaoh;->g:J

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_4

    cmp-long v3, v10, v1

    if-lez v3, :cond_4

    const-string v3, "Data exceeds input length: "

    const-string v5, ", "

    invoke-static {v10, v11, v3, v5}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WavExtractor"

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaoh;->g:J

    move-wide v10, v1

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoh;->b:Lg/ew;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaoh;->d:I

    invoke-interface {v1, v2, v10, v11}, Lg/ew;->zza(IJ)V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaoh;->f:I

    return v6

    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/ads/zzed;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    const v7, 0x666d7420

    invoke-static {v7, v1, v2}, Lg/aky;->u(ILcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzed;)Lg/cgn;

    move-result-object v7

    iget-wide v7, v7, Lg/cgn;->b:J

    const-wide/16 v9, 0x10

    cmp-long v12, v7, v9

    if-ltz v12, :cond_6

    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v9

    invoke-interface {v1, v9, v6, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzk()I

    move-result v13

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzk()I

    move-result v14

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzj()I

    move-result v15

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzj()I

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzk()I

    move-result v16

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzk()I

    move-result v17

    long-to-int v2, v7

    add-int/lit8 v2, v2, -0x10

    if-lez v2, :cond_7

    new-array v3, v2, [B

    invoke-interface {v1, v3, v6, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    :goto_2
    move-object/from16 v18, v3

    goto :goto_3

    :cond_7
    sget-object v3, Lcom/google/android/gms/internal/ads/zzen;->zzf:[B

    goto :goto_2

    :goto_3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zze()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v7

    sub-long/2addr v2, v7

    long-to-int v3, v2

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    new-instance v22, Lg/gme;

    move-object/from16 v12, v22

    invoke-direct/range {v12 .. v18}, Lg/gme;-><init>(IIIII[B)V

    move/from16 v1, v17

    const/16 v2, 0x11

    if-ne v13, v2, :cond_8

    new-instance v1, Lg/dax;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaoh;->c:Lcom/google/android/gms/internal/ads/zzacu;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaoh;->e:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-direct {v1, v2, v3, v12}, Lg/dax;-><init>(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzadx;Lg/gme;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoh;->b:Lg/ew;

    goto/16 :goto_5

    :cond_8
    const/4 v2, 0x6

    if-ne v13, v2, :cond_9

    new-instance v19, Lg/dul;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoh;->c:Lcom/google/android/gms/internal/ads/zzacu;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaoh;->e:Lcom/google/android/gms/internal/ads/zzadx;

    const-string v23, "audio/g711-alaw"

    const/16 v24, -0x1

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v12

    invoke-direct/range {v19 .. v24}, Lg/dul;-><init>(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzadx;Lg/gme;Ljava/lang/String;I)V

    move-object/from16 v1, v19

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoh;->b:Lg/ew;

    goto :goto_5

    :cond_9
    move-object/from16 v22, v12

    const/4 v2, 0x7

    if-ne v13, v2, :cond_a

    new-instance v19, Lg/dul;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoh;->c:Lcom/google/android/gms/internal/ads/zzacu;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaoh;->e:Lcom/google/android/gms/internal/ads/zzadx;

    const-string v23, "audio/g711-mlaw"

    const/16 v24, -0x1

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    invoke-direct/range {v19 .. v24}, Lg/dul;-><init>(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzadx;Lg/gme;Ljava/lang/String;I)V

    move-object/from16 v1, v19

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoh;->b:Lg/ew;

    goto :goto_5

    :cond_a
    if-eq v13, v5, :cond_d

    if-eq v13, v11, :cond_c

    const v2, 0xfffe

    if-eq v13, v2, :cond_d

    :cond_b
    const/16 v24, 0x0

    goto :goto_4

    :cond_c
    const/16 v2, 0x20

    if-ne v1, v2, :cond_b

    const/16 v24, 0x4

    goto :goto_4

    :cond_d
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzn(I)I

    move-result v4

    move/from16 v24, v4

    :goto_4
    if-eqz v24, :cond_e

    new-instance v19, Lg/dul;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoh;->c:Lcom/google/android/gms/internal/ads/zzacu;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaoh;->e:Lcom/google/android/gms/internal/ads/zzadx;

    const-string v23, "audio/raw"

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    invoke-direct/range {v19 .. v24}, Lg/dul;-><init>(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzadx;Lg/gme;Ljava/lang/String;I)V

    move-object/from16 v1, v19

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoh;->b:Lg/ew;

    :goto_5
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaoh;->f:I

    return v6

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported WAV format type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_f
    new-instance v2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v2, v10}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-static {v1, v2}, Lg/cgn;->c(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzed;)Lg/cgn;

    move-result-object v3

    iget v4, v3, Lg/cgn;->a:I

    const v5, 0x64733634

    if-eq v4, v5, :cond_10

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    goto :goto_6

    :cond_10
    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/ads/zzacs;->zzg(I)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    invoke-interface {v1, v4, v6, v10}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzr()J

    move-result-wide v8

    iget-wide v2, v3, Lg/cgn;->b:J

    long-to-int v3, v2

    add-int/2addr v3, v10

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    :goto_6
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaoh;->a:J

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaoh;->f:I

    return v6

    :cond_11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_7

    :cond_12
    const/4 v2, 0x0

    :goto_7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaoh;->d:I

    if-eq v2, v3, :cond_13

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaoh;->f:I

    return v6

    :cond_13
    invoke-static {v1}, Lg/aky;->y(Lcom/google/android/gms/internal/ads/zzacs;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zze()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v7

    sub-long/2addr v2, v7

    long-to-int v3, v2

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaoh;->f:I

    return v6

    :cond_14
    const-string v1, "Unsupported or unrecognized wav file type."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzacr;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacu;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoh;->c:Lcom/google/android/gms/internal/ads/zzacu;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaoh;->e:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    return-void
.end method

.method public final zzf(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaoh;->f:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoh;->b:Lg/ew;

    if-eqz p1, :cond_1

    invoke-interface {p1, p3, p4}, Lg/ew;->zzb(J)V

    :cond_1
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lg/aky;->y(Lcom/google/android/gms/internal/ads/zzacs;)Z

    move-result p1

    return p1
.end method

.class public final Lcom/google/android/gms/internal/ads/zzaew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacr;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzadc;

.field public b:Lg/dby;

.field public c:Lcom/google/android/gms/internal/ads/zzacu;

.field public d:I

.field public e:Lcom/google/android/gms/internal/ads/zzadx;

.field public final f:[B

.field public g:I

.field public h:J

.field public i:I

.field public final j:Lcom/google/android/gms/internal/ads/zzed;

.field public k:I

.field public final l:Lcom/google/android/gms/internal/ads/zzacx;

.field public m:Lcom/google/android/gms/internal/ads/zzbd;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaew;->f:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzed;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaew;->j:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzacx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaew;->l:Lcom/google/android/gms/internal/ads/zzacx;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaew;->g:I

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaew;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaew;->f:[B

    const/4 v6, 0x2

    if-eq v2, v3, :cond_1e

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x4

    if-eq v2, v6, :cond_1c

    const/4 v10, 0x6

    if-eq v2, v8, :cond_15

    const-wide/16 v11, -0x1

    if-eq v2, v9, :cond_f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaew;->e:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaew;->a:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaew;->b:Lg/dby;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzacc;->zze()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v6, p2

    invoke-virtual {v5, v1, v6}, Lcom/google/android/gms/internal/ads/zzacc;->zza(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I

    move-result v1

    return v1

    :cond_0
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaew;->h:J

    cmp-long v7, v5, v11

    if-nez v7, :cond_1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzacy;->zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadc;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaew;->h:J

    return v4

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaew;->j:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v5

    const-wide/32 v6, 0xf4240

    const v8, 0x8000

    if-ge v5, v8, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v9

    sub-int/2addr v8, v5

    invoke-interface {v1, v9, v5, v8}, Lcom/google/android/gms/internal/ads/zzacs;->zza([BII)I

    move-result v1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    add-int/2addr v5, v1

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v1

    if-nez v1, :cond_5

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaew;->h:J

    mul-long v1, v1, v6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaew;->a:Lcom/google/android/gms/internal/ads/zzadc;

    sget v4, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadc;->zze:I

    int-to-long v3, v3

    div-long v10, v1, v3

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaew;->e:Lcom/google/android/gms/internal/ads/zzadx;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaew;->d:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x1

    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    return v8

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaew;->d:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaew;->i:I

    if-ge v5, v8, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v9

    sub-int/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_6
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaew;->a:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v5

    :goto_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v8

    add-int/lit8 v8, v8, -0x10

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaew;->l:Lcom/google/android/gms/internal/ads/zzacx;

    if-gt v5, v8, :cond_8

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaew;->a:Lcom/google/android/gms/internal/ads/zzadc;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzaew;->k:I

    invoke-static {v2, v8, v10, v9}, Lcom/google/android/gms/internal/ads/zzacy;->zzc(Lcom/google/android/gms/internal/ads/zzed;Lcom/google/android/gms/internal/ads/zzadc;ILcom/google/android/gms/internal/ads/zzacx;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget-wide v8, v9, Lcom/google/android/gms/internal/ads/zzacx;->zza:J

    goto :goto_7

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_c

    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaew;->i:I

    sub-int/2addr v3, v8

    if-gt v5, v3, :cond_b

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    :try_start_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaew;->a:Lcom/google/android/gms/internal/ads/zzadc;

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaew;->k:I

    invoke-static {v2, v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzacy;->zzc(Lcom/google/android/gms/internal/ads/zzed;Lcom/google/android/gms/internal/ads/zzadc;ILcom/google/android/gms/internal/ads/zzacx;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v10

    if-le v8, v10, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget-wide v8, v9, Lcom/google/android/gms/internal/ads/zzacx;->zza:J

    goto :goto_7

    :cond_a
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto :goto_6

    :cond_c
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    :goto_6
    move-wide v8, v11

    :goto_7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaew;->e:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaew;->d:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaew;->d:I

    cmp-long v3, v8, v11

    if-eqz v3, :cond_d

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaew;->h:J

    mul-long v10, v10, v6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaew;->a:Lcom/google/android/gms/internal/ads/zzadc;

    sget v5, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadc;->zze:I

    int-to-long v5, v3

    div-long v14, v10, v5

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaew;->e:Lcom/google/android/gms/internal/ads/zzadx;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x1

    move/from16 v17, v1

    invoke-interface/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaew;->d:I

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaew;->h:J

    :cond_d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v1

    const/16 v3, 0x10

    if-lt v1, v3, :cond_e

    return v4

    :cond_e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    invoke-static {v3, v5, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    return v4

    :cond_f
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    invoke-interface {v1, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v2

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_14

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaew;->k:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaew;->c:Lcom/google/android/gms/internal/ads/zzacu;

    sget v3, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v5

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v22

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaew;->a:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzadc;->zzk:Lcom/google/android/gms/internal/ads/zzadb;

    if-eqz v3, :cond_10

    new-instance v3, Lcom/google/android/gms/internal/ads/zzada;

    invoke-direct {v3, v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzada;-><init>(Lcom/google/android/gms/internal/ads/zzadc;J)V

    const/16 v27, 0x0

    goto/16 :goto_9

    :cond_10
    const-wide/16 v7, 0x0

    cmp-long v3, v22, v11

    if-eqz v3, :cond_13

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzadc;->zzj:J

    cmp-long v3, v11, v7

    if-lez v3, :cond_13

    new-instance v13, Lg/dby;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaew;->k:I

    new-instance v14, Lcom/google/android/gms/internal/ads/zzaes;

    invoke-direct {v14, v1}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzadc;)V

    new-instance v15, Lg/dsg;

    invoke-direct {v15, v1, v3}, Lg/dsg;-><init>(Lcom/google/android/gms/internal/ads/zzadc;I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzadc;->zza()J

    move-result-wide v16

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzadc;->zzj:J

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzadc;->zzd:I

    if-lez v3, :cond_11

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzadc;->zzc:I

    int-to-long v11, v9

    move-wide/from16 v20, v5

    const/16 v27, 0x0

    int-to-long v4, v3

    add-long/2addr v4, v11

    const-wide/16 v11, 0x2

    div-long/2addr v4, v11

    const-wide/16 v11, 0x1

    add-long/2addr v4, v11

    move-wide/from16 v24, v4

    goto :goto_8

    :cond_11
    move-wide/from16 v20, v5

    const/16 v27, 0x0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzadc;->zza:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzadc;->zzb:I

    const-wide/16 v5, 0x1000

    if-ne v3, v4, :cond_12

    if-lez v3, :cond_12

    int-to-long v5, v3

    :cond_12
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzadc;->zzg:I

    int-to-long v3, v3

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzadc;->zzh:I

    int-to-long v11, v9

    mul-long v5, v5, v3

    mul-long v5, v5, v11

    const-wide/16 v3, 0x8

    div-long/2addr v5, v3

    const-wide/16 v3, 0x40

    add-long/2addr v3, v5

    move-wide/from16 v24, v3

    :goto_8
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzadc;->zzc:I

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    move-wide/from16 v18, v7

    invoke-direct/range {v13 .. v26}, Lcom/google/android/gms/internal/ads/zzacc;-><init>(Lcom/google/android/gms/internal/ads/zzabz;Lcom/google/android/gms/internal/ads/zzacb;JJJJJI)V

    iput-object v13, v0, Lcom/google/android/gms/internal/ads/zzaew;->b:Lg/dby;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzacc;->zzb()Lcom/google/android/gms/internal/ads/zzadq;

    move-result-object v3

    goto :goto_9

    :cond_13
    const/16 v27, 0x0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzadc;->zza()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    :goto_9
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaew;->g:I

    return v27

    :cond_14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    const-string v1, "First frame does not start with sync code."

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_15
    const/16 v27, 0x0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaew;->a:Lcom/google/android/gms/internal/ads/zzadc;

    :goto_a
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzec;

    new-array v4, v9, [B

    invoke-direct {v3, v4, v9}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzec;->zza:[B

    const/4 v6, 0x0

    invoke-interface {v1, v4, v6, v9}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v4

    const/4 v7, 0x7

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v7

    const/16 v11, 0x18

    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v3

    add-int/2addr v3, v9

    if-nez v7, :cond_16

    const/16 v2, 0x26

    new-array v3, v2, [B

    invoke-interface {v1, v3, v6, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzadc;

    invoke-direct {v2, v3, v9}, Lcom/google/android/gms/internal/ads/zzadc;-><init>([BI)V

    goto :goto_b

    :cond_16
    if-eqz v2, :cond_1b

    if-ne v7, v8, :cond_17

    new-instance v7, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v11

    invoke-interface {v1, v11, v6, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzacz;->zzb(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzadb;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzadc;->zzf(Lcom/google/android/gms/internal/ads/zzadb;)Lcom/google/android/gms/internal/ads/zzadc;

    move-result-object v2

    goto :goto_b

    :cond_17
    if-ne v7, v9, :cond_18

    new-instance v7, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v11

    invoke-interface {v1, v11, v6, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-static {v7, v6, v6}, Lcom/google/android/gms/internal/ads/zzaed;->zzc(Lcom/google/android/gms/internal/ads/zzed;ZZ)Lcom/google/android/gms/internal/ads/zzaea;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaea;->zza:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzadc;->zzg(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzadc;

    move-result-object v2

    goto :goto_b

    :cond_18
    if-ne v7, v10, :cond_19

    new-instance v7, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v11

    invoke-interface {v1, v11, v6, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzafr;->zzb(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzafr;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzadc;->zze(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzadc;

    move-result-object v2

    goto :goto_b

    :cond_19
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    :goto_b
    sget v3, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaew;->a:Lcom/google/android/gms/internal/ads/zzadc;

    if-eqz v4, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzadc;->zzc:I

    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaew;->i:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaew;->e:Lcom/google/android/gms/internal/ads/zzadx;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaew;->a:Lcom/google/android/gms/internal/ads/zzadc;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaew;->m:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzadc;->zzc([BLcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaew;->g:I

    const/4 v4, 0x0

    return v4

    :cond_1a
    const/16 v27, 0x0

    goto/16 :goto_a

    :cond_1b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1c
    new-instance v2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    invoke-interface {v1, v3, v4, v9}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v1

    const-wide/32 v5, 0x664c6143

    cmp-long v3, v1, v5

    if-nez v3, :cond_1d

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaew;->g:I

    return v4

    :cond_1d
    const-string v1, "Failed to read FLAC stream marker."

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_1e
    const/16 v2, 0x2a

    invoke-interface {v1, v5, v4, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaew;->g:I

    return v4

    :cond_1f
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zze()J

    move-result-wide v5

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzacz;->zza(Lcom/google/android/gms/internal/ads/zzacs;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zze()J

    move-result-wide v7

    sub-long/2addr v7, v5

    long-to-int v5, v7

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaew;->m:Lcom/google/android/gms/internal/ads/zzbd;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaew;->g:I

    return v4
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaew;->c:Lcom/google/android/gms/internal/ads/zzacu;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaew;->e:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    return-void
.end method

.method public final zzf(JJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaew;->g:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaew;->b:Lg/dby;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzacc;->zzd(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    :goto_1
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaew;->h:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaew;->d:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaew;->j:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzacz;->zza(Lcom/google/android/gms/internal/ads/zzacs;Z)Lcom/google/android/gms/internal/ads/zzbd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzed;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacg;

    invoke-virtual {p1, v3, v0, v2, v0}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

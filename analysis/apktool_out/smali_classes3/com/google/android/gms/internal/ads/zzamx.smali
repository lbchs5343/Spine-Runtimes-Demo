.class public final Lcom/google/android/gms/internal/ads/zzamx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamm;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public final e:Lcom/google/android/gms/internal/ads/zzec;

.field public f:J

.field public g:Lcom/google/android/gms/internal/ads/zzadx;

.field public final h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public final p:I

.field public q:I

.field public r:Z

.field public s:J

.field public final t:Lcom/google/android/gms/internal/ads/zzed;

.field public u:Lcom/google/android/gms/internal/ads/zzad;

.field public v:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->h:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzamx;->p:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->t:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzec;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object p1

    array-length v0, p1

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamx;->e:Lcom/google/android/gms/internal/ads/zzec;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->f:J

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbh;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->g:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v1

    if-lez v1, :cond_1e

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->a:I

    const/16 v2, 0x56

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamx;->e:Lcom/google/android/gms/internal/ads/zzec;

    const/4 v6, 0x3

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzamx;->t:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v8, 0x8

    if-eq v1, v4, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v1

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->q:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzamx;->o:I

    sub-int/2addr v9, v10

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzec;->zza:[B

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzamx;->o:I

    move-object/from16 v11, p1

    invoke-virtual {v11, v9, v10, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->o:I

    add-int/2addr v9, v1

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->o:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->q:I

    if-ne v9, v1, :cond_0

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v1

    if-nez v1, :cond_10

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->n:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    move v10, v1

    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->d:I

    if-nez v1, :cond_f

    if-ne v10, v3, :cond_2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v1

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    const/4 v10, 0x1

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x6

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v12

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzamx;->c:I

    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v13

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v14

    if-nez v13, :cond_d

    if-nez v14, :cond_d

    if-nez v10, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzc()I

    move-result v13

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result v14

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzabo;->zzb(Lcom/google/android/gms/internal/ads/zzec;Z)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v15

    iget-object v9, v15, Lcom/google/android/gms/internal/ads/zzabm;->zzc:Ljava/lang/String;

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->j:Ljava/lang/String;

    iget v9, v15, Lcom/google/android/gms/internal/ads/zzabm;->zza:I

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->l:I

    iget v9, v15, Lcom/google/android/gms/internal/ads/zzabm;->zzb:I

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->i:I

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result v9

    sub-int/2addr v14, v9

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    add-int/lit8 v9, v14, 0x7

    div-int/2addr v9, v8

    new-array v9, v9, [B

    invoke-virtual {v2, v9, v5, v14}, Lcom/google/android/gms/internal/ads/zzec;->zzh([BII)V

    new-instance v13, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzamx;->k:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    const-string v14, "audio/mp4a-latm"

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzamx;->j:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzab;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzamx;->i:I

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzamx;->l:I

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->h:Ljava/lang/String;

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzab;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->p:I

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/ads/zzab;->zzX(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v9

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzamx;->u:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzad;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->u:Lcom/google/android/gms/internal/ads/zzad;

    iget v13, v9, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    int-to-long v13, v13

    const-wide/32 v17, 0x3d090000

    div-long v13, v17, v13

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzamx;->s:J

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzamx;->g:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v13, v9}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v9

    add-int/2addr v9, v3

    mul-int/lit8 v9, v9, 0x8

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v9

    int-to-long v13, v9

    long-to-int v9, v13

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result v13

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzabo;->zzb(Lcom/google/android/gms/internal/ads/zzec;Z)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v14

    iget-object v15, v14, Lcom/google/android/gms/internal/ads/zzabm;->zzc:Ljava/lang/String;

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzamx;->j:Ljava/lang/String;

    iget v15, v14, Lcom/google/android/gms/internal/ads/zzabm;->zza:I

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzamx;->l:I

    iget v14, v14, Lcom/google/android/gms/internal/ads/zzabm;->zzb:I

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzamx;->i:I

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zza()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v9, v13

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_4
    :goto_2
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v9

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->m:I

    if-eqz v9, :cond_9

    if-eq v9, v3, :cond_8

    if-eq v9, v6, :cond_7

    if-eq v9, v12, :cond_7

    const/4 v6, 0x5

    if-eq v9, v6, :cond_7

    if-eq v9, v1, :cond_6

    const/4 v1, 0x7

    if-ne v9, v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_6
    :goto_3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    goto :goto_4

    :cond_8
    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->r:Z

    const-wide/16 v12, 0x0

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzamx;->v:J

    if-eqz v1, :cond_c

    if-eq v10, v3, :cond_b

    :cond_a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v1

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->v:J

    shl-long/2addr v9, v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v4

    int-to-long v12, v4

    add-long/2addr v9, v12

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->v:J

    if-nez v1, :cond_a

    goto :goto_5

    :cond_b
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v1

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v1

    int-to-long v9, v1

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzamx;->v:J

    :cond_c
    :goto_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_e
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_f
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_10
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->n:Z

    if-nez v1, :cond_11

    goto :goto_a

    :cond_11
    :goto_6
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->d:I

    if-nez v1, :cond_18

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->c:I

    if-nez v1, :cond_17

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->m:I

    if-nez v1, :cond_16

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v4

    add-int/2addr v1, v4

    const/16 v6, 0xff

    if-eq v4, v6, :cond_15

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzec;->zzc()I

    move-result v4

    and-int/lit8 v6, v4, 0x7

    if-nez v6, :cond_12

    shr-int/lit8 v4, v4, 0x3

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto :goto_8

    :cond_12
    mul-int/lit8 v4, v1, 0x8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    invoke-virtual {v2, v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzec;->zzh([BII)V

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    :goto_8
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->g:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v4, v7, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzamx;->f:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v8

    if-eqz v4, :cond_13

    goto :goto_9

    :cond_13
    const/4 v3, 0x0

    :goto_9
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzamx;->g:Lcom/google/android/gms/internal/ads/zzadx;

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzamx;->f:J

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x1

    move/from16 v16, v1

    invoke-interface/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->f:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzamx;->s:J

    add-long/2addr v3, v6

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->f:J

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->r:Z

    if-eqz v1, :cond_14

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->v:J

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    :cond_14
    :goto_a
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->a:I

    goto/16 :goto_0

    :cond_15
    move/from16 v16, v1

    goto :goto_7

    :cond_16
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_17
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_18
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_19
    move-object/from16 v11, p1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->b:I

    and-int/lit16 v1, v1, -0xe1

    shl-int/2addr v1, v8

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v3

    or-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->q:I

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    array-length v3, v3

    if-le v1, v3, :cond_1a

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    array-length v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzk([BI)V

    :cond_1a
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->o:I

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzamx;->a:I

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v11, p1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v1

    and-int/lit16 v3, v1, 0xe0

    const/16 v6, 0xe0

    if-ne v3, v6, :cond_1c

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzamx;->b:I

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzamx;->a:I

    goto/16 :goto_0

    :cond_1c
    if-eq v1, v2, :cond_0

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzamx;->a:I

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v11, p1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v1

    if-ne v1, v2, :cond_0

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzamx;->a:I

    goto/16 :goto_0

    :cond_1e
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zza()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->g:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzb()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->k:Ljava/lang/String;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamx;->f:J

    return-void
.end method

.method public final zze()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->a:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamx;->f:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamx;->n:Z

    return-void
.end method

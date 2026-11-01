.class public final Lcom/google/android/gms/internal/ads/zzajo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacr;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzacu;

.field public b:Lg/dbh;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 8

    new-instance v0, Lg/cxs;

    invoke-direct {v0}, Lg/cxs;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg/cxs;->h(Lcom/google/android/gms/internal/ads/zzacs;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lg/cxs;->c:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Lg/cxs;->b:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    invoke-interface {p1, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    new-instance p1, Lg/dgl;

    invoke-direct {p1}, Lg/dbh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajo;->b:Lg/dbh;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    :try_start_0
    invoke-static {v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzaed;->zzd(ILcom/google/android/gms/internal/ads/zzed;Z)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbh; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    new-instance p1, Lg/ix;

    invoke-direct {p1}, Lg/dbh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajo;->b:Lg/dbh;

    goto :goto_0

    :catch_0
    nop

    :cond_2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    sget-object p1, Lg/cda;->a:[B

    invoke-static {v2, p1}, Lg/cda;->d(Lcom/google/android/gms/internal/ads/zzed;[B)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lg/cda;

    invoke-direct {p1}, Lg/dbh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajo;->b:Lg/dbh;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajo;->a:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajo;->b:Lg/dbh;

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajo;->d(Lcom/google/android/gms/internal/ads/zzacs;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    goto :goto_0

    :cond_0
    const-string v1, "Failed to determine bitstream type"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_1
    :goto_0
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzajo;->c:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajo;->a:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajo;->a:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajo;->b:Lg/dbh;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajo;->a:Lcom/google/android/gms/internal/ads/zzacu;

    iput-object v6, v5, Lg/dbh;->u:Lcom/google/android/gms/internal/ads/zzacu;

    iput-object v2, v5, Lg/dbh;->s:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {v5, v4}, Lg/dbh;->h(Z)V

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzajo;->c:Z

    :cond_2
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzajo;->b:Lg/dbh;

    iget-object v2, v8, Lg/dbh;->o:Lg/abb;

    iget-object v5, v8, Lg/dbh;->s:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    sget v5, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget v5, v8, Lg/dbh;->j:I

    const/4 v6, 0x3

    const-wide/16 v9, -0x1

    const/4 v7, -0x1

    const/4 v11, 0x2

    if-eqz v5, :cond_b

    if-eq v5, v4, :cond_a

    if-eq v5, v11, :cond_3

    return v7

    :cond_3
    iget-object v5, v8, Lg/dbh;->l:Lg/arm;

    invoke-interface {v5, v1}, Lg/arm;->c(Lcom/google/android/gms/internal/ads/zzacs;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v5, v11, v13

    if-ltz v5, :cond_4

    move-object/from16 v5, p2

    iput-wide v11, v5, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    return v4

    :cond_4
    cmp-long v5, v11, v9

    if-gez v5, :cond_5

    const-wide/16 v15, 0x2

    add-long/2addr v11, v15

    neg-long v11, v11

    invoke-virtual {v8, v11, v12}, Lg/dbh;->f(J)V

    :cond_5
    iget-boolean v5, v8, Lg/dbh;->m:Z

    if-nez v5, :cond_6

    iget-object v5, v8, Lg/dbh;->l:Lg/arm;

    invoke-interface {v5}, Lg/arm;->zze()Lcom/google/android/gms/internal/ads/zzadq;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v8, Lg/dbh;->u:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v11, v5}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    iput-boolean v4, v8, Lg/dbh;->m:Z

    :cond_6
    iget-wide v4, v8, Lg/dbh;->k:J

    cmp-long v11, v4, v13

    if-gtz v11, :cond_8

    invoke-virtual {v2, v1}, Lg/abb;->f(Lcom/google/android/gms/internal/ads/zzacs;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    iput v6, v8, Lg/dbh;->j:I

    return v7

    :cond_8
    :goto_1
    iput-wide v13, v8, Lg/dbh;->k:J

    iget-object v1, v2, Lg/abb;->d:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v8, v1}, Lg/dbh;->g(Lcom/google/android/gms/internal/ads/zzed;)J

    move-result-wide v4

    cmp-long v2, v4, v13

    if-ltz v2, :cond_9

    iget-wide v6, v8, Lg/dbh;->v:J

    add-long v11, v6, v4

    iget-wide v13, v8, Lg/dbh;->n:J

    cmp-long v2, v11, v13

    if-ltz v2, :cond_9

    iget v2, v8, Lg/dbh;->r:I

    int-to-long v11, v2

    const-wide/32 v13, 0xf4240

    mul-long v6, v6, v13

    div-long v14, v6, v11

    iget-object v2, v8, Lg/dbh;->s:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v6

    invoke-interface {v2, v1, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget-object v13, v8, Lg/dbh;->s:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x1

    invoke-interface/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    iput-wide v9, v8, Lg/dbh;->n:J

    :cond_9
    iget-wide v1, v8, Lg/dbh;->v:J

    add-long/2addr v1, v4

    iput-wide v1, v8, Lg/dbh;->v:J

    return v3

    :cond_a
    iget-wide v4, v8, Lg/dbh;->p:J

    long-to-int v2, v4

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    iput v11, v8, Lg/dbh;->j:I

    return v3

    :cond_b
    :goto_2
    invoke-virtual {v2, v1}, Lg/abb;->f(Lcom/google/android/gms/internal/ads/zzacs;)Z

    move-result v5

    iget-object v12, v2, Lg/abb;->d:Lcom/google/android/gms/internal/ads/zzed;

    if-nez v5, :cond_c

    iput v6, v8, Lg/dbh;->j:I

    return v7

    :cond_c
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v13

    iget-wide v6, v8, Lg/dbh;->p:J

    sub-long/2addr v13, v6

    iput-wide v13, v8, Lg/dbh;->k:J

    iget-object v13, v8, Lg/dbh;->t:Lg/ffr;

    invoke-virtual {v8, v12, v6, v7, v13}, Lg/dbh;->i(Lcom/google/android/gms/internal/ads/zzed;JLg/ffr;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v6

    iput-wide v6, v8, Lg/dbh;->p:J

    const/4 v6, 0x3

    const/4 v7, -0x1

    goto :goto_2

    :cond_d
    iget-object v5, v8, Lg/dbh;->t:Lg/ffr;

    iget-object v5, v5, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzad;

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    iput v6, v8, Lg/dbh;->r:I

    iget-boolean v6, v8, Lg/dbh;->q:Z

    if-nez v6, :cond_e

    iget-object v6, v8, Lg/dbh;->s:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iput-boolean v4, v8, Lg/dbh;->q:Z

    :cond_e
    iget-object v5, v8, Lg/dbh;->t:Lg/ffr;

    iget-object v5, v5, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v5, Lg/fcw;

    if-eqz v5, :cond_f

    iput-object v5, v8, Lg/dbh;->l:Lg/arm;

    :goto_3
    move-object v1, v12

    const/4 v2, 0x2

    goto :goto_5

    :cond_f
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v5

    cmp-long v7, v5, v9

    if-nez v7, :cond_10

    new-instance v1, Lg/fbc;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lg/fbc;-><init>(I)V

    iput-object v1, v8, Lg/dbh;->l:Lg/arm;

    goto :goto_3

    :cond_10
    iget-object v2, v2, Lg/abb;->c:Lg/cxs;

    iget v5, v2, Lg/cxs;->c:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_11

    const/16 v17, 0x1

    goto :goto_4

    :cond_11
    const/16 v17, 0x0

    :goto_4
    new-instance v7, Lg/emj;

    iget-wide v9, v8, Lg/dbh;->p:J

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v4

    iget v1, v2, Lg/cxs;->a:I

    iget v6, v2, Lg/cxs;->b:I

    add-int/2addr v1, v6

    iget-wide v13, v2, Lg/cxs;->e:J

    int-to-long v1, v1

    move-wide v15, v13

    move-wide v13, v1

    move-object v1, v12

    const/4 v2, 0x2

    move-wide v11, v4

    invoke-direct/range {v7 .. v17}, Lg/emj;-><init>(Lg/dbh;JJJJZ)V

    iput-object v7, v8, Lg/dbh;->l:Lg/arm;

    :goto_5
    iput v2, v8, Lg/dbh;->j:I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    array-length v2, v2

    const v4, 0xfe01

    if-ne v2, v4, :cond_12

    return v3

    :cond_12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    return v3
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
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajo;->a:Lcom/google/android/gms/internal/ads/zzacu;

    return-void
.end method

.method public final zzf(JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajo;->b:Lg/dbh;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/dbh;->o:Lg/abb;

    iget-object v2, v1, Lg/abb;->c:Lg/cxs;

    const/4 v3, 0x0

    iput v3, v2, Lg/cxs;->c:I

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lg/cxs;->e:J

    iput v3, v2, Lg/cxs;->f:I

    iput v3, v2, Lg/cxs;->a:I

    iput v3, v2, Lg/cxs;->b:I

    iget-object v2, v1, Lg/abb;->d:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    const/4 v2, -0x1

    iput v2, v1, Lg/abb;->e:I

    iput-boolean v3, v1, Lg/abb;->b:Z

    cmp-long v1, p1, v4

    if-nez v1, :cond_0

    iget-boolean p1, v0, Lg/dbh;->m:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lg/dbh;->h(Z)V

    return-void

    :cond_0
    iget p1, v0, Lg/dbh;->j:I

    if-eqz p1, :cond_1

    iget p1, v0, Lg/dbh;->r:I

    int-to-long p1, p1

    mul-long p1, p1, p3

    const-wide/32 p3, 0xf4240

    div-long/2addr p1, p3

    iput-wide p1, v0, Lg/dbh;->n:J

    iget-object p3, v0, Lg/dbh;->l:Lg/arm;

    sget p4, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    invoke-interface {p3, p1, p2}, Lg/arm;->zzg(J)V

    const/4 p1, 0x2

    iput p1, v0, Lg/dbh;->j:I

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

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzajo;->d(Lcom/google/android/gms/internal/ads/zzacs;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbh; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.class public final Lcom/google/android/gms/internal/ads/zzaap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Lcom/google/android/gms/internal/ads/zzdc;

.field public c:I

.field public d:J

.field public final e:Lcom/google/android/gms/internal/ads/zzaao;

.field public f:J

.field public g:Z

.field public final h:Lcom/google/android/gms/internal/ads/zzaat;

.field public i:F

.field public j:Z

.field public k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaao;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaap;->e:Lcom/google/android/gms/internal/ads/zzaao;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaat;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzaat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaap;->h:Lcom/google/android/gms/internal/ads/zzaat;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->d:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->k:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->a:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->i:F

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdc;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->b:Lcom/google/android/gms/internal/ads/zzdc;

    return-void
.end method


# virtual methods
.method public final zza(JJJJZLcom/google/android/gms/internal/ads/zzaan;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzig;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p10

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaan;->a:J

    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaan;->b:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaap;->d:J

    cmp-long v10, v8, v6

    if-nez v10, :cond_0

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaap;->d:J

    :cond_0
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaap;->k:J

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaap;->h:Lcom/google/android/gms/internal/ads/zzaat;

    cmp-long v11, v8, v1

    if-eqz v11, :cond_1

    invoke-virtual {v10, v1, v2}, Lcom/google/android/gms/internal/ads/zzaat;->zzd(J)V

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaap;->k:J

    :cond_1
    sub-long/2addr v1, v3

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaap;->i:F

    float-to-double v8, v8

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzaap;->j:Z

    long-to-double v1, v1

    div-double/2addr v1, v8

    double-to-long v1, v1

    if-eqz v11, :cond_2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzaap;->b:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v8

    sub-long v8, v8, p5

    sub-long/2addr v1, v8

    :cond_2
    iput-wide v1, v5, Lcom/google/android/gms/internal/ads/zzaan;->a:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaap;->a:J

    const-wide/16 v11, -0x7530

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-wide/from16 v16, v6

    const/4 v6, 0x1

    cmp-long v7, v8, v16

    if-eqz v7, :cond_3

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzaap;->g:Z

    if-nez v7, :cond_3

    const/16 p1, 0x1

    goto :goto_1

    :cond_3
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    if-eqz v7, :cond_6

    if-eq v7, v6, :cond_7

    if-eq v7, v14, :cond_5

    if-ne v7, v13, :cond_4

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaap;->b:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v7

    move-wide/from16 p5, v7

    const/16 p1, 0x1

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaap;->f:J

    sub-long v6, p5, v6

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzaap;->j:Z

    if-eqz v8, :cond_8

    cmp-long v8, v1, v11

    if-gez v8, :cond_8

    const-wide/32 v1, 0x186a0

    cmp-long v8, v6, v1

    if-lez v8, :cond_8

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_5
    const/16 p1, 0x1

    cmp-long v1, v3, p7

    if-ltz v1, :cond_8

    goto :goto_0

    :cond_6
    const/16 p1, 0x1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaap;->j:Z

    if-eqz v1, :cond_8

    :cond_7
    :goto_0
    return v15

    :cond_8
    :goto_1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaap;->j:Z

    if-eqz v1, :cond_13

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaap;->d:J

    cmp-long v6, v3, v1

    if-nez v6, :cond_9

    goto/16 :goto_5

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaap;->b:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzc()J

    move-result-wide v1

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaan;->a:J

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    add-long/2addr v6, v1

    invoke-virtual {v10, v6, v7}, Lcom/google/android/gms/internal/ads/zzaat;->zza(J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaan;->b:J

    sub-long/2addr v6, v1

    div-long/2addr v6, v8

    iput-wide v6, v5, Lcom/google/android/gms/internal/ads/zzaan;->a:J

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaap;->a:J

    cmp-long v8, v1, v16

    if-eqz v8, :cond_a

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaap;->g:Z

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    :goto_2
    const-wide/32 v8, -0x7a120

    cmp-long v2, v6, v8

    if-gez v2, :cond_f

    if-nez p9, :cond_f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaap;->e:Lcom/google/android/gms/internal/ads/zzaao;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaai;

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzhw;->ch:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzhw;->cd:J

    sub-long/2addr v3, v7

    invoke-interface {v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzwg;->zzb(J)I

    move-result v3

    if-nez v3, :cond_b

    goto :goto_4

    :cond_b
    if-eqz v1, :cond_c

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzhx;->zzd:I

    add-int/2addr v4, v3

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzhx;->zzd:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzhx;->zzf:I

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzaai;->p:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzhx;->zzf:I

    goto :goto_3

    :cond_c
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzhx;->zzj:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzhx;->zzj:I

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzaai;->p:I

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzaai;->bg(II)V

    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsy;->fb()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsy;->ez()V

    :cond_d
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaai;->ac:Lcom/google/android/gms/internal/ads/zzabl;

    if-eqz v1, :cond_e

    invoke-interface {v1, v15}, Lcom/google/android/gms/internal/ads/zzabl;->zzg(Z)V

    :cond_e
    const/4 v1, 0x4

    return v1

    :cond_f
    :goto_4
    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/zzaan;->a:J

    cmp-long v4, v2, v11

    if-gez v4, :cond_11

    if-nez p9, :cond_11

    if-eqz v1, :cond_10

    return v13

    :cond_10
    return v14

    :cond_11
    const-wide/32 v4, 0xc350

    cmp-long v1, v2, v4

    if-lez v1, :cond_12

    goto :goto_5

    :cond_12
    return p1

    :cond_13
    :goto_5
    const/4 v1, 0x5

    return v1
.end method

.method public final zzb()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    :cond_0
    return-void
.end method

.method public final zzc(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->g:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->a:J

    return-void
.end method

.method public final zzd()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    return-void
.end method

.method public final zze(Z)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    return-void
.end method

.method public final zzf()V
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    return-void
.end method

.method public final zzg()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->j:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->b:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->f:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->h:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->zzg()V

    return-void
.end method

.method public final zzh()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->j:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->a:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->h:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->zzh()V

    return-void
.end method

.method public final zzi()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->h:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaat;->zzf()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->k:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->d:J

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->a:J

    return-void
.end method

.method public final zzj(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->h:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaat;->zzj(I)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzdc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->b:Lcom/google/android/gms/internal/ads/zzdc;

    return-void
.end method

.method public final zzl(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->h:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaat;->zzc(F)V

    return-void
.end method

.method public final zzm(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->h:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaat;->zzi(Landroid/view/Surface;)V

    const/4 p1, 0x1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    return-void
.end method

.method public final zzn(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->i:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->i:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->h:Lcom/google/android/gms/internal/ads/zzaat;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaat;->zze(F)V

    return-void
.end method

.method public final zzo(Z)Z
    .locals 8

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaap;->a:J

    const/4 p1, 0x0

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    return p1

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaap;->b:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaap;->a:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    const/4 v2, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->a:J

    :cond_2
    return v2
.end method

.method public final zzp()Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaap;->c:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaap;->b:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaap;->f:J

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

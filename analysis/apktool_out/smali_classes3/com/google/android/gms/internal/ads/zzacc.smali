.class public Lcom/google/android/gms/internal/ads/zzacc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/ads/zzabw;

.field public final c:Lcom/google/android/gms/internal/ads/zzacb;

.field public d:Lcom/google/android/gms/internal/ads/zzaby;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabz;Lcom/google/android/gms/internal/ads/zzacb;JJJJJI)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacc;->c:Lcom/google/android/gms/internal/ads/zzacb;

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzacc;->a:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzabw;

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-wide/from16 v2, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzabw;-><init>(Lcom/google/android/gms/internal/ads/zzabz;JJJJJJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacc;->b:Lcom/google/android/gms/internal/ads/zzabw;

    return-void
.end method

.method public static final e(Lcom/google/android/gms/internal/ads/zzacs;JLcom/google/android/gms/internal/ads/zzadn;)I
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p3, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzacc;->d:Lcom/google/android/gms/internal/ads/zzaby;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzaby;->e:J

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzaby;->h:J

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzaby;->a:J

    sub-long/2addr v6, v4

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzacc;->a:I

    int-to-long v10, v10

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzacc;->c:Lcom/google/android/gms/internal/ads/zzacb;

    cmp-long v14, v6, v10

    if-gtz v14, :cond_0

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzacc;->d:Lcom/google/android/gms/internal/ads/zzaby;

    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/zzacb;->zzb()V

    invoke-static {v1, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzacc;->e(Lcom/google/android/gms/internal/ads/zzacs;JLcom/google/android/gms/internal/ads/zzadn;)I

    move-result v1

    return v1

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v4

    sub-long v4, v8, v4

    const-wide/16 v6, 0x0

    cmp-long v10, v4, v6

    if-ltz v10, :cond_5

    const-wide/32 v10, 0x40000

    cmp-long v14, v4, v10

    if-gtz v14, :cond_5

    long-to-int v5, v4

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzaby;->f:J

    invoke-interface {v13, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzacb;->zza(Lcom/google/android/gms/internal/ads/zzacs;J)Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzaca;->a:I

    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzaca;->b:J

    move-wide/from16 v16, v6

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/zzaca;->c:J

    const/4 v4, -0x3

    if-eq v5, v4, :cond_4

    const/4 v4, -0x2

    if-eq v5, v4, :cond_3

    const/4 v4, -0x1

    if-eq v5, v4, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v3

    sub-long v3, v6, v3

    cmp-long v5, v3, v16

    if-ltz v5, :cond_1

    cmp-long v5, v3, v10

    if-gtz v5, :cond_1

    long-to-int v4, v3

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    :cond_1
    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzacc;->d:Lcom/google/android/gms/internal/ads/zzaby;

    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/zzacb;->zzb()V

    invoke-static {v1, v6, v7, v2}, Lcom/google/android/gms/internal/ads/zzacc;->e(Lcom/google/android/gms/internal/ads/zzacs;JLcom/google/android/gms/internal/ads/zzadn;)I

    move-result v1

    return v1

    :cond_2
    iput-wide v14, v3, Lcom/google/android/gms/internal/ads/zzaby;->c:J

    iput-wide v6, v3, Lcom/google/android/gms/internal/ads/zzaby;->h:J

    move-wide/from16 v16, v14

    iget-wide v14, v3, Lcom/google/android/gms/internal/ads/zzaby;->f:J

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzaby;->b:J

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzaby;->e:J

    iget-wide v10, v3, Lcom/google/android/gms/internal/ads/zzaby;->g:J

    move-wide/from16 v22, v6

    move-wide/from16 v20, v8

    move-wide/from16 v24, v10

    move-wide/from16 v18, v16

    move-wide/from16 v16, v4

    invoke-static/range {v14 .. v25}, Lcom/google/android/gms/internal/ads/zzaby;->i(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/zzaby;->a:J

    goto/16 :goto_0

    :cond_3
    move-wide v4, v14

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/zzaby;->b:J

    iput-wide v6, v3, Lcom/google/android/gms/internal/ads/zzaby;->e:J

    iget-wide v14, v3, Lcom/google/android/gms/internal/ads/zzaby;->f:J

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzaby;->c:J

    iget-wide v10, v3, Lcom/google/android/gms/internal/ads/zzaby;->h:J

    iget-wide v12, v3, Lcom/google/android/gms/internal/ads/zzaby;->g:J

    move-wide/from16 v16, v4

    move-wide/from16 v20, v6

    move-wide/from16 v18, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    invoke-static/range {v14 .. v25}, Lcom/google/android/gms/internal/ads/zzaby;->i(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/internal/ads/zzaby;->a:J

    goto/16 :goto_0

    :cond_4
    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzacc;->d:Lcom/google/android/gms/internal/ads/zzaby;

    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/zzacb;->zzb()V

    invoke-static {v1, v8, v9, v2}, Lcom/google/android/gms/internal/ads/zzacc;->e(Lcom/google/android/gms/internal/ads/zzacs;JLcom/google/android/gms/internal/ads/zzadn;)I

    move-result v1

    return v1

    :cond_5
    invoke-static {v1, v8, v9, v2}, Lcom/google/android/gms/internal/ads/zzacc;->e(Lcom/google/android/gms/internal/ads/zzacs;JLcom/google/android/gms/internal/ads/zzadn;)I

    move-result v1

    return v1
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzadq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacc;->b:Lcom/google/android/gms/internal/ads/zzabw;

    return-object v0
.end method

.method public final zzd(J)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzacc;->d:Lcom/google/android/gms/internal/ads/zzaby;

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzaby;->d:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaby;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzacc;->b:Lcom/google/android/gms/internal/ads/zzabw;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzabw;->zzf(J)J

    move-result-wide v5

    move-wide v8, v5

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/zzabw;->f:J

    move-wide v10, v8

    iget-wide v8, v4, Lcom/google/android/gms/internal/ads/zzabw;->a:J

    move-wide v12, v10

    iget-wide v10, v4, Lcom/google/android/gms/internal/ads/zzabw;->b:J

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzabw;->d:J

    move-wide v14, v12

    move-wide v12, v4

    move-wide v4, v14

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzaby;-><init>(JJJJJJ)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzacc;->d:Lcom/google/android/gms/internal/ads/zzaby;

    return-void
.end method

.method public final zze()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacc;->d:Lcom/google/android/gms/internal/ads/zzaby;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

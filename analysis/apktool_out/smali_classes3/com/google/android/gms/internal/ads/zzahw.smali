.class public final Lcom/google/android/gms/internal/ads/zzahw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacr;


# instance fields
.field public a:I

.field public b:J

.field public c:Lg/deu;

.field public d:I

.field public final e:Lcom/google/android/gms/internal/ads/zzadh;

.field public f:J

.field public g:Lcom/google/android/gms/internal/ads/zzacu;

.field public final h:Lcom/google/android/gms/internal/ads/zzed;

.field public i:Lcom/google/android/gms/internal/ads/zzadx;

.field public j:Z

.field public k:J

.field public l:Lcom/google/android/gms/internal/ads/zzbd;

.field public final m:Lcom/google/android/gms/internal/ads/zzadj;

.field public n:J

.field public final o:Lcom/google/android/gms/internal/ads/zzadf;

.field public p:Lcom/google/android/gms/internal/ads/zzadx;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->h:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->m:Lcom/google/android/gms/internal/ads/zzadj;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->o:Lcom/google/android/gms/internal/ads/zzadf;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->n:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->e:Lcom/google/android/gms/internal/ads/zzadh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzacm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->p:Lcom/google/android/gms/internal/ads/zzadx;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->k:J

    return-void
.end method


# virtual methods
.method public final q()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lg/deu;

    instance-of v1, v0, Lg/bjp;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadq;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->k:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lg/deu;

    invoke-interface {v2}, Lg/deu;->zzd()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lg/deu;

    check-cast v0, Lg/bjp;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahw;->k:J

    iget-wide v5, v0, Lg/bjp;->j:J

    iget v4, v0, Lg/bjp;->g:I

    iget v7, v0, Lg/bjp;->h:I

    new-instance v1, Lg/bjp;

    invoke-direct/range {v1 .. v7}, Lg/bjp;-><init>(JIJI)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lg/deu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->g:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lg/deu;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    :cond_0
    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lg/deu;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lg/deu;->zzd()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zze()J

    move-result-wide v4

    const-wide/16 v6, -0x4

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->h:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzm([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v3

    :catch_0
    return v1
.end method

.method public final s(Lcom/google/android/gms/internal/ads/zzacs;Z)Z
    .locals 13

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->e:Lcom/google/android/gms/internal/ads/zzadh;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzadh;->zza(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzagi;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->l:Lcom/google/android/gms/internal/ads/zzbd;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahw;->o:Lcom/google/android/gms/internal/ads/zzadf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzadf;->zzb(Lcom/google/android/gms/internal/ads/zzbd;)Z

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zze()J

    move-result-wide v0

    long-to-int v1, v0

    if-nez p2, :cond_1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahw;->r(Lcom/google/android/gms/internal/ads/zzacs;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    if-lez v2, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzahw;->q()V

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzahw;->h:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v5

    if-eqz v0, :cond_5

    int-to-long v7, v0

    const v9, -0x1f400

    and-int/2addr v9, v5

    int-to-long v9, v9

    const-wide/32 v11, -0x1f400

    and-long/2addr v7, v11

    cmp-long v11, v9, v7

    if-nez v11, :cond_6

    :cond_5
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzadk;->zzb(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_b

    :cond_6
    if-eq v6, p2, :cond_7

    const/high16 v0, 0x20000

    goto :goto_2

    :cond_7
    const v0, 0x8000

    :goto_2
    add-int/lit8 v2, v3, 0x1

    if-ne v3, v0, :cond_9

    if-eqz p2, :cond_8

    return v4

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzahw;->q()V

    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_9
    if-eqz p2, :cond_a

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    add-int v0, v1, v2

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzg(I)V

    :goto_3
    move v3, v2

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_a
    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    goto :goto_3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->m:Lcom/google/android/gms/internal/ads/zzadj;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzadj;->zza(I)Z

    move v0, v5

    goto :goto_6

    :cond_c
    const/4 v5, 0x4

    if-ne v2, v5, :cond_e

    :goto_4
    if-eqz p2, :cond_d

    add-int/2addr v1, v3

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    goto :goto_5

    :cond_d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    :goto_5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->a:I

    return v6

    :cond_e
    :goto_6
    add-int/lit8 v7, v7, -0x4

    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/ads/zzacs;->zzg(I)V

    goto :goto_1
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahw;->j:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I
    .locals 53
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->i:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->a:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzahw;->s(Lcom/google/android/gms/internal/ads/zzacs;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lg/deu;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzahw;->h:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v12, 0x1

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzahw;->m:Lcom/google/android/gms/internal/ads/zzadj;

    if-nez v2, :cond_2e

    new-instance v2, Lcom/google/android/gms/internal/ads/zzed;

    iget v14, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    invoke-direct {v2, v14}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v14

    iget v15, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    invoke-interface {v1, v14, v4, v15}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    iget v14, v13, Lcom/google/android/gms/internal/ads/zzadj;->zza:I

    and-int/2addr v14, v12

    const/16 v15, 0x24

    const-wide/32 v16, 0xf4240

    const/16 v5, 0x15

    if-eqz v14, :cond_2

    iget v6, v13, Lcom/google/android/gms/internal/ads/zzadj;->zze:I

    if-eq v6, v12, :cond_1

    const/16 v6, 0x24

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v6, 0x15

    goto :goto_2

    :cond_2
    iget v6, v13, Lcom/google/android/gms/internal/ads/zzadj;->zze:I

    if-eq v6, v12, :cond_3

    goto :goto_1

    :cond_3
    const/16 v6, 0xd

    :goto_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v14

    const-wide/16 v18, 0x0

    add-int/lit8 v7, v6, 0x4

    const v8, 0x56425249

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const v10, 0x496e666f

    const v11, 0x58696e67

    if-lt v14, v7, :cond_4

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v6

    if-eq v6, v11, :cond_6

    if-ne v6, v10, :cond_4

    const v6, 0x496e666f

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v6

    const/16 v7, 0x28

    if-lt v6, v7, :cond_5

    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v6

    if-ne v6, v8, :cond_5

    const v6, 0x56425249

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :cond_6
    :goto_3
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzahw;->o:Lcom/google/android/gms/internal/ads/zzadf;

    const-wide/16 v22, -0x1

    if-eq v6, v10, :cond_10

    if-eq v6, v8, :cond_7

    if-eq v6, v11, :cond_10

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    const/16 v33, 0x0

    goto/16 :goto_18

    :cond_7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v5

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v10

    const/16 v8, 0xa

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    if-gtz v8, :cond_8

    goto :goto_6

    :cond_8
    iget v15, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzd:I

    const/16 v4, 0x7d00

    if-lt v15, v4, :cond_9

    const/16 v4, 0x480

    goto :goto_4

    :cond_9
    const/16 v4, 0x240

    :goto_4
    int-to-long v3, v4

    mul-long v27, v3, v16

    int-to-long v3, v15

    int-to-long v14, v8

    sget-object v31, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v29, v3

    move-wide/from16 v25, v14

    invoke-static/range {v25 .. v31}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v36

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v8

    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    iget v15, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    int-to-long v14, v15

    add-long/2addr v14, v10

    new-array v12, v3, [J

    move-wide/from16 v27, v10

    new-array v10, v3, [J

    move-object/from16 v35, v10

    move-object/from16 v34, v12

    move-wide/from16 v10, v27

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v3, :cond_e

    int-to-long v0, v12

    mul-long v0, v0, v36

    move-wide/from16 v27, v0

    int-to-long v0, v3

    div-long v0, v27, v0

    aput-wide v0, v34, v12

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    aput-wide v0, v35, v12

    const/4 v0, 0x1

    if-eq v8, v0, :cond_d

    const/4 v0, 0x2

    if-eq v8, v0, :cond_c

    const/4 v1, 0x3

    if-eq v8, v1, :cond_b

    const/4 v1, 0x4

    if-eq v8, v1, :cond_a

    :goto_6
    const/16 v33, 0x0

    goto :goto_9

    :cond_a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v1

    :goto_7
    move-wide/from16 v27, v14

    goto :goto_8

    :cond_b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzo()I

    move-result v1

    goto :goto_7

    :cond_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v1

    goto :goto_7

    :cond_d
    const/4 v0, 0x2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v1

    goto :goto_7

    :goto_8
    int-to-long v14, v4

    int-to-long v0, v1

    mul-long v0, v0, v14

    add-long/2addr v10, v0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v14, v27

    goto :goto_5

    :cond_e
    cmp-long v0, v5, v22

    if-eqz v0, :cond_f

    cmp-long v0, v5, v10

    if-eqz v0, :cond_f

    const-string v0, "VBRI data size mismatch: "

    const-string v1, ", "

    invoke-static {v5, v6, v0, v1}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VbriSeeker"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    new-instance v33, Lg/dni;

    iget v0, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzf:I

    move/from16 v40, v0

    move-wide/from16 v38, v10

    invoke-direct/range {v33 .. v40}, Lg/dni;-><init>([J[JJJI)V

    :goto_9
    iget v0, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    :goto_a
    move-object/from16 v0, p0

    goto/16 :goto_18

    :cond_10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v0

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v3

    goto :goto_b

    :cond_11
    const/4 v3, -0x1

    :goto_b
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_12

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v14

    move-wide/from16 v40, v14

    goto :goto_c

    :cond_12
    move-wide/from16 v40, v22

    :goto_c
    and-int/lit8 v4, v0, 0x4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_14

    const/16 v4, 0x64

    new-array v8, v4, [J

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v4, :cond_13

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v12

    int-to-long v14, v12

    aput-wide v14, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_13
    move-object/from16 v42, v8

    goto :goto_e

    :cond_14
    const/16 v42, 0x0

    :goto_e
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_15

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v0

    const/16 v4, 0x18

    if-lt v0, v4, :cond_16

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzo()I

    move-result v0

    shr-int/lit8 v2, v0, 0xc

    and-int/lit16 v0, v0, 0xfff

    goto :goto_f

    :cond_16
    const/4 v0, -0x1

    const/4 v2, -0x1

    :goto_f
    int-to-long v3, v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzadj;

    invoke-direct {v5, v13}, Lcom/google/android/gms/internal/ads/zzadj;-><init>(Lcom/google/android/gms/internal/ads/zzadj;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzadf;->zza()Z

    move-result v8

    if-nez v8, :cond_17

    const/4 v8, -0x1

    if-eq v2, v8, :cond_17

    if-eq v0, v8, :cond_17

    iput v2, v7, Lcom/google/android/gms/internal/ads/zzadf;->zza:I

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzadf;->zzb:I

    :cond_17
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v44

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v14

    cmp-long v0, v14, v22

    if-eqz v0, :cond_18

    cmp-long v0, v40, v22

    if-eqz v0, :cond_18

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v14

    add-long v11, v44, v40

    cmp-long v2, v14, v11

    if-eqz v2, :cond_18

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v14

    const-string v2, "Data size mismatch between stream ("

    const-string v8, ") and Xing frame ("

    invoke-static {v14, v15, v2, v8}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "), using Xing value."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "Mp3Extractor"

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zze(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    iget v2, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    const v0, 0x58696e67

    if-ne v6, v0, :cond_1e

    cmp-long v0, v3, v22

    if-eqz v0, :cond_1a

    cmp-long v0, v3, v18

    if-nez v0, :cond_19

    goto :goto_10

    :cond_19
    iget v0, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzg:I

    int-to-long v10, v0

    mul-long v3, v3, v10

    add-long v3, v3, v22

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzd:I

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzt(JI)J

    move-result-wide v2

    move-wide/from16 v47, v2

    goto :goto_11

    :cond_1a
    :goto_10
    move-wide/from16 v47, v20

    :goto_11
    cmp-long v0, v47, v20

    if-nez v0, :cond_1b

    goto :goto_15

    :cond_1b
    cmp-long v0, v40, v22

    if-eqz v0, :cond_1d

    if-nez v42, :cond_1c

    goto :goto_12

    :cond_1c
    new-instance v33, Lg/bmz;

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    iget v2, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzf:I

    move/from16 v36, v0

    move/from16 v39, v2

    move-wide/from16 v34, v44

    move-wide/from16 v37, v47

    invoke-direct/range {v33 .. v42}, Lg/bmz;-><init>(JIJIJ[J)V

    goto/16 :goto_a

    :cond_1d
    :goto_12
    new-instance v43, Lg/bmz;

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    iget v2, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzf:I

    const-wide/16 v50, -0x1

    const/16 v52, 0x0

    move/from16 v46, v0

    move/from16 v49, v2

    invoke-direct/range {v43 .. v52}, Lg/bmz;-><init>(JIJIJ[J)V

    move-object/from16 v33, v43

    goto/16 :goto_a

    :cond_1e
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v10

    cmp-long v0, v3, v22

    if-eqz v0, :cond_20

    cmp-long v0, v3, v18

    if-nez v0, :cond_1f

    goto :goto_13

    :cond_1f
    iget v0, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzg:I

    int-to-long v14, v0

    mul-long v14, v14, v3

    add-long v14, v14, v22

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzd:I

    invoke-static {v14, v15, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzt(JI)J

    move-result-wide v14

    move-wide/from16 v37, v14

    goto :goto_14

    :cond_20
    :goto_13
    move-wide/from16 v37, v20

    :goto_14
    cmp-long v0, v37, v20

    if-nez v0, :cond_22

    :cond_21
    :goto_15
    const/16 v33, 0x0

    goto/16 :goto_a

    :cond_22
    cmp-long v0, v40, v22

    if-eqz v0, :cond_23

    add-long v10, v44, v40

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    int-to-long v14, v0

    sub-long v40, v40, v14

    move-wide/from16 v47, v10

    :goto_16
    move-wide/from16 v33, v40

    goto :goto_17

    :cond_23
    cmp-long v0, v10, v22

    if-eqz v0, :cond_21

    sub-long v14, v10, v44

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    move-wide/from16 v22, v10

    int-to-long v10, v0

    sub-long v40, v14, v10

    move-wide/from16 v47, v22

    goto :goto_16

    :goto_17
    sget-object v39, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const-wide/32 v35, 0x7a1200

    invoke-static/range {v33 .. v39}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    move-wide/from16 v14, v33

    move-object/from16 v0, v39

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzgcr;->zzb(J)I

    move-result v49

    invoke-static {v14, v15, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzgcm;->zzb(JJLjava/math/RoundingMode;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgcr;->zzb(J)I

    move-result v52

    new-instance v46, Lg/bjp;

    iget v0, v5, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    int-to-long v2, v0

    add-long v50, v44, v2

    invoke-direct/range {v46 .. v52}, Lg/bjp;-><init>(JIJI)V

    move-object/from16 v0, p0

    move-object/from16 v33, v46

    :goto_18
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->l:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v3

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbd;->zza()I

    move-result v5

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v5, :cond_28

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzbd;->zzb(I)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v8

    instance-of v10, v8, Lcom/google/android/gms/internal/ads/zzagq;

    if-eqz v10, :cond_27

    check-cast v8, Lcom/google/android/gms/internal/ads/zzagq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbd;->zza()I

    move-result v5

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v5, :cond_25

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzbd;->zzb(I)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v10

    instance-of v11, v10, Lcom/google/android/gms/internal/ads/zzagu;

    if-eqz v11, :cond_24

    check-cast v10, Lcom/google/android/gms/internal/ads/zzagu;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzagl;->zzf:Ljava/lang/String;

    const-string v12, "TLEN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzagu;->zzb:Lcom/google/android/gms/internal/ads/zzfzo;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v5

    goto :goto_1b

    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_25
    move-wide/from16 v5, v20

    :goto_1b
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzagq;->zzd:[I

    array-length v2, v2

    add-int/lit8 v10, v2, 0x1

    new-array v11, v10, [J

    new-array v10, v10, [J

    const/16 v24, 0x0

    aput-wide v3, v11, v24

    aput-wide v18, v10, v24

    move-wide v14, v3

    const/4 v3, 0x1

    :goto_1c
    if-gt v3, v2, :cond_26

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzagq;->zzb:I

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzagq;->zzd:[I

    add-int/lit8 v22, v3, -0x1

    aget v12, v12, v22

    add-int/2addr v4, v12

    move v12, v2

    move/from16 v23, v3

    int-to-long v2, v4

    add-long/2addr v14, v2

    iget v2, v8, Lcom/google/android/gms/internal/ads/zzagq;->zzc:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzagq;->zze:[I

    aget v3, v3, v22

    add-int/2addr v2, v3

    int-to-long v2, v2

    add-long v18, v18, v2

    aput-wide v14, v11, v23

    aput-wide v18, v10, v23

    add-int/lit8 v3, v23, 0x1

    move v2, v12

    goto :goto_1c

    :cond_26
    new-instance v2, Lg/dob;

    invoke-direct {v2, v11, v10, v5, v6}, Lg/dob;-><init>([J[JJ)V

    goto :goto_1d

    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_28
    const/4 v2, 0x0

    :goto_1d
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzahw;->j:Z

    if-eqz v3, :cond_29

    new-instance v2, Lcom/google/android/gms/internal/ads/zzahx;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzahx;-><init>()V

    goto :goto_1f

    :cond_29
    if-eqz v2, :cond_2a

    move-object v15, v2

    goto :goto_1e

    :cond_2a
    if-nez v33, :cond_2b

    const/4 v15, 0x0

    goto :goto_1e

    :cond_2b
    move-object/from16 v15, v33

    :goto_1e
    if-eqz v15, :cond_2c

    invoke-interface {v15}, Lcom/google/android/gms/internal/ads/zzadq;->zzh()Z

    move-object v2, v15

    goto :goto_1f

    :cond_2c
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    const/4 v5, 0x0

    const/4 v8, 0x4

    invoke-interface {v1, v2, v5, v8}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzadj;->zza(I)Z

    new-instance v27, Lg/bjp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v28

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v31

    iget v2, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzf:I

    iget v3, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    move/from16 v30, v2

    move/from16 v33, v3

    invoke-direct/range {v27 .. v33}, Lg/bjp;-><init>(JIJI)V

    move-object/from16 v2, v27

    :goto_1f
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lg/deu;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahw;->g:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    iget-object v3, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzQ(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v3, v13, Lcom/google/android/gms/internal/ads/zzadj;->zze:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v3, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzd:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzadf;->zza:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzG(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzadf;->zzb:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzH(I)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahw;->l:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzS(Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lg/deu;

    invoke-interface {v3}, Lg/deu;->zzc()I

    move-result v3

    const v4, -0x7fffffff

    if-eq v3, v4, :cond_2d

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lg/deu;

    invoke-interface {v3}, Lg/deu;->zzc()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzy(I)Lcom/google/android/gms/internal/ads/zzab;

    :cond_2d
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahw;->p:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->f:J

    goto :goto_20

    :cond_2e
    const-wide/32 v16, 0xf4240

    const-wide/16 v18, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->f:J

    cmp-long v4, v2, v18

    if-eqz v4, :cond_2f

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_2f

    sub-long/2addr v2, v4

    long-to-int v3, v2

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    :cond_2f
    :goto_20
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->d:I

    if-nez v2, :cond_34

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahw;->r(Lcom/google/android/gms/internal/ads/zzacs;)Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v8, -0x1

    goto :goto_23

    :cond_30
    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahw;->a:I

    int-to-long v3, v3

    const v5, -0x1f400

    and-int/2addr v5, v2

    int-to-long v5, v5

    const-wide/32 v7, -0x1f400

    and-long/2addr v3, v7

    cmp-long v7, v5, v3

    if-nez v7, :cond_31

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzadk;->zzb(I)I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_32

    :cond_31
    const/4 v3, 0x1

    goto :goto_21

    :cond_32
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzadj;->zza(I)Z

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->n:J

    cmp-long v4, v2, v20

    if-nez v4, :cond_33

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->c:Lg/deu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lg/deu;->zze(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->n:J

    :cond_33
    iget v2, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->d:I

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzahw;->k:J

    :cond_34
    const/4 v3, 0x1

    const/4 v5, 0x0

    goto :goto_22

    :goto_21
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    const/4 v5, 0x0

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->a:I

    return v5

    :goto_22
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahw;->p:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(Lcom/google/android/gms/internal/ads/zzn;IZ)I

    move-result v1

    const/4 v8, -0x1

    if-ne v1, v8, :cond_35

    :goto_23
    return v8

    :cond_35
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->d:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahw;->d:I

    if-lez v2, :cond_36

    return v5

    :cond_36
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahw;->p:Lcom/google/android/gms/internal/ads/zzadx;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->b:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzahw;->n:J

    iget v5, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzd:I

    int-to-long v7, v5

    mul-long v1, v1, v16

    div-long/2addr v1, v7

    add-long v7, v1, v3

    iget v10, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzc:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->b:J

    iget v3, v13, Lcom/google/android/gms/internal/ads/zzadj;->zzg:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->b:J

    const/4 v5, 0x0

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahw;->d:I

    return v5
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->g:Lcom/google/android/gms/internal/ads/zzacu;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->i:Lcom/google/android/gms/internal/ads/zzadx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->p:Lcom/google/android/gms/internal/ads/zzadx;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->g:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    return-void
.end method

.method public final zzf(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->a:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahw;->n:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahw;->b:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahw;->d:I

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzahw;->s(Lcom/google/android/gms/internal/ads/zzacs;Z)Z

    move-result p1

    return p1
.end method

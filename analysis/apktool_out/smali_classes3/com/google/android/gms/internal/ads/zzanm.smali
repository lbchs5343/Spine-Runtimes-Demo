.class public final Lcom/google/android/gms/internal/ads/zzanm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacr;


# instance fields
.field public a:J

.field public b:Z

.field public final c:Lg/bsk;

.field public d:Z

.field public final e:Lcom/google/android/gms/internal/ads/zzek;

.field public f:Z

.field public g:Lg/dby;

.field public final h:Landroid/util/SparseArray;

.field public i:Lcom/google/android/gms/internal/ads/zzacu;

.field public final j:Lcom/google/android/gms/internal/ads/zzed;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzek;-><init>(J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanm;->e:Lcom/google/android/gms/internal/ads/zzek;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanm;->j:Lcom/google/android/gms/internal/ads/zzed;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanm;->h:Landroid/util/SparseArray;

    new-instance v0, Lg/bsk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/bsk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanm;->c:Lg/bsk;

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

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanm;->i:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v13

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v5, 0x1ba

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzanm;->c:Lg/bsk;

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/16 v18, -0x1

    cmp-long v20, v13, v18

    if-eqz v20, :cond_0

    iget-boolean v11, v6, Lg/bsk;->g:Z

    iget-object v12, v6, Lg/bsk;->f:Lcom/google/android/gms/internal/ads/zzed;

    if-eqz v11, :cond_1

    :cond_0
    move-wide v15, v3

    goto/16 :goto_4

    :cond_1
    iget-boolean v11, v6, Lg/bsk;->c:Z

    const-wide/16 v13, 0x4e20

    if-nez v11, :cond_5

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v7

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v11, v13

    int-to-long v13, v11

    sub-long/2addr v7, v13

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v13

    cmp-long v15, v13, v7

    if-eqz v15, :cond_2

    iput-wide v7, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    return v9

    :cond_2
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-interface {v1, v2, v10, v11}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    :goto_0
    if-lt v2, v1, :cond_4

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    invoke-static {v2, v7}, Lg/bsk;->j(I[B)I

    move-result v7

    if-ne v7, v5, :cond_3

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-static {v12}, Lg/bsk;->i(Lcom/google/android/gms/internal/ads/zzed;)J

    move-result-wide v7

    cmp-long v11, v7, v3

    if-eqz v11, :cond_3

    move-wide v3, v7

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    iput-wide v3, v6, Lg/bsk;->h:J

    iput-boolean v9, v6, Lg/bsk;->c:Z

    return v10

    :cond_5
    move-wide v15, v3

    iget-wide v3, v6, Lg/bsk;->h:J

    cmp-long v11, v3, v15

    if-nez v11, :cond_6

    sget-object v2, Lcom/google/android/gms/internal/ads/zzen;->zzf:[B

    array-length v3, v2

    invoke-virtual {v12, v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    iput-boolean v9, v6, Lg/bsk;->g:Z

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    return v10

    :cond_6
    iget-boolean v3, v6, Lg/bsk;->b:Z

    if-nez v3, :cond_a

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v3

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v13

    cmp-long v3, v13, v7

    if-eqz v3, :cond_7

    iput-wide v7, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    return v9

    :cond_7
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-interface {v1, v2, v10, v4}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    :goto_2
    add-int/lit8 v3, v2, -0x3

    if-ge v1, v3, :cond_9

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    invoke-static {v1, v3}, Lg/bsk;->j(I[B)I

    move-result v3

    if-ne v3, v5, :cond_8

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-static {v12}, Lg/bsk;->i(Lcom/google/android/gms/internal/ads/zzed;)J

    move-result-wide v3

    cmp-long v7, v3, v15

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    move-wide v3, v15

    :goto_3
    iput-wide v3, v6, Lg/bsk;->e:J

    iput-boolean v9, v6, Lg/bsk;->b:Z

    return v10

    :cond_a
    iget-wide v2, v6, Lg/bsk;->e:J

    cmp-long v4, v2, v15

    if-nez v4, :cond_b

    sget-object v2, Lcom/google/android/gms/internal/ads/zzen;->zzf:[B

    array-length v3, v2

    invoke-virtual {v12, v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    iput-boolean v9, v6, Lg/bsk;->g:Z

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    return v10

    :cond_b
    iget-object v4, v6, Lg/bsk;->d:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzb(J)J

    move-result-wide v2

    iget-wide v7, v6, Lg/bsk;->h:J

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzc(J)J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, v6, Lg/bsk;->a:J

    sget-object v2, Lcom/google/android/gms/internal/ads/zzen;->zzf:[B

    array-length v3, v2

    invoke-virtual {v12, v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    iput-boolean v9, v6, Lg/bsk;->g:Z

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    return v10

    :goto_4
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanm;->b:Z

    if-nez v3, :cond_d

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzanm;->b:Z

    move-wide v3, v7

    iget-wide v7, v6, Lg/bsk;->a:J

    cmp-long v11, v7, v15

    if-eqz v11, :cond_c

    move-wide v11, v3

    new-instance v4, Lg/dby;

    iget-object v3, v6, Lg/bsk;->d:Lcom/google/android/gms/internal/ads/zzek;

    const/16 v6, 0x1ba

    new-instance v5, Lcom/google/android/gms/internal/ads/zzabx;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzabx;-><init>()V

    const/16 v15, 0x1ba

    new-instance v6, Lg/fdy;

    invoke-direct {v6, v3}, Lg/fdy;-><init>(Lcom/google/android/gms/internal/ads/zzek;)V

    const-wide/16 v16, 0x1

    add-long v16, v7, v16

    move-wide/from16 v9, v16

    const/16 v3, 0x1ba

    const/16 v17, 0x1

    const/16 v21, 0x0

    const-wide/16 v15, 0xbc

    const/16 v22, 0x1

    const/16 v17, 0x3e8

    move-wide/from16 v23, v11

    const-wide/16 v11, 0x0

    move-wide/from16 v1, v23

    const/4 v3, 0x1

    invoke-direct/range {v4 .. v17}, Lcom/google/android/gms/internal/ads/zzacc;-><init>(Lcom/google/android/gms/internal/ads/zzabz;Lcom/google/android/gms/internal/ads/zzacb;JJJJJI)V

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzanm;->g:Lg/dby;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzanm;->i:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzacc;->zzb()Lcom/google/android/gms/internal/ads/zzadq;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    goto :goto_5

    :cond_c
    move-wide v1, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanm;->i:Lcom/google/android/gms/internal/ads/zzacu;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzadp;

    invoke-direct {v5, v7, v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    goto :goto_5

    :cond_d
    move-wide v1, v7

    const/4 v3, 0x1

    :goto_5
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanm;->g:Lg/dby;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzacc;->zze()Z

    move-result v5

    if-nez v5, :cond_f

    :cond_e
    move-object/from16 v5, p1

    goto :goto_6

    :cond_f
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzacc;->zza(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I

    move-result v1

    return v1

    :goto_6
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    if-eqz v20, :cond_10

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzacs;->zze()J

    move-result-wide v6

    sub-long/2addr v13, v6

    goto :goto_7

    :cond_10
    move-wide/from16 v13, v18

    :goto_7
    cmp-long v4, v13, v18

    if-eqz v4, :cond_11

    const-wide/16 v6, 0x4

    cmp-long v4, v13, v6

    if-ltz v4, :cond_13

    :cond_11
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanm;->j:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-interface {v5, v6, v8, v7, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzm([BIIZ)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_8

    :cond_12
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v6

    const/16 v9, 0x1b9

    if-ne v6, v9, :cond_14

    :cond_13
    :goto_8
    const/4 v1, -0x1

    return v1

    :cond_14
    const/16 v15, 0x1ba

    if-ne v6, v15, :cond_15

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v5, v1, v8, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    const/16 v1, 0x9

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0xe

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    return v8

    :cond_15
    const/16 v9, 0x1bb

    const/4 v10, 0x2

    const/4 v11, 0x6

    if-ne v6, v9, :cond_16

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    invoke-interface {v5, v1, v8, v10}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v1

    add-int/2addr v1, v11

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    return v8

    :cond_16
    shr-int/lit8 v9, v6, 0x8

    if-eq v9, v3, :cond_17

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    return v8

    :cond_17
    and-int/lit16 v9, v6, 0xff

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzanm;->h:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/bak;

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzanm;->d:Z

    if-nez v14, :cond_1d

    if-nez v13, :cond_1b

    const/16 v14, 0xbd

    const/4 v15, 0x0

    if-ne v9, v14, :cond_18

    new-instance v6, Lcom/google/android/gms/internal/ads/zzame;

    invoke-direct {v6, v15, v8}, Lcom/google/android/gms/internal/ads/zzame;-><init>(Ljava/lang/String;I)V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanm;->f:Z

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v14

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzanm;->a:J

    move-object v15, v6

    goto :goto_a

    :cond_18
    and-int/lit16 v14, v6, 0xe0

    const/16 v1, 0xc0

    if-ne v14, v1, :cond_19

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamy;

    invoke-direct {v1, v15, v8}, Lcom/google/android/gms/internal/ads/zzamy;-><init>(Ljava/lang/String;I)V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanm;->f:Z

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v14

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzanm;->a:J

    :goto_9
    move-object v15, v1

    goto :goto_a

    :cond_19
    and-int/lit16 v1, v6, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1a

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamo;

    invoke-direct {v1, v15}, Lcom/google/android/gms/internal/ads/zzamo;-><init>(Lg/akj;)V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanm;->k:Z

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v14

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzanm;->a:J

    goto :goto_9

    :cond_1a
    :goto_a
    if-eqz v15, :cond_1b

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaoa;

    const/high16 v2, -0x80000000

    const/16 v6, 0x100

    invoke-direct {v1, v2, v9, v6}, Lcom/google/android/gms/internal/ads/zzaoa;-><init>(III)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzanm;->i:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v15, v2, v1}, Lcom/google/android/gms/internal/ads/zzamm;->zzb(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V

    new-instance v13, Lg/bak;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanm;->e:Lcom/google/android/gms/internal/ads/zzek;

    invoke-direct {v13, v15, v1}, Lg/bak;-><init>(Lcom/google/android/gms/internal/ads/zzamm;Lcom/google/android/gms/internal/ads/zzek;)V

    invoke-virtual {v12, v9, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanm;->f:Z

    const-wide/32 v14, 0x100000

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzanm;->k:Z

    if-eqz v1, :cond_1c

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzanm;->a:J

    const-wide/16 v14, 0x2000

    add-long/2addr v14, v1

    :cond_1c
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v1

    cmp-long v6, v1, v14

    if-lez v6, :cond_1d

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanm;->d:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanm;->i:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    :cond_1d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    invoke-interface {v5, v1, v8, v10}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v1

    add-int/2addr v1, v11

    if-nez v13, :cond_1e

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    return v8

    :cond_1e
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-interface {v5, v2, v8, v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget-object v1, v13, Lg/bak;->e:Lcom/google/android/gms/internal/ads/zzek;

    iget-object v2, v13, Lg/bak;->c:Lcom/google/android/gms/internal/ads/zzamm;

    iget-object v5, v13, Lg/bak;->f:Lcom/google/android/gms/internal/ads/zzec;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzec;->zza:[B

    const/4 v9, 0x3

    invoke-virtual {v4, v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v10

    iput-boolean v10, v13, Lg/bak;->a:Z

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzec;->zzp()Z

    move-result v10

    iput-boolean v10, v13, Lg/bak;->b:Z

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v6

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/zzec;->zza:[B

    invoke-virtual {v4, v10, v8, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzec;->zzl(I)V

    iget-boolean v6, v13, Lg/bak;->a:Z

    if-eqz v6, :cond_20

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v6

    int-to-long v10, v6

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v12

    shl-int/2addr v12, v6

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    iget-boolean v8, v13, Lg/bak;->d:Z

    const/16 v16, 0x1e

    if-nez v8, :cond_1f

    iget-boolean v8, v13, Lg/bak;->b:Z

    if-eqz v8, :cond_1f

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v8

    int-to-long v8, v8

    shl-long v8, v8, v16

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v17

    shl-int/lit8 v7, v17, 0xf

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v6

    move-wide/from16 v17, v8

    int-to-long v8, v6

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    int-to-long v5, v7

    or-long v5, v17, v5

    or-long/2addr v5, v8

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzb(J)J

    iput-boolean v3, v13, Lg/bak;->d:Z

    :cond_1f
    shl-long v5, v10, v16

    int-to-long v7, v12

    or-long/2addr v5, v7

    or-long/2addr v5, v14

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzb(J)J

    move-result-wide v7

    :goto_b
    const/4 v1, 0x4

    goto :goto_c

    :cond_20
    const-wide/16 v7, 0x0

    goto :goto_b

    :goto_c
    invoke-interface {v2, v7, v8, v1}, Lcom/google/android/gms/internal/ads/zzamm;->zzd(JI)V

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzamm;->zza(Lcom/google/android/gms/internal/ads/zzed;)V

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/ads/zzamm;->zzc(Z)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzc()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    return v8
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanm;->i:Lcom/google/android/gms/internal/ads/zzacu;

    return-void
.end method

.method public final zzf(JJ)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanm;->e:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzf()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    cmp-long p2, v0, p3

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzek;->zzi(J)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanm;->g:Lg/dby;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzacc;->zzd(J)V

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzanm;->h:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p4

    if-ge p1, p4, :cond_3

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/bak;

    iput-boolean p2, p3, Lg/bak;->d:Z

    iget-object p3, p3, Lg/bak;->c:Lcom/google/android/gms/internal/ads/zzamm;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzamm;->zze()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacg;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x2

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x3

    aget-byte v8, v1, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/16 v4, 0x8

    shl-int/2addr v6, v4

    or-int/2addr v0, v6

    or-int/2addr v0, v8

    const/16 v6, 0x1ba

    if-eq v0, v6, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    aget-byte v6, v1, v0

    and-int/lit16 v6, v6, 0xc4

    const/16 v8, 0x44

    if-eq v6, v8, :cond_1

    return v2

    :cond_1
    const/4 v6, 0x6

    aget-byte v6, v1, v6

    and-int/2addr v6, v0

    if-eq v6, v0, :cond_2

    return v2

    :cond_2
    aget-byte v6, v1, v4

    and-int/2addr v6, v0

    if-eq v6, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v7

    if-eq v0, v7, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzacg;->zzl(IZ)Z

    invoke-virtual {p1, v1, v2, v7, v2}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v0

    or-int/2addr p1, v1

    if-ne p1, v3, :cond_6

    return v3

    :cond_6
    return v2
.end method

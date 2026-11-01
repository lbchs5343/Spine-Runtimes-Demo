.class public final Lcom/google/android/gms/internal/ads/zzanw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacr;


# instance fields
.field public final a:Landroid/util/SparseBooleanArray;

.field public b:Lg/dby;

.field public c:Z

.field public d:Z

.field public final e:Landroid/util/SparseIntArray;

.field public f:Lcom/google/android/gms/internal/ads/zzacu;

.field public final g:Lcom/google/android/gms/internal/ads/zzanz;

.field public final h:I

.field public final i:Lcom/google/android/gms/internal/ads/zzakg;

.field public j:I

.field public k:Z

.field public final l:Landroid/util/SparseBooleanArray;

.field public final m:Ljava/util/List;

.field public final n:Lg/bsk;

.field public final o:Lcom/google/android/gms/internal/ads/zzed;

.field public final p:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v3, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzakg;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzek;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzek;-><init>(J)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzamj;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/ads/zzamj;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzanw;-><init>(IILcom/google/android/gms/internal/ads/zzakg;Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzanz;I)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/gms/internal/ads/zzakg;Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzanz;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzanw;->g:Lcom/google/android/gms/internal/ads/zzanz;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzanw;->h:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzanw;->i:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->m:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzed;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->o:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->a:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzanw;->l:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzanw;->p:Landroid/util/SparseArray;

    new-instance p4, Landroid/util/SparseIntArray;

    invoke-direct {p4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzanw;->e:Landroid/util/SparseIntArray;

    new-instance p4, Lg/bsk;

    const/4 p6, 0x1

    invoke-direct {p4, p6}, Lg/bsk;-><init>(I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzanw;->n:Lg/bsk;

    sget-object p4, Lcom/google/android/gms/internal/ads/zzacu;->zza:Lcom/google/android/gms/internal/ads/zzacu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzanw;->f:Lcom/google/android/gms/internal/ads/zzacu;

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzanw;->j:I

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzanz;->zza()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzanw;->p:Landroid/util/SparseArray;

    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p6

    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaob;

    invoke-virtual {p5, p6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->p:Landroid/util/SparseArray;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzano;

    new-instance p4, Lg/clx;

    invoke-direct {p4, p0}, Lg/clx;-><init>(Lcom/google/android/gms/internal/ads/zzanw;)V

    invoke-direct {p2, p4}, Lcom/google/android/gms/internal/ads/zzano;-><init>(Lcom/google/android/gms/internal/ads/zzann;)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v12

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanw;->k:Z

    const-wide/16 v17, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_17

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanw;->n:Lg/bsk;

    const-wide/16 v8, 0x0

    cmp-long v10, v12, v17

    if-eqz v10, :cond_0

    iget-boolean v10, v3, Lg/bsk;->g:Z

    if-eqz v10, :cond_1

    :cond_0
    move-wide/from16 v19, v6

    goto/16 :goto_7

    :cond_1
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzanw;->j:I

    iget-object v11, v3, Lg/bsk;->f:Lcom/google/android/gms/internal/ads/zzed;

    if-gtz v10, :cond_2

    invoke-virtual {v3, v1}, Lg/bsk;->k(Lcom/google/android/gms/internal/ads/zzacs;)V

    return v5

    :cond_2
    iget-boolean v12, v3, Lg/bsk;->c:Z

    const/16 v13, 0x47

    const-wide/32 v14, 0x1b8a0

    if-nez v12, :cond_9

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v8

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v12, v14

    int-to-long v14, v12

    sub-long/2addr v8, v14

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v14

    cmp-long v16, v14, v8

    if-eqz v16, :cond_3

    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    return v4

    :cond_3
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-interface {v1, v2, v5, v12}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    add-int/lit16 v8, v2, -0xbc

    :goto_0
    if-lt v8, v1, :cond_8

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v9

    const/4 v12, -0x4

    const/4 v14, 0x0

    :goto_1
    const/4 v15, 0x4

    if-gt v12, v15, :cond_7

    mul-int/lit16 v15, v12, 0xbc

    add-int/2addr v15, v8

    if-lt v15, v1, :cond_4

    if-ge v15, v2, :cond_4

    aget-byte v15, v9, v15

    if-eq v15, v13, :cond_5

    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    :cond_5
    add-int/2addr v14, v4

    const/4 v15, 0x5

    if-ne v14, v15, :cond_6

    invoke-static {v11, v8, v10}, Lcom/google/android/gms/internal/ads/zzaoc;->zzb(Lcom/google/android/gms/internal/ads/zzed;II)J

    move-result-wide v14

    cmp-long v9, v14, v6

    if-eqz v9, :cond_7

    move-wide v6, v14

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_8
    :goto_3
    iput-wide v6, v3, Lg/bsk;->h:J

    iput-boolean v4, v3, Lg/bsk;->c:Z

    return v5

    :cond_9
    move-wide/from16 v19, v6

    iget-wide v6, v3, Lg/bsk;->h:J

    cmp-long v12, v6, v19

    if-nez v12, :cond_a

    invoke-virtual {v3, v1}, Lg/bsk;->k(Lcom/google/android/gms/internal/ads/zzacs;)V

    return v5

    :cond_a
    iget-boolean v6, v3, Lg/bsk;->b:Z

    if-nez v6, :cond_f

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v6

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v14

    cmp-long v6, v14, v8

    if-eqz v6, :cond_b

    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    return v4

    :cond_b
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-interface {v1, v2, v5, v7}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_e

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    aget-byte v6, v6, v1

    if-eq v6, v13, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {v11, v1, v10}, Lcom/google/android/gms/internal/ads/zzaoc;->zzb(Lcom/google/android/gms/internal/ads/zzed;II)J

    move-result-wide v6

    cmp-long v8, v6, v19

    if-eqz v8, :cond_d

    goto :goto_6

    :cond_d
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    move-wide/from16 v6, v19

    :goto_6
    iput-wide v6, v3, Lg/bsk;->e:J

    iput-boolean v4, v3, Lg/bsk;->b:Z

    return v5

    :cond_f
    iget-wide v6, v3, Lg/bsk;->e:J

    cmp-long v2, v6, v19

    if-nez v2, :cond_10

    invoke-virtual {v3, v1}, Lg/bsk;->k(Lcom/google/android/gms/internal/ads/zzacs;)V

    return v5

    :cond_10
    iget-object v2, v3, Lg/bsk;->d:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzb(J)J

    move-result-wide v6

    iget-wide v8, v3, Lg/bsk;->h:J

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzc(J)J

    move-result-wide v8

    sub-long/2addr v8, v6

    iput-wide v8, v3, Lg/bsk;->a:J

    invoke-virtual {v3, v1}, Lg/bsk;->k(Lcom/google/android/gms/internal/ads/zzacs;)V

    return v5

    :goto_7
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzanw;->d:Z

    if-nez v6, :cond_12

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzanw;->d:Z

    iget-wide v6, v3, Lg/bsk;->a:J

    cmp-long v10, v6, v19

    if-eqz v10, :cond_11

    new-instance v10, Lg/dby;

    iget-object v3, v3, Lg/bsk;->d:Lcom/google/android/gms/internal/ads/zzek;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzanw;->j:I

    const/4 v14, 0x1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzabx;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzabx;-><init>()V

    const/4 v15, 0x0

    new-instance v5, Lg/dsg;

    invoke-direct {v5, v11, v3}, Lg/dsg;-><init>(ILcom/google/android/gms/internal/ads/zzek;)V

    const-wide/16 v19, 0x1

    add-long v19, v6, v19

    const/4 v3, 0x1

    const/4 v11, 0x0

    const-wide/16 v14, 0xbc

    const/16 v16, 0x3ac

    move-object v3, v10

    const/16 v21, 0x1

    const/16 v22, 0x0

    const-wide/16 v10, 0x0

    move-wide v1, v8

    move-wide/from16 v8, v19

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/zzacc;-><init>(Lcom/google/android/gms/internal/ads/zzabz;Lcom/google/android/gms/internal/ads/zzacb;JJJJJI)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzanw;->b:Lg/dby;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzanw;->f:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzacc;->zzb()Lcom/google/android/gms/internal/ads/zzadq;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    goto :goto_8

    :cond_11
    move-wide v1, v8

    const/16 v21, 0x1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzanw;->f:Lcom/google/android/gms/internal/ads/zzacu;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzadp;

    invoke-direct {v4, v6, v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    goto :goto_8

    :cond_12
    move-wide v1, v8

    const/16 v21, 0x1

    :goto_8
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanw;->c:Z

    if-eqz v3, :cond_13

    const/4 v15, 0x0

    iput-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzanw;->c:Z

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzanw;->zzf(JJ)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_14

    :cond_13
    move-object/from16 v3, p2

    goto :goto_9

    :cond_14
    move-object/from16 v3, p2

    iput-wide v1, v3, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    return v21

    :goto_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanw;->b:Lg/dby;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzacc;->zze()Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    move-object/from16 v2, p1

    goto :goto_a

    :cond_16
    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzacc;->zza(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I

    move-result v1

    return v1

    :cond_17
    move-object v2, v1

    const/16 v21, 0x1

    :goto_a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanw;->o:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v4

    rsub-int v4, v4, 0x24b8

    const/16 v5, 0xbc

    if-lt v4, v5, :cond_18

    goto :goto_b

    :cond_18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v4

    if-lez v4, :cond_19

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v6

    const/4 v15, 0x0

    invoke-static {v3, v6, v3, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    :goto_b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v4

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzanw;->p:Landroid/util/SparseArray;

    const/4 v7, -0x1

    if-ge v4, v5, :cond_1d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v4

    rsub-int v8, v4, 0x24b8

    invoke-interface {v2, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzacs;->zza([BII)I

    move-result v8

    if-ne v8, v7, :cond_1c

    const/4 v5, 0x0

    :goto_c
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_1b

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaob;

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzang;

    if-eqz v2, :cond_1a

    check-cast v1, Lcom/google/android/gms/internal/ads/zzang;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzang;->zzd(Z)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    const/4 v14, 0x1

    invoke-virtual {v1, v2, v14}, Lcom/google/android/gms/internal/ads/zzang;->zza(Lcom/google/android/gms/internal/ads/zzed;I)V

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    const/16 v21, 0x1

    goto :goto_c

    :cond_1b
    return v7

    :cond_1c
    add-int/2addr v4, v8

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    const/16 v21, 0x1

    goto :goto_b

    :cond_1d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzaoc;->zza([BII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    add-int/2addr v2, v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    if-le v2, v3, :cond_1e

    const/16 v22, 0x0

    return v22

    :cond_1e
    const/16 v22, 0x0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v4

    const/high16 v5, 0x800000

    and-int/2addr v5, v4

    if-eqz v5, :cond_1f

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    return v22

    :cond_1f
    const/high16 v5, 0x400000

    and-int/2addr v5, v4

    if-eqz v5, :cond_20

    const/4 v5, 0x1

    goto :goto_d

    :cond_20
    const/4 v5, 0x0

    :goto_d
    shr-int/lit8 v8, v4, 0x8

    and-int/lit8 v9, v4, 0x20

    and-int/lit8 v10, v4, 0x10

    and-int/lit16 v8, v8, 0x1fff

    if-eqz v10, :cond_21

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzaob;

    goto :goto_e

    :cond_21
    const/4 v6, 0x0

    :goto_e
    if-nez v6, :cond_22

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    :goto_f
    const/16 v22, 0x0

    return v22

    :cond_22
    const/16 v22, 0x0

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v10, v4, -0x1

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzanw;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    invoke-virtual {v11, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v10, v4, :cond_23

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    return v22

    :cond_23
    const/16 v21, 0x1

    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v10, v10, 0xf

    if-eq v4, v10, :cond_24

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzaob;->zzc()V

    :cond_24
    if-eqz v9, :cond_26

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v9

    and-int/lit8 v9, v9, 0x40

    if-eqz v9, :cond_25

    const/4 v9, 0x2

    goto :goto_10

    :cond_25
    const/4 v9, 0x0

    :goto_10
    or-int/2addr v5, v9

    add-int/2addr v4, v7

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_26
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzanw;->k:Z

    if-nez v4, :cond_27

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzanw;->l:Landroid/util/SparseBooleanArray;

    const/4 v15, 0x0

    invoke-virtual {v7, v8, v15}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v7

    if-nez v7, :cond_28

    :cond_27
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    invoke-interface {v6, v1, v5}, Lcom/google/android/gms/internal/ads/zzaob;->zza(Lcom/google/android/gms/internal/ads/zzed;I)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    if-nez v4, :cond_29

    :cond_28
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzanw;->k:Z

    if-eqz v3, :cond_29

    cmp-long v3, v12, v17

    if-eqz v3, :cond_29

    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzanw;->c:Z

    :cond_29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    goto :goto_f
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

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->h:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanw;->i:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzakg;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->f:Lcom/google/android/gms/internal/ads/zzacu;

    return-void
.end method

.method public final zzf(JJ)V
    .locals 10

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    if-ge v1, p2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzf()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzd()J

    move-result-wide v5

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    cmp-long v7, v5, v2

    if-eqz v7, :cond_1

    cmp-long v2, v5, p3

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v4, p3, p4}, Lcom/google/android/gms/internal/ads/zzek;->zzi(J)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    cmp-long p1, p3, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->b:Lg/dby;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzacc;->zzd(J)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->o:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzanw;->p:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaob;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaob;->zzc()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanw;->o:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacg;

    const/16 v1, 0x3ac

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xbc

    if-ge v1, v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v1

    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzacg;->zzo(IZ)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

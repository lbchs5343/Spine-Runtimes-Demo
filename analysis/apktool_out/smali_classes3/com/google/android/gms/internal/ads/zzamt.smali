.class public final Lcom/google/android/gms/internal/ads/zzamt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamm;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzadx;

.field public b:J

.field public final c:Lcom/google/android/gms/internal/ads/zzane;

.field public d:Z

.field public e:J

.field public final f:Lcom/google/android/gms/internal/ads/zzanq;

.field public final g:[Z

.field public final h:Lcom/google/android/gms/internal/ads/zzed;

.field public i:Lg/eut;

.field public final j:Lcom/google/android/gms/internal/ads/zzane;

.field public k:Z

.field public final l:Lcom/google/android/gms/internal/ads/zzane;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanq;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->f:Lcom/google/android/gms/internal/ads/zzanq;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->g:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzane;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzane;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->j:Lcom/google/android/gms/internal/ads/zzane;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzane;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzane;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->l:Lcom/google/android/gms/internal/ads/zzane;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzane;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzane;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->c:Lcom/google/android/gms/internal/ads/zzane;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->b:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->h:Lcom/google/android/gms/internal/ads/zzed;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamt;->a:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamt;->e:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamt;->e:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamt;->a:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamt;->g:[Z

    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zza([BII[Z)I

    move-result v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamt;->c:Lcom/google/android/gms/internal/ads/zzane;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzamt;->l:Lcom/google/android/gms/internal/ads/zzane;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzamt;->j:Lcom/google/android/gms/internal/ads/zzane;

    if-eq v4, v2, :cond_10

    add-int/lit8 v8, v4, 0x3

    aget-byte v9, v3, v8

    and-int/lit8 v9, v9, 0x1f

    sub-int v10, v4, v1

    if-lez v10, :cond_1

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzamt;->k:Z

    if-nez v11, :cond_0

    invoke-virtual {v7, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    invoke-virtual {v6, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    :cond_0
    invoke-virtual {v5, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    :cond_1
    sub-int v1, v2, v4

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzamt;->e:J

    int-to-long v13, v1

    sub-long/2addr v11, v13

    if-gez v10, :cond_2

    neg-int v10, v10

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzamt;->b:J

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzamt;->k:Z

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamt;->f:Lcom/google/android/gms/internal/ads/zzanq;

    move/from16 v16, v1

    if-eqz v15, :cond_4

    :cond_3
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v17, v8

    move-wide/from16 v20, v11

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzane;->zzd(I)Z

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzane;->zzd(I)Z

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzamt;->k:Z

    if-nez v15, :cond_5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzane;->zze()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzane;->zze()Z

    move-result v15

    if-eqz v15, :cond_3

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    move/from16 v17, v8

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    move/from16 v18, v2

    const/4 v2, 0x4

    invoke-static {v1, v2, v8}, Lcom/google/android/gms/internal/ads/zzfp;->zzf([BII)Lcom/google/android/gms/internal/ads/zzfo;

    move-result-object v1

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    move-object/from16 v19, v3

    iget v3, v6, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    invoke-static {v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzfp;->zze([BII)Lcom/google/android/gms/internal/ads/zzfn;

    move-result-object v3

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzfo;->zza:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzb:I

    move-wide/from16 v20, v11

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzc:I

    invoke-static {v2, v8, v11}, Lcom/google/android/gms/internal/ads/zzdd;->zzc(III)Ljava/lang/String;

    move-result-object v2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzamt;->a:Lcom/google/android/gms/internal/ads/zzadx;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzamt;->m:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    const-string v12, "video/avc"

    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzfo;->zze:I

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzae(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzf:I

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzJ(I)Lcom/google/android/gms/internal/ads/zzab;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzk;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzk;-><init>()V

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzj:I

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzk;->zzc(I)Lcom/google/android/gms/internal/ads/zzk;

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzk:I

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)Lcom/google/android/gms/internal/ads/zzk;

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzl:I

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzk;->zzd(I)Lcom/google/android/gms/internal/ads/zzk;

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzh:I

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzk;->zzf(I)Lcom/google/android/gms/internal/ads/zzk;

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzi:I

    add-int/lit8 v12, v12, 0x8

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzk;->zzg()Lcom/google/android/gms/internal/ads/zzm;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzB(Lcom/google/android/gms/internal/ads/zzm;)Lcom/google/android/gms/internal/ads/zzab;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzg:F

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzV(F)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzm:I

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzR(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzamt;->k:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamt;->i:Lg/eut;

    iget-object v2, v2, Lg/eut;->h:Landroid/util/SparseArray;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzd:I

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamt;->i:Lg/eut;

    iget-object v1, v1, Lg/eut;->j:Landroid/util/SparseArray;

    iget v2, v3, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    goto :goto_2

    :cond_5
    move/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v17, v8

    move-wide/from16 v20, v11

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzane;->zze()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    const/4 v3, 0x4

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzf([BII)Lcom/google/android/gms/internal/ads/zzfo;

    move-result-object v1

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzm:I

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzanq;->zze(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamt;->i:Lg/eut;

    iget-object v2, v2, Lg/eut;->h:Landroid/util/SparseArray;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzfo;->zzd:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzane;->zze()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget v2, v6, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    const/4 v3, 0x4

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zze([BII)Lcom/google/android/gms/internal/ads/zzfn;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamt;->i:Lg/eut;

    iget-object v2, v2, Lg/eut;->j:Landroid/util/SparseArray;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    :cond_7
    :goto_2
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzane;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget v2, v5, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzb([BI)I

    move-result v1

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamt;->h:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v4, v13, v14, v3}, Lcom/google/android/gms/internal/ads/zzanq;->zza(JLcom/google/android/gms/internal/ads/zzed;)V

    :cond_8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamt;->i:Lg/eut;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzamt;->k:Z

    iget v3, v1, Lg/eut;->c:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    if-eqz v2, :cond_b

    iget-boolean v2, v1, Lg/eut;->k:Z

    if-eqz v2, :cond_b

    iget-wide v2, v1, Lg/eut;->d:J

    sub-long v11, v20, v2

    long-to-int v4, v11

    add-int v27, v16, v4

    iget-wide v10, v1, Lg/eut;->g:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v10, v12

    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    iget-boolean v4, v1, Lg/eut;->i:Z

    iget-wide v12, v1, Lg/eut;->a:J

    sub-long/2addr v2, v12

    iget-object v8, v1, Lg/eut;->e:Lcom/google/android/gms/internal/ads/zzadx;

    long-to-int v3, v2

    const/16 v28, 0x0

    move/from16 v26, v3

    move/from16 v25, v4

    move-object/from16 v22, v8

    move-wide/from16 v23, v10

    invoke-interface/range {v22 .. v28}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    :cond_b
    :goto_3
    iget-wide v2, v1, Lg/eut;->d:J

    iput-wide v2, v1, Lg/eut;->a:J

    iget-wide v2, v1, Lg/eut;->f:J

    iput-wide v2, v1, Lg/eut;->g:J

    const/4 v2, 0x0

    iput-boolean v2, v1, Lg/eut;->i:Z

    const/4 v2, 0x1

    iput-boolean v2, v1, Lg/eut;->k:Z

    :goto_4
    iget-boolean v3, v1, Lg/eut;->b:Z

    iget-boolean v4, v1, Lg/eut;->i:Z

    iget v8, v1, Lg/eut;->c:I

    const/4 v10, 0x5

    if-eq v8, v10, :cond_d

    if-eqz v3, :cond_c

    if-ne v8, v2, :cond_c

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    :cond_d
    :goto_5
    or-int/2addr v2, v4

    iput-boolean v2, v1, Lg/eut;->i:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzamt;->d:Z

    :cond_e
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzamt;->b:J

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzamt;->k:Z

    if-nez v3, :cond_f

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzane;->zzc(I)V

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzane;->zzc(I)V

    :cond_f
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzane;->zzc(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamt;->i:Lg/eut;

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzamt;->d:Z

    iput v9, v3, Lg/eut;->c:I

    iput-wide v1, v3, Lg/eut;->f:J

    move-wide/from16 v11, v20

    iput-wide v11, v3, Lg/eut;->d:J

    iput-boolean v4, v3, Lg/eut;->b:Z

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    goto/16 :goto_0

    :cond_10
    move/from16 v18, v2

    move-object/from16 v19, v3

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzamt;->k:Z

    if-nez v2, :cond_11

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v7, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    invoke-virtual {v6, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    goto :goto_6

    :cond_11
    move/from16 v2, v18

    move-object/from16 v3, v19

    :goto_6
    invoke-virtual {v5, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->m:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->a:Lcom/google/android/gms/internal/ads/zzadx;

    new-instance v1, Lg/eut;

    invoke-direct {v1, v0}, Lg/eut;-><init>(Lcom/google/android/gms/internal/ads/zzadx;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->i:Lg/eut;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->f:Lcom/google/android/gms/internal/ads/zzanq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzanq;->zzb(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V

    return-void
.end method

.method public final zzc(Z)V
    .locals 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->a:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->f:Lcom/google/android/gms/internal/ads/zzanq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzanq;->zzc()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->i:Lg/eut;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->e:J

    iget-boolean v2, p1, Lg/eut;->b:Z

    iget-boolean v3, p1, Lg/eut;->i:Z

    iget v4, p1, Lg/eut;->c:I

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :cond_1
    :goto_0
    or-int v10, v3, v6

    iput-boolean v10, p1, Lg/eut;->i:Z

    iput-wide v0, p1, Lg/eut;->d:J

    iget-wide v8, p1, Lg/eut;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    cmp-long v4, v8, v2

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v2, p1, Lg/eut;->a:J

    sub-long/2addr v0, v2

    iget-object v7, p1, Lg/eut;->e:Lcom/google/android/gms/internal/ads/zzadx;

    long-to-int v11, v0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    :goto_1
    iput-boolean v12, p1, Lg/eut;->k:Z

    :cond_3
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->b:J

    and-int/lit8 p1, p3, 0x2

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzamt;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamt;->d:Z

    return-void
.end method

.method public final zze()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamt;->d:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->b:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->g:[Z

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzh([Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->j:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->l:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->c:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->f:Lcom/google/android/gms/internal/ads/zzanq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzanq;->zzc()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamt;->i:Lg/eut;

    if-eqz v1, :cond_0

    iput-boolean v0, v1, Lg/eut;->k:Z

    :cond_0
    return-void
.end method

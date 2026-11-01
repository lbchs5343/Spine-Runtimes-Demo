.class public final Lcom/google/android/gms/internal/ads/zzamv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamm;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzane;

.field public final b:Lcom/google/android/gms/internal/ads/zzane;

.field public final c:Lcom/google/android/gms/internal/ads/zzed;

.field public d:Lg/cqm;

.field public e:J

.field public f:Z

.field public final g:Lcom/google/android/gms/internal/ads/zzanq;

.field public final h:[Z

.field public i:J

.field public final j:Lcom/google/android/gms/internal/ads/zzane;

.field public k:Ljava/lang/String;

.field public final l:Lcom/google/android/gms/internal/ads/zzane;

.field public m:Lcom/google/android/gms/internal/ads/zzadx;

.field public final n:Lcom/google/android/gms/internal/ads/zzane;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->g:Lcom/google/android/gms/internal/ads/zzanq;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->h:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzane;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzane;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->n:Lcom/google/android/gms/internal/ads/zzane;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzane;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzane;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->a:Lcom/google/android/gms/internal/ads/zzane;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzane;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzane;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->j:Lcom/google/android/gms/internal/ads/zzane;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzane;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzane;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->l:Lcom/google/android/gms/internal/ads/zzane;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzane;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzane;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->b:Lcom/google/android/gms/internal/ads/zzane;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->i:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->c:Lcom/google/android/gms/internal/ads/zzed;

    return-void
.end method


# virtual methods
.method public final o(I[BI)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->d:Lg/cqm;

    iget-boolean v1, v0, Lg/cqm;->g:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lg/cqm;->c:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lg/cqm;->m:Z

    iput-boolean v2, v0, Lg/cqm;->g:Z

    goto :goto_1

    :cond_1
    sub-int v1, p3, p1

    add-int/2addr v1, v2

    iput v1, v0, Lg/cqm;->c:I

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->n:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->a:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->j:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->l:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->b:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamv;->m:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v1

    if-lez v1, :cond_18

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamv;->e:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamv;->e:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamv;->m:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamv;->h:[Z

    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zza([BII[Z)I

    move-result v4

    if-eq v4, v2, :cond_17

    add-int/lit8 v5, v4, 0x3

    aget-byte v7, v3, v5

    and-int/lit8 v7, v7, 0x7e

    sub-int v8, v4, v1

    if-lez v8, :cond_1

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzamv;->o(I[BI)V

    :cond_1
    sub-int v1, v2, v4

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzamv;->e:J

    int-to-long v11, v1

    sub-long/2addr v9, v11

    if-gez v8, :cond_2

    neg-int v8, v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzamv;->i:J

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzamv;->d:Lg/cqm;

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzamv;->f:Z

    iget-boolean v15, v13, Lg/cqm;->k:Z

    const/4 v4, 0x1

    if-eqz v15, :cond_4

    iget-boolean v15, v13, Lg/cqm;->m:Z

    if-nez v15, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v14, v13, Lg/cqm;->l:Z

    iput-boolean v14, v13, Lg/cqm;->h:Z

    const/4 v14, 0x0

    iput-boolean v14, v13, Lg/cqm;->k:Z

    goto :goto_3

    :cond_4
    :goto_2
    iget-boolean v15, v13, Lg/cqm;->a:Z

    if-nez v15, :cond_5

    iget-boolean v15, v13, Lg/cqm;->m:Z

    if-eqz v15, :cond_7

    :cond_5
    if-eqz v14, :cond_6

    iget-boolean v14, v13, Lg/cqm;->i:Z

    if-eqz v14, :cond_6

    iget-wide v14, v13, Lg/cqm;->j:J

    sub-long v14, v9, v14

    long-to-int v15, v14

    add-int/2addr v15, v1

    invoke-virtual {v13, v15}, Lg/cqm;->n(I)V

    :cond_6
    iget-wide v14, v13, Lg/cqm;->j:J

    iput-wide v14, v13, Lg/cqm;->b:J

    iget-wide v14, v13, Lg/cqm;->e:J

    iput-wide v14, v13, Lg/cqm;->d:J

    iget-boolean v14, v13, Lg/cqm;->l:Z

    iput-boolean v14, v13, Lg/cqm;->h:Z

    iput-boolean v4, v13, Lg/cqm;->i:Z

    :cond_7
    :goto_3
    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzamv;->f:Z

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzamv;->g:Lcom/google/android/gms/internal/ads/zzanq;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzamv;->j:Lcom/google/android/gms/internal/ads/zzane;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamv;->a:Lcom/google/android/gms/internal/ads/zzane;

    move/from16 v17, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamv;->n:Lcom/google/android/gms/internal/ads/zzane;

    if-nez v13, :cond_a

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzane;->zzd(I)Z

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzane;->zzd(I)Z

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzane;->zzd(I)Z

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzane;->zze()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzane;->zze()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzane;->zze()Z

    move-result v13

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzamv;->k:Ljava/lang/String;

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    move/from16 v18, v7

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    add-int/2addr v7, v6

    move/from16 v19, v7

    iget v7, v15, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    add-int v7, v19, v7

    new-array v7, v7, [B

    move/from16 v19, v2

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-static {v2, v3, v7, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    move/from16 v21, v1

    iget v1, v4, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    invoke-static {v2, v3, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget v2, v5, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    add-int/2addr v2, v6

    iget v6, v15, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    invoke-static {v1, v3, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    const/4 v3, 0x3

    const/4 v6, 0x0

    invoke-static {v1, v3, v2, v6}, Lcom/google/android/gms/internal/ads/zzfp;->zzc([BIILcom/google/android/gms/internal/ads/zzfm;)Lcom/google/android/gms/internal/ads/zzfj;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfj;->zza:Lcom/google/android/gms/internal/ads/zzfe;

    if-eqz v2, :cond_8

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzf:I

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzfe;->zze:[I

    move/from16 v27, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzd:I

    move/from16 v25, v3

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzc:I

    move/from16 v24, v3

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzfe;->zzb:Z

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfe;->zza:I

    move/from16 v22, v2

    move/from16 v23, v3

    move-object/from16 v26, v6

    invoke-static/range {v22 .. v27}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(IZII[II)Ljava/lang/String;

    move-result-object v6

    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    const-string v3, "video/hevc"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzfj;->zzd:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzae(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzfj;->zze:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzJ(I)Lcom/google/android/gms/internal/ads/zzab;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzk;-><init>()V

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzfj;->zzh:I

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzk;->zzc(I)Lcom/google/android/gms/internal/ads/zzk;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzfj;->zzi:I

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)Lcom/google/android/gms/internal/ads/zzk;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzfj;->zzj:I

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzk;->zzd(I)Lcom/google/android/gms/internal/ads/zzk;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzfj;->zzb:I

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzk;->zzf(I)Lcom/google/android/gms/internal/ads/zzk;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzfj;->zzc:I

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzk;->zzg()Lcom/google/android/gms/internal/ads/zzm;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzB(Lcom/google/android/gms/internal/ads/zzm;)Lcom/google/android/gms/internal/ads/zzab;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzfj;->zzf:F

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzV(F)Lcom/google/android/gms/internal/ads/zzab;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfj;->zzg:I

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzR(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamv;->m:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzad;->zzq:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfwq;->zzk(Z)V

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzad;->zzq:I

    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzanq;->zze(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamv;->f:Z

    goto :goto_5

    :cond_a
    move/from16 v21, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v18, v7

    :goto_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamv;->l:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzane;->zzd(I)Z

    move-result v2

    const/4 v3, 0x5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzamv;->c:Lcom/google/android/gms/internal/ads/zzed;

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/ads/zzfp;->zzb([BI)I

    move-result v2

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    invoke-virtual {v6, v7, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v14, v11, v12, v6}, Lcom/google/android/gms/internal/ads/zzanq;->zza(JLcom/google/android/gms/internal/ads/zzed;)V

    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzamv;->b:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzane;->zzd(I)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzfp;->zzb([BI)I

    move-result v7

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    invoke-virtual {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v14, v11, v12, v6}, Lcom/google/android/gms/internal/ads/zzanq;->zza(JLcom/google/android/gms/internal/ads/zzed;)V

    :cond_c
    const/16 v16, 0x1

    shr-int/lit8 v3, v18, 0x1

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzamv;->i:J

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzamv;->d:Lg/cqm;

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzamv;->f:Z

    const/4 v14, 0x0

    iput-boolean v14, v8, Lg/cqm;->m:Z

    iput-boolean v14, v8, Lg/cqm;->a:Z

    iput-wide v6, v8, Lg/cqm;->e:J

    iput v14, v8, Lg/cqm;->c:I

    iput-wide v9, v8, Lg/cqm;->j:J

    const/16 v6, 0x20

    if-lt v3, v6, :cond_d

    const/16 v6, 0x28

    if-ne v3, v6, :cond_e

    :cond_d
    const/4 v7, 0x1

    const/4 v14, 0x0

    goto :goto_8

    :cond_e
    iget-boolean v6, v8, Lg/cqm;->i:Z

    if-eqz v6, :cond_10

    iget-boolean v6, v8, Lg/cqm;->k:Z

    if-nez v6, :cond_10

    if-eqz v11, :cond_f

    move/from16 v6, v21

    invoke-virtual {v8, v6}, Lg/cqm;->n(I)V

    :cond_f
    const/4 v14, 0x0

    iput-boolean v14, v8, Lg/cqm;->i:Z

    goto :goto_6

    :cond_10
    const/4 v14, 0x0

    :goto_6
    const/16 v6, 0x23

    if-le v3, v6, :cond_12

    const/16 v6, 0x27

    if-ne v3, v6, :cond_11

    goto :goto_7

    :cond_11
    const/4 v7, 0x1

    goto :goto_8

    :cond_12
    :goto_7
    iget-boolean v6, v8, Lg/cqm;->k:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iput-boolean v6, v8, Lg/cqm;->a:Z

    iput-boolean v7, v8, Lg/cqm;->k:Z

    :goto_8
    const/16 v6, 0x10

    if-lt v3, v6, :cond_13

    const/16 v6, 0x15

    if-gt v3, v6, :cond_13

    const/4 v6, 0x1

    goto :goto_9

    :cond_13
    const/4 v6, 0x0

    :goto_9
    iput-boolean v6, v8, Lg/cqm;->l:Z

    if-nez v6, :cond_15

    const/16 v6, 0x9

    if-gt v3, v6, :cond_14

    goto :goto_a

    :cond_14
    const/4 v7, 0x0

    :cond_15
    :goto_a
    iput-boolean v7, v8, Lg/cqm;->g:Z

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzamv;->f:Z

    if-nez v6, :cond_16

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzane;->zzc(I)V

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzane;->zzc(I)V

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzane;->zzc(I)V

    :cond_16
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzane;->zzc(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzane;->zzc(I)V

    move-object/from16 v6, p1

    move/from16 v1, v17

    move/from16 v2, v19

    move-object/from16 v3, v20

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzamv;->o(I[BI)V

    :cond_18
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->k:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->m:Lcom/google/android/gms/internal/ads/zzadx;

    new-instance v1, Lg/cqm;

    invoke-direct {v1, v0}, Lg/cqm;-><init>(Lcom/google/android/gms/internal/ads/zzadx;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzamv;->d:Lg/cqm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->g:Lcom/google/android/gms/internal/ads/zzanq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzanq;->zzb(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V

    return-void
.end method

.method public final zzc(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->m:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->g:Lcom/google/android/gms/internal/ads/zzanq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzanq;->zzc()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->d:Lg/cqm;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->e:J

    iget-boolean v2, p1, Lg/cqm;->l:Z

    iput-boolean v2, p1, Lg/cqm;->h:Z

    iget-wide v2, p1, Lg/cqm;->j:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    invoke-virtual {p1, v3}, Lg/cqm;->n(I)V

    iget-wide v2, p1, Lg/cqm;->j:J

    iput-wide v2, p1, Lg/cqm;->b:J

    iput-wide v0, p1, Lg/cqm;->j:J

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/cqm;->n(I)V

    iput-boolean v0, p1, Lg/cqm;->i:Z

    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->i:J

    return-void
.end method

.method public final zze()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->e:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->i:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->h:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzh([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->n:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->a:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->j:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->l:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->b:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->g:Lcom/google/android/gms/internal/ads/zzanq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzanq;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->d:Lg/cqm;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/cqm;->g:Z

    iput-boolean v1, v0, Lg/cqm;->m:Z

    iput-boolean v1, v0, Lg/cqm;->a:Z

    iput-boolean v1, v0, Lg/cqm;->i:Z

    iput-boolean v1, v0, Lg/cqm;->k:Z

    :cond_0
    return-void
.end method

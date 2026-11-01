.class public final Lcom/google/android/gms/internal/ads/zzamo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamm;


# static fields
.field public static final a:[D


# instance fields
.field public b:J

.field public c:J

.field public d:Z

.field public e:J

.field public final f:Lcom/google/android/gms/internal/ads/zzed;

.field public g:J

.field public final h:Lcom/google/android/gms/internal/ads/zzane;

.field public i:Ljava/lang/String;

.field public final j:[Z

.field public k:Z

.field public l:J

.field public m:Z

.field public n:Lcom/google/android/gms/internal/ads/zzadx;

.field public o:Z

.field public final p:Lg/akj;

.field public final q:Lg/avi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamo;->a:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lg/akj;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->p:Lg/akj;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->j:[Z

    new-instance v0, Lg/avi;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x80

    new-array v2, v1, [B

    iput-object v2, v0, Lg/avi;->b:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->q:Lg/avi;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzane;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzane;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->h:Lcom/google/android/gms/internal/ads/zzane;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->f:Lcom/google/android/gms/internal/ads/zzed;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->h:Lcom/google/android/gms/internal/ads/zzane;

    goto :goto_0

    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->e:J

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->n:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->b:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->b:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->n:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->j:[Z

    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzfp;->zza([BII[Z)I

    move-result v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamo;->q:Lg/avi;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzamo;->h:Lcom/google/android/gms/internal/ads/zzane;

    if-ne v4, v2, :cond_2

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->o:Z

    if-nez v4, :cond_0

    invoke-virtual {v5, v3, v1, v2}, Lg/avi;->f([BII)V

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v8

    add-int/lit8 v9, v4, 0x3

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    sub-int v10, v4, v1

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzamo;->o:Z

    const/4 v13, 0x0

    if-nez v11, :cond_d

    if-lez v10, :cond_3

    invoke-virtual {v5, v3, v1, v4}, Lg/avi;->f([BII)V

    :cond_3
    if-gez v10, :cond_4

    neg-int v11, v10

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    iget-boolean v15, v5, Lg/avi;->c:Z

    if-eqz v15, :cond_b

    iget v15, v5, Lg/avi;->d:I

    sub-int/2addr v15, v11

    iput v15, v5, Lg/avi;->d:I

    iget v11, v5, Lg/avi;->e:I

    if-nez v11, :cond_5

    const/16 v11, 0xb5

    if-ne v8, v11, :cond_5

    iput v15, v5, Lg/avi;->e:I

    move/from16 v20, v2

    goto/16 :goto_4

    :cond_5
    iput-boolean v13, v5, Lg/avi;->c:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzamo;->i:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v5, Lg/avi;->b:[B

    iget v13, v5, Lg/avi;->d:I

    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v13

    const/4 v15, 0x4

    aget-byte v14, v13, v15

    and-int/lit16 v14, v14, 0xff

    const/16 v17, 0x5

    const/16 v18, 0x4

    aget-byte v15, v13, v17

    and-int/lit16 v12, v15, 0xff

    const/16 v19, 0x6

    move/from16 v20, v2

    aget-byte v2, v13, v19

    and-int/lit16 v2, v2, 0xff

    const/16 v19, 0x7

    move/from16 v21, v2

    aget-byte v2, v13, v19

    and-int/lit16 v2, v2, 0xf0

    and-int/lit8 v15, v15, 0xf

    shl-int/lit8 v14, v14, 0x4

    shr-int/lit8 v12, v12, 0x4

    or-int/2addr v12, v14

    shr-int/lit8 v2, v2, 0x4

    const/16 v14, 0x8

    shl-int/2addr v15, v14

    or-int v15, v15, v21

    const/4 v14, 0x2

    if-eq v2, v14, :cond_8

    const/4 v14, 0x3

    if-eq v2, v14, :cond_7

    const/4 v14, 0x4

    if-eq v2, v14, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_6
    mul-int/lit8 v2, v15, 0x79

    mul-int/lit8 v14, v12, 0x64

    :goto_2
    int-to-float v2, v2

    int-to-float v14, v14

    div-float/2addr v2, v14

    goto :goto_3

    :cond_7
    mul-int/lit8 v2, v15, 0x10

    mul-int/lit8 v14, v12, 0x9

    goto :goto_2

    :cond_8
    mul-int/lit8 v2, v15, 0x4

    mul-int/lit8 v14, v12, 0x3

    goto :goto_2

    :goto_3
    new-instance v14, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v14}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    const-string v11, "video/mpeg2"

    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzab;->zzae(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzab;->zzJ(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzV(F)Lcom/google/android/gms/internal/ads/zzab;

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    aget-byte v11, v13, v19

    and-int/lit8 v11, v11, 0xf

    add-int/lit8 v11, v11, -0x1

    const-wide/16 v14, 0x0

    if-ltz v11, :cond_a

    const/16 v12, 0x8

    if-ge v11, v12, :cond_a

    sget-object v12, Lcom/google/android/gms/internal/ads/zzamo;->a:[D

    aget-wide v11, v12, v11

    iget v5, v5, Lg/avi;->e:I

    add-int/lit8 v5, v5, 0x9

    aget-byte v5, v13, v5

    and-int/lit8 v13, v5, 0x60

    shr-int/lit8 v13, v13, 0x5

    and-int/lit8 v5, v5, 0x1f

    if-eq v13, v5, :cond_9

    int-to-double v13, v13

    add-int/lit8 v5, v5, 0x1

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v13, v13, v17

    int-to-double v5, v5

    div-double/2addr v13, v5

    mul-double v11, v11, v13

    :cond_9
    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v11

    double-to-long v14, v5

    :cond_a
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamo;->n:Lcom/google/android/gms/internal/ads/zzadx;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzad;

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzamo;->c:J

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->o:Z

    goto :goto_5

    :cond_b
    move/from16 v20, v2

    const/4 v2, 0x1

    const/16 v6, 0xb3

    if-ne v8, v6, :cond_c

    iput-boolean v2, v5, Lg/avi;->c:Z

    :cond_c
    :goto_4
    sget-object v2, Lg/avi;->a:[B

    const/4 v6, 0x0

    const/4 v14, 0x3

    invoke-virtual {v5, v2, v6, v14}, Lg/avi;->f([BII)V

    goto :goto_5

    :cond_d
    move/from16 v20, v2

    :goto_5
    if-eqz v7, :cond_11

    if-lez v10, :cond_e

    invoke-virtual {v7, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzane;->zza([BII)V

    const/4 v6, 0x0

    goto :goto_6

    :cond_e
    neg-int v6, v10

    :goto_6
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzane;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzane;->zzb:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzb([BI)I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzane;->zza:[B

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamo;->f:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v5, v2, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->p:Lg/akj;

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzamo;->e:J

    invoke-virtual {v1, v10, v11, v5}, Lg/akj;->q(JLcom/google/android/gms/internal/ads/zzed;)V

    :cond_f
    const/16 v1, 0xb2

    if-ne v8, v1, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    add-int/lit8 v5, v4, 0x2

    aget-byte v2, v2, v5

    const/4 v5, 0x1

    if-ne v2, v5, :cond_10

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzc(I)V

    :cond_10
    const/16 v8, 0xb2

    :cond_11
    if-eqz v8, :cond_13

    const/16 v6, 0xb3

    if-ne v8, v6, :cond_12

    goto :goto_7

    :cond_12
    const/16 v1, 0xb8

    if-ne v8, v1, :cond_1a

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->d:Z

    goto :goto_c

    :cond_13
    :goto_7
    sub-int v15, v20, v4

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->k:Z

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_14

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->o:Z

    if-eqz v1, :cond_14

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzamo;->e:J

    cmp-long v1, v11, v4

    if-eqz v1, :cond_14

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzamo;->d:Z

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->b:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzamo;->l:J

    sub-long/2addr v1, v6

    long-to-int v2, v1

    sub-int v14, v2, v15

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzamo;->n:Lcom/google/android/gms/internal/ads/zzadx;

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    :cond_14
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->m:Z

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->k:Z

    if-eqz v1, :cond_15

    goto :goto_8

    :cond_15
    const/4 v2, 0x1

    const/4 v6, 0x0

    goto :goto_a

    :cond_16
    :goto_8
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->b:J

    int-to-long v6, v15

    sub-long/2addr v1, v6

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->l:J

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->g:J

    cmp-long v6, v1, v4

    if-eqz v6, :cond_17

    goto :goto_9

    :cond_17
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->e:J

    cmp-long v6, v1, v4

    if-eqz v6, :cond_18

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzamo;->c:J

    add-long/2addr v1, v6

    goto :goto_9

    :cond_18
    move-wide v1, v4

    :goto_9
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzamo;->e:J

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzamo;->d:Z

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzamo;->g:J

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzamo;->m:Z

    :goto_a
    if-nez v8, :cond_19

    const/4 v13, 0x1

    goto :goto_b

    :cond_19
    const/4 v13, 0x0

    :goto_b
    iput-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzamo;->k:Z

    :cond_1a
    :goto_c
    move-object/from16 v6, p1

    move v1, v9

    move/from16 v2, v20

    goto/16 :goto_0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzc()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->n:Lcom/google/android/gms/internal/ads/zzadx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->p:Lg/akj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lg/akj;->aj(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V

    :cond_0
    return-void
.end method

.method public final zzc(Z)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->n:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzamo;->d:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->b:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzamo;->l:J

    sub-long/2addr v0, v2

    move-wide v2, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamo;->n:Lcom/google/android/gms/internal/ads/zzadx;

    move-wide v5, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzamo;->e:J

    long-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->g:J

    return-void
.end method

.method public final zze()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->j:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzh([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->q:Lg/avi;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/avi;->c:Z

    iput v1, v0, Lg/avi;->d:I

    iput v1, v0, Lg/avi;->e:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->h:Lcom/google/android/gms/internal/ads/zzane;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb()V

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzamo;->b:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzamo;->m:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->g:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->e:J

    return-void
.end method

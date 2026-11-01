.class public final Lcom/google/android/gms/internal/ads/zzaiy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacr;
.implements Lcom/google/android/gms/internal/ads/zzadq;


# instance fields
.field public a:J

.field public final aa:Ljava/util/ArrayDeque;

.field public ab:I

.field public final b:Lg/aei;

.field public c:I

.field public d:Lcom/google/android/gms/internal/ads/zzed;

.field public e:I

.field public f:I

.field public final g:Lcom/google/android/gms/internal/ads/zzed;

.field public h:Lcom/google/android/gms/internal/ads/zzagz;

.field public i:I

.field public final j:Lcom/google/android/gms/internal/ads/zzed;

.field public final k:Lcom/google/android/gms/internal/ads/zzakg;

.field public l:Z

.field public m:Lcom/google/android/gms/internal/ads/zzacu;

.field public n:[Lg/foy;

.field public final o:Lcom/google/android/gms/internal/ads/zzed;

.field public p:I

.field public q:I

.field public r:J

.field public final s:Ljava/util/ArrayList;

.field public final t:I

.field public u:Lcom/google/android/gms/internal/ads/zzfzo;

.field public v:I

.field public w:I

.field public x:Z

.field public final y:Lcom/google/android/gms/internal/ads/zzed;

.field public z:[[J


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzakg;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaiy;-><init>(Lcom/google/android/gms/internal/ads/zzakg;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakg;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->k:Lcom/google/android/gms/internal/ads/zzakg;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaiy;->t:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->u:Lcom/google/android/gms/internal/ads/zzfzo;

    and-int/lit8 p1, p2, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->c:I

    new-instance p1, Lg/aei;

    invoke-direct {p1}, Lg/aei;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->b:Lg/aei;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->s:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->o:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->aa:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->y:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->g:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->j:Lcom/google/android/gms/internal/ads/zzed;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->q:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zza:Lcom/google/android/gms/internal/ads/zzacu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->m:Lcom/google/android/gms/internal/ads/zzacu;

    new-array p1, p2, [Lg/foy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->n:[Lg/foy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->x:Z

    return-void
.end method


# virtual methods
.method public final ac()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->c:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->f:I

    return-void
.end method

.method public final ad(J)V
    .locals 32

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiy;->aa:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzes;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzes;->zza:J

    cmp-long v2, v4, p1

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzes;

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzev;->zzd:I

    const v5, 0x6d6f6f76

    if-ne v2, v5, :cond_1b

    const v2, 0x6d657461

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzain;->zzb(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaiy;->w:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v5, v15, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    new-instance v5, Lcom/google/android/gms/internal/ads/zzadf;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzadf;-><init>()V

    const v6, 0x75647461

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzain;->zzc(Lcom/google/android/gms/internal/ads/zzet;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzadf;->zzb(Lcom/google/android/gms/internal/ads/zzbd;)Z

    move-object/from16 v16, v6

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbd;

    const v7, 0x6d766864

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzain;->zzd(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzfb;

    move-result-object v7

    new-array v8, v15, [Lcom/google/android/gms/internal/ads/zzbc;

    aput-object v7, v8, v14

    move-object/from16 v17, v13

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v6, v12, v13, v8}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(J[Lcom/google/android/gms/internal/ads/zzbc;)V

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaiy;->t:I

    and-int/lit8 v8, v7, 0x1

    if-eq v15, v8, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    const/4 v9, 0x1

    :goto_4
    new-instance v11, Lcom/google/android/gms/internal/ads/zzaiw;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzaiw;-><init>()V

    move-object v8, v6

    move/from16 v18, v7

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v19, v8

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/zzain;->zzf(Lcom/google/android/gms/internal/ads/zzes;Lcom/google/android/gms/internal/ads/zzadf;JLcom/google/android/gms/internal/ads/zzw;ZZLcom/google/android/gms/internal/ads/zzfwh;)Ljava/util/List;

    move-result-object v4

    move-wide v9, v12

    move-wide/from16 v20, v9

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v11, 0x0

    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    const-wide/16 v22, 0x0

    if-ge v7, v12, :cond_15

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/ads/zzajh;

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    if-nez v13, :cond_5

    move-object/from16 v29, v1

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move/from16 v28, v11

    move-object/from16 v1, v17

    const/4 v11, -0x1

    goto/16 :goto_d

    :cond_5
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    const/16 v24, 0x0

    iget-wide v14, v13, Lcom/google/android/gms/internal/ads/zzaje;->zze:J

    cmp-long v26, v14, v20

    if-eqz v26, :cond_6

    goto :goto_6

    :cond_6
    iget-wide v14, v12, Lcom/google/android/gms/internal/ads/zzajh;->zzh:J

    :goto_6
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    new-instance v6, Lg/foy;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiy;->m:Lcom/google/android/gms/internal/ads/zzacu;

    add-int/lit8 v28, v11, 0x1

    move-object/from16 v29, v1

    iget v1, v13, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    invoke-interface {v3, v11, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v1

    invoke-direct {v6, v13, v12, v1}, Lg/foy;-><init>(Lcom/google/android/gms/internal/ads/zzaje;Lcom/google/android/gms/internal/ads/zzajh;Lcom/google/android/gms/internal/ads/zzadx;)V

    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    const-string v3, "audio/true-hd"

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzajh;->zze:I

    mul-int/lit8 v1, v1, 0x10

    goto :goto_7

    :cond_7
    iget v1, v12, Lcom/google/android/gms/internal/ads/zzajh;->zze:I

    add-int/lit8 v1, v1, 0x1e

    :goto_7
    iget-object v3, v13, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzad;->zzb()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzQ(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v1, v13, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    const/4 v11, 0x2

    if-ne v1, v11, :cond_b

    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzad;->zzf:I

    and-int/lit8 v11, v18, 0x8

    if-eqz v11, :cond_9

    const/4 v11, -0x1

    if-ne v8, v11, :cond_8

    const/4 v11, 0x1

    goto :goto_8

    :cond_8
    const/4 v11, 0x2

    :goto_8
    or-int/2addr v1, v11

    :cond_9
    cmp-long v11, v14, v22

    if-lez v11, :cond_a

    iget v11, v12, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    if-lez v11, :cond_a

    long-to-float v12, v14

    int-to-float v11, v11

    const v14, 0x49742400    # 1000000.0f

    div-float/2addr v12, v14

    div-float/2addr v11, v12

    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzab;->zzI(F)Lcom/google/android/gms/internal/ads/zzab;

    :cond_a
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzX(I)Lcom/google/android/gms/internal/ads/zzab;

    :cond_b
    iget v1, v13, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    const/4 v11, 0x1

    if-ne v1, v11, :cond_c

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzadf;->zza()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, v5, Lcom/google/android/gms/internal/ads/zzadf;->zza:I

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzG(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v1, v5, Lcom/google/android/gms/internal/ads/zzadf;->zzb:I

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzH(I)Lcom/google/android/gms/internal/ads/zzab;

    :cond_c
    iget v1, v13, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaiy;->s:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x0

    goto :goto_9

    :cond_d
    new-instance v12, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {v12, v11}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(Ljava/util/List;)V

    :goto_9
    const/4 v11, 0x3

    new-array v14, v11, [Lcom/google/android/gms/internal/ads/zzbd;

    aput-object v12, v14, v24

    const/16 v25, 0x1

    aput-object v16, v14, v25

    const/16 v27, 0x2

    aput-object v19, v14, v27

    new-instance v12, Lcom/google/android/gms/internal/ads/zzbd;

    const/4 v15, 0x0

    new-array v11, v15, [Lcom/google/android/gms/internal/ads/zzbc;

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move-wide/from16 v4, v20

    invoke-direct {v12, v4, v5, v11}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(J[Lcom/google/android/gms/internal/ads/zzbc;)V

    if-eqz v2, :cond_11

    const/4 v11, 0x0

    :goto_a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbd;->zza()I

    move-result v15

    if-ge v11, v15, :cond_11

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzbd;->zzb(I)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v15

    instance-of v4, v15, Lcom/google/android/gms/internal/ads/zzer;

    if-eqz v4, :cond_10

    check-cast v15, Lcom/google/android/gms/internal/ads/zzer;

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzer;->zza:Ljava/lang/String;

    const-string v5, "com.android.capture.fps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x2

    if-ne v1, v4, :cond_e

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/google/android/gms/internal/ads/zzbc;

    const/16 v24, 0x0

    aput-object v15, v5, v24

    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzbd;->zzc([Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v5

    move-object v12, v5

    goto :goto_b

    :cond_e
    const/16 v24, 0x0

    goto :goto_b

    :cond_f
    const/4 v4, 0x1

    const/16 v24, 0x0

    new-array v5, v4, [Lcom/google/android/gms/internal/ads/zzbc;

    aput-object v15, v5, v24

    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzbd;->zzc([Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v4

    move-object v12, v4

    :cond_10
    :goto_b
    add-int/lit8 v11, v11, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    const/4 v4, 0x3

    :goto_c
    if-ge v1, v4, :cond_12

    aget-object v5, v14, v1

    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzbd;->zzd(Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_12
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzbd;->zza()I

    move-result v1

    if-lez v1, :cond_13

    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzab;->zzS(Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzab;

    :cond_13
    iget-object v1, v6, Lg/foy;->e:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iget v1, v13, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    const/4 v4, 0x2

    const/4 v11, -0x1

    if-ne v1, v4, :cond_14

    if-ne v8, v11, :cond_14

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v8

    :cond_14
    move-object/from16 v1, v17

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v17, v1

    move/from16 v11, v28

    move-object/from16 v1, v29

    move-object/from16 v4, v30

    move-object/from16 v5, v31

    const/4 v14, 0x0

    const/4 v15, 0x1

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_5

    :cond_15
    move-object/from16 v29, v1

    move-object/from16 v1, v17

    const/4 v11, -0x1

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaiy;->e:I

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaiy;->a:J

    const/4 v15, 0x0

    new-array v2, v15, [Lg/foy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lg/foy;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiy;->n:[Lg/foy;

    array-length v2, v1

    new-array v3, v2, [[J

    new-array v4, v2, [I

    new-array v5, v2, [J

    new-array v2, v2, [Z

    const/4 v15, 0x0

    :goto_e
    array-length v6, v1

    if-ge v15, v6, :cond_16

    aget-object v6, v1, v15

    iget-object v6, v6, Lg/foy;->d:Lcom/google/android/gms/internal/ads/zzajh;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    new-array v6, v6, [J

    aput-object v6, v3, v15

    aget-object v6, v1, v15

    iget-object v6, v6, Lg/foy;->d:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzajh;->zzf:[J

    const/16 v24, 0x0

    aget-wide v7, v6, v24

    aput-wide v7, v5, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    :cond_16
    const/16 v24, 0x0

    const/4 v15, 0x0

    :goto_f
    array-length v6, v1

    if-ge v15, v6, :cond_1a

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, -0x1

    const/4 v9, 0x0

    :goto_10
    array-length v10, v1

    if-ge v9, v10, :cond_18

    aget-boolean v10, v2, v9

    if-nez v10, :cond_17

    aget-wide v12, v5, v9

    cmp-long v10, v12, v6

    if-gtz v10, :cond_17

    move v8, v9

    move-wide v6, v12

    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_18
    aget v6, v4, v8

    aget-object v7, v3, v8

    aput-wide v22, v7, v6

    aget-object v9, v1, v8

    iget-object v9, v9, Lg/foy;->d:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzajh;->zzd:[I

    aget v10, v10, v6

    int-to-long v12, v10

    add-long v22, v22, v12

    const/16 v25, 0x1

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v8

    array-length v7, v7

    if-ge v6, v7, :cond_19

    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzajh;->zzf:[J

    aget-wide v6, v7, v6

    aput-wide v6, v5, v8

    goto :goto_f

    :cond_19
    aput-boolean v25, v2, v8

    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    :cond_1a
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiy;->z:[[J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiy;->m:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaiy;->m:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayDeque;->clear()V

    const/4 v4, 0x2

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaiy;->c:I

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v29, v1

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzc(Lcom/google/android/gms/internal/ads/zzes;)V

    goto/16 :goto_0

    :cond_1c
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaiy;->c:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiy;->ac()V

    :cond_1d
    return-void
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->a:J

    return-wide v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    :cond_0
    :goto_0
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->c:I

    const v4, 0x66747970

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaiy;->aa:Ljava/util/ArrayDeque;

    const/4 v8, 0x0

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaiy;->j:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v12, 0x4

    const/4 v13, 0x2

    const-wide/16 v16, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_42

    const-wide/32 v18, 0x40000

    if-eq v3, v6, :cond_35

    if-eq v3, v13, :cond_19

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->b:Lg/aei;

    iget-object v9, v3, Lg/aei;->c:Ljava/util/ArrayList;

    const-wide/16 v20, 0x8

    iget v4, v3, Lg/aei;->d:I

    if-eqz v4, :cond_15

    if-eq v4, v6, :cond_13

    const/16 v22, -0x1

    const/16 v15, 0xb01

    const/4 v5, 0x3

    if-eq v4, v13, :cond_d

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v17

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v19

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v25

    sub-long v19, v19, v25

    iget v3, v3, Lg/aei;->e:I

    int-to-long v3, v3

    new-instance v14, Lcom/google/android/gms/internal/ads/zzed;

    sub-long v3, v19, v3

    long-to-int v4, v3

    invoke-direct {v14, v4}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    invoke-interface {v0, v3, v7, v4}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/dex;

    iget-wide v10, v3, Lg/dex;->a:J

    sub-long v10, v10, v17

    long-to-int v11, v10

    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v10, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v7, "Super_SlowMotion_BGM"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_3

    :sswitch_1
    const-string v7, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_3

    :sswitch_2
    const-string v7, "Super_SlowMotion_Data"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_3

    :sswitch_3
    const-string v7, "Super_SlowMotion_Edit_Data"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    goto :goto_3

    :sswitch_4
    const-string v7, "SlowMotion_Data"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v4, -0x1

    :goto_3
    if-eqz v4, :cond_6

    if-eq v4, v6, :cond_5

    if-eq v4, v13, :cond_4

    if-eq v4, v5, :cond_3

    if-ne v4, v12, :cond_2

    const/16 v7, 0xb04

    goto :goto_4

    :cond_2
    const-string v0, "Invalid SEF name"

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v0

    throw v0

    :cond_3
    const/16 v7, 0xb03

    goto :goto_4

    :cond_4
    const/16 v7, 0xb01

    goto :goto_4

    :cond_5
    const/16 v7, 0xb00

    goto :goto_4

    :cond_6
    const/16 v7, 0x890

    :goto_4
    iget v3, v3, Lg/dex;->b:I

    add-int/lit8 v10, v10, 0x8

    sub-int/2addr v3, v10

    const/16 v4, 0x890

    if-eq v7, v4, :cond_8

    const/16 v4, 0xb00

    if-eq v7, v4, :cond_b

    if-eq v7, v15, :cond_b

    const/16 v3, 0xb03

    if-eq v7, v3, :cond_b

    const/16 v3, 0xb04

    if-ne v7, v3, :cond_7

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v3, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lg/aei;->b:Lcom/google/android/gms/internal/ads/zzfxd;

    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/ads/zzfxd;->zze(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_a

    sget-object v11, Lg/aei;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzfxd;->zze(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v5, :cond_9

    const/4 v11, 0x0

    :try_start_0
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    shl-int v32, v6, v4

    new-instance v27, Lcom/google/android/gms/internal/ads/zzahc;

    invoke-direct/range {v27 .. v32}, Lcom/google/android/gms/internal/ads/zzahc;-><init>(JJI)V

    move-object/from16 v4, v27

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {v8, v0}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v0

    throw v0

    :cond_9
    invoke-static {v8, v8}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v0

    throw v0

    :cond_a
    new-instance v3, Lcom/google/android/gms/internal/ads/zzahd;

    invoke-direct {v3, v7}, Lcom/google/android/gms/internal/ads/zzahd;-><init>(Ljava/util/List;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaiy;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_c
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_c

    :cond_d
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v7

    iget v4, v3, Lg/aei;->e:I

    add-int/lit8 v4, v4, -0x14

    new-instance v10, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v10, v4}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v0, v11, v12, v4}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    const/4 v0, 0x0

    :goto_8
    div-int/lit8 v11, v4, 0xc

    if-ge v0, v11, :cond_11

    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzed;->zzD()S

    move-result v11

    const/16 v12, 0x890

    if-eq v11, v12, :cond_f

    const/16 v14, 0xb00

    if-eq v11, v14, :cond_e

    if-eq v11, v15, :cond_e

    const/16 v12, 0xb03

    if-eq v11, v12, :cond_e

    const/16 v12, 0xb04

    if-eq v11, v12, :cond_10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    move-wide/from16 v17, v7

    goto :goto_a

    :cond_e
    const/16 v12, 0xb04

    goto :goto_9

    :cond_f
    const/16 v12, 0xb04

    const/16 v14, 0xb00

    :cond_10
    :goto_9
    iget v11, v3, Lg/aei;->e:I

    int-to-long v14, v11

    sub-long v14, v7, v14

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v11

    move-wide/from16 v17, v7

    int-to-long v6, v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v8

    new-instance v11, Lg/dex;

    sub-long/2addr v14, v6

    invoke-direct {v11, v8, v14, v15}, Lg/dex;-><init>(IJ)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v17

    const/4 v6, 0x1

    const/16 v15, 0xb01

    goto :goto_8

    :cond_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    goto :goto_7

    :cond_12
    iput v5, v3, Lg/aei;->d:I

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/dex;

    iget-wide v3, v0, Lg/dex;->a:J

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    goto :goto_7

    :cond_13
    const/4 v11, 0x0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzed;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    invoke-interface {v0, v6, v11, v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v3, Lg/aei;->e:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v4

    const v5, 0x53454654

    if-eq v4, v5, :cond_14

    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    goto/16 :goto_7

    :cond_14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v4

    iget v0, v3, Lg/aei;->e:I

    add-int/lit8 v0, v0, -0xc

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    iput v13, v3, Lg/aei;->d:I

    goto/16 :goto_7

    :cond_15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v4

    cmp-long v0, v4, v16

    if-eqz v0, :cond_16

    cmp-long v0, v4, v20

    if-gez v0, :cond_17

    :cond_16
    const-wide/16 v4, 0x0

    goto :goto_b

    :cond_17
    const-wide/16 v6, -0x8

    add-long/2addr v4, v6

    :goto_b
    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    const/4 v0, 0x1

    iput v0, v3, Lg/aei;->d:I

    :goto_c
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    const-wide/16 v23, 0x0

    cmp-long v4, v2, v23

    if-nez v4, :cond_18

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiy;->ac()V

    return v0

    :cond_18
    :goto_d
    const/4 v12, 0x1

    goto/16 :goto_1d

    :cond_19
    const-wide/16 v20, 0x8

    const/16 v22, -0x1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v3

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzaiy;->q:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_24

    const/4 v7, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const-wide v16, 0x7fffffffffffffffL

    const-wide v27, 0x7fffffffffffffffL

    const-wide v29, 0x7fffffffffffffffL

    const-wide v31, 0x7fffffffffffffffL

    :goto_e
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaiy;->n:[Lg/foy;

    array-length v6, v5

    if-ge v11, v6, :cond_21

    aget-object v5, v5, v11

    iget v6, v5, Lg/foy;->b:I

    iget-object v5, v5, Lg/foy;->d:Lcom/google/android/gms/internal/ads/zzajh;

    const/16 v33, 0x2

    iget v13, v5, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    if-ne v6, v13, :cond_1a

    goto :goto_10

    :cond_1a
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzajh;->zzc:[J

    aget-wide v34, v5, v6

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaiy;->z:[[J

    sget v13, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    aget-object v5, v5, v11

    aget-wide v36, v5, v6

    sub-long v34, v34, v3

    const-wide/16 v23, 0x0

    cmp-long v5, v34, v23

    if-ltz v5, :cond_1b

    cmp-long v5, v34, v18

    if-ltz v5, :cond_1c

    :cond_1b
    const/4 v5, 0x1

    goto :goto_f

    :cond_1c
    const/4 v5, 0x0

    :goto_f
    if-nez v5, :cond_1d

    if-nez v14, :cond_1e

    const/4 v14, 0x0

    :cond_1d
    if-ne v5, v14, :cond_1f

    cmp-long v6, v34, v29

    if-gez v6, :cond_1f

    :cond_1e
    move v14, v5

    move v10, v11

    move-wide/from16 v29, v34

    move-wide/from16 v27, v36

    :cond_1f
    cmp-long v6, v36, v16

    if-gez v6, :cond_20

    move v15, v5

    move v7, v11

    move-wide/from16 v16, v36

    :cond_20
    :goto_10
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x2

    goto :goto_e

    :cond_21
    const/16 v33, 0x2

    cmp-long v5, v16, v31

    if-eqz v5, :cond_22

    if-eqz v15, :cond_22

    const-wide/32 v5, 0xa00000

    add-long v16, v16, v5

    cmp-long v5, v27, v16

    if-ltz v5, :cond_22

    move v5, v7

    goto :goto_11

    :cond_22
    move v5, v10

    :goto_11
    iput v5, v1, Lcom/google/android/gms/internal/ads/zzaiy;->q:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_25

    :cond_23
    const/16 v22, -0x1

    goto/16 :goto_1f

    :cond_24
    const/16 v33, 0x2

    :cond_25
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzaiy;->n:[Lg/foy;

    aget-object v5, v6, v5

    iget-object v6, v5, Lg/foy;->e:Lcom/google/android/gms/internal/ads/zzadx;

    iget-object v7, v5, Lg/foy;->c:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v10, v5, Lg/foy;->d:Lcom/google/android/gms/internal/ads/zzajh;

    iget v11, v5, Lg/foy;->b:I

    iget-object v13, v10, Lcom/google/android/gms/internal/ads/zzajh;->zzc:[J

    aget-wide v14, v13, v11

    iget-object v13, v10, Lcom/google/android/gms/internal/ads/zzajh;->zzd:[I

    aget v13, v13, v11

    iget-object v8, v5, Lg/foy;->a:Lcom/google/android/gms/internal/ads/zzady;

    sub-long v3, v14, v3

    const/16 v28, 0x4

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzaiy;->v:I

    move-wide/from16 v16, v3

    int-to-long v3, v12

    add-long v3, v16, v3

    const-wide/16 v23, 0x0

    cmp-long v12, v3, v23

    if-ltz v12, :cond_26

    cmp-long v12, v3, v18

    if-ltz v12, :cond_27

    :cond_26
    const/4 v12, 0x1

    goto/16 :goto_17

    :cond_27
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzaje;->zzg:I

    const/4 v12, 0x1

    if-ne v2, v12, :cond_28

    add-long v3, v3, v20

    add-int/lit8 v13, v13, -0x8

    :cond_28
    long-to-int v2, v3

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    const-string v3, "video/avc"

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v12, 0x1

    if-nez v2, :cond_29

    iput-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzaiy;->x:Z

    :cond_29
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzaje;->zzj:I

    if-eqz v2, :cond_2e

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->g:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    const/16 v25, 0x0

    aput-byte v25, v4, v25

    aput-byte v25, v4, v12

    aput-byte v25, v4, v33

    add-int/lit8 v7, v2, 0x1

    rsub-int/lit8 v12, v2, 0x4

    :goto_12
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaiy;->ab:I

    if-ge v2, v13, :cond_2d

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaiy;->p:I

    if-nez v2, :cond_2c

    invoke-interface {v0, v4, v12, v7}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaiy;->v:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzaiy;->v:I

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v9

    if-lez v9, :cond_2b

    add-int/lit8 v9, v9, -0x1

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzaiy;->p:I

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzaiy;->y:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/4 v2, 0x4

    invoke-interface {v6, v9, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    const/4 v9, 0x1

    invoke-interface {v6, v3, v9}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget v14, v1, Lcom/google/android/gms/internal/ads/zzaiy;->ab:I

    add-int/lit8 v14, v14, 0x5

    iput v14, v1, Lcom/google/android/gms/internal/ads/zzaiy;->ab:I

    add-int/2addr v13, v12

    iget-boolean v14, v1, Lcom/google/android/gms/internal/ads/zzaiy;->x:Z

    if-nez v14, :cond_2a

    aget-byte v14, v4, v2

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfp;->zzi(B)Z

    move-result v2

    if-eqz v2, :cond_2a

    iput-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzaiy;->x:Z

    :cond_2a
    :goto_13
    const/16 v28, 0x4

    goto :goto_12

    :cond_2b
    const-string v0, "Invalid NAL length"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v0

    throw v0

    :cond_2c
    const/4 v9, 0x0

    invoke-interface {v6, v0, v2, v9}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(Lcom/google/android/gms/internal/ads/zzn;IZ)I

    move-result v2

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzaiy;->v:I

    add-int/2addr v9, v2

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzaiy;->v:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzaiy;->ab:I

    add-int/2addr v9, v2

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzaiy;->ab:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzaiy;->p:I

    sub-int/2addr v9, v2

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzaiy;->p:I

    goto :goto_13

    :cond_2d
    move/from16 v38, v13

    goto :goto_15

    :cond_2e
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    const-string v3, "audio/ac4"

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaiy;->ab:I

    if-nez v2, :cond_2f

    invoke-static {v13, v9}, Lcom/google/android/gms/internal/ads/zzabu;->zzb(ILcom/google/android/gms/internal/ads/zzed;)V

    const/4 v2, 0x7

    invoke-interface {v6, v9, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->ab:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->ab:I

    :cond_2f
    add-int/lit8 v13, v13, 0x7

    goto :goto_14

    :cond_30
    if-eqz v8, :cond_31

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzady;->zzd(Lcom/google/android/gms/internal/ads/zzacs;)V

    :cond_31
    :goto_14
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaiy;->ab:I

    if-ge v2, v13, :cond_2d

    sub-int v2, v13, v2

    const/4 v9, 0x0

    invoke-interface {v6, v0, v2, v9}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(Lcom/google/android/gms/internal/ads/zzn;IZ)I

    move-result v2

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->v:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->v:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->ab:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->ab:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->p:I

    sub-int/2addr v3, v2

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->p:I

    goto :goto_14

    :goto_15
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzajh;->zzf:[J

    aget-wide v35, v0, v11

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzajh;->zzg:[I

    aget v0, v0, v11

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzaiy;->x:Z

    if-nez v2, :cond_32

    const/high16 v2, 0x4000000

    or-int/2addr v0, v2

    :cond_32
    move/from16 v37, v0

    if-eqz v8, :cond_33

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v34, v8

    move/from16 v39, v38

    move/from16 v38, v37

    move-wide/from16 v36, v35

    move-object/from16 v35, v6

    invoke-virtual/range {v34 .. v41}, Lcom/google/android/gms/internal/ads/zzady;->zzc(Lcom/google/android/gms/internal/ads/zzadx;JIIILcom/google/android/gms/internal/ads/zzadw;)V

    move-object/from16 v2, v34

    move-object/from16 v0, v35

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iget v3, v10, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    if-ne v11, v3, :cond_34

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzady;->zza(Lcom/google/android/gms/internal/ads/zzadx;Lcom/google/android/gms/internal/ads/zzadw;)V

    goto :goto_16

    :cond_33
    move-object v0, v6

    const/4 v12, 0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    :cond_34
    :goto_16
    iget v0, v5, Lg/foy;->b:I

    add-int/2addr v0, v12

    iput v0, v5, Lg/foy;->b:I

    const/4 v6, -0x1

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzaiy;->q:I

    const/4 v9, 0x0

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzaiy;->v:I

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzaiy;->ab:I

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzaiy;->p:I

    iput-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzaiy;->x:Z

    return v9

    :goto_17
    iput-wide v14, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    return v12

    :cond_35
    const/16 v33, 0x2

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzaiy;->r:J

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->f:I

    int-to-long v8, v3

    sub-long/2addr v6, v8

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v8

    add-long/2addr v8, v6

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->d:Lcom/google/android/gms/internal/ads/zzed;

    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v10

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzaiy;->f:I

    long-to-int v7, v6

    invoke-interface {v0, v10, v11, v7}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzaiy;->i:I

    if-ne v6, v4, :cond_3e

    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzaiy;->l:Z

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v4

    const v5, 0x71742020

    const v6, 0x68656963

    if-eq v4, v6, :cond_37

    if-eq v4, v5, :cond_36

    const/4 v4, 0x0

    goto :goto_18

    :cond_36
    const/4 v4, 0x1

    goto :goto_18

    :cond_37
    const/4 v4, 0x2

    :goto_18
    if-eqz v4, :cond_38

    goto :goto_1a

    :cond_38
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_39
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v4

    if-lez v4, :cond_3c

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v4

    if-eq v4, v6, :cond_3b

    if-eq v4, v5, :cond_3a

    const/4 v4, 0x0

    goto :goto_19

    :cond_3a
    const/4 v4, 0x1

    goto :goto_19

    :cond_3b
    const/4 v4, 0x2

    :goto_19
    if-eqz v4, :cond_39

    goto :goto_1a

    :cond_3c
    const/4 v4, 0x0

    :goto_1a
    iput v4, v1, Lcom/google/android/gms/internal/ads/zzaiy;->w:I

    :cond_3d
    :goto_1b
    const/4 v7, 0x0

    goto :goto_1c

    :cond_3e
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzes;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzet;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzaiy;->i:I

    invoke-direct {v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzet;-><init>(ILcom/google/android/gms/internal/ads/zzed;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzd(Lcom/google/android/gms/internal/ads/zzet;)V

    goto :goto_1b

    :cond_3f
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->l:Z

    if-nez v3, :cond_40

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->i:I

    const v4, 0x6d646174

    if-ne v3, v4, :cond_40

    const/4 v12, 0x1

    iput v12, v1, Lcom/google/android/gms/internal/ads/zzaiy;->w:I

    :cond_40
    cmp-long v3, v6, v18

    if-gez v3, :cond_41

    long-to-int v3, v6

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    goto :goto_1b

    :cond_41
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v3

    add-long/2addr v3, v6

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    const/4 v7, 0x1

    :goto_1c
    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzaiy;->ad(J)V

    if-eqz v7, :cond_0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->c:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto/16 :goto_d

    :goto_1d
    return v12

    :cond_42
    const/4 v12, 0x1

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->f:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzaiy;->o:Lcom/google/android/gms/internal/ads/zzed;

    if-nez v3, :cond_45

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    const/4 v7, 0x0

    const/16 v11, 0x8

    invoke-interface {v0, v3, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzacs;->zzn([BIIZ)Z

    move-result v3

    if-nez v3, :cond_44

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzaiy;->w:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_23

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzaiy;->t:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaiy;->m:Lcom/google/android/gms/internal/ads/zzacu;

    const/4 v2, 0x4

    invoke-interface {v0, v7, v2}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaiy;->h:Lcom/google/android/gms/internal/ads/zzagz;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_43

    const/4 v8, 0x0

    goto :goto_1e

    :cond_43
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbd;

    const/4 v12, 0x1

    new-array v5, v12, [Lcom/google/android/gms/internal/ads/zzbc;

    aput-object v2, v5, v7

    invoke-direct {v8, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(J[Lcom/google/android/gms/internal/ads/zzbc;)V

    :goto_1e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzab;->zzS(Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaiy;->m:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzaiy;->m:Lcom/google/android/gms/internal/ads/zzacu;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzadp;

    const-wide/16 v6, 0x0

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    const/16 v22, -0x1

    :goto_1f
    return v22

    :cond_44
    const/16 v11, 0x8

    iput v11, v1, Lcom/google/android/gms/internal/ads/zzaiy;->f:I

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaiy;->r:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->i:I

    :cond_45
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaiy;->r:J

    const-wide/16 v10, 0x1

    cmp-long v3, v7, v10

    if-nez v3, :cond_46

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    const/16 v11, 0x8

    invoke-interface {v0, v3, v11, v11}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->f:I

    add-int/2addr v3, v11

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->f:I

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzw()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaiy;->r:J

    goto :goto_21

    :cond_46
    const-wide/16 v23, 0x0

    cmp-long v3, v7, v23

    if-nez v3, :cond_49

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v7

    cmp-long v3, v7, v16

    if-nez v3, :cond_48

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzes;

    if-eqz v3, :cond_47

    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzes;->zza:J

    goto :goto_20

    :cond_47
    move-wide/from16 v7, v16

    :cond_48
    :goto_20
    cmp-long v3, v7, v16

    if-eqz v3, :cond_49

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v10

    sub-long/2addr v7, v10

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->f:I

    int-to-long v10, v3

    add-long/2addr v7, v10

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaiy;->r:J

    :cond_49
    :goto_21
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaiy;->r:J

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->f:I

    int-to-long v10, v3

    cmp-long v12, v7, v10

    if-ltz v12, :cond_53

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzaiy;->i:I

    const v8, 0x6d6f6f76

    const v10, 0x6d657461

    if-eq v7, v8, :cond_50

    const v8, 0x7472616b

    if-eq v7, v8, :cond_50

    const v8, 0x6d646961

    if-eq v7, v8, :cond_50

    const v8, 0x6d696e66

    if-eq v7, v8, :cond_50

    const v8, 0x7374626c

    if-eq v7, v8, :cond_50

    const v8, 0x65647473

    if-eq v7, v8, :cond_50

    if-eq v7, v10, :cond_50

    const v8, 0x65647664

    if-ne v7, v8, :cond_4a

    goto/16 :goto_25

    :cond_4a
    const v5, 0x6d646864

    if-eq v7, v5, :cond_4b

    const v5, 0x6d766864

    if-eq v7, v5, :cond_4b

    const v5, 0x68646c72    # 4.3148E24f

    if-eq v7, v5, :cond_4b

    const v5, 0x73747364

    if-eq v7, v5, :cond_4b

    const v5, 0x73747473

    if-eq v7, v5, :cond_4b

    const v5, 0x73747373

    if-eq v7, v5, :cond_4b

    const v5, 0x63747473

    if-eq v7, v5, :cond_4b

    const v5, 0x656c7374

    if-eq v7, v5, :cond_4b

    const v5, 0x73747363

    if-eq v7, v5, :cond_4b

    const v5, 0x7374737a

    if-eq v7, v5, :cond_4b

    const v5, 0x73747a32

    if-eq v7, v5, :cond_4b

    const v5, 0x7374636f

    if-eq v7, v5, :cond_4b

    const v5, 0x636f3634

    if-eq v7, v5, :cond_4b

    const v5, 0x746b6864

    if-eq v7, v5, :cond_4b

    if-eq v7, v4, :cond_4b

    const v4, 0x75647461

    if-eq v7, v4, :cond_4b

    const v4, 0x6b657973

    if-eq v7, v4, :cond_4b

    const v4, 0x696c7374

    if-ne v7, v4, :cond_4c

    :cond_4b
    const/16 v11, 0x8

    goto :goto_22

    :cond_4c
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v3

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzaiy;->f:I

    int-to-long v5, v5

    sub-long v10, v3, v5

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->i:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_4d

    add-long v14, v10, v5

    new-instance v7, Lcom/google/android/gms/internal/ads/zzagz;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->r:J

    sub-long v16, v3, v5

    const-wide/16 v8, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v7 .. v17}, Lcom/google/android/gms/internal/ads/zzagz;-><init>(JJJJJ)V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzaiy;->h:Lcom/google/android/gms/internal/ads/zzagz;

    :cond_4d
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->d:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v12, 0x1

    iput v12, v1, Lcom/google/android/gms/internal/ads/zzaiy;->c:I

    goto/16 :goto_0

    :goto_22
    if-ne v3, v11, :cond_4e

    const/4 v3, 0x1

    goto :goto_23

    :cond_4e
    const/4 v3, 0x0

    :goto_23
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->r:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v5, v3, v7

    if-gtz v5, :cond_4f

    const/4 v3, 0x1

    goto :goto_24

    :cond_4f
    const/4 v3, 0x0

    :goto_24
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzed;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzaiy;->r:J

    long-to-int v5, v4

    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v5

    const/4 v9, 0x0

    const/16 v11, 0x8

    invoke-static {v4, v9, v5, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzaiy;->d:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v12, 0x1

    iput v12, v1, Lcom/google/android/gms/internal/ads/zzaiy;->c:I

    goto/16 :goto_0

    :cond_50
    :goto_25
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v3

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzaiy;->r:J

    add-long/2addr v3, v6

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzaiy;->f:I

    int-to-long v11, v8

    cmp-long v8, v6, v11

    if-eqz v8, :cond_51

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzaiy;->i:I

    if-ne v6, v10, :cond_51

    const/16 v6, 0x8

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v0, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzain;->zzg(Lcom/google/android/gms/internal/ads/zzed;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    :cond_51
    sub-long/2addr v3, v11

    new-instance v6, Lcom/google/android/gms/internal/ads/zzes;

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzaiy;->i:I

    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzes;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzaiy;->r:J

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzaiy;->f:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_52

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzaiy;->ad(J)V

    goto/16 :goto_0

    :cond_52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiy;->ac()V

    goto/16 :goto_0

    :cond_53
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzacr;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->u:Lcom/google/android/gms/internal/ads/zzfzo;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacu;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->t:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->k:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzakg;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->m:Lcom/google/android/gms/internal/ads/zzacu;

    return-void
.end method

.method public final zzf(JJ)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->aa:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->f:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->q:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->v:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->ab:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->p:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaiy;->x:Z

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->c:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaiy;->ac()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->b:Lg/aei;

    iget-object p2, p1, Lg/aei;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iput v0, p1, Lg/aei;->d:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiy;->n:[Lg/foy;

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_4

    aget-object v2, p1, v0

    iget-object v3, v2, Lg/foy;->d:Lcom/google/android/gms/internal/ads/zzajh;

    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzajh;->zza(J)I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzajh;->zzb(J)I

    move-result v4

    :cond_2
    iput v4, v2, Lg/foy;->b:I

    iget-object v2, v2, Lg/foy;->a:Lcom/google/android/gms/internal/ads/zzady;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzady;->zzb()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzado;
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaiy;->n:[Lg/foy;

    array-length v4, v3

    if-nez v4, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzado;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v1

    :cond_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaiy;->e:I

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    if-eq v4, v5, :cond_4

    aget-object v3, v3, v4

    iget-object v3, v3, Lg/foy;->d:Lcom/google/android/gms/internal/ads/zzajh;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzajh;->zza(J)I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzajh;->zzb(J)I

    move-result v4

    :cond_1
    if-ne v4, v5, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzado;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzadr;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v1

    :cond_2
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzajh;->zzf:[J

    aget-wide v11, v10, v4

    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzajh;->zzc:[J

    aget-wide v13, v10, v4

    cmp-long v10, v11, v1

    if-gez v10, :cond_3

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    add-int/2addr v10, v5

    if-ge v4, v10, :cond_3

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzajh;->zzb(J)I

    move-result v1

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzajh;->zzf:[J

    aget-wide v6, v2, v1

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzajh;->zzc:[J

    aget-wide v1, v2, v1

    move-wide/from16 v18, v6

    move-wide v6, v1

    move-wide/from16 v1, v18

    goto :goto_0

    :cond_3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    move-wide v3, v1

    move-wide v1, v11

    goto :goto_1

    :cond_4
    const-wide v13, 0x7fffffffffffffffL

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    const/4 v10, 0x0

    :goto_2
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaiy;->n:[Lg/foy;

    array-length v12, v11

    if-ge v10, v12, :cond_b

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzaiy;->e:I

    if-eq v10, v12, :cond_9

    aget-object v11, v11, v10

    iget-object v11, v11, Lg/foy;->d:Lcom/google/android/gms/internal/ads/zzajh;

    invoke-virtual {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzajh;->zza(J)I

    move-result v12

    if-ne v12, v5, :cond_5

    invoke-virtual {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zzajh;->zzb(J)I

    move-result v12

    :cond_5
    if-ne v12, v5, :cond_6

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_6
    iget-object v15, v11, Lcom/google/android/gms/internal/ads/zzajh;->zzc:[J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    aget-wide v8, v15, v12

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    :goto_3
    cmp-long v8, v3, v16

    if-eqz v8, :cond_a

    invoke-virtual {v11, v3, v4}, Lcom/google/android/gms/internal/ads/zzajh;->zza(J)I

    move-result v8

    if-ne v8, v5, :cond_7

    invoke-virtual {v11, v3, v4}, Lcom/google/android/gms/internal/ads/zzajh;->zzb(J)I

    move-result v8

    :cond_7
    if-ne v8, v5, :cond_8

    goto :goto_4

    :cond_8
    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzajh;->zzc:[J

    aget-wide v8, v9, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_4

    :cond_9
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_b
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v5, Lcom/google/android/gms/internal/ads/zzadr;

    invoke-direct {v5, v1, v2, v13, v14}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    cmp-long v1, v3, v16

    if-nez v1, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzado;

    invoke-direct {v1, v5, v5}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v1

    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzadr;

    invoke-direct {v1, v3, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(JJ)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzado;

    invoke-direct {v2, v5, v1}, Lcom/google/android/gms/internal/ads/zzado;-><init>(Lcom/google/android/gms/internal/ads/zzadr;Lcom/google/android/gms/internal/ads/zzadr;)V

    return-object v2
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->t:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzajd;->zzb(Lcom/google/android/gms/internal/ads/zzacs;Z)Lcom/google/android/gms/internal/ads/zzadu;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiy;->u:Lcom/google/android/gms/internal/ads/zzfzo;

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

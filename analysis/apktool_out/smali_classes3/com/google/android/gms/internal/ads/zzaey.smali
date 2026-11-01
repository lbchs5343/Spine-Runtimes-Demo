.class public final Lcom/google/android/gms/internal/ads/zzaey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacr;


# instance fields
.field public a:Z

.field public b:I

.field public c:Lg/abu;

.field public d:Z

.field public final e:Lcom/google/android/gms/internal/ads/zzed;

.field public f:I

.field public final g:Lg/bwi;

.field public final h:Lcom/google/android/gms/internal/ads/zzed;

.field public i:Lcom/google/android/gms/internal/ads/zzacu;

.field public j:Lg/el;

.field public k:J

.field public l:J

.field public final m:Lcom/google/android/gms/internal/ads/zzed;

.field public n:I

.field public final o:Lcom/google/android/gms/internal/ads/zzed;

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->h:Lcom/google/android/gms/internal/ads/zzed;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->m:Lcom/google/android/gms/internal/ads/zzed;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->o:Lcom/google/android/gms/internal/ads/zzed;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->e:Lcom/google/android/gms/internal/ads/zzed;

    new-instance v0, Lg/bwi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzacm;-><init>()V

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lg/bgf;-><init>(ILjava/lang/Object;)V

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Lg/bwi;->a:J

    const/4 v1, 0x0

    new-array v2, v1, [J

    iput-object v2, v0, Lg/bwi;->b:[J

    new-array v1, v1, [J

    iput-object v1, v0, Lg/bwi;->c:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->g:Lg/bwi;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->p:I

    return-void
.end method


# virtual methods
.method public final q(Lcom/google/android/gms/internal/ads/zzacs;)Lcom/google/android/gms/internal/ads/zzed;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->f:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaey;->e:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzc()I

    move-result v2

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzc()I

    move-result v0

    add-int/2addr v0, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaey;->f:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->f:I

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaey;->f:I

    invoke-interface {p1, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    return-object v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->i:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->p:I

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v8, 0x1

    if-eq v2, v8, :cond_29

    const/4 v9, 0x3

    if-eq v2, v5, :cond_28

    if-eq v2, v9, :cond_26

    if-ne v2, v6, :cond_25

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->a:Z

    const-wide/16 v9, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaey;->g:Lg/bwi;

    if-eqz v2, :cond_1

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzaey;->l:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaey;->k:J

    add-long/2addr v14, v5

    goto :goto_1

    :cond_1
    iget-wide v5, v13, Lg/bwi;->a:J

    cmp-long v14, v5, v11

    if-nez v14, :cond_2

    move-wide v14, v9

    :goto_1
    move-wide/from16 v17, v14

    goto :goto_2

    :cond_2
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzaey;->k:J

    goto :goto_1

    :goto_2
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaey;->b:I

    if-ne v5, v4, :cond_f

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaey;->c:Lg/abu;

    if-eqz v5, :cond_10

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaey;->d:Z

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaey;->i:Lcom/google/android/gms/internal/ads/zzacu;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzadp;

    invoke-direct {v4, v11, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzaey;->d:Z

    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaey;->c:Lg/abu;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaey;->q(Lcom/google/android/gms/internal/ads/zzacs;)Lcom/google/android/gms/internal/ads/zzed;

    move-result-object v4

    iget-object v5, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzadx;

    iget-boolean v6, v3, Lg/abu;->b:Z

    const/4 v14, 0x1

    if-nez v6, :cond_9

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v6

    shr-int/lit8 v15, v6, 0x4

    iput v15, v3, Lg/abu;->_ba:I

    const/4 v2, 0x2

    if-ne v15, v2, :cond_4

    shr-int/lit8 v2, v6, 0x2

    and-int/lit8 v2, v2, 0x3

    sget-object v6, Lg/abu;->a:[I

    aget v2, v6, v2

    new-instance v6, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    const-string v15, "audio/mpeg"

    invoke-virtual {v6, v15}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iput-boolean v14, v3, Lg/abu;->c:Z

    goto :goto_5

    :cond_4
    const/4 v2, 0x7

    if-eq v15, v2, :cond_7

    const/16 v6, 0x8

    if-ne v15, v6, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0xa

    if-ne v15, v2, :cond_6

    goto :goto_5

    :cond_6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzafa;

    const-string v2, "Audio format not supported: "

    invoke-static {v15, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzafa;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    new-instance v6, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    if-ne v15, v2, :cond_8

    const-string v2, "audio/g711-alaw"

    goto :goto_4

    :cond_8
    const-string v2, "audio/g711-mlaw"

    :goto_4
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    const/16 v2, 0x1f40

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iput-boolean v14, v3, Lg/abu;->c:Z

    :goto_5
    iput-boolean v14, v3, Lg/abu;->b:Z

    goto :goto_6

    :cond_9
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :goto_6
    iget-object v2, v3, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzadx;

    iget v5, v3, Lg/abu;->_ba:I

    const/4 v6, 0x2

    const/4 v14, 0x1

    if-ne v5, v6, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget-object v2, v3, Lg/bgf;->z:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/gms/internal/ads/zzadx;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move/from16 v20, v5

    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_d

    iget-boolean v15, v3, Lg/abu;->c:Z

    if-eqz v15, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v5

    new-array v15, v5, [B

    invoke-virtual {v4, v15, v6, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzabo;->zza([B)Lcom/google/android/gms/internal/ads/zzabm;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzabm;->zzc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzabm;->zzb:I

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzabm;->zza:I

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iput-boolean v14, v3, Lg/abu;->c:Z

    :cond_c
    const/4 v14, 0x0

    goto :goto_8

    :cond_d
    :goto_7
    iget v6, v3, Lg/abu;->_ba:I

    const/16 v15, 0xa

    if-ne v6, v15, :cond_e

    if-ne v5, v14, :cond_c

    :cond_e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget-object v2, v3, Lg/bgf;->z:Ljava/lang/Object;

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/gms/internal/ads/zzadx;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move/from16 v20, v5

    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    :goto_8
    move-wide/from16 v21, v11

    const/4 v2, 0x1

    const/16 v16, 0x0

    :goto_9
    const/16 v30, 0x1

    goto/16 :goto_15

    :cond_f
    move v4, v5

    :cond_10
    if-ne v4, v3, :cond_1d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->j:Lg/el;

    if-eqz v2, :cond_1b

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->d:Z

    if-nez v2, :cond_11

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->i:Lcom/google/android/gms/internal/ads/zzacu;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadp;

    invoke-direct {v3, v11, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzaey;->d:Z

    :cond_11
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->j:Lg/el;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaey;->q(Lcom/google/android/gms/internal/ads/zzacs;)Lcom/google/android/gms/internal/ads/zzed;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v4

    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    const/4 v6, 0x7

    if-ne v4, v6, :cond_1a

    iput v5, v2, Lg/el;->a:I

    const/4 v4, 0x5

    if-eq v5, v4, :cond_12

    const/4 v4, 0x1

    goto :goto_a

    :cond_12
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_18

    iget-object v4, v2, Lg/el;->c:Lcom/google/android/gms/internal/ads/zzed;

    iget-object v5, v2, Lg/bgf;->z:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzadx;

    iget-object v6, v2, Lg/el;->e:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v14

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzh()I

    move-result v15

    int-to-long v9, v15

    const/4 v15, 0x1

    move-wide/from16 v21, v11

    const/4 v11, 0x0

    if-nez v14, :cond_14

    iget-boolean v4, v2, Lg/el;->g:Z

    if-nez v4, :cond_13

    new-instance v4, Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v6

    new-array v6, v6, [B

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v9

    invoke-virtual {v3, v6, v11, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzabv;->zza(Lcom/google/android/gms/internal/ads/zzed;)Lcom/google/android/gms/internal/ads/zzabv;

    move-result-object v3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzabv;->zzb:I

    iput v4, v2, Lg/el;->_s:I

    new-instance v4, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    const-string v6, "video/avc"

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzabv;->zzl:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzA(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzabv;->zzc:I

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzae(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzabv;->zzd:I

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzJ(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzabv;->zzk:F

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzV(F)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzabv;->zza:Ljava/util/List;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iput-boolean v15, v2, Lg/el;->g:Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto/16 :goto_f

    :cond_13
    const/16 v16, 0x0

    goto :goto_e

    :cond_14
    if-ne v14, v15, :cond_13

    iget-boolean v12, v2, Lg/el;->g:Z

    if-eqz v12, :cond_13

    iget v12, v2, Lg/el;->a:I

    if-ne v12, v15, :cond_15

    const/4 v12, 0x1

    goto :goto_b

    :cond_15
    const/4 v12, 0x0

    :goto_b
    iget-boolean v14, v2, Lg/el;->b:Z

    if-nez v14, :cond_16

    if-eqz v12, :cond_13

    const/16 v26, 0x1

    goto :goto_c

    :cond_16
    move/from16 v26, v12

    :goto_c
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v12

    aput-byte v11, v12, v11

    aput-byte v11, v12, v15

    const/4 v14, 0x2

    aput-byte v11, v12, v14

    iget v12, v2, Lg/el;->_s:I

    const/4 v14, 0x4

    rsub-int/lit8 v12, v12, 0x4

    const/16 v27, 0x0

    :goto_d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v16

    if-lez v16, :cond_17

    const/16 v16, 0x0

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    iget v8, v2, Lg/el;->_s:I

    invoke-virtual {v3, v7, v12, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-virtual {v6, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v7

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-interface {v5, v4, v14}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    add-int/lit8 v27, v27, 0x4

    invoke-interface {v5, v3, v7}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    add-int v27, v27, v7

    const/4 v8, 0x1

    goto :goto_d

    :cond_17
    const/16 v16, 0x0

    const-wide/16 v3, 0x3e8

    mul-long v9, v9, v3

    add-long v24, v9, v17

    iget-object v3, v2, Lg/bgf;->z:Ljava/lang/Object;

    move-object/from16 v23, v3

    check-cast v23, Lcom/google/android/gms/internal/ads/zzadx;

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-interface/range {v23 .. v29}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    iput-boolean v15, v2, Lg/el;->b:Z

    goto :goto_f

    :goto_e
    const/4 v15, 0x0

    :goto_f
    if-eqz v15, :cond_19

    const/4 v14, 0x1

    goto :goto_10

    :cond_18
    move-wide/from16 v21, v11

    const/16 v16, 0x0

    :cond_19
    const/4 v14, 0x0

    :goto_10
    const/4 v2, 0x1

    goto/16 :goto_9

    :cond_1a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzafa;

    const-string v2, "Video format not supported: "

    invoke-static {v4, v2}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzafa;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    move-wide/from16 v21, v11

    const/16 v16, 0x0

    :cond_1c
    const/4 v2, 0x1

    goto/16 :goto_14

    :cond_1d
    move-wide/from16 v21, v11

    const/16 v16, 0x0

    const/16 v2, 0x12

    if-ne v4, v2, :cond_1c

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->d:Z

    if-nez v2, :cond_1c

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaey;->q(Lcom/google/android/gms/internal/ads/zzacs;)Lcom/google/android/gms/internal/ads/zzed;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e

    goto/16 :goto_12

    :cond_1e
    invoke-static {v2}, Lg/bwi;->g(Lcom/google/android/gms/internal/ads/zzed;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onMetaData"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_21

    invoke-static {v2}, Lg/bwi;->h(Lcom/google/android/gms/internal/ads/zzed;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Double;

    const-wide v5, 0x412e848000000000L    # 1000000.0

    if-eqz v4, :cond_1f

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmpl-double v9, v3, v7

    if-lez v9, :cond_1f

    mul-double v3, v3, v5

    double-to-long v3, v3

    iput-wide v3, v13, Lg/bwi;->a:J

    :cond_1f
    const-string v3, "keyframes"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_21

    check-cast v2, Ljava/util/Map;

    const-string v3, "filepositions"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "times"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_21

    instance-of v4, v2, Ljava/util/List;

    if-eqz v4, :cond_21

    check-cast v3, Ljava/util/List;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v7, v4, [J

    iput-object v7, v13, Lg/bwi;->b:[J

    new-array v7, v4, [J

    iput-object v7, v13, Lg/bwi;->c:[J

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_11
    if-ge v8, v4, :cond_21

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Ljava/lang/Double;

    if-eqz v11, :cond_20

    instance-of v11, v9, Ljava/lang/Double;

    if-eqz v11, :cond_20

    iget-object v11, v13, Lg/bwi;->b:[J

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    mul-double v14, v14, v5

    double-to-long v14, v14

    aput-wide v14, v11, v8

    iget-object v10, v13, Lg/bwi;->c:[J

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->longValue()J

    move-result-wide v11

    aput-wide v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_20
    new-array v2, v7, [J

    iput-object v2, v13, Lg/bwi;->b:[J

    new-array v2, v7, [J

    iput-object v2, v13, Lg/bwi;->c:[J

    :cond_21
    :goto_12
    iget-wide v2, v13, Lg/bwi;->a:J

    cmp-long v4, v2, v21

    if-eqz v4, :cond_22

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaey;->i:Lcom/google/android/gms/internal/ads/zzacu;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzadi;

    iget-object v6, v13, Lg/bwi;->c:[J

    iget-object v7, v13, Lg/bwi;->b:[J

    invoke-direct {v5, v6, v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzadi;-><init>([J[JJ)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->d:Z

    :goto_13
    const/4 v14, 0x0

    goto/16 :goto_9

    :cond_22
    const/4 v2, 0x1

    goto :goto_13

    :goto_14
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaey;->f:I

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    const/4 v14, 0x0

    const/16 v30, 0x0

    :goto_15
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzaey;->a:Z

    if-nez v3, :cond_24

    if-eqz v14, :cond_24

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->a:Z

    iget-wide v2, v13, Lg/bwi;->a:J

    cmp-long v4, v2, v21

    if-nez v4, :cond_23

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->k:J

    neg-long v9, v2

    goto :goto_16

    :cond_23
    const-wide/16 v9, 0x0

    :goto_16
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaey;->l:J

    :cond_24
    const/4 v2, 0x4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->n:I

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->p:I

    if-eqz v30, :cond_0

    return v16

    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_26
    const/16 v16, 0x0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaey;->o:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v1, v4, v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzacs;->zzn([BIIZ)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_17

    :cond_27
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaey;->b:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzo()I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaey;->f:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzo()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaey;->k:J

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaey;->k:J

    int-to-long v7, v4

    or-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaey;->k:J

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    const/4 v2, 0x4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->p:I

    goto/16 :goto_0

    :cond_28
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->n:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    const/4 v6, 0x0

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzaey;->n:I

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzaey;->p:I

    goto/16 :goto_0

    :cond_29
    const/4 v6, 0x0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaey;->m:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v1, v7, v6, v3, v8}, Lcom/google/android/gms/internal/ads/zzacs;->zzn([BIIZ)Z

    move-result v7

    if-nez v7, :cond_2a

    :goto_17
    const/4 v1, -0x1

    return v1

    :cond_2a
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/4 v2, 0x4

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v2

    and-int/lit8 v6, v2, 0x4

    and-int/2addr v2, v8

    if-eqz v6, :cond_2b

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaey;->c:Lg/abu;

    if-nez v6, :cond_2b

    new-instance v6, Lg/abu;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaey;->i:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v7, v4, v8}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v4

    const/4 v7, 0x6

    invoke-direct {v6, v7, v4}, Lg/bgf;-><init>(ILjava/lang/Object;)V

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzaey;->c:Lg/abu;

    :cond_2b
    if-eqz v2, :cond_2c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->j:Lg/el;

    if-nez v2, :cond_2c

    new-instance v2, Lg/el;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaey;->i:Lcom/google/android/gms/internal/ads/zzacu;

    const/4 v6, 0x2

    invoke-interface {v4, v3, v6}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v3

    invoke-direct {v2, v3}, Lg/el;-><init>(Lcom/google/android/gms/internal/ads/zzadx;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->j:Lg/el;

    :cond_2c
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->i:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->n:I

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaey;->p:I

    goto/16 :goto_0
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaey;->i:Lcom/google/android/gms/internal/ads/zzacu;

    return-void
.end method

.method public final zzf(JJ)V
    .locals 2

    const-wide/16 p3, 0x0

    const/4 v0, 0x0

    cmp-long v1, p1, p3

    if-nez v1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaey;->p:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->a:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaey;->p:I

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->n:I

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaey;->h:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzacg;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzo()I

    move-result v1

    const v3, 0x464c56

    if-eq v1, v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v1

    and-int/lit16 v1, v1, 0xfa

    if-eqz v1, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v2, v1, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacg;

    invoke-virtual {p1, v1, v4}, Lcom/google/android/gms/internal/ads/zzacg;->zzl(IZ)Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    invoke-virtual {p1, v1, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v4
.end method

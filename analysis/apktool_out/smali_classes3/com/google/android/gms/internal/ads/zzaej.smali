.class public final Lcom/google/android/gms/internal/ads/zzaej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacr;


# instance fields
.field public a:J

.field public b:Lg/ae;

.field public c:I

.field public d:J

.field public final e:Lcom/google/android/gms/internal/ads/zzakg;

.field public f:I

.field public g:I

.field public final h:Lcom/google/android/gms/internal/ads/zzed;

.field public i:Lcom/google/android/gms/internal/ads/zzacu;

.field public j:Z

.field public k:J

.field public l:[Lg/ae;

.field public final m:Lg/aot;

.field public n:J

.field public final o:Z

.field public p:Lg/ddl;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaej;-><init>(ILcom/google/android/gms/internal/ads/zzakg;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzakg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaej;->e:Lcom/google/android/gms/internal/ads/zzakg;

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaej;->o:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->h:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p1, Lg/aot;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lg/aot;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->m:Lg/aot;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->i:Lcom/google/android/gms/internal/ads/zzacu;

    new-array p1, v0, [Lg/ae;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->l:[Lg/ae;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->k:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->d:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->f:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->a:J

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaej;->n:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v8

    cmp-long v10, v2, v8

    if-ltz v10, :cond_0

    const-wide/32 v10, 0x40000

    add-long/2addr v10, v8

    cmp-long v12, v2, v10

    if-lez v12, :cond_1

    :cond_0
    move-object/from16 v8, p2

    goto :goto_0

    :cond_1
    sub-long/2addr v2, v8

    long-to-int v3, v2

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    iput-wide v2, v8, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    const/4 v2, 0x1

    :goto_1
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaej;->n:J

    if-eqz v2, :cond_3

    return v4

    :cond_3
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaej;->g:I

    const/16 v3, 0xc

    const/4 v8, 0x0

    if-eqz v2, :cond_39

    const v9, 0x6c726468

    const v10, 0x5453494c

    const/4 v11, 0x2

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaej;->m:Lg/aot;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaej;->h:Lcom/google/android/gms/internal/ads/zzed;

    if-eq v2, v4, :cond_36

    const/4 v14, 0x3

    if-eq v2, v11, :cond_2a

    const v9, 0x69766f6d

    const/4 v15, 0x6

    move-wide/from16 v16, v6

    const/4 v6, 0x4

    move-object v7, v12

    const/16 p2, 0x2

    const-wide/16 v18, 0x8

    const/16 v11, 0x10

    if-eq v2, v14, :cond_22

    const/4 v7, 0x5

    const/16 v12, 0x8

    if-eq v2, v6, :cond_20

    if-eq v2, v7, :cond_13

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v6

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzaej;->d:J

    cmp-long v2, v6, v14

    if-ltz v2, :cond_4

    const/4 v1, -0x1

    return v1

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaej;->b:Lg/ae;

    if-eqz v2, :cond_a

    iget-object v3, v2, Lg/ae;->f:Lcom/google/android/gms/internal/ads/zzadx;

    iget v6, v2, Lg/ae;->m:I

    invoke-interface {v3, v1, v6, v5}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(Lcom/google/android/gms/internal/ads/zzn;IZ)I

    move-result v1

    sub-int/2addr v6, v1

    iput v6, v2, Lg/ae;->m:I

    if-nez v6, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_8

    iget v6, v2, Lg/ae;->g:I

    if-lez v6, :cond_7

    iget v6, v2, Lg/ae;->a:I

    iget v7, v2, Lg/ae;->e:I

    iget-wide v9, v2, Lg/ae;->c:J

    int-to-long v11, v6

    mul-long v9, v9, v11

    int-to-long v11, v7

    div-long v21, v9, v11

    iget-object v7, v2, Lg/ae;->h:[I

    invoke-static {v7, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v6

    if-ltz v6, :cond_6

    const/16 v23, 0x1

    goto :goto_3

    :cond_6
    const/16 v23, 0x0

    :goto_3
    iget v6, v2, Lg/ae;->g:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v3

    move/from16 v24, v6

    invoke-interface/range {v20 .. v26}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    :cond_7
    iget v3, v2, Lg/ae;->a:I

    add-int/2addr v3, v4

    iput v3, v2, Lg/ae;->a:I

    :cond_8
    if-nez v1, :cond_9

    return v5

    :cond_9
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzaej;->b:Lg/ae;

    return v5

    :cond_a
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v6

    const-wide/16 v14, 0x1

    and-long/2addr v6, v14

    cmp-long v2, v6, v14

    if-nez v2, :cond_b

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    :cond_b
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-interface {v1, v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v2

    if-ne v2, v10, :cond_d

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v2

    if-ne v2, v9, :cond_c

    goto :goto_4

    :cond_c
    const/16 v3, 0x8

    :goto_4
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    return v5

    :cond_d
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v3

    const v4, 0x4b4e554a    # 1.352225E7f

    if-ne v2, v4, :cond_e

    int-to-long v2, v3

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v6

    add-long/2addr v6, v2

    add-long v6, v6, v18

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaej;->n:J

    return v5

    :cond_e
    invoke-interface {v1, v12}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaej;->l:[Lg/ae;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_11

    aget-object v9, v4, v7

    iget v10, v9, Lg/ae;->j:I

    if-eq v10, v2, :cond_10

    iget v10, v9, Lg/ae;->l:I

    if-ne v10, v2, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_10
    :goto_6
    move-object v8, v9

    :cond_11
    if-nez v8, :cond_12

    int-to-long v2, v3

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v6

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaej;->n:J

    return v5

    :cond_12
    iput v3, v8, Lg/ae;->g:I

    iput v3, v8, Lg/ae;->m:I

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzaej;->b:Lg/ae;

    return v5

    :cond_13
    new-instance v2, Lcom/google/android/gms/internal/ads/zzed;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaej;->c:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaej;->c:I

    invoke-interface {v1, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v1

    if-ge v1, v11, :cond_14

    const-wide/16 v20, 0x0

    goto :goto_8

    :cond_14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v1

    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v3

    int-to-long v6, v3

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaej;->k:J

    cmp-long v3, v6, v9

    if-lez v3, :cond_15

    const-wide/16 v20, 0x0

    goto :goto_7

    :cond_15
    add-long v6, v9, v18

    move-wide/from16 v20, v6

    :goto_7
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    :goto_8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v1

    if-lt v1, v11, :cond_1e

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v6

    int-to-long v6, v6

    add-long v6, v6, v20

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaej;->l:[Lg/ae;

    array-length v10, v9

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v10, :cond_17

    aget-object v13, v9, v12

    iget v8, v13, Lg/ae;->j:I

    if-eq v8, v1, :cond_18

    iget v8, v13, Lg/ae;->l:I

    if-ne v8, v1, :cond_16

    goto :goto_a

    :cond_16
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    goto :goto_9

    :cond_17
    const/4 v13, 0x0

    :cond_18
    :goto_a
    if-eqz v13, :cond_1d

    and-int/lit8 v1, v3, 0x10

    if-ne v1, v11, :cond_19

    const/4 v1, 0x1

    goto :goto_b

    :cond_19
    const/4 v1, 0x0

    :goto_b
    iget-wide v8, v13, Lg/ae;->b:J

    cmp-long v3, v8, v16

    if-nez v3, :cond_1a

    iput-wide v6, v13, Lg/ae;->b:J

    :cond_1a
    if-eqz v1, :cond_1c

    iget v1, v13, Lg/ae;->k:I

    iget-object v3, v13, Lg/ae;->h:[I

    array-length v3, v3

    if-ne v1, v3, :cond_1b

    iget-object v1, v13, Lg/ae;->d:[J

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v13, Lg/ae;->d:[J

    iget-object v1, v13, Lg/ae;->h:[I

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v13, Lg/ae;->h:[I

    :cond_1b
    iget-object v1, v13, Lg/ae;->d:[J

    iget v3, v13, Lg/ae;->k:I

    aput-wide v6, v1, v3

    iget-object v1, v13, Lg/ae;->h:[I

    iget v6, v13, Lg/ae;->i:I

    aput v6, v1, v3

    add-int/2addr v3, v4

    iput v3, v13, Lg/ae;->k:I

    :cond_1c
    iget v1, v13, Lg/ae;->i:I

    add-int/2addr v1, v4

    iput v1, v13, Lg/ae;->i:I

    :cond_1d
    const/4 v8, 0x0

    goto :goto_8

    :cond_1e
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaej;->l:[Lg/ae;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1f

    aget-object v6, v1, v3

    iget-object v7, v6, Lg/ae;->d:[J

    iget v8, v6, Lg/ae;->k:I

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    iput-object v7, v6, Lg/ae;->d:[J

    iget-object v7, v6, Lg/ae;->h:[I

    iget v8, v6, Lg/ae;->k:I

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    iput-object v7, v6, Lg/ae;->h:[I

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1f
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaej;->j:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaej;->i:Lcom/google/android/gms/internal/ads/zzacu;

    new-instance v2, Lg/enm;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaej;->a:J

    invoke-direct {v2, v0, v3, v4}, Lg/enm;-><init>(Lcom/google/android/gms/internal/ads/zzaej;J)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzaej;->g:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaej;->k:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaej;->n:J

    return v5

    :cond_20
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    invoke-interface {v1, v2, v5, v12}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v2

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v3

    const v4, 0x31786469

    if-ne v2, v4, :cond_21

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaej;->g:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaej;->c:I

    return v5

    :cond_21
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaej;->n:J

    return v5

    :cond_22
    move-object v2, v7

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaej;->k:J

    cmp-long v12, v6, v16

    if-eqz v12, :cond_24

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v16

    cmp-long v12, v16, v6

    if-nez v12, :cond_23

    goto :goto_d

    :cond_23
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaej;->n:J

    return v5

    :cond_24
    :goto_d
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    invoke-interface {v1, v6, v5, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v6

    iput v6, v2, Lg/aot;->b:I

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v6

    iput v6, v2, Lg/aot;->c:I

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v6

    iget v7, v2, Lg/aot;->b:I

    const v12, 0x46464952

    if-ne v7, v12, :cond_25

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    return v5

    :cond_25
    if-ne v7, v10, :cond_29

    if-eq v6, v9, :cond_26

    goto :goto_f

    :cond_26
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaej;->k:J

    iget v2, v2, Lg/aot;->c:I

    int-to-long v2, v2

    add-long/2addr v6, v2

    add-long v6, v6, v18

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaej;->d:J

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaej;->j:Z

    if-nez v2, :cond_28

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaej;->p:Lg/ddl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, Lg/ddl;->b:I

    and-int/2addr v2, v11

    if-eq v2, v11, :cond_27

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaej;->i:Lcom/google/android/gms/internal/ads/zzacu;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadp;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaej;->a:J

    const-wide/16 v8, 0x0

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaej;->j:Z

    goto :goto_e

    :cond_27
    const/4 v8, 0x4

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaej;->g:I

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaej;->n:J

    return v5

    :cond_28
    :goto_e
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaej;->n:J

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzaej;->g:I

    return v5

    :cond_29
    :goto_f
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v3

    iget v1, v2, Lg/aot;->c:I

    int-to-long v1, v1

    add-long/2addr v3, v1

    add-long v3, v3, v18

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaej;->n:J

    return v5

    :cond_2a
    const/16 p2, 0x2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaej;->f:I

    add-int/lit8 v2, v2, -0x4

    new-instance v3, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    invoke-interface {v1, v6, v5, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-static {v9, v3}, Lg/hes;->c(ILcom/google/android/gms/internal/ads/zzed;)Lg/hes;

    move-result-object v1

    iget v2, v1, Lg/hes;->b:I

    if-ne v2, v9, :cond_35

    const-class v2, Lg/ddl;

    invoke-virtual {v1, v2}, Lg/hes;->d(Ljava/lang/Class;)Lg/alv;

    move-result-object v2

    check-cast v2, Lg/ddl;

    if-eqz v2, :cond_34

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaej;->p:Lg/ddl;

    iget v3, v2, Lg/ddl;->c:I

    iget v2, v2, Lg/ddl;->a:I

    int-to-long v6, v3

    int-to-long v2, v2

    mul-long v6, v6, v2

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaej;->a:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lg/hes;->a:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_10
    if-ge v6, v3, :cond_33

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/alv;

    invoke-interface {v7}, Lg/alv;->zza()I

    move-result v9

    const v10, 0x6c727473

    if-ne v9, v10, :cond_32

    check-cast v7, Lg/hes;

    add-int/lit8 v15, v8, 0x1

    const-class v9, Lg/cyw;

    invoke-virtual {v7, v9}, Lg/hes;->d(Ljava/lang/Class;)Lg/alv;

    move-result-object v9

    check-cast v9, Lg/cyw;

    const-class v10, Lg/bb;

    invoke-virtual {v7, v10}, Lg/hes;->d(Ljava/lang/Class;)Lg/alv;

    move-result-object v10

    check-cast v10, Lg/bb;

    const-string v11, "AviExtractor"

    if-nez v9, :cond_2c

    const-string v7, "Missing Stream Header"

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    move/from16 p1, v15

    :cond_2b
    const/4 v7, 0x0

    goto :goto_12

    :cond_2c
    if-nez v10, :cond_2d

    const-string v7, "Missing Stream Format"

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_2d
    iget v11, v9, Lg/cyw;->a:I

    iget v12, v9, Lg/cyw;->d:I

    iget v13, v9, Lg/cyw;->e:I

    iget-object v10, v10, Lg/bb;->a:Lcom/google/android/gms/internal/ads/zzad;

    move/from16 p1, v15

    int-to-long v14, v12

    const-wide/32 v17, 0xf4240

    mul-long v25, v14, v17

    int-to-long v12, v13

    sget-object v29, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    int-to-long v14, v11

    move-wide/from16 v27, v12

    move-wide/from16 v23, v14

    invoke-static/range {v23 .. v29}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzad;->zzb()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzab;->zzK(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v14, v9, Lg/cyw;->b:I

    if-eqz v14, :cond_2e

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzab;->zzQ(I)Lcom/google/android/gms/internal/ads/zzab;

    :cond_2e
    const-class v14, Lg/gcf;

    invoke-virtual {v7, v14}, Lg/hes;->d(Ljava/lang/Class;)Lg/alv;

    move-result-object v7

    check-cast v7, Lg/gcf;

    if-eqz v7, :cond_2f

    iget-object v7, v7, Lg/gcf;->a:Ljava/lang/String;

    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzab;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    :cond_2f
    iget-object v7, v10, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzbg;->zzb(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v4, :cond_30

    const/4 v10, 0x2

    if-ne v7, v10, :cond_2b

    const/4 v7, 0x2

    :cond_30
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaej;->i:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v10, v8, v7}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v10

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v13

    invoke-interface {v10, v13}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iget v9, v9, Lg/cyw;->a:I

    move-object v13, v10

    move-wide v10, v11

    move v12, v9

    move v9, v7

    new-instance v7, Lg/ae;

    invoke-direct/range {v7 .. v13}, Lg/ae;-><init>(IIJILcom/google/android/gms/internal/ads/zzadx;)V

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaej;->a:J

    :goto_12
    if-eqz v7, :cond_31

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    move/from16 v8, p1

    :cond_32
    add-int/lit8 v6, v6, 0x1

    const/16 p2, 0x2

    const/4 v14, 0x3

    goto/16 :goto_10

    :cond_33
    new-array v1, v5, [Lg/ae;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lg/ae;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaej;->l:[Lg/ae;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaej;->i:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaej;->g:I

    return v5

    :cond_34
    const-string v1, "AviHeader not found"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_35
    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected header list type "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_36
    move-object v2, v12

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    invoke-interface {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v1

    iput v1, v2, Lg/aot;->b:I

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v1

    iput v1, v2, Lg/aot;->c:I

    iget v1, v2, Lg/aot;->b:I

    if-ne v1, v10, :cond_38

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result v1

    if-ne v1, v9, :cond_37

    iget v1, v2, Lg/aot;->c:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaej;->f:I

    const/4 v10, 0x2

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaej;->g:I

    return v5

    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hdrl expected, found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_38
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LIST expected, found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_39
    move-object v2, v8

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaej;->zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaej;->g:I

    return v5

    :cond_3a
    const-string v1, "AVI Header List not found"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1
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

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->g:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->e:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzakg;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->i:Lcom/google/android/gms/internal/ads/zzacu;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->n:J

    return-void
.end method

.method public final zzf(JJ)V
    .locals 5

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaej;->n:J

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaej;->b:Lg/ae;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaej;->l:[Lg/ae;

    array-length p4, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    aget-object v2, p3, v1

    iget v3, v2, Lg/ae;->k:I

    if-nez v3, :cond_0

    iput v0, v2, Lg/ae;->a:I

    goto :goto_1

    :cond_0
    iget-object v3, v2, Lg/ae;->d:[J

    const/4 v4, 0x1

    invoke-static {v3, p1, p2, v4, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzd([JJZZ)I

    move-result v3

    iget-object v4, v2, Lg/ae;->h:[I

    aget v3, v4, v3

    iput v3, v2, Lg/ae;->a:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p3, 0x0

    cmp-long v1, p1, p3

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->l:[Lg/ae;

    array-length p1, p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->g:I

    return-void

    :cond_3
    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->g:I

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->h:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result p1

    const v1, 0x46464952

    if-eq p1, v1, :cond_0

    return v3

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzi()I

    move-result p1

    const v0, 0x20495641

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v3
.end method

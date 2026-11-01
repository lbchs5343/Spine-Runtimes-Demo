.class public final Lcom/google/android/gms/internal/ads/zzaee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacr;


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[I

.field public static final d:[I


# instance fields
.field public e:Lcom/google/android/gms/internal/ads/zzadx;

.field public f:Z

.field public g:I

.field public h:I

.field public final i:[B

.field public j:I

.field public k:Lcom/google/android/gms/internal/ads/zzadx;

.field public l:Z

.field public m:Lcom/google/android/gms/internal/ads/zzadp;

.field public n:J

.field public o:Lcom/google/android/gms/internal/ads/zzacu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaee;->c:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaee;->d:[I

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "#!AMR\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzaee;->b:[B

    const-string v1, "#!AMR-WB\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaee;->a:[B

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaee;->i:[B

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaee;->j:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzacm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaee;->k:Lcom/google/android/gms/internal/ads/zzadx;

    return-void
.end method


# virtual methods
.method public final p(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 5

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaee;->b:[B

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaee;->l:Z

    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    return v2

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaee;->a:[B

    array-length v1, v0

    new-array v4, v1, [B

    invoke-interface {p1, v4, v3, v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaee;->l:Z

    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    return v2

    :cond_1
    return v3
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaee;->e:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaee;->p(Lcom/google/android/gms/internal/ads/zzacs;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Could not find AMR header."

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_1
    :goto_0
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaee;->f:Z

    sget-object v3, Lcom/google/android/gms/internal/ads/zzaee;->c:[I

    sget-object v7, Lcom/google/android/gms/internal/ads/zzaee;->d:[I

    const/4 v8, 0x1

    if-nez v2, :cond_5

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzaee;->f:Z

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaee;->l:Z

    if-eq v8, v2, :cond_2

    const-string v9, "audio/3gpp"

    goto :goto_1

    :cond_2
    const-string v9, "audio/amr-wb"

    :goto_1
    if-eq v8, v2, :cond_3

    const/16 v10, 0x1f40

    goto :goto_2

    :cond_3
    const/16 v10, 0x3e80

    :goto_2
    if-eqz v2, :cond_4

    const/16 v2, 0x8

    aget v2, v7, v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x7

    aget v2, v3, v2

    :goto_3
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaee;->k:Lcom/google/android/gms/internal/ads/zzadx;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzQ(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    invoke-interface {v11, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaee;->i:[B

    const-string v9, "Illegal AMR "

    const-string v10, "Invalid padding bits for frame header "

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzaee;->h:I

    const/4 v12, 0x0

    const/4 v13, -0x1

    if-nez v11, :cond_c

    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    invoke-interface {v1, v2, v12, v8}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    aget-byte v2, v2, v12

    and-int/lit16 v11, v2, 0x83

    if-gtz v11, :cond_b

    shr-int/lit8 v2, v2, 0x3

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzaee;->l:Z

    and-int/lit8 v2, v2, 0xf

    if-eqz v10, :cond_6

    const/16 v11, 0xa

    if-lt v2, v11, :cond_7

    const/16 v11, 0xd

    if-le v2, v11, :cond_6

    goto :goto_4

    :cond_6
    if-nez v10, :cond_9

    const/16 v11, 0xc

    if-lt v2, v11, :cond_7

    const/16 v11, 0xe

    if-gt v2, v11, :cond_7

    goto :goto_7

    :cond_7
    :goto_4
    if-eqz v10, :cond_8

    aget v2, v7, v2

    :goto_5
    move v11, v2

    goto :goto_6

    :catch_0
    nop

    goto :goto_8

    :cond_8
    aget v2, v3, v2

    goto :goto_5

    :goto_6
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaee;->g:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaee;->h:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaee;->j:I

    if-ne v2, v13, :cond_c

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzaee;->j:I

    goto :goto_9

    :cond_9
    :goto_7
    :try_start_1
    const-string v1, "WB"

    const-string v3, "NB"

    if-eq v8, v10, :cond_a

    move-object v1, v3

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " frame type "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_8
    const/4 v1, -0x1

    goto :goto_b

    :cond_c
    :goto_9
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaee;->k:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v2, v1, v11, v8}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(Lcom/google/android/gms/internal/ads/zzn;IZ)I

    move-result v1

    if-ne v1, v13, :cond_d

    goto :goto_8

    :cond_d
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaee;->h:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaee;->h:I

    if-lez v2, :cond_e

    :goto_a
    const/4 v1, 0x0

    goto :goto_b

    :cond_e
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaee;->k:Lcom/google/android/gms/internal/ads/zzadx;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaee;->n:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaee;->g:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x1

    move-wide v15, v1

    move/from16 v18, v3

    invoke-interface/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaee;->n:J

    const-wide/16 v3, 0x4e20

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaee;->n:J

    goto :goto_a

    :goto_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaee;->m:Lcom/google/android/gms/internal/ads/zzadp;

    if-eqz v2, :cond_f

    goto :goto_c

    :cond_f
    new-instance v2, Lcom/google/android/gms/internal/ads/zzadp;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaee;->m:Lcom/google/android/gms/internal/ads/zzadp;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaee;->o:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    :goto_c
    if-ne v1, v13, :cond_10

    return v13

    :cond_10
    return v12
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaee;->o:Lcom/google/android/gms/internal/ads/zzacu;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaee;->e:Lcom/google/android/gms/internal/ads/zzadx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaee;->k:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    return-void
.end method

.method public final zzf(JJ)V
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaee;->n:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaee;->g:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaee;->h:I

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaee;->p(Lcom/google/android/gms/internal/ads/zzacs;)Z

    move-result p1

    return p1
.end method

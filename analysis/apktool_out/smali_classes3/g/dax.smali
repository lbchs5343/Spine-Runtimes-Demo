.class public final Lg/dax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ew;


# static fields
.field public static final b:[I

.field public static final c:[I


# instance fields
.field public final d:Lcom/google/android/gms/internal/ads/zzad;

.field public e:I

.field public final f:I

.field public g:J

.field public final h:[B

.field public final i:Lcom/google/android/gms/internal/ads/zzacu;

.field public final j:Lcom/google/android/gms/internal/ads/zzed;

.field public k:I

.field public final l:Lcom/google/android/gms/internal/ads/zzadx;

.field public m:J

.field public final n:Lg/gme;

.field public final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lg/dax;->c:[I

    const/16 v0, 0x59

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lg/dax;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzadx;Lg/gme;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dax;->i:Lcom/google/android/gms/internal/ads/zzacu;

    iput-object p2, p0, Lg/dax;->l:Lcom/google/android/gms/internal/ads/zzadx;

    iput-object p3, p0, Lg/dax;->n:Lg/gme;

    iget p1, p3, Lg/gme;->e:I

    div-int/lit8 p2, p1, 0xa

    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lg/dax;->o:I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzed;

    iget-object v2, p3, Lg/gme;->c:Ljava/lang/Object;

    check-cast v2, [B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzk()I

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzk()I

    move-result v1

    iput v1, p0, Lg/dax;->f:I

    iget v2, p3, Lg/gme;->d:I

    mul-int/lit8 v3, v2, 0x4

    iget v4, p3, Lg/gme;->a:I

    sub-int v3, v4, v3

    iget p3, p3, Lg/gme;->b:I

    mul-int p3, p3, v2

    mul-int/lit8 v3, v3, 0x8

    div-int/2addr v3, p3

    add-int/2addr v3, v0

    if-ne v1, v3, :cond_0

    sget p3, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    add-int p3, p2, v1

    add-int/lit8 p3, p3, -0x1

    div-int/2addr p3, v1

    mul-int v0, p3, v4

    new-array v0, v0, [B

    iput-object v0, p0, Lg/dax;->h:[B

    new-instance v0, Lcom/google/android/gms/internal/ads/zzed;

    add-int v3, v1, v1

    mul-int v3, v3, v2

    mul-int v3, v3, p3

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object v0, p0, Lg/dax;->j:Lcom/google/android/gms/internal/ads/zzed;

    mul-int v4, v4, p1

    mul-int/lit8 v4, v4, 0x8

    div-int/2addr v4, v1

    new-instance p3, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    const-string v0, "audio/raw"

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzy(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzU(I)Lcom/google/android/gms/internal/ads/zzab;

    add-int/2addr p2, p2

    mul-int p2, p2, v2

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzab;->zzQ(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    const/4 p1, 0x2

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzab;->zzT(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p1

    iput-object p1, p0, Lg/dax;->d:Lcom/google/android/gms/internal/ads/zzad;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Expected frames per block: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; got: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzacs;J)Z
    .locals 24

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    iget v3, v0, Lg/dax;->e:I

    iget-object v4, v0, Lg/dax;->n:Lg/gme;

    iget v5, v4, Lg/gme;->d:I

    add-int/2addr v5, v5

    div-int/2addr v3, v5

    iget v5, v0, Lg/dax;->o:I

    sub-int v3, v5, v3

    sget v6, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget v6, v0, Lg/dax;->f:I

    add-int/2addr v3, v6

    const/4 v7, -0x1

    add-int/2addr v3, v7

    div-int/2addr v3, v6

    iget v8, v4, Lg/gme;->a:I

    mul-int v3, v3, v8

    const-wide/16 v9, 0x0

    cmp-long v13, v1, v9

    if-nez v13, :cond_0

    :goto_0
    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    iget-object v10, v0, Lg/dax;->h:[B

    if-nez v9, :cond_2

    iget v13, v0, Lg/dax;->k:I

    if-ge v13, v3, :cond_2

    sub-int v13, v3, v13

    int-to-long v13, v13

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v14, v13

    iget v13, v0, Lg/dax;->k:I

    move-object/from16 v15, p1

    invoke-interface {v15, v10, v13, v14}, Lcom/google/android/gms/internal/ads/zzacs;->zza([BII)I

    move-result v10

    if-ne v10, v7, :cond_1

    goto :goto_0

    :cond_1
    iget v13, v0, Lg/dax;->k:I

    add-int/2addr v13, v10

    iput v13, v0, Lg/dax;->k:I

    goto :goto_1

    :cond_2
    iget v1, v0, Lg/dax;->k:I

    div-int/2addr v1, v8

    if-lez v1, :cond_8

    const/4 v2, 0x0

    :goto_2
    iget-object v3, v0, Lg/dax;->j:Lcom/google/android/gms/internal/ads/zzed;

    if-ge v2, v1, :cond_7

    const/4 v7, 0x0

    :goto_3
    iget v13, v4, Lg/gme;->d:I

    if-ge v7, v13, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v14

    mul-int v15, v2, v8

    div-int v16, v8, v13

    add-int/lit8 v16, v16, -0x4

    mul-int/lit8 v17, v7, 0x4

    add-int v17, v17, v15

    add-int/lit8 v15, v17, 0x1

    aget-byte v15, v10, v15

    and-int/lit16 v15, v15, 0xff

    const/16 v18, 0x1

    aget-byte v12, v10, v17

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v19, v17, 0x2

    aget-byte v11, v10, v19

    and-int/lit16 v11, v11, 0xff

    move/from16 p1, v1

    const/16 v1, 0x58

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    sget-object v19, Lg/dax;->b:[I

    aget v20, v19, v11

    mul-int v21, v2, v6

    mul-int v21, v21, v13

    add-int v21, v21, v7

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v12, v15

    int-to-short v12, v12

    and-int/lit16 v15, v12, 0xff

    add-int v21, v21, v21

    int-to-byte v15, v15

    aput-byte v15, v14, v21

    add-int/lit8 v15, v21, 0x1

    shr-int/lit8 v1, v12, 0x8

    int-to-byte v1, v1

    aput-byte v1, v14, v15

    const/4 v1, 0x0

    :goto_4
    add-int v15, v16, v16

    if-ge v1, v15, :cond_5

    mul-int/lit8 v15, v13, 0x4

    add-int v15, v15, v17

    div-int/lit8 v22, v1, 0x8

    div-int/lit8 v23, v1, 0x2

    rem-int/lit8 v23, v23, 0x4

    mul-int v22, v22, v13

    mul-int/lit8 v22, v22, 0x4

    add-int v22, v22, v15

    add-int v22, v22, v23

    aget-byte v15, v10, v22

    move/from16 v22, v1

    and-int/lit16 v1, v15, 0xff

    rem-int/lit8 v23, v22, 0x2

    if-nez v23, :cond_3

    and-int/lit8 v1, v15, 0xf

    goto :goto_5

    :cond_3
    shr-int/lit8 v1, v1, 0x4

    :goto_5
    and-int/lit8 v15, v1, 0x7

    add-int/2addr v15, v15

    add-int/lit8 v15, v15, 0x1

    mul-int v15, v15, v20

    and-int/lit8 v20, v1, 0x8

    shr-int/lit8 v15, v15, 0x3

    if-eqz v20, :cond_4

    neg-int v15, v15

    :cond_4
    add-int/2addr v12, v15

    const/16 v15, 0x7fff

    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/16 v15, -0x8000

    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int v15, v13, v13

    add-int v21, v15, v21

    and-int/lit16 v15, v12, 0xff

    int-to-byte v15, v15

    aput-byte v15, v14, v21

    add-int/lit8 v15, v21, 0x1

    move/from16 p3, v1

    shr-int/lit8 v1, v12, 0x8

    int-to-byte v1, v1

    aput-byte v1, v14, v15

    sget-object v1, Lg/dax;->c:[I

    aget v1, v1, p3

    add-int/2addr v11, v1

    const/16 v1, 0x58

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v15, 0x0

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    aget v20, v19, v11

    add-int/lit8 v15, v22, 0x1

    move v1, v15

    goto :goto_4

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p1

    goto/16 :goto_3

    :cond_6
    move/from16 p1, v1

    const/16 v18, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_7
    move/from16 p1, v1

    mul-int v6, v6, p1

    add-int/2addr v6, v6

    iget v1, v4, Lg/gme;->d:I

    mul-int v6, v6, v1

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    iget v1, v0, Lg/dax;->k:I

    mul-int v2, p1, v8

    sub-int/2addr v1, v2

    iput v1, v0, Lg/dax;->k:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v1

    iget-object v2, v0, Lg/dax;->l:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget v2, v0, Lg/dax;->e:I

    add-int/2addr v2, v1

    iput v2, v0, Lg/dax;->e:I

    iget v1, v4, Lg/gme;->d:I

    add-int/2addr v1, v1

    div-int/2addr v2, v1

    if-lt v2, v5, :cond_8

    invoke-virtual {v0, v5}, Lg/dax;->p(I)V

    :cond_8
    if-eqz v9, :cond_9

    iget v1, v0, Lg/dax;->e:I

    iget v2, v4, Lg/gme;->d:I

    add-int/2addr v2, v2

    div-int/2addr v1, v2

    if-lez v1, :cond_9

    invoke-virtual {v0, v1}, Lg/dax;->p(I)V

    :cond_9
    return v9
.end method

.method public final p(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lg/dax;->n:Lg/gme;

    iget v3, v2, Lg/gme;->e:I

    int-to-long v8, v3

    sget-object v10, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    iget-wide v11, v0, Lg/dax;->m:J

    iget-wide v4, v0, Lg/dax;->g:J

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    add-long v14, v11, v3

    add-int v3, v1, v1

    iget v2, v2, Lg/gme;->d:I

    mul-int v17, v3, v2

    iget v2, v0, Lg/dax;->e:I

    sub-int v18, v2, v17

    const/16 v16, 0x1

    const/16 v19, 0x0

    iget-object v13, v0, Lg/dax;->l:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    iget-wide v2, v0, Lg/dax;->g:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lg/dax;->g:J

    iget v1, v0, Lg/dax;->e:I

    sub-int v1, v1, v17

    iput v1, v0, Lg/dax;->e:I

    return-void
.end method

.method public final zza(IJ)V
    .locals 7

    new-instance v0, Lg/glb;

    iget v2, p0, Lg/dax;->f:I

    int-to-long v3, p1

    iget-object v1, p0, Lg/dax;->n:Lg/gme;

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lg/glb;-><init>(Lg/gme;IJJ)V

    iget-object p1, p0, Lg/dax;->i:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    iget-object p1, p0, Lg/dax;->l:Lcom/google/android/gms/internal/ads/zzadx;

    iget-object p2, p0, Lg/dax;->d:Lcom/google/android/gms/internal/ads/zzad;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    return-void
.end method

.method public final zzb(J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/dax;->k:I

    iput-wide p1, p0, Lg/dax;->m:J

    iput v0, p0, Lg/dax;->e:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lg/dax;->g:J

    return-void
.end method

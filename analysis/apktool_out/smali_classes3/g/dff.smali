.class public final Lg/dff;
.super Lcom/google/android/gms/internal/ads/zzgxv;
.source "SourceFile"


# instance fields
.field public d:I

.field public final e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public final j:Ljava/nio/ByteBuffer;

.field public final k:J


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lg/dff;->i:I

    iput-object p1, p0, Lg/dff;->j:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lg/gbc;->y(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lg/dff;->e:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lg/dff;->f:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lg/dff;->g:J

    iput-wide v0, p0, Lg/dff;->k:J

    return-void
.end method


# virtual methods
.method public final l()I
    .locals 12

    iget-wide v0, p0, Lg/dff;->g:J

    iget-wide v2, p0, Lg/dff;->f:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sget-object v4, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v4, v0, v1}, Lg/aul;->l(J)B

    move-result v5

    if-ltz v5, :cond_1

    iput-wide v2, p0, Lg/dff;->g:J

    return v5

    :cond_1
    iget-wide v6, p0, Lg/dff;->f:J

    sub-long/2addr v6, v2

    const-wide/16 v8, 0x9

    cmp-long v10, v6, v8

    if-ltz v10, :cond_8

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    invoke-virtual {v4, v2, v3}, Lg/aul;->l(J)B

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v5

    if-gez v2, :cond_2

    xor-int/lit8 v0, v2, -0x80

    goto/16 :goto_2

    :cond_2
    const-wide/16 v10, 0x3

    add-long/2addr v10, v0

    invoke-virtual {v4, v6, v7}, Lg/aul;->l(J)B

    move-result v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v2, v3

    if-ltz v2, :cond_3

    xor-int/lit16 v0, v2, 0x3f80

    :goto_0
    move-wide v6, v10

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x4

    add-long/2addr v5, v0

    invoke-virtual {v4, v10, v11}, Lg/aul;->l(J)B

    move-result v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v2, v3

    if-gez v2, :cond_4

    const v0, -0x1fc080

    xor-int/2addr v0, v2

    :goto_1
    move-wide v6, v5

    goto :goto_2

    :cond_4
    const-wide/16 v10, 0x5

    add-long/2addr v10, v0

    invoke-virtual {v4, v5, v6}, Lg/aul;->l(J)B

    move-result v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v2, v5

    const v5, 0xfe03f80

    xor-int/2addr v2, v5

    if-gez v3, :cond_7

    const-wide/16 v5, 0x6

    add-long/2addr v5, v0

    invoke-virtual {v4, v10, v11}, Lg/aul;->l(J)B

    move-result v3

    if-gez v3, :cond_6

    const-wide/16 v10, 0x7

    add-long/2addr v10, v0

    invoke-virtual {v4, v5, v6}, Lg/aul;->l(J)B

    move-result v3

    if-gez v3, :cond_7

    const-wide/16 v5, 0x8

    add-long/2addr v5, v0

    invoke-virtual {v4, v10, v11}, Lg/aul;->l(J)B

    move-result v3

    if-gez v3, :cond_6

    add-long/2addr v8, v0

    invoke-virtual {v4, v5, v6}, Lg/aul;->l(J)B

    move-result v3

    if-gez v3, :cond_5

    const-wide/16 v5, 0xa

    add-long/2addr v0, v5

    invoke-virtual {v4, v8, v9}, Lg/aul;->l(J)B

    move-result v3

    if-ltz v3, :cond_8

    move-wide v6, v0

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    move-wide v6, v8

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_0

    :goto_2
    iput-wide v6, p0, Lg/dff;->g:J

    return v0

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lg/dff;->q()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final m()J
    .locals 22

    move-object/from16 v0, p0

    iget-wide v1, v0, Lg/dff;->g:J

    iget-wide v3, v0, Lg/dff;->f:J

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x8

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    add-long/2addr v5, v1

    iput-wide v5, v0, Lg/dff;->g:J

    sget-object v3, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v3, v1, v2}, Lg/aul;->l(J)B

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    invoke-virtual {v3, v6, v7}, Lg/aul;->l(J)B

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x2

    add-long/2addr v8, v1

    invoke-virtual {v3, v8, v9}, Lg/aul;->l(J)B

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0x3

    add-long/2addr v10, v1

    invoke-virtual {v3, v10, v11}, Lg/aul;->l(J)B

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x4

    add-long/2addr v12, v1

    invoke-virtual {v3, v12, v13}, Lg/aul;->l(J)B

    move-result v12

    int-to-long v12, v12

    const-wide/16 v14, 0x5

    add-long/2addr v14, v1

    invoke-virtual {v3, v14, v15}, Lg/aul;->l(J)B

    move-result v14

    int-to-long v14, v14

    const-wide/16 v16, 0x6

    move-wide/from16 v18, v1

    add-long v1, v18, v16

    invoke-virtual {v3, v1, v2}, Lg/aul;->l(J)B

    move-result v1

    int-to-long v1, v1

    const-wide/16 v16, 0x7

    move-wide/from16 v20, v1

    add-long v0, v18, v16

    invoke-virtual {v3, v0, v1}, Lg/aul;->l(J)B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v6, v2

    and-long/2addr v8, v2

    and-long/2addr v4, v2

    const/16 v16, 0x8

    shl-long v6, v6, v16

    or-long/2addr v4, v6

    and-long v6, v10, v2

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    or-long/2addr v4, v8

    and-long v8, v12, v2

    const/16 v10, 0x18

    shl-long/2addr v6, v10

    or-long/2addr v4, v6

    and-long v6, v14, v2

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    or-long/2addr v4, v8

    and-long v8, v20, v2

    const/16 v10, 0x28

    shl-long/2addr v6, v10

    or-long/2addr v4, v6

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long v2, v8, v2

    or-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n()J
    .locals 14

    iget-wide v0, p0, Lg/dff;->g:J

    iget-wide v2, p0, Lg/dff;->f:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sget-object v4, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v4, v0, v1}, Lg/aul;->l(J)B

    move-result v5

    if-ltz v5, :cond_1

    iput-wide v2, p0, Lg/dff;->g:J

    int-to-long v0, v5

    return-wide v0

    :cond_1
    iget-wide v6, p0, Lg/dff;->f:J

    sub-long/2addr v6, v2

    const-wide/16 v8, 0x9

    cmp-long v10, v6, v8

    if-ltz v10, :cond_a

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    invoke-virtual {v4, v2, v3}, Lg/aul;->l(J)B

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v2, v5

    if-gez v2, :cond_2

    xor-int/lit8 v0, v2, -0x80

    int-to-long v0, v0

    goto/16 :goto_3

    :cond_2
    const-wide/16 v10, 0x3

    add-long/2addr v10, v0

    invoke-virtual {v4, v6, v7}, Lg/aul;->l(J)B

    move-result v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v2, v3

    if-ltz v2, :cond_3

    xor-int/lit16 v0, v2, 0x3f80

    int-to-long v0, v0

    :goto_0
    move-wide v6, v10

    goto/16 :goto_3

    :cond_3
    const-wide/16 v5, 0x4

    add-long/2addr v5, v0

    invoke-virtual {v4, v10, v11}, Lg/aul;->l(J)B

    move-result v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v2, v3

    if-gez v2, :cond_4

    const v0, -0x1fc080

    xor-int/2addr v0, v2

    int-to-long v0, v0

    move-wide v6, v5

    goto/16 :goto_3

    :cond_4
    const-wide/16 v10, 0x5

    add-long/2addr v10, v0

    invoke-virtual {v4, v5, v6}, Lg/aul;->l(J)B

    move-result v3

    int-to-long v5, v3

    int-to-long v2, v2

    const/16 v7, 0x1c

    shl-long/2addr v5, v7

    xor-long/2addr v2, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_5

    const-wide/32 v0, 0xfe03f80

    :goto_1
    xor-long/2addr v0, v2

    goto :goto_0

    :cond_5
    const-wide/16 v12, 0x6

    add-long/2addr v12, v0

    invoke-virtual {v4, v10, v11}, Lg/aul;->l(J)B

    move-result v7

    int-to-long v10, v7

    const/16 v7, 0x23

    shl-long/2addr v10, v7

    xor-long/2addr v2, v10

    cmp-long v7, v2, v5

    if-gez v7, :cond_6

    const-wide v0, -0x7f01fc080L

    :goto_2
    xor-long/2addr v0, v2

    move-wide v6, v12

    goto :goto_3

    :cond_6
    const-wide/16 v10, 0x7

    add-long/2addr v10, v0

    invoke-virtual {v4, v12, v13}, Lg/aul;->l(J)B

    move-result v7

    int-to-long v12, v7

    const/16 v7, 0x2a

    shl-long/2addr v12, v7

    xor-long/2addr v2, v12

    cmp-long v7, v2, v5

    if-ltz v7, :cond_7

    const-wide v0, 0x3f80fe03f80L

    goto :goto_1

    :cond_7
    const-wide/16 v12, 0x8

    add-long/2addr v12, v0

    invoke-virtual {v4, v10, v11}, Lg/aul;->l(J)B

    move-result v7

    int-to-long v10, v7

    const/16 v7, 0x31

    shl-long/2addr v10, v7

    xor-long/2addr v2, v10

    cmp-long v7, v2, v5

    if-gez v7, :cond_8

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_2

    :cond_8
    add-long/2addr v8, v0

    invoke-virtual {v4, v12, v13}, Lg/aul;->l(J)B

    move-result v7

    int-to-long v10, v7

    const/16 v7, 0x38

    shl-long/2addr v10, v7

    xor-long/2addr v2, v10

    const-wide v10, 0xfe03f80fe03f80L

    xor-long/2addr v2, v10

    cmp-long v7, v2, v5

    if-gez v7, :cond_9

    const-wide/16 v10, 0xa

    add-long/2addr v0, v10

    invoke-virtual {v4, v8, v9}, Lg/aul;->l(J)B

    move-result v4

    int-to-long v7, v4

    cmp-long v4, v7, v5

    if-ltz v4, :cond_a

    move-wide v6, v0

    move-wide v0, v2

    goto :goto_3

    :cond_9
    move-wide v0, v2

    move-wide v6, v8

    :goto_3
    iput-wide v6, p0, Lg/dff;->g:J

    return-wide v0

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lg/dff;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public final o()V
    .locals 4

    iget-wide v0, p0, Lg/dff;->f:J

    iget v2, p0, Lg/dff;->d:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lg/dff;->f:J

    iget-wide v2, p0, Lg/dff;->k:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    iget v2, p0, Lg/dff;->i:I

    if-le v3, v2, :cond_0

    sub-int/2addr v3, v2

    iput v3, p0, Lg/dff;->d:I

    int-to-long v2, v3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lg/dff;->f:J

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lg/dff;->d:I

    return-void
.end method

.method public final p()I
    .locals 8

    iget-wide v0, p0, Lg/dff;->g:J

    iget-wide v2, p0, Lg/dff;->f:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lg/dff;->g:J

    sget-object v2, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v2, v0, v1}, Lg/aul;->l(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lg/aul;->l(J)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const-wide/16 v5, 0x2

    add-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Lg/aul;->l(J)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const-wide/16 v6, 0x3

    add-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Lg/aul;->l(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v4, 0x8

    or-int/2addr v1, v3

    shl-int/lit8 v2, v5, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()J
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_2

    iget-wide v3, p0, Lg/dff;->g:J

    iget-wide v5, p0, Lg/dff;->f:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lg/dff;->g:J

    sget-object v5, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v5, v3, v4}, Lg/aul;->l(J)B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzA()Z
    .locals 5

    iget-wide v0, p0, Lg/dff;->g:J

    iget-wide v2, p0, Lg/dff;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzB()Z
    .locals 5

    invoke-virtual {p0}, Lg/dff;->n()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()D
    .locals 2

    invoke-virtual {p0}, Lg/dff;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()F
    .locals 1

    invoke-virtual {p0}, Lg/dff;->p()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final zzc()I
    .locals 4

    iget-wide v0, p0, Lg/dff;->g:J

    iget-wide v2, p0, Lg/dff;->k:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final zzd(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lg/dff;->zzc()I

    move-result v0

    add-int/2addr v0, p1

    iget p1, p0, Lg/dff;->i:I

    if-gt v0, p1, :cond_0

    iput v0, p0, Lg/dff;->i:I

    invoke-virtual {p0}, Lg/dff;->o()V

    return p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zze()I
    .locals 1

    invoke-virtual {p0}, Lg/dff;->l()I

    move-result v0

    return v0
.end method

.method public final zzf()I
    .locals 1

    invoke-virtual {p0}, Lg/dff;->p()I

    move-result v0

    return v0
.end method

.method public final zzg()I
    .locals 1

    invoke-virtual {p0}, Lg/dff;->l()I

    move-result v0

    return v0
.end method

.method public final zzj()I
    .locals 1

    invoke-virtual {p0}, Lg/dff;->p()I

    move-result v0

    return v0
.end method

.method public final zzk()I
    .locals 1

    invoke-virtual {p0}, Lg/dff;->l()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzD(I)I

    move-result v0

    return v0
.end method

.method public final zzl()I
    .locals 2

    invoke-virtual {p0}, Lg/dff;->zzA()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lg/dff;->h:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lg/dff;->l()I

    move-result v0

    iput v0, p0, Lg/dff;->h:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzm()I
    .locals 1

    invoke-virtual {p0}, Lg/dff;->l()I

    move-result v0

    return v0
.end method

.method public final zzn()J
    .locals 2

    invoke-virtual {p0}, Lg/dff;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo()J
    .locals 2

    invoke-virtual {p0}, Lg/dff;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzs()J
    .locals 2

    invoke-virtual {p0}, Lg/dff;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzt()J
    .locals 2

    invoke-virtual {p0}, Lg/dff;->n()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzF(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzu()J
    .locals 2

    invoke-virtual {p0}, Lg/dff;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzv()Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 11

    invoke-virtual {p0}, Lg/dff;->l()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v1, p0, Lg/dff;->f:J

    iget-wide v4, p0, Lg/dff;->g:J

    sub-long/2addr v1, v4

    long-to-int v2, v1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v6, v0, [B

    int-to-long v9, v0

    const-wide/16 v7, 0x0

    sget-object v3, Lg/gbc;->g:Lg/aul;

    invoke-virtual/range {v3 .. v10}, Lg/aul;->q(J[BJJ)V

    iget-wide v0, p0, Lg/dff;->g:J

    add-long/2addr v0, v9

    iput-wide v0, p0, Lg/dff;->g:J

    new-instance v0, Lcom/google/android/gms/internal/ads/ah;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/ah;-><init>([B)V

    return-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxp;

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzw()Ljava/lang/String;
    .locals 11

    invoke-virtual {p0}, Lg/dff;->l()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v1, p0, Lg/dff;->f:J

    iget-wide v4, p0, Lg/dff;->g:J

    sub-long/2addr v1, v4

    long-to-int v2, v1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v6, v0, [B

    int-to-long v9, v0

    const-wide/16 v7, 0x0

    sget-object v3, Lg/gbc;->g:Lg/aul;

    invoke-virtual/range {v3 .. v10}, Lg/aul;->q(J[BJJ)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v1, p0, Lg/dff;->g:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Lg/dff;->g:J

    return-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    if-gez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzx()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lg/dff;->l()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v1, p0, Lg/dff;->f:J

    iget-wide v3, p0, Lg/dff;->g:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lg/dff;->e:J

    sub-long/2addr v3, v1

    iget-object v1, p0, Lg/dff;->j:Ljava/nio/ByteBuffer;

    long-to-int v2, v3

    invoke-static {v1, v2, v0}, Lg/bso;->b(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lg/dff;->g:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lg/dff;->g:J

    return-object v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    if-gtz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzy(I)V
    .locals 1

    iget v0, p0, Lg/dff;->h:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzz(I)V
    .locals 0

    iput p1, p0, Lg/dff;->i:I

    invoke-virtual {p0}, Lg/dff;->o()V

    return-void
.end method

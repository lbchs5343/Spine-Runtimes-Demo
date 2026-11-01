.class public final Lg/fng;
.super Lcom/google/android/gms/internal/ads/zzgxv;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:J

.field public f:Ljava/nio/ByteBuffer;

.field public g:J

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public final l:Ljava/util/Iterator;

.field public m:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lg/fng;->m:I

    iput p1, p0, Lg/fng;->h:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    iput-object p2, p0, Lg/fng;->l:Ljava/util/Iterator;

    const/4 p2, 0x0

    iput p2, p0, Lg/fng;->j:I

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgzk;->zzc:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lg/fng;->f:Ljava/nio/ByteBuffer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lg/fng;->k:J

    iput-wide p1, p0, Lg/fng;->e:J

    iput-wide p1, p0, Lg/fng;->g:J

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/fng;->p()V

    return-void
.end method


# virtual methods
.method public final n()I
    .locals 14

    iget-wide v0, p0, Lg/fng;->k:J

    iget-wide v2, p0, Lg/fng;->g:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    sget-object v6, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v6, v0, v1}, Lg/aul;->l(J)B

    move-result v7

    if-ltz v7, :cond_1

    iget-wide v0, p0, Lg/fng;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lg/fng;->k:J

    return v7

    :cond_1
    iget-wide v2, p0, Lg/fng;->g:J

    iget-wide v8, p0, Lg/fng;->k:J

    sub-long/2addr v2, v8

    const-wide/16 v8, 0xa

    cmp-long v10, v2, v8

    if-ltz v10, :cond_7

    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    invoke-virtual {v6, v4, v5}, Lg/aul;->l(J)B

    move-result v4

    shl-int/lit8 v4, v4, 0x7

    xor-int/2addr v4, v7

    if-gez v4, :cond_2

    xor-int/lit8 v0, v4, -0x80

    goto/16 :goto_2

    :cond_2
    const-wide/16 v10, 0x3

    add-long/2addr v10, v0

    invoke-virtual {v6, v2, v3}, Lg/aul;->l(J)B

    move-result v2

    shl-int/lit8 v2, v2, 0xe

    xor-int/2addr v2, v4

    if-ltz v2, :cond_3

    xor-int/lit16 v0, v2, 0x3f80

    :goto_0
    move-wide v2, v10

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x4

    add-long/2addr v3, v0

    invoke-virtual {v6, v10, v11}, Lg/aul;->l(J)B

    move-result v5

    shl-int/lit8 v5, v5, 0x15

    xor-int/2addr v2, v5

    if-gez v2, :cond_4

    const v0, -0x1fc080

    xor-int/2addr v0, v2

    :goto_1
    move-wide v2, v3

    goto :goto_2

    :cond_4
    const-wide/16 v10, 0x5

    add-long/2addr v10, v0

    invoke-virtual {v6, v3, v4}, Lg/aul;->l(J)B

    move-result v3

    shl-int/lit8 v4, v3, 0x1c

    xor-int/2addr v2, v4

    const v4, 0xfe03f80

    xor-int/2addr v2, v4

    if-gez v3, :cond_5

    const-wide/16 v3, 0x6

    add-long/2addr v3, v0

    invoke-virtual {v6, v10, v11}, Lg/aul;->l(J)B

    move-result v5

    if-gez v5, :cond_6

    const-wide/16 v10, 0x7

    add-long/2addr v10, v0

    invoke-virtual {v6, v3, v4}, Lg/aul;->l(J)B

    move-result v3

    if-gez v3, :cond_5

    const-wide/16 v3, 0x8

    add-long/2addr v3, v0

    invoke-virtual {v6, v10, v11}, Lg/aul;->l(J)B

    move-result v5

    if-gez v5, :cond_6

    const-wide/16 v10, 0x9

    add-long/2addr v10, v0

    invoke-virtual {v6, v3, v4}, Lg/aul;->l(J)B

    move-result v3

    if-gez v3, :cond_5

    add-long/2addr v0, v8

    invoke-virtual {v6, v10, v11}, Lg/aul;->l(J)B

    move-result v3

    if-ltz v3, :cond_7

    move-wide v12, v0

    move v0, v2

    move-wide v2, v12

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :goto_2
    iput-wide v2, p0, Lg/fng;->k:J

    return v0

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lg/fng;->s()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final o(I[B)V
    .locals 11

    invoke-virtual {p0}, Lg/fng;->u()I

    move-result v0

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt p1, v0, :cond_2

    move v0, p1

    :goto_0
    if-lez v0, :cond_3

    iget-wide v2, p0, Lg/fng;->g:J

    iget-wide v4, p0, Lg/fng;->k:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-object v2, p0, Lg/fng;->l:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lg/fng;->p()V

    goto :goto_1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    iget-wide v2, p0, Lg/fng;->g:J

    iget-wide v4, p0, Lg/fng;->k:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lg/fng;->k:J

    sub-int v3, p1, v0

    int-to-long v9, v2

    int-to-long v7, v3

    sget-object v3, Lg/gbc;->g:Lg/aul;

    move-object v6, p2

    invoke-virtual/range {v3 .. v10}, Lg/aul;->q(J[BJJ)V

    sub-int/2addr v0, v2

    iget-wide v2, p0, Lg/fng;->k:J

    add-long/2addr v2, v9

    iput-wide v2, p0, Lg/fng;->k:J

    goto :goto_0

    :cond_2
    if-gtz p1, :cond_4

    :cond_3
    return-void

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p()V
    .locals 6

    iget-object v0, p0, Lg/fng;->l:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lg/fng;->f:Ljava/nio/ByteBuffer;

    iget v1, p0, Lg/fng;->j:I

    iget-wide v2, p0, Lg/fng;->k:J

    iget-wide v4, p0, Lg/fng;->e:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Lg/fng;->j:I

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lg/fng;->k:J

    iput-wide v0, p0, Lg/fng;->e:J

    iget-object v0, p0, Lg/fng;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lg/fng;->g:J

    iget-object v0, p0, Lg/fng;->f:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lg/gbc;->y(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iget-wide v2, p0, Lg/fng;->k:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lg/fng;->k:J

    iget-wide v2, p0, Lg/fng;->e:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lg/fng;->e:J

    iget-wide v2, p0, Lg/fng;->g:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lg/fng;->g:J

    return-void
.end method

.method public final q()B
    .locals 5

    iget-wide v0, p0, Lg/fng;->g:J

    iget-wide v2, p0, Lg/fng;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lg/fng;->l:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/fng;->p()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lg/fng;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lg/fng;->k:J

    sget-object v2, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v2, v0, v1}, Lg/aul;->l(J)B

    move-result v0

    return v0
.end method

.method public final r()J
    .locals 27

    move-object/from16 v0, p0

    iget-wide v1, v0, Lg/fng;->g:J

    iget-wide v3, v0, Lg/fng;->k:J

    sub-long/2addr v1, v3

    const/16 v9, 0x18

    const/16 v10, 0x10

    const/16 v11, 0x8

    const-wide/16 v12, 0xff

    const-wide/16 v14, 0x8

    cmp-long v16, v1, v14

    if-ltz v16, :cond_0

    add-long/2addr v14, v3

    iput-wide v14, v0, Lg/fng;->k:J

    sget-object v1, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v1, v3, v4}, Lg/aul;->l(J)B

    move-result v2

    int-to-long v14, v2

    and-long/2addr v14, v12

    const-wide/16 v16, 0x1

    const/16 v2, 0x38

    const/16 v18, 0x30

    add-long v5, v3, v16

    invoke-virtual {v1, v5, v6}, Lg/aul;->l(J)B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v12

    shl-long/2addr v5, v11

    const-wide/16 v16, 0x2

    const/16 v19, 0x28

    const/16 v20, 0x20

    add-long v7, v3, v16

    invoke-virtual {v1, v7, v8}, Lg/aul;->l(J)B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v12

    shl-long/2addr v7, v10

    const-wide/16 v10, 0x3

    add-long/2addr v10, v3

    invoke-virtual {v1, v10, v11}, Lg/aul;->l(J)B

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v12

    shl-long v9, v10, v9

    const-wide/16 v16, 0x4

    move-wide/from16 v21, v12

    add-long v12, v3, v16

    invoke-virtual {v1, v12, v13}, Lg/aul;->l(J)B

    move-result v11

    int-to-long v11, v11

    and-long v11, v11, v21

    shl-long v11, v11, v20

    const-wide/16 v16, 0x5

    move-wide/from16 v23, v3

    add-long v3, v23, v16

    invoke-virtual {v1, v3, v4}, Lg/aul;->l(J)B

    move-result v3

    int-to-long v3, v3

    and-long v3, v3, v21

    shl-long v3, v3, v19

    const-wide/16 v16, 0x6

    move-wide/from16 v19, v3

    const/16 v13, 0x38

    add-long v2, v23, v16

    invoke-virtual {v1, v2, v3}, Lg/aul;->l(J)B

    move-result v2

    int-to-long v2, v2

    and-long v2, v2, v21

    shl-long v2, v2, v18

    const-wide/16 v16, 0x7

    move-wide/from16 v25, v14

    const/16 v4, 0x38

    add-long v13, v23, v16

    invoke-virtual {v1, v13, v14}, Lg/aul;->l(J)B

    move-result v1

    int-to-long v13, v1

    and-long v13, v13, v21

    shl-long/2addr v13, v4

    or-long v5, v25, v5

    or-long/2addr v5, v7

    or-long/2addr v5, v9

    or-long/2addr v5, v11

    or-long v5, v5, v19

    or-long/2addr v2, v5

    or-long/2addr v2, v13

    return-wide v2

    :cond_0
    move-wide/from16 v21, v12

    const/16 v4, 0x38

    const/16 v18, 0x30

    const/16 v19, 0x28

    const/16 v20, 0x20

    invoke-virtual {v0}, Lg/fng;->q()B

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v21

    invoke-virtual {v0}, Lg/fng;->q()B

    move-result v3

    int-to-long v5, v3

    and-long v5, v5, v21

    shl-long/2addr v5, v11

    invoke-virtual {v0}, Lg/fng;->q()B

    move-result v3

    int-to-long v7, v3

    and-long v7, v7, v21

    shl-long/2addr v7, v10

    invoke-virtual {v0}, Lg/fng;->q()B

    move-result v3

    int-to-long v10, v3

    and-long v10, v10, v21

    shl-long v9, v10, v9

    invoke-virtual {v0}, Lg/fng;->q()B

    move-result v3

    int-to-long v11, v3

    and-long v11, v11, v21

    shl-long v11, v11, v20

    invoke-virtual {v0}, Lg/fng;->q()B

    move-result v3

    int-to-long v13, v3

    and-long v13, v13, v21

    shl-long v13, v13, v19

    invoke-virtual {v0}, Lg/fng;->q()B

    move-result v3

    move-wide/from16 v16, v5

    const/16 v15, 0x38

    int-to-long v4, v3

    and-long v4, v4, v21

    shl-long v3, v4, v18

    invoke-virtual {v0}, Lg/fng;->q()B

    move-result v5

    int-to-long v5, v5

    and-long v5, v5, v21

    shl-long/2addr v5, v15

    or-long v1, v1, v16

    or-long/2addr v1, v7

    or-long/2addr v1, v9

    or-long/2addr v1, v11

    or-long/2addr v1, v13

    or-long/2addr v1, v3

    or-long/2addr v1, v5

    return-wide v1
.end method

.method public final s()J
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    invoke-virtual {p0}, Lg/fng;->q()B

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

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t()J
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lg/fng;->k:J

    iget-wide v3, v0, Lg/fng;->g:J

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sget-object v7, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v7, v1, v2}, Lg/aul;->l(J)B

    move-result v8

    if-ltz v8, :cond_1

    iget-wide v1, v0, Lg/fng;->k:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lg/fng;->k:J

    int-to-long v1, v8

    return-wide v1

    :cond_1
    iget-wide v3, v0, Lg/fng;->g:J

    iget-wide v9, v0, Lg/fng;->k:J

    sub-long/2addr v3, v9

    const-wide/16 v9, 0xa

    cmp-long v11, v3, v9

    if-ltz v11, :cond_a

    const-wide/16 v3, 0x2

    add-long/2addr v3, v1

    invoke-virtual {v7, v5, v6}, Lg/aul;->l(J)B

    move-result v5

    shl-int/lit8 v5, v5, 0x7

    xor-int/2addr v5, v8

    if-gez v5, :cond_2

    xor-int/lit8 v1, v5, -0x80

    int-to-long v1, v1

    goto/16 :goto_3

    :cond_2
    const-wide/16 v11, 0x3

    add-long/2addr v11, v1

    invoke-virtual {v7, v3, v4}, Lg/aul;->l(J)B

    move-result v3

    shl-int/lit8 v3, v3, 0xe

    xor-int/2addr v3, v5

    if-ltz v3, :cond_3

    xor-int/lit16 v1, v3, 0x3f80

    int-to-long v1, v1

    :goto_0
    move-wide v3, v11

    goto/16 :goto_3

    :cond_3
    const-wide/16 v4, 0x4

    add-long/2addr v4, v1

    invoke-virtual {v7, v11, v12}, Lg/aul;->l(J)B

    move-result v6

    shl-int/lit8 v6, v6, 0x15

    xor-int/2addr v3, v6

    if-gez v3, :cond_4

    const v1, -0x1fc080

    xor-int/2addr v1, v3

    int-to-long v1, v1

    move-wide v3, v4

    goto/16 :goto_3

    :cond_4
    const-wide/16 v11, 0x5

    add-long/2addr v11, v1

    invoke-virtual {v7, v4, v5}, Lg/aul;->l(J)B

    move-result v4

    int-to-long v4, v4

    int-to-long v13, v3

    const/16 v3, 0x1c

    shl-long v3, v4, v3

    xor-long/2addr v3, v13

    const-wide/16 v5, 0x0

    cmp-long v8, v3, v5

    if-ltz v8, :cond_5

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long/2addr v1, v3

    goto :goto_0

    :cond_5
    const-wide/16 v13, 0x6

    add-long/2addr v13, v1

    invoke-virtual {v7, v11, v12}, Lg/aul;->l(J)B

    move-result v8

    int-to-long v11, v8

    const/16 v8, 0x23

    shl-long/2addr v11, v8

    xor-long/2addr v3, v11

    cmp-long v8, v3, v5

    if-gez v8, :cond_6

    const-wide v1, -0x7f01fc080L

    :goto_2
    xor-long/2addr v1, v3

    move-wide v3, v13

    goto :goto_3

    :cond_6
    const-wide/16 v11, 0x7

    add-long/2addr v11, v1

    invoke-virtual {v7, v13, v14}, Lg/aul;->l(J)B

    move-result v8

    int-to-long v13, v8

    const/16 v8, 0x2a

    shl-long/2addr v13, v8

    xor-long/2addr v3, v13

    cmp-long v8, v3, v5

    if-ltz v8, :cond_7

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_7
    const-wide/16 v13, 0x8

    add-long/2addr v13, v1

    invoke-virtual {v7, v11, v12}, Lg/aul;->l(J)B

    move-result v8

    int-to-long v11, v8

    const/16 v8, 0x31

    shl-long/2addr v11, v8

    xor-long/2addr v3, v11

    cmp-long v8, v3, v5

    if-gez v8, :cond_8

    const-wide v1, -0x1fc07f01fc080L

    goto :goto_2

    :cond_8
    const-wide/16 v11, 0x9

    add-long/2addr v11, v1

    invoke-virtual {v7, v13, v14}, Lg/aul;->l(J)B

    move-result v8

    int-to-long v13, v8

    const/16 v8, 0x38

    shl-long/2addr v13, v8

    xor-long/2addr v3, v13

    const-wide v13, 0xfe03f80fe03f80L

    xor-long/2addr v3, v13

    cmp-long v8, v3, v5

    if-gez v8, :cond_9

    add-long/2addr v1, v9

    invoke-virtual {v7, v11, v12}, Lg/aul;->l(J)B

    move-result v7

    int-to-long v7, v7

    cmp-long v9, v7, v5

    if-ltz v9, :cond_a

    move-wide v15, v3

    move-wide v3, v1

    move-wide v1, v15

    goto :goto_3

    :cond_9
    move-wide v1, v3

    goto/16 :goto_0

    :goto_3
    iput-wide v3, v0, Lg/fng;->k:J

    return-wide v1

    :cond_a
    :goto_4
    invoke-virtual {v0}, Lg/fng;->s()J

    move-result-wide v1

    return-wide v1
.end method

.method public final u()I
    .locals 4

    iget v0, p0, Lg/fng;->h:I

    iget v1, p0, Lg/fng;->j:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lg/fng;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lg/fng;->e:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final v()I
    .locals 8

    iget-wide v0, p0, Lg/fng;->g:J

    iget-wide v2, p0, Lg/fng;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lg/fng;->k:J

    sget-object v0, Lg/gbc;->g:Lg/aul;

    invoke-virtual {v0, v2, v3}, Lg/aul;->l(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Lg/aul;->l(J)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const-wide/16 v5, 0x2

    add-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Lg/aul;->l(J)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    const-wide/16 v6, 0x3

    add-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lg/aul;->l(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v1, v4

    or-int/2addr v1, v5

    or-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lg/fng;->q()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lg/fng;->q()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lg/fng;->q()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual {p0}, Lg/fng;->q()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    or-int/2addr v0, v3

    return v0
.end method

.method public final zzA()Z
    .locals 5

    iget v0, p0, Lg/fng;->j:I

    int-to-long v0, v0

    iget-wide v2, p0, Lg/fng;->k:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lg/fng;->e:J

    sub-long/2addr v0, v2

    iget v2, p0, Lg/fng;->h:I

    int-to-long v2, v2

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

    invoke-virtual {p0}, Lg/fng;->t()J

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

    invoke-virtual {p0}, Lg/fng;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()F
    .locals 1

    invoke-virtual {p0}, Lg/fng;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final zzc()I
    .locals 4

    iget v0, p0, Lg/fng;->j:I

    int-to-long v0, v0

    iget-wide v2, p0, Lg/fng;->k:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lg/fng;->e:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final zzd(I)I
    .locals 3

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lg/fng;->zzc()I

    move-result v0

    add-int/2addr v0, p1

    iget p1, p0, Lg/fng;->m:I

    if-gt v0, p1, :cond_1

    iput v0, p0, Lg/fng;->m:I

    iget v1, p0, Lg/fng;->h:I

    iget v2, p0, Lg/fng;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lg/fng;->h:I

    if-le v1, v0, :cond_0

    sub-int v0, v1, v0

    iput v0, p0, Lg/fng;->i:I

    sub-int/2addr v1, v0

    iput v1, p0, Lg/fng;->h:I

    return p1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lg/fng;->i:I

    return p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zze()I
    .locals 1

    invoke-virtual {p0}, Lg/fng;->n()I

    move-result v0

    return v0
.end method

.method public final zzf()I
    .locals 1

    invoke-virtual {p0}, Lg/fng;->v()I

    move-result v0

    return v0
.end method

.method public final zzg()I
    .locals 1

    invoke-virtual {p0}, Lg/fng;->n()I

    move-result v0

    return v0
.end method

.method public final zzj()I
    .locals 1

    invoke-virtual {p0}, Lg/fng;->v()I

    move-result v0

    return v0
.end method

.method public final zzk()I
    .locals 1

    invoke-virtual {p0}, Lg/fng;->n()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxv;->zzD(I)I

    move-result v0

    return v0
.end method

.method public final zzl()I
    .locals 2

    invoke-virtual {p0}, Lg/fng;->zzA()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lg/fng;->d:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lg/fng;->n()I

    move-result v0

    iput v0, p0, Lg/fng;->d:I

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

    invoke-virtual {p0}, Lg/fng;->n()I

    move-result v0

    return v0
.end method

.method public final zzn()J
    .locals 2

    invoke-virtual {p0}, Lg/fng;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo()J
    .locals 2

    invoke-virtual {p0}, Lg/fng;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzs()J
    .locals 2

    invoke-virtual {p0}, Lg/fng;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzt()J
    .locals 2

    invoke-virtual {p0}, Lg/fng;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgxv;->zzF(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzu()J
    .locals 2

    invoke-virtual {p0}, Lg/fng;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzv()Lcom/google/android/gms/internal/ads/zzgxp;
    .locals 11

    invoke-virtual {p0}, Lg/fng;->n()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v1, p0, Lg/fng;->g:J

    iget-wide v4, p0, Lg/fng;->k:J

    sub-long/2addr v1, v4

    int-to-long v9, v0

    cmp-long v3, v9, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    new-array v6, v0, [B

    const-wide/16 v7, 0x0

    sget-object v3, Lg/gbc;->g:Lg/aul;

    invoke-virtual/range {v3 .. v10}, Lg/aul;->q(J[BJJ)V

    iget-wide v0, p0, Lg/fng;->k:J

    add-long/2addr v0, v9

    iput-wide v0, p0, Lg/fng;->k:J

    new-instance v0, Lcom/google/android/gms/internal/ads/ah;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/ah;-><init>([B)V

    return-object v0

    :cond_1
    :goto_0
    if-lez v0, :cond_3

    invoke-virtual {p0}, Lg/fng;->u()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-array v1, v0, [B

    invoke-virtual {p0, v0, v1}, Lg/fng;->o(I[B)V

    new-instance v0, Lcom/google/android/gms/internal/ads/ah;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ah;-><init>([B)V

    return-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxp;

    return-object v0

    :cond_4
    if-gez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzw()Ljava/lang/String;
    .locals 11

    invoke-virtual {p0}, Lg/fng;->n()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v1, p0, Lg/fng;->g:J

    iget-wide v4, p0, Lg/fng;->k:J

    sub-long/2addr v1, v4

    int-to-long v9, v0

    cmp-long v3, v9, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    new-array v6, v0, [B

    const-wide/16 v7, 0x0

    sget-object v3, Lg/gbc;->g:Lg/aul;

    invoke-virtual/range {v3 .. v10}, Lg/aul;->q(J[BJJ)V

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v1, p0, Lg/fng;->k:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Lg/fng;->k:J

    return-object v0

    :cond_1
    :goto_0
    if-lez v0, :cond_3

    invoke-virtual {p0}, Lg/fng;->u()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-array v1, v0, [B

    invoke-virtual {p0, v0, v1}, Lg/fng;->o(I[B)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    const-string v0, ""

    return-object v0

    :cond_4
    if-gez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzx()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lg/fng;->n()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v1, p0, Lg/fng;->g:J

    iget-wide v3, p0, Lg/fng;->k:J

    sub-long/2addr v1, v3

    int-to-long v5, v0

    cmp-long v7, v5, v1

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lg/fng;->e:J

    sub-long/2addr v3, v1

    iget-object v1, p0, Lg/fng;->f:Ljava/nio/ByteBuffer;

    long-to-int v2, v3

    invoke-static {v1, v2, v0}, Lg/bso;->b(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lg/fng;->k:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lg/fng;->k:J

    return-object v0

    :cond_1
    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lg/fng;->u()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-array v1, v0, [B

    invoke-virtual {p0, v0, v1}, Lg/fng;->o(I[B)V

    sget-object v2, Lg/bso;->a:Lg/bli;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lg/bli;->t(I[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    const-string v0, ""

    return-object v0

    :cond_4
    if-gtz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzy(I)V
    .locals 1

    iget v0, p0, Lg/fng;->d:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgzm;

    const-string v0, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgzm;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzz(I)V
    .locals 2

    iput p1, p0, Lg/fng;->m:I

    iget v0, p0, Lg/fng;->h:I

    iget v1, p0, Lg/fng;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lg/fng;->h:I

    if-le v0, p1, :cond_0

    sub-int p1, v0, p1

    iput p1, p0, Lg/fng;->i:I

    sub-int/2addr v0, p1

    iput v0, p0, Lg/fng;->h:I

    return-void

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lg/fng;->i:I

    return-void
.end method

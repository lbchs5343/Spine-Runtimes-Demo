.class public final Lg/ck;
.super Lcom/google/android/gms/internal/ads/zzgyc;
.source "SourceFile"


# instance fields
.field public final f:[B

.field public final g:I

.field public h:I

.field public final i:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxg;-><init>()V

    if-ltz p2, :cond_1

    const/16 v0, 0x14

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-array v0, p2, [B

    iput-object v0, p0, Lg/ck;->f:[B

    iput p2, p0, Lg/ck;->g:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lg/ck;->i:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final e(ILcom/google/android/gms/internal/ads/zzhai;Lg/ah;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lg/ck;->zzu(I)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgwy;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzgwy;->bl(Lg/ah;)I

    move-result p1

    invoke-virtual {p0, p1}, Lg/ck;->zzu(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyc;->c:Lg/eub;

    invoke-interface {p3, p2, p1}, Lg/ah;->i(Ljava/lang/Object;Lg/gli;)V

    return-void
.end method

.method public final j(J)V
    .locals 10

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzgyc;->b:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    iget-object v6, p0, Lg/ck;->f:[B

    if-eqz v0, :cond_1

    :goto_0
    and-long v7, p1, v4

    cmp-long v0, v7, v2

    long-to-int v7, p1

    if-nez v0, :cond_0

    iget p1, p0, Lg/ck;->h:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lg/ck;->h:I

    int-to-long p1, p1

    int-to-byte v0, v7

    invoke-static {v6, p1, p2, v0}, Lg/gbc;->n([BJB)V

    return-void

    :cond_0
    iget v0, p0, Lg/ck;->h:I

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Lg/ck;->h:I

    int-to-long v8, v0

    or-int/lit16 v0, v7, 0x80

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-static {v6, v8, v9, v0}, Lg/gbc;->n([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v7, p1, v4

    cmp-long v0, v7, v2

    long-to-int v7, p1

    if-nez v0, :cond_2

    iget p1, p0, Lg/ck;->h:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lg/ck;->h:I

    int-to-byte p2, v7

    aput-byte p2, v6, p1

    return-void

    :cond_2
    iget v0, p0, Lg/ck;->h:I

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Lg/ck;->h:I

    or-int/lit16 v7, v7, 0x80

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    ushr-long/2addr p1, v1

    goto :goto_1
.end method

.method public final k(I)V
    .locals 2

    iget v0, p0, Lg/ck;->g:I

    iget v1, p0, Lg/ck;->h:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lg/ck;->o()V

    :cond_0
    return-void
.end method

.method public final l(I)V
    .locals 5

    iget v0, p0, Lg/ck;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lg/ck;->h:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    iget-object v3, p0, Lg/ck;->f:[B

    aput-byte v2, v3, v0

    add-int/lit8 v2, v0, 0x2

    iput v2, p0, Lg/ck;->h:I

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v0, 0x3

    iput v1, p0, Lg/ck;->h:I

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lg/ck;->h:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v3, v1

    return-void
.end method

.method public final m(J)V
    .locals 9

    iget v0, p0, Lg/ck;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lg/ck;->h:I

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    iget-object v5, p0, Lg/ck;->f:[B

    aput-byte v4, v5, v0

    add-int/lit8 v4, v0, 0x2

    iput v4, p0, Lg/ck;->h:I

    const/16 v6, 0x8

    shr-long v7, p1, v6

    and-long/2addr v7, v2

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v5, v1

    add-int/lit8 v1, v0, 0x3

    iput v1, p0, Lg/ck;->h:I

    const/16 v7, 0x10

    shr-long v7, p1, v7

    and-long/2addr v7, v2

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v5, v4

    add-int/lit8 v4, v0, 0x4

    iput v4, p0, Lg/ck;->h:I

    const/16 v7, 0x18

    shr-long v7, p1, v7

    and-long/2addr v2, v7

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v5, v1

    add-int/lit8 v1, v0, 0x5

    iput v1, p0, Lg/ck;->h:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    aput-byte v2, v5, v4

    add-int/lit8 v2, v0, 0x6

    iput v2, p0, Lg/ck;->h:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v0, 0x7

    iput v1, p0, Lg/ck;->h:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    add-int/2addr v0, v6

    iput v0, p0, Lg/ck;->h:I

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    aput-byte p1, v5, v1

    return-void
.end method

.method public final n(I[BI)V
    .locals 4

    iget v0, p0, Lg/ck;->h:I

    iget v1, p0, Lg/ck;->g:I

    sub-int v2, v1, v0

    iget-object v3, p0, Lg/ck;->f:[B

    if-lt v2, p3, :cond_0

    invoke-static {p2, p1, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lg/ck;->h:I

    add-int/2addr p1, p3

    iput p1, p0, Lg/ck;->h:I

    return-void

    :cond_0
    invoke-static {p2, p1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, v2

    iput v1, p0, Lg/ck;->h:I

    invoke-virtual {p0}, Lg/ck;->o()V

    sub-int/2addr p3, v2

    if-gt p3, v1, :cond_1

    const/4 v0, 0x0

    invoke-static {p2, p1, v3, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lg/ck;->h:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/ck;->i:Ljava/io/OutputStream;

    invoke-virtual {v0, p2, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public final o()V
    .locals 4

    iget v0, p0, Lg/ck;->h:I

    iget-object v1, p0, Lg/ck;->i:Ljava/io/OutputStream;

    iget-object v2, p0, Lg/ck;->f:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lg/ck;->h:I

    return-void
.end method

.method public final p(I)V
    .locals 4

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzgyc;->b:Z

    iget-object v1, p0, Lg/ck;->f:[B

    if-eqz v0, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget v0, p0, Lg/ck;->h:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/ck;->h:I

    int-to-long v2, v0

    int-to-byte p1, p1

    invoke-static {v1, v2, v3, p1}, Lg/gbc;->n([BJB)V

    return-void

    :cond_0
    iget v0, p0, Lg/ck;->h:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/ck;->h:I

    int-to-long v2, v0

    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-static {v1, v2, v3, v0}, Lg/gbc;->n([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget v0, p0, Lg/ck;->h:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/ck;->h:I

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void

    :cond_2
    iget v0, p0, Lg/ck;->h:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/ck;->h:I

    or-int/lit16 v2, p1, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method public final zzK()V
    .locals 1

    iget v0, p0, Lg/ck;->h:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lg/ck;->o()V

    :cond_0
    return-void
.end method

.method public final zzL(B)V
    .locals 2

    iget v0, p0, Lg/ck;->h:I

    iget v1, p0, Lg/ck;->g:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lg/ck;->o()V

    :cond_0
    iget v0, p0, Lg/ck;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lg/ck;->h:I

    iget-object v1, p0, Lg/ck;->f:[B

    aput-byte p1, v1, v0

    return-void
.end method

.method public final zzM(IZ)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lg/ck;->k(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lg/ck;->p(I)V

    iget p1, p0, Lg/ck;->h:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lg/ck;->h:I

    iget-object v0, p0, Lg/ck;->f:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method public final zzN(ILcom/google/android/gms/internal/ads/zzgxp;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lg/ck;->zzu(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result p1

    invoke-virtual {p0, p1}, Lg/ck;->zzu(I)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzgxp;->k(Lcom/google/android/gms/internal/ads/zzgyc;)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0

    invoke-virtual {p0, p2, p1, p3}, Lg/ck;->n(I[BI)V

    return-void
.end method

.method public final zzb()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzh(II)V
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lg/ck;->k(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lg/ck;->p(I)V

    invoke-virtual {p0, p2}, Lg/ck;->l(I)V

    return-void
.end method

.method public final zzi(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lg/ck;->k(I)V

    invoke-virtual {p0, p1}, Lg/ck;->l(I)V

    return-void
.end method

.method public final zzj(IJ)V
    .locals 1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lg/ck;->k(I)V

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lg/ck;->p(I)V

    invoke-virtual {p0, p2, p3}, Lg/ck;->m(J)V

    return-void
.end method

.method public final zzk(J)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lg/ck;->k(I)V

    invoke-virtual {p0, p1, p2}, Lg/ck;->m(J)V

    return-void
.end method

.method public final zzl(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lg/ck;->k(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lg/ck;->p(I)V

    if-ltz p2, :cond_0

    invoke-virtual {p0, p2}, Lg/ck;->p(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lg/ck;->j(J)V

    return-void
.end method

.method public final zzm(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lg/ck;->zzu(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lg/ck;->zzw(J)V

    return-void
.end method

.method public final zzo(ILcom/google/android/gms/internal/ads/zzhai;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lg/ck;->zzu(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lg/ck;->zzt(II)V

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lg/ck;->zzu(I)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhai;->zzaY()I

    move-result p1

    invoke-virtual {p0, p1}, Lg/ck;->zzu(I)V

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzhai;->zzda(Lcom/google/android/gms/internal/ads/zzgyc;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lg/ck;->zzu(I)V

    return-void
.end method

.method public final zzp(ILcom/google/android/gms/internal/ads/zzgxp;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lg/ck;->zzu(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lg/ck;->zzt(II)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p2}, Lg/ck;->zzN(ILcom/google/android/gms/internal/ads/zzgxp;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lg/ck;->zzu(I)V

    return-void
.end method

.method public final zzq(ILjava/lang/String;)V
    .locals 4

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lg/ck;->zzu(I)V

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0
    :try_end_0
    .catch Lg/tb; {:try_start_0 .. :try_end_0} :catch_0

    add-int v1, v0, p1

    iget v2, p0, Lg/ck;->g:I

    if-le v1, v2, :cond_0

    :try_start_1
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p1}, Lg/bso;->e(Ljava/lang/String;[BII)I

    move-result p1

    invoke-virtual {p0, p1}, Lg/ck;->zzu(I)V

    invoke-virtual {p0, v1, v0, p1}, Lg/ck;->n(I[BI)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    iget p1, p0, Lg/ck;->h:I

    sub-int p1, v2, p1

    if-le v1, p1, :cond_1

    invoke-virtual {p0}, Lg/ck;->o()V

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result p1

    iget v1, p0, Lg/ck;->h:I
    :try_end_1
    .catch Lg/tb; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v3, p0, Lg/ck;->f:[B

    if-ne p1, v0, :cond_2

    add-int v0, v1, p1

    :try_start_2
    iput v0, p0, Lg/ck;->h:I

    sub-int/2addr v2, v0

    invoke-static {p2, v3, v0, v2}, Lg/bso;->e(Ljava/lang/String;[BII)I

    move-result v0

    iput v1, p0, Lg/ck;->h:I

    sub-int v2, v0, v1

    sub-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lg/ck;->p(I)V

    iput v0, p0, Lg/ck;->h:I

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lg/bso;->f(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lg/ck;->p(I)V

    iget v0, p0, Lg/ck;->h:I

    invoke-static {p2, v3, v0, p1}, Lg/bso;->e(Ljava/lang/String;[BII)I

    move-result p1

    iput p1, p0, Lg/ck;->h:I
    :try_end_2
    .catch Lg/tb; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-void

    :goto_1
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgxz;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v0

    :goto_2
    iput v1, p0, Lg/ck;->h:I

    throw p1
    :try_end_3
    .catch Lg/tb; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->d(Ljava/lang/String;Lg/tb;)V

    return-void
.end method

.method public final zzs(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lg/ck;->zzu(I)V

    return-void
.end method

.method public final zzt(II)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lg/ck;->k(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lg/ck;->p(I)V

    invoke-virtual {p0, p2}, Lg/ck;->p(I)V

    return-void
.end method

.method public final zzu(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lg/ck;->k(I)V

    invoke-virtual {p0, p1}, Lg/ck;->p(I)V

    return-void
.end method

.method public final zzv(IJ)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lg/ck;->k(I)V

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lg/ck;->p(I)V

    invoke-virtual {p0, p2, p3}, Lg/ck;->j(J)V

    return-void
.end method

.method public final zzw(J)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lg/ck;->k(I)V

    invoke-virtual {p0, p1, p2}, Lg/ck;->j(J)V

    return-void
.end method

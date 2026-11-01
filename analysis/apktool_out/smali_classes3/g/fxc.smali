.class public final Lg/fxc;
.super Lcom/google/android/gms/internal/ads/zzgyc;
.source "SourceFile"


# instance fields
.field public final f:[B

.field public final g:I

.field public h:I


# direct methods
.method public constructor <init>([BI)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxg;-><init>()V

    array-length v0, p1

    sub-int v1, v0, p2

    or-int/2addr v1, p2

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iput-object p1, p0, Lg/fxc;->f:[B

    iput v2, p0, Lg/fxc;->h:I

    iput p2, p0, Lg/fxc;->g:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p2, v3, v0

    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final e(ILcom/google/android/gms/internal/ads/zzhai;Lg/ah;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgwy;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzgwy;->bl(Lg/ah;)I

    move-result p1

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyc;->c:Lg/eub;

    invoke-interface {p3, p2, p1}, Lg/ah;->i(Ljava/lang/Object;Lg/gli;)V

    return-void
.end method

.method public final zzK()V
    .locals 0

    return-void
.end method

.method public final zzL(B)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lg/fxc;->f:[B

    iget v1, p0, Lg/fxc;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg/fxc;->h:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxz;

    iget v1, p0, Lg/fxc;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lg/fxc;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v3

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgxz;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final zzM(IZ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    invoke-virtual {p0, p2}, Lg/fxc;->zzL(B)V

    return-void
.end method

.method public final zzN(ILcom/google/android/gms/internal/ads/zzgxp;)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result p1

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzgxp;->k(Lcom/google/android/gms/internal/ads/zzgyc;)V

    return-void
.end method

.method public final zza([BII)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lg/fxc;->f:[B

    iget v1, p0, Lg/fxc;->h:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lg/fxc;->h:I

    add-int/2addr p1, p3

    iput p1, p0, Lg/fxc;->h:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgxz;

    iget v0, p0, Lg/fxc;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lg/fxc;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgxz;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final zzb()I
    .locals 2

    iget v0, p0, Lg/fxc;->g:I

    iget v1, p0, Lg/fxc;->h:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzh(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    invoke-virtual {p0, p2}, Lg/fxc;->zzi(I)V

    return-void
.end method

.method public final zzi(I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lg/fxc;->f:[B

    iget v1, p0, Lg/fxc;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg/fxc;->h:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lg/fxc;->h:I

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lg/fxc;->h:I

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lg/fxc;->h:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxz;

    iget v1, p0, Lg/fxc;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lg/fxc;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v3

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgxz;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final zzj(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    invoke-virtual {p0, p2, p3}, Lg/fxc;->zzk(J)V

    return-void
.end method

.method public final zzk(J)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lg/fxc;->f:[B

    iget v1, p0, Lg/fxc;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lg/fxc;->h:I

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lg/fxc;->h:I

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v6, v5

    and-int/lit16 v5, v6, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lg/fxc;->h:I

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v6, v5

    and-int/lit16 v5, v6, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x4

    iput v3, p0, Lg/fxc;->h:I

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v6, v5

    and-int/lit16 v5, v6, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x5

    iput v2, p0, Lg/fxc;->h:I

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v6, v5

    and-int/lit16 v5, v6, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x6

    iput v3, p0, Lg/fxc;->h:I

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v6, v5

    and-int/lit16 v5, v6, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x7

    iput v2, p0, Lg/fxc;->h:I

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v6, v5

    and-int/lit16 v5, v6, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/2addr v1, v4

    iput v1, p0, Lg/fxc;->h:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgxz;

    iget v0, p0, Lg/fxc;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lg/fxc;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgxz;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final zzl(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    invoke-virtual {p0, p2}, Lg/fxc;->zzm(I)V

    return-void
.end method

.method public final zzm(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lg/fxc;->zzw(J)V

    return-void
.end method

.method public final zzo(ILcom/google/android/gms/internal/ads/zzhai;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lg/fxc;->zzu(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lg/fxc;->zzt(II)V

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhai;->zzaY()I

    move-result p1

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzhai;->zzda(Lcom/google/android/gms/internal/ads/zzgyc;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    return-void
.end method

.method public final zzp(ILcom/google/android/gms/internal/ads/zzgxp;)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lg/fxc;->zzu(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lg/fxc;->zzt(II)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p2}, Lg/fxc;->zzN(ILcom/google/android/gms/internal/ads/zzgxp;)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    return-void
.end method

.method public final zzq(ILjava/lang/String;)V
    .locals 4

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    iget p1, p0, Lg/fxc;->h:I

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v1
    :try_end_0
    .catch Lg/tb; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lg/fxc;->g:I

    iget-object v3, p0, Lg/fxc;->f:[B

    if-ne v1, v0, :cond_0

    add-int v0, p1, v1

    :try_start_1
    iput v0, p0, Lg/fxc;->h:I

    sub-int/2addr v2, v0

    invoke-static {p2, v3, v0, v2}, Lg/bso;->e(Ljava/lang/String;[BII)I

    move-result v0

    iput p1, p0, Lg/fxc;->h:I

    sub-int v2, v0, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lg/fxc;->zzu(I)V

    iput v0, p0, Lg/fxc;->h:I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lg/bso;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lg/fxc;->zzu(I)V

    iget v0, p0, Lg/fxc;->h:I

    sub-int/2addr v2, v0

    invoke-static {p2, v3, v0, v2}, Lg/bso;->e(Ljava/lang/String;[BII)I

    move-result v0

    iput v0, p0, Lg/fxc;->h:I
    :try_end_1
    .catch Lg/tb; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgxz;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzgxz;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw p2

    :goto_1
    iput p1, p0, Lg/fxc;->h:I

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzgyc;->d(Ljava/lang/String;Lg/tb;)V

    return-void
.end method

.method public final zzs(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    return-void
.end method

.method public final zzt(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    invoke-virtual {p0, p2}, Lg/fxc;->zzu(I)V

    return-void
.end method

.method public final zzu(I)V
    .locals 7

    :goto_0
    and-int/lit8 v0, p1, -0x80

    iget-object v1, p0, Lg/fxc;->f:[B

    if-nez v0, :cond_0

    :try_start_0
    iget v0, p0, Lg/fxc;->h:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/fxc;->h:I

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget v0, p0, Lg/fxc;->h:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lg/fxc;->h:I

    or-int/lit16 v2, p1, 0x80

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxz;

    iget v1, p0, Lg/fxc;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lg/fxc;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v3

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgxz;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final zzv(IJ)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lg/fxc;->zzu(I)V

    invoke-virtual {p0, p2, p3}, Lg/fxc;->zzw(J)V

    return-void
.end method

.method public final zzw(J)V
    .locals 10

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzgyc;->b:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    iget v6, p0, Lg/fxc;->g:I

    iget-object v7, p0, Lg/fxc;->f:[B

    if-eqz v0, :cond_1

    iget v0, p0, Lg/fxc;->h:I

    sub-int v0, v6, v0

    const/16 v8, 0xa

    if-lt v0, v8, :cond_1

    :goto_0
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    long-to-int v6, p1

    if-nez v0, :cond_0

    iget p1, p0, Lg/fxc;->h:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lg/fxc;->h:I

    int-to-long p1, p1

    int-to-byte v0, v6

    invoke-static {v7, p1, p2, v0}, Lg/gbc;->n([BJB)V

    return-void

    :cond_0
    iget v0, p0, Lg/fxc;->h:I

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Lg/fxc;->h:I

    int-to-long v8, v0

    or-int/lit16 v0, v6, 0x80

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-static {v7, v8, v9, v0}, Lg/gbc;->n([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_2

    :try_start_0
    iget v0, p0, Lg/fxc;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lg/fxc;->h:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v7, v0

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget v0, p0, Lg/fxc;->h:I

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Lg/fxc;->h:I

    long-to-int v8, p1

    or-int/lit16 v8, v8, 0x80

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgxz;

    iget v0, p0, Lg/fxc;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v2

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgxz;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method
